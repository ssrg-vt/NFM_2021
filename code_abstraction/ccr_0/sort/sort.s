	.section	.text
	.align	16
	#Procedure 0x402c90

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_11
	jmp	.label_15
.label_15:
	movabs	rdi, OFFSET FLAT:label_17
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_27
.label_11:
	movabs	rdi, OFFSET FLAT:label_30
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_23
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:label_20
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_26
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_31
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_13
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_21
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_24
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_9
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_16
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_22
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_32
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_10
	mov	dword ptr [rbp - 0x44], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_18
	mov	dword ptr [rbp - 0x48], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_25
	mov	dword ptr [rbp - 0x4c], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_29
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_34
	mov	dword ptr [rbp - 0x50], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_12
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_19
	mov	dword ptr [rbp - 0x58], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_28
	mov	dword ptr [rbp - 0x5c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_33
	mov	dword ptr [rbp - 0x60], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_14
	mov	dword ptr [rbp - 0x64], eax
	call	emit_ancillary_info
.label_27:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x402fc0

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_35
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ff0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_36
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403020

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rax
.label_39:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_38
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_38:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_46
	jmp	.label_51
.label_46:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_39
.label_51:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_41
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_41:
	movabs	rdi, OFFSET FLAT:label_45
	call	gettext
	movabs	rsi, OFFSET FLAT:label_47
	movabs	rdx, OFFSET FLAT:label_40
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	edi, 5
	xor	ecx, ecx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x28], eax
	call	setlocale
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_42
	movabs	rsi, OFFSET FLAT:label_50
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_42
	movabs	rdi, OFFSET FLAT:label_43
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_42:
	movabs	rdi, OFFSET FLAT:label_37
	call	gettext
	movabs	rsi, OFFSET FLAT:label_40
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_44
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_48
	movabs	rsi, OFFSET FLAT:label_49
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 8]
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x38]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x3c], eax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4031c0

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x430
	movabs	rax, OFFSET FLAT:label_188
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0xa9], 0
	mov	dword ptr [rbp - 0xbc], 0
	mov	byte ptr [rbp - 0xbd], 0
	mov	byte ptr [rbp - 0xbe], 0
	mov	qword ptr [rbp - 0xc8], 0
	mov	byte ptr [rbp - 0xc9], 0
	mov	qword ptr [rbp - 0xd8], 0
	mov	qword ptr [rbp - 0xe0], 0
	mov	rdi, rax
	call	getenv
	cmp	rax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0xe1], cl
	call	posix2_version
	xor	edx, edx
	mov	cl, dl
	mov	edx, 0x30db0
	mov	dword ptr [rbp - 0xe8], eax
	cmp	edx, dword ptr [rbp - 0xe8]
	mov	byte ptr [rbp - 0x339], cl
	jg	.label_76
	cmp	dword ptr [rbp - 0xe8], 0x31069
	setl	al
	mov	byte ptr [rbp - 0x339], al
.label_76:
	mov	al, byte ptr [rbp - 0x339]
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 0xe9], al
	mov	qword ptr [rbp - 0x100], 0
	mov	qword ptr [rbp - 0x228], 0
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_48
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_117
	movabs	rsi, OFFSET FLAT:label_118
	cmp	rax, 0
	setne	dl
	xor	dl, 0xff
	xor	dl, 0xff
	and	dl, 1
	mov	byte ptr [rbp - 0x229], dl
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_117
	mov	qword ptr [rbp - 0x348], rax
	call	textdomain
	mov	edi, 2
	mov	qword ptr [rbp - 0x350], rax
	call	initialize_exit_failure
	mov	edi, 3
	call	hard_locale
	mov	edi, 2
	and	al, 1
	mov	byte ptr [byte ptr [hard_LC_COLLATE]],  al
	call	hard_locale
	and	al, 1
	mov	byte ptr [byte ptr [hard_LC_TIME]],  al
	call	localeconv
	mov	qword ptr [rbp - 0x238], rax
	mov	rax, qword ptr [rbp - 0x238]
	mov	rax, qword ptr [rax]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	dword ptr [dword ptr [decimal_point]],  edi
	cmp	dword ptr [dword ptr [decimal_point]],  0
	je	.label_161
	mov	rax, qword ptr [rbp - 0x238]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_170
.label_161:
	mov	dword ptr [dword ptr [decimal_point]],  0x2e
.label_170:
	mov	rax, qword ptr [rbp - 0x238]
	mov	rax, qword ptr [rax + 8]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	dword ptr [dword ptr [thousands_sep]],  edi
	cmp	dword ptr [dword ptr [thousands_sep]],  0
	je	.label_183
	mov	rax, qword ptr [rbp - 0x238]
	mov	rax, qword ptr [rax + 8]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_95
.label_183:
	mov	dword ptr [dword ptr [thousands_sep]],  0xffffffff
.label_95:
	mov	byte ptr [byte ptr [have_read_stdin]],  0
	call	inittables
	movabs	rdi, OFFSET FLAT:caught_signals
	call	sigemptyset
	mov	qword ptr [rbp - 0x240], 0
	mov	dword ptr [rbp - 0x354], eax
.label_93:
	cmp	qword ptr [rbp - 0x240], 0xb
	jae	.label_57
	xor	eax, eax
	mov	esi, eax
	lea	rdx, [rbp - 0x2d8]
	mov	rcx, qword ptr [rbp - 0x240]
	mov	edi,  dword ptr [dword ptr [+ (rcx * 4) + main.sig]]
	call	sigaction
	mov	edi, 1
	mov	ecx, edi
	cmp	qword ptr [rbp - 0x2d8], rcx
	mov	dword ptr [rbp - 0x358], eax
	je	.label_72
	movabs	rdi, OFFSET FLAT:caught_signals
	mov	rax, qword ptr [rbp - 0x240]
	mov	esi,  dword ptr [dword ptr [+ (rax * 4) + main.sig]]
	call	sigaddset
	mov	dword ptr [rbp - 0x35c], eax
.label_72:
	jmp	.label_91
.label_91:
	mov	rax, qword ptr [rbp - 0x240]
	add	rax, 1
	mov	qword ptr [rbp - 0x240], rax
	jmp	.label_93
.label_57:
	movabs	rax, OFFSET FLAT:caught_signals
	mov	ecx, 0x80
	mov	edx, ecx
	lea	rsi, [rbp - 0x2d8]
	movabs	rdi, OFFSET FLAT:sighandler
	mov	qword ptr [rbp - 0x2d8], rdi
	add	rsi, 8
	mov	rdi, rsi
	mov	rsi, rax
	call	memcpy
	mov	dword ptr [rbp - 0x250], 0
	mov	qword ptr [rbp - 0x240], 0
.label_154:
	cmp	qword ptr [rbp - 0x240], 0xb
	jae	.label_127
	movabs	rdi, OFFSET FLAT:caught_signals
	mov	rax, qword ptr [rbp - 0x240]
	mov	esi,  dword ptr [dword ptr [+ (rax * 4) + main.sig]]
	call	sigismember
	cmp	eax, 0
	je	.label_141
	lea	rsi, [rbp - 0x2d8]
	xor	eax, eax
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x240]
	mov	edi,  dword ptr [dword ptr [+ (rcx * 4) + main.sig]]
	call	sigaction
	mov	dword ptr [rbp - 0x360], eax
.label_141:
	jmp	.label_153
.label_153:
	mov	rax, qword ptr [rbp - 0x240]
	add	rax, 1
	mov	qword ptr [rbp - 0x240], rax
	jmp	.label_154
.label_127:
	mov	edi, 0x11
	xor	eax, eax
	mov	esi, eax
	call	signal
	movabs	rdi, OFFSET FLAT:exit_cleanup
	mov	qword ptr [rbp - 0x368], rax
	call	atexit
	lea	rdi, [rbp - 0xa8]
	mov	dword ptr [rbp - 0x36c], eax
	call	key_init
	mov	ecx, 8
	mov	esi, ecx
	mov	qword ptr [rbp - 0xa8], -1
	movsxd	rdi, dword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x378], rax
	call	xnmalloc
	mov	qword ptr [rbp - 0xf8], rax
.label_67:
	mov	dword ptr [rbp - 0x2dc], 0xffffffff
	cmp	dword ptr [rbp - 0xbc], -1
	je	.label_53
	test	byte ptr [rbp - 0xe1], 1
	je	.label_78
	cmp	qword ptr [rbp - 0xe0], 0
	je	.label_78
	test	byte ptr [rbp - 0xe9], 1
	je	.label_53
	cmp	byte ptr [rbp - 0xbd], 0
	jne	.label_53
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	je	.label_53
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0x2d
	jne	.label_53
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 1]
	cmp	edx, 0x6f
	jne	.label_53
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 2]
	cmp	edx, 0
	jne	.label_78
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	cmp	eax, dword ptr [rbp - 8]
	je	.label_53
.label_78:
	movabs	rdx, OFFSET FLAT:short_options
	movabs	rcx, OFFSET FLAT:long_options
	lea	r8, [rbp - 0x2dc]
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0xbc], eax
	cmp	eax, -1
	jne	.label_107
.label_53:
	mov	eax, dword ptr [rbp - 8]
	cmp	eax,  dword ptr [dword ptr [optind]]
	jg	.label_112
	jmp	.label_116
.label_112:
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [dword ptr [optind]],  ecx
	movsxd	rdx, eax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rsi + rdx*8]
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	rdi, rsi
	add	rdi, 1
	mov	qword ptr [rbp - 0xe0], rdi
	mov	rdi, qword ptr [rbp - 0xf8]
	mov	qword ptr [rdi + rsi*8], rdx
	jmp	.label_65
.label_107:
	mov	eax, dword ptr [rbp - 0xbc]
	add	eax, 0x83
	mov	ecx, eax
	sub	eax, 0x10a
	mov	qword ptr [rbp - 0x380], rcx
	mov	dword ptr [rbp - 0x384], eax
	ja	.label_138
	mov	rax, qword ptr [rbp - 0x380]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_148]]
	jmp	rcx
.label_2482:
	mov	qword ptr [rbp - 0x18], 0
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2b
	jne	.label_85
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	mov	byte ptr [rbp - 0x385], cl
	je	.label_61
	xor	eax, eax
	mov	cl, al
	movsxd	rdx,  dword ptr [dword ptr [optind]]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rsi + rdx*8]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0x2d
	mov	byte ptr [rbp - 0x385], cl
	jne	.label_61
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 1]
	sub	edx, 0x30
	cmp	edx, 9
	setbe	sil
	mov	byte ptr [rbp - 0x385], sil
.label_61:
	mov	al, byte ptr [rbp - 0x385]
	xor	ecx, ecx
	mov	dl, cl
	and	al, 1
	mov	byte ptr [rbp - 0x2dd], al
	test	byte ptr [rbp - 0x2dd], 1
	mov	byte ptr [rbp - 0x386], dl
	je	.label_187
	mov	al, byte ptr [rbp - 0xe1]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x386], al
.label_187:
	mov	al, byte ptr [rbp - 0x386]
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0xe9]
	and	al, 1
	movzx	edx, al
	or	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0xe9], al
	test	byte ptr [rbp - 0xe9], 1
	je	.label_83
	lea	rdi, [rbp - 0x60]
	call	key_init
	xor	ecx, ecx
	mov	edx, ecx
	mov	qword ptr [rbp - 0x18], rax
	mov	rax,  qword ptr [word ptr [optarg]]
	add	rax, 1
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	parse_field_count
	mov	qword ptr [rbp - 0xb8], rax
	cmp	qword ptr [rbp - 0xb8], 0
	je	.label_133
	mov	rax, qword ptr [rbp - 0xb8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_133
	xor	eax, eax
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0xb8]
	add	rcx, 1
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, 8
	mov	rdi, rcx
	call	parse_field_count
	mov	qword ptr [rbp - 0xb8], rax
.label_133:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	jne	.label_105
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	jne	.label_105
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], -1
.label_105:
	cmp	qword ptr [rbp - 0xb8], 0
	je	.label_103
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rsi, qword ptr [rbp - 0x18]
	call	set_ordering
	movsx	edx, byte ptr [rax]
	cmp	edx, 0
	je	.label_128
.label_103:
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_200
.label_128:
	test	byte ptr [rbp - 0x2dd], 1
	je	.label_77
	movabs	rdx, OFFSET FLAT:label_139
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [dword ptr [optind]],  ecx
	movsxd	rsi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rdi + rsi*8]
	mov	qword ptr [rbp - 0x2e8], rsi
	mov	rsi, qword ptr [rbp - 0x2e8]
	add	rsi, 1
	mov	rdi, qword ptr [rbp - 0x18]
	add	rdi, 0x10
	mov	qword ptr [rbp - 0x390], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x390]
	call	parse_field_count
	mov	qword ptr [rbp - 0xb8], rax
	cmp	qword ptr [rbp - 0xb8], 0
	je	.label_162
	jmp	.label_123
.label_162:
	movabs	rdi, OFFSET FLAT:label_173
	movabs	rsi, OFFSET FLAT:label_174
	mov	edx, 0x1112
	movabs	rcx, OFFSET FLAT:label_175
	call	__assert_fail
.label_123:
	mov	rax, qword ptr [rbp - 0xb8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_140
	movabs	rdx, OFFSET FLAT:label_124
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x18
	mov	rdi, rax
	mov	rsi, rcx
	call	parse_field_count
	mov	qword ptr [rbp - 0xb8], rax
.label_140:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_199
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_199
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x10]
	add	rcx, -1
	mov	qword ptr [rax + 0x10], rcx
.label_199:
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rsi, qword ptr [rbp - 0x18]
	call	set_ordering
	cmp	byte ptr [rax], 0
	je	.label_63
	movabs	rsi, OFFSET FLAT:label_98
	mov	rdi, qword ptr [rbp - 0x2e8]
	call	badfieldspec
.label_63:
	jmp	.label_77
.label_77:
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x39], 1
	mov	rdi, qword ptr [rbp - 0x18]
	call	insertkey
.label_200:
	jmp	.label_83
.label_83:
	jmp	.label_85
.label_85:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_89
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0xe0], rdx
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	qword ptr [rdx + rcx*8], rax
.label_89:
	jmp	.label_68
.label_2501:
	movabs	rdi, OFFSET FLAT:label_106
	movabs	rdx, OFFSET FLAT:sort_args
	movabs	rcx, OFFSET FLAT:sort_types
	mov	eax, 1
	mov	r8d, eax
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	call	__xargmatch_internal
	movsx	r10d,  byte ptr [byte ptr [+ (rax * 1) + sort_types]]
	mov	dword ptr [rbp - 0xbc], r10d
.label_2484:
	lea	rsi, [rbp - 0xa8]
	mov	edx, 2
	lea	rdi, [rbp - 0x2ea]
	mov	eax, dword ptr [rbp - 0xbc]
	mov	cl, al
	mov	byte ptr [rbp - 0x2ea], cl
	mov	byte ptr [rbp - 0x2e9], 0
	call	set_ordering
	mov	qword ptr [rbp - 0x398], rax
	jmp	.label_68
.label_2495:
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_145
	movabs	rdi, OFFSET FLAT:label_151
	movabs	rdx, OFFSET FLAT:check_args
	movabs	rcx, OFFSET FLAT:check_types
	mov	eax, 1
	mov	r8d, eax
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	call	__xargmatch_internal
	movsx	r10d,  byte ptr [byte ptr [+ (rax * 1) + check_types]]
	mov	dword ptr [rbp - 0x39c], r10d
	jmp	.label_167
.label_145:
	mov	eax, 0x63
	mov	dword ptr [rbp - 0x39c], eax
	jmp	.label_167
.label_167:
	mov	eax, dword ptr [rbp - 0x39c]
	mov	dword ptr [rbp - 0xbc], eax
.label_2483:
	movsx	eax, byte ptr [rbp - 0xbd]
	cmp	eax, 0
	je	.label_181
	movsx	eax, byte ptr [rbp - 0xbd]
	cmp	eax, dword ptr [rbp - 0xbc]
	je	.label_181
	movabs	rdi, OFFSET FLAT:label_189
	call	incompatible_options
.label_181:
	mov	eax, dword ptr [rbp - 0xbc]
	mov	cl, al
	mov	byte ptr [rbp - 0xbd], cl
	jmp	.label_68
.label_2496:
	cmp	qword ptr [word ptr [compress_program]],  0
	je	.label_56
	mov	rdi,  qword ptr [word ptr [compress_program]]
	mov	rsi,  qword ptr [word ptr [optarg]]
	call	strcmp
	cmp	eax, 0
	je	.label_56
	movabs	rdi, OFFSET FLAT:label_178
	call	gettext
	mov	edi, 2
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_56:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [compress_program]],  rax
	jmp	.label_68
.label_2497:
	mov	byte ptr [byte ptr [debug]],  1
	jmp	.label_68
.label_2498:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x100], rax
	jmp	.label_68
.label_2487:
	lea	rdi, [rbp - 0x60]
	call	key_init
	movabs	rdx, OFFSET FLAT:label_88
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	rsi, qword ptr [rbp - 0x18]
	call	parse_field_count
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rax]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [rax], rsi
	cmp	rdx, 0
	jne	.label_99
	movabs	rsi, OFFSET FLAT:label_52
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	badfieldspec
.label_99:
	mov	rax, qword ptr [rbp - 0xb8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_120
	movabs	rdx, OFFSET FLAT:label_124
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 8
	mov	rdi, rax
	mov	rsi, rcx
	call	parse_field_count
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rax + 8], rdx
	cmp	rcx, 0
	jne	.label_135
	movabs	rsi, OFFSET FLAT:label_82
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	badfieldspec
.label_135:
	jmp	.label_120
.label_120:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	jne	.label_122
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	jne	.label_122
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], -1
.label_122:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rsi, qword ptr [rbp - 0x18]
	call	set_ordering
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax, qword ptr [rbp - 0xb8]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0x2c
	je	.label_176
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x10], -1
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x18], 0
	jmp	.label_179
.label_176:
	movabs	rdx, OFFSET FLAT:label_184
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x10
	mov	rdi, rax
	mov	rsi, rcx
	call	parse_field_count
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rax + 0x10], rdx
	cmp	rcx, 0
	jne	.label_196
	movabs	rsi, OFFSET FLAT:label_52
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	badfieldspec
.label_196:
	mov	rax, qword ptr [rbp - 0xb8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_59
	movabs	rdx, OFFSET FLAT:label_124
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x18
	mov	rdi, rax
	mov	rsi, rcx
	call	parse_field_count
	mov	qword ptr [rbp - 0xb8], rax
.label_59:
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rsi, qword ptr [rbp - 0x18]
	call	set_ordering
	mov	qword ptr [rbp - 0xb8], rax
.label_179:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	byte ptr [rax], 0
	je	.label_90
	movabs	rsi, OFFSET FLAT:label_98
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	badfieldspec
.label_90:
	mov	rdi, qword ptr [rbp - 0x18]
	call	insertkey
	jmp	.label_68
.label_2488:
	mov	byte ptr [rbp - 0xbe], 1
	jmp	.label_68
.label_2499:
	mov	edi, dword ptr [rbp - 0x2dc]
	mov	eax, dword ptr [rbp - 0xbc]
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [optarg]]
	movsx	esi, cl
	call	specify_nmerge
	jmp	.label_68
.label_2489:
	cmp	qword ptr [rbp - 0x228], 0
	je	.label_131
	mov	rdi, qword ptr [rbp - 0x228]
	mov	rsi,  qword ptr [word ptr [optarg]]
	call	strcmp
	cmp	eax, 0
	je	.label_131
	movabs	rdi, OFFSET FLAT:label_136
	call	gettext
	mov	edi, 2
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_131:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x228], rax
	jmp	.label_68
.label_2500:
	cmp	qword ptr [rbp - 0xc8], 0
	je	.label_152
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rsi,  qword ptr [word ptr [optarg]]
	call	strcmp
	cmp	eax, 0
	je	.label_152
	movabs	rdi, OFFSET FLAT:label_163
	call	gettext
	mov	edi, 2
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_152:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_68
.label_2490:
	mov	byte ptr [byte ptr [stable]],  1
	jmp	.label_68
.label_2485:
	mov	edi, dword ptr [rbp - 0x2dc]
	mov	eax, dword ptr [rbp - 0xbc]
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [optarg]]
	movsx	esi, cl
	call	specify_sort_size
	jmp	.label_68
.label_2491:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x2eb], cl
	cmp	byte ptr [rbp - 0x2eb], 0
	jne	.label_194
	movabs	rdi, OFFSET FLAT:label_197
	call	gettext
	mov	edi, 2
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_194:
	mov	rax,  qword ptr [word ptr [optarg]]
	cmp	byte ptr [rax + 1], 0
	je	.label_54
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	eax, OFFSET FLAT:label_58
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_132
	mov	byte ptr [rbp - 0x2eb], 0
	jmp	.label_69
.label_132:
	movabs	rdi, OFFSET FLAT:label_73
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x3a8], rax
	call	quote
	mov	edi, 2
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x3a8]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_69:
	jmp	.label_54
.label_54:
	cmp	dword ptr [dword ptr [tab]],  0x80
	je	.label_94
	mov	eax,  dword ptr [dword ptr [tab]]
	movsx	ecx, byte ptr [rbp - 0x2eb]
	cmp	eax, ecx
	je	.label_94
	movabs	rdi, OFFSET FLAT:label_109
	call	gettext
	mov	edi, 2
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_94:
	movsx	eax, byte ptr [rbp - 0x2eb]
	mov	dword ptr [dword ptr [tab]],  eax
	jmp	.label_68
.label_2486:
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	add_temp_dir
	jmp	.label_68
.label_2502:
	mov	edi, dword ptr [rbp - 0x2dc]
	mov	eax, dword ptr [rbp - 0xbc]
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [optarg]]
	movsx	esi, cl
	call	specify_nthreads
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_68
.label_2492:
	mov	byte ptr [byte ptr [unique]],  1
	jmp	.label_68
.label_2493:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	ecx,  dword ptr [dword ptr [optind]]
	sub	ecx, 1
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rsi + rdx*8]
	jne	.label_144
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x2f8], rax
.label_168:
	mov	rax, qword ptr [rbp - 0x2f8]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_160
	jmp	.label_92
.label_92:
	mov	rax, qword ptr [rbp - 0x2f8]
	add	rax, 1
	mov	qword ptr [rbp - 0x2f8], rax
	jmp	.label_168
.label_160:
	mov	rax, qword ptr [rbp - 0x2f8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	setne	dl
	and	dl, 1
	movzx	ecx, dl
	mov	esi,  dword ptr [dword ptr [optind]]
	sub	esi, ecx
	mov	dword ptr [dword ptr [optind]],  esi
.label_144:
	jmp	.label_68
.label_2494:
	mov	byte ptr [byte ptr [eolchar]],  0
	jmp	.label_68
.label_2481:
	xor	edi, edi
	call	usage
.label_2480:
	movabs	rsi, OFFSET FLAT:label_14
	movabs	rdx, OFFSET FLAT:label_47
	movabs	r8, OFFSET FLAT:label_191
	movabs	r9, OFFSET FLAT:label_192
	xor	eax, eax
	mov	ecx, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	r10,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0x3b0], rcx
	mov	rcx, r10
	mov	qword ptr [rsp], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_138:
	mov	edi, 2
	call	usage
.label_68:
	jmp	.label_65
.label_65:
	jmp	.label_67
.label_116:
	cmp	qword ptr [rbp - 0x100], 0
	je	.label_70
	cmp	qword ptr [rbp - 0xe0], 0
	je	.label_75
	movabs	rdi, OFFSET FLAT:label_80
	call	gettext
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0xf8]
	mov	rsi, qword ptr [rcx]
	mov	qword ptr [rbp - 0x3b8], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x3bc], edi
	mov	esi, dword ptr [rbp - 0x3bc]
	mov	rdx, qword ptr [rbp - 0x3b8]
	mov	rcx, rax
	mov	al, 0
	call	error
	movabs	rdi, OFFSET FLAT:label_104
	mov	rcx,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x3c8], rcx
	call	gettext
	movabs	rsi, OFFSET FLAT:label_114
	mov	rdi, qword ptr [rbp - 0x3c8]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	edi, 2
	mov	dword ptr [rbp - 0x3cc], eax
	call	usage
.label_75:
	movabs	rsi, OFFSET FLAT:label_159
	mov	rdi, qword ptr [rbp - 0x100]
	call	xfopen
	lea	rdi, [rbp - 0x220]
	mov	qword ptr [rbp - 0x300], rax
	call	readtokens0_init
	lea	rsi, [rbp - 0x220]
	mov	rdi, qword ptr [rbp - 0x300]
	call	readtokens0
	test	al, 1
	jne	.label_143
	movabs	rdi, OFFSET FLAT:label_146
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0x3d8], rax
	call	quotearg_style
	mov	edi, 2
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x3d8]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_143:
	mov	rdi, qword ptr [rbp - 0x300]
	mov	rsi, qword ptr [rbp - 0x100]
	call	xfclose
	cmp	qword ptr [rbp - 0x220], 0
	je	.label_172
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x218]
	mov	qword ptr [rbp - 0xf8], rax
	mov	rax, qword ptr [rbp - 0x220]
	mov	qword ptr [rbp - 0xe0], rax
	mov	qword ptr [rbp - 0x308], 0
.label_193:
	mov	rax, qword ptr [rbp - 0x308]
	cmp	rax, qword ptr [rbp - 0xe0]
	jae	.label_87
	mov	rax, qword ptr [rbp - 0x308]
	mov	rcx, qword ptr [rbp - 0xf8]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, OFFSET FLAT:label_108
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	jne	.label_180
	movabs	rdi, OFFSET FLAT:label_202
	call	gettext
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0x308]
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0x3e0], rax
	call	quotearg_style
	mov	edi, 2
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x3e0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_180:
	mov	rax, qword ptr [rbp - 0x308]
	mov	rcx, qword ptr [rbp - 0xf8]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0
	jne	.label_74
	movabs	rdi, OFFSET FLAT:label_166
	mov	rax, qword ptr [rbp - 0x308]
	add	rax, 1
	mov	qword ptr [rbp - 0x310], rax
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0x3e8], rax
	call	quotearg_n_style_colon
	mov	edi, 2
	xor	esi, esi
	mov	r8, qword ptr [rbp - 0x310]
	mov	rdx, qword ptr [rbp - 0x3e8]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_74:
	jmp	.label_115
.label_115:
	jmp	.label_185
.label_185:
	mov	rax, qword ptr [rbp - 0x308]
	add	rax, 1
	mov	qword ptr [rbp - 0x308], rax
	jmp	.label_193
.label_87:
	jmp	.label_195
.label_172:
	movabs	rdi, OFFSET FLAT:label_126
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0x3f0], rax
	call	quotearg_style
	mov	edi, 2
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x3f0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_195:
	jmp	.label_70
.label_70:
	mov	rax,  qword ptr [word ptr [keylist]]
	mov	qword ptr [rbp - 0x18], rax
.label_201:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_150
	mov	rdi, qword ptr [rbp - 0x18]
	call	default_key_compare
	test	al, 1
	jne	.label_155
	jmp	.label_157
.label_155:
	mov	rax, qword ptr [rbp - 0x18]
	test	byte ptr [rax + 0x37], 1
	jne	.label_157
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x28], rax
	mov	dl, byte ptr [rbp - 0x78]
	mov	rax, qword ptr [rbp - 0x18]
	and	dl, 1
	mov	byte ptr [rax + 0x30], dl
	mov	dl, byte ptr [rbp - 0x77]
	mov	rax, qword ptr [rbp - 0x18]
	and	dl, 1
	mov	byte ptr [rax + 0x31], dl
	mov	dl, byte ptr [rbp - 0x72]
	mov	rax, qword ptr [rbp - 0x18]
	and	dl, 1
	mov	byte ptr [rax + 0x36], dl
	mov	dl, byte ptr [rbp - 0x76]
	mov	rax, qword ptr [rbp - 0x18]
	and	dl, 1
	mov	byte ptr [rax + 0x32], dl
	mov	dl, byte ptr [rbp - 0x74]
	mov	rax, qword ptr [rbp - 0x18]
	and	dl, 1
	mov	byte ptr [rax + 0x34], dl
	mov	dl, byte ptr [rbp - 0x73]
	mov	rax, qword ptr [rbp - 0x18]
	and	dl, 1
	mov	byte ptr [rax + 0x35], dl
	mov	dl, byte ptr [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x18]
	and	dl, 1
	mov	byte ptr [rax + 0x38], dl
	mov	dl, byte ptr [rbp - 0x75]
	mov	rax, qword ptr [rbp - 0x18]
	and	dl, 1
	mov	byte ptr [rax + 0x33], dl
	mov	dl, byte ptr [rbp - 0x71]
	mov	rax, qword ptr [rbp - 0x18]
	and	dl, 1
	mov	byte ptr [rax + 0x37], dl
.label_157:
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x33]
	and	cl, 1
	movzx	edx, cl
	mov	cl, byte ptr [rbp - 0xc9]
	and	cl, 1
	movzx	esi, cl
	or	esi, edx
	cmp	esi, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0xc9], cl
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_201
.label_150:
	cmp	qword ptr [word ptr [keylist]],  0
	jne	.label_64
	lea	rdi, [rbp - 0xa8]
	call	default_key_compare
	test	al, 1
	jne	.label_64
	lea	rdi, [rbp - 0xa8]
	mov	byte ptr [rbp - 0xa9], 1
	call	insertkey
	mov	al, byte ptr [rbp - 0x75]
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0xc9]
	and	al, 1
	movzx	edx, al
	or	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0xc9], al
.label_64:
	call	check_ordering_compatibility
	test	byte ptr [byte ptr [debug]],  1
	je	.label_97
	movsx	eax, byte ptr [rbp - 0xbd]
	cmp	eax, 0
	jne	.label_101
	cmp	qword ptr [rbp - 0x228], 0
	je	.label_198
.label_101:
	movsx	eax, byte ptr [rbp - 0xbd]
	cmp	eax, 0
	je	.label_113
	movsx	eax, byte ptr [rbp - 0xbd]
	mov	dword ptr [rbp - 0x3f4], eax
	jmp	.label_119
.label_113:
	mov	eax, 0x6f
	mov	dword ptr [rbp - 0x3f4], eax
	jmp	.label_119
.label_119:
	mov	eax, dword ptr [rbp - 0x3f4]
	movabs	rdi, OFFSET FLAT:main.opts
	mov	cl, al
	mov	byte ptr [byte ptr [main.opts]],  cl
	call	incompatible_options
.label_198:
	test	byte ptr [rbp - 0x229], 1
	je	.label_60
	mov	edi, 3
	movabs	rsi, OFFSET FLAT:label_48
	call	setlocale
	cmp	rax, 0
	setne	cl
	xor	cl, 0xff
	xor	cl, 0xff
	and	cl, 1
	mov	byte ptr [rbp - 0x229], cl
.label_60:
	test	byte ptr [rbp - 0x229], 1
	jne	.label_147
	movabs	rdi, OFFSET FLAT:label_156
	call	gettext
	xor	ecx, ecx
	movabs	rdx, OFFSET FLAT:label_137
	mov	edi, ecx
	mov	esi, ecx
	mov	rcx, rax
	mov	al, 0
	call	error
.label_147:
	test	byte ptr [byte ptr [hard_LC_COLLATE]],  1
	je	.label_169
	movabs	rdi, OFFSET FLAT:label_177
	call	gettext
	mov	edi, 3
	xor	ecx, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x400], rax
	call	setlocale
	mov	rdi, rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x400]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_134
.label_169:
	movabs	rdi, OFFSET FLAT:label_111
	call	gettext
	xor	ecx, ecx
	movabs	rdx, OFFSET FLAT:label_137
	mov	edi, ecx
	mov	esi, ecx
	mov	rcx, rax
	mov	al, 0
	call	error
.label_134:
	lea	rdi, [rbp - 0xa8]
	mov	al, byte ptr [rbp - 0xa9]
	and	al, 1
	movzx	esi, al
	call	key_warnings
.label_97:
	mov	al, byte ptr [rbp - 0x71]
	and	al, 1
	mov	byte ptr [byte ptr [reverse]],  al
	test	byte ptr [rbp - 0xc9], 1
	je	.label_55
	mov	rdi, qword ptr [rbp - 0xc8]
	call	random_md5_state_init
.label_55:
	cmp	qword ptr [word ptr [temp_dir_count]],  0
	jne	.label_66
	movabs	rdi, OFFSET FLAT:label_71
	call	getenv
	mov	qword ptr [rbp - 0x318], rax
	cmp	qword ptr [rbp - 0x318], 0
	je	.label_186
	mov	rax, qword ptr [rbp - 0x318]
	mov	qword ptr [rbp - 0x408], rax
	jmp	.label_84
.label_186:
	movabs	rax, OFFSET FLAT:label_29
	mov	qword ptr [rbp - 0x408], rax
	jmp	.label_84
.label_84:
	mov	rax, qword ptr [rbp - 0x408]
	mov	rdi, rax
	call	add_temp_dir
.label_66:
	cmp	qword ptr [rbp - 0xe0], 0
	jne	.label_102
	mov	qword ptr [rbp - 0xe0], 1
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rdi, rax
	call	free
	mov	ecx, 8
	mov	edi, ecx
	call	xmalloc
	movabs	rdi, OFFSET FLAT:label_108
	mov	qword ptr [rbp - 0xf8], rax
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rax], rdi
.label_102:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx,  qword ptr [word ptr [sort_size]]
	jae	.label_164
	mov	rax,  qword ptr [word ptr [sort_size]]
	mov	ecx,  dword ptr [dword ptr [nmerge]]
	mov	edx, ecx
	imul	rdx, rdx, 0x22
	cmp	rax, rdx
	jbe	.label_130
	mov	rax,  qword ptr [word ptr [sort_size]]
	mov	qword ptr [rbp - 0x410], rax
	jmp	.label_96
.label_130:
	mov	eax,  dword ptr [dword ptr [nmerge]]
	mov	ecx, eax
	imul	rcx, rcx, 0x22
	mov	qword ptr [rbp - 0x410], rcx
.label_96:
	mov	rax, qword ptr [rbp - 0x410]
	mov	qword ptr [word ptr [sort_size]],  rax
.label_164:
	cmp	byte ptr [rbp - 0xbd], 0
	je	.label_158
	cmp	qword ptr [rbp - 0xe0], 1
	jbe	.label_125
	movabs	rdi, OFFSET FLAT:label_165
	call	gettext
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0xf8]
	mov	rsi, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x418], rax
	call	quotearg_style
	mov	edi, 2
	xor	esi, esi
	movsx	r8d, byte ptr [rbp - 0xbd]
	mov	rdx, qword ptr [rbp - 0x418]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_125:
	cmp	qword ptr [rbp - 0x228], 0
	je	.label_100
	movabs	rdi, OFFSET FLAT:main.opts.64
	mov	al, byte ptr [rbp - 0xbd]
	mov	byte ptr [byte ptr [main.opts.64]],  al
	call	incompatible_options
.label_100:
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rdi, qword ptr [rax]
	movsx	esi, byte ptr [rbp - 0xbd]
	call	check
	mov	esi, 1
	xor	ecx, ecx
	test	al, 1
	cmovne	esi, ecx
	mov	dword ptr [rbp - 4], esi
	jmp	.label_171
.label_158:
	mov	rdi, qword ptr [rbp - 0xf8]
	mov	rsi, qword ptr [rbp - 0xe0]
	call	check_inputs
	mov	rdi, qword ptr [rbp - 0x228]
	call	check_output
	test	byte ptr [rbp - 0xbe], 1
	je	.label_62
	mov	eax, 0x10
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0xe0]
	call	xcalloc
	mov	qword ptr [rbp - 0x320], rax
	mov	qword ptr [rbp - 0x328], 0
.label_86:
	mov	rax, qword ptr [rbp - 0x328]
	cmp	rax, qword ptr [rbp - 0xe0]
	jae	.label_81
	mov	rax, qword ptr [rbp - 0x328]
	mov	rcx, qword ptr [rbp - 0xf8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x328]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x320]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x328]
	add	rax, 1
	mov	qword ptr [rbp - 0x328], rax
	jmp	.label_86
.label_81:
	xor	eax, eax
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x320]
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rcx, qword ptr [rbp - 0x228]
	call	merge
	jmp	.label_142
.label_62:
	cmp	qword ptr [rbp - 0xd8], 0
	jne	.label_121
	mov	edi, 2
	call	num_processors
	mov	qword ptr [rbp - 0x330], rax
	cmp	qword ptr [rbp - 0x330], 8
	jae	.label_129
	mov	rax, qword ptr [rbp - 0x330]
	mov	qword ptr [rbp - 0x420], rax
	jmp	.label_79
.label_129:
	mov	eax, 8
	mov	ecx, eax
	mov	qword ptr [rbp - 0x420], rcx
	jmp	.label_79
.label_79:
	mov	rax, qword ptr [rbp - 0x420]
	mov	qword ptr [rbp - 0xd8], rax
.label_121:
	movabs	rax, 0xffffffffffffff
	mov	qword ptr [rbp - 0x338], rax
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x338]
	jae	.label_149
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x428], rax
	jmp	.label_190
.label_149:
	mov	rax, qword ptr [rbp - 0x338]
	mov	qword ptr [rbp - 0x428], rax
.label_190:
	mov	rax, qword ptr [rbp - 0x428]
	mov	qword ptr [rbp - 0xd8], rax
	mov	rdi, qword ptr [rbp - 0xf8]
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	rdx, qword ptr [rbp - 0x228]
	mov	rcx, qword ptr [rbp - 0xd8]
	call	sort
.label_142:
	test	byte ptr [byte ptr [have_read_stdin]],  1
	je	.label_110
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_110
	movabs	rdi, OFFSET FLAT:label_182
	call	gettext
	movabs	rsi, OFFSET FLAT:label_108
	mov	rdi, rax
	call	sort_die
.label_110:
	mov	dword ptr [rbp - 4], 0
.label_171:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x430
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c00

	.globl initialize_exit_failure
	.type initialize_exit_failure, @function
initialize_exit_failure:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 1
	je	.label_203
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [dword ptr [exit_failure]],  eax
.label_203:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c20

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	movzx	eax, byte ptr [rbp - 1]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c30

	.globl inittables
	.type inittables, @function
inittables:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], 0
.label_206:
	cmp	qword ptr [rbp - 8], 0x100
	jae	.label_204
	mov	rax, qword ptr [rbp - 8]
	mov	cl, al
	movzx	edi, cl
	call	field_sep
	mov	rdx, qword ptr [rbp - 8]
	and	al, 1
	mov	byte ptr [byte ptr [+ (rdx * 1) + blanks]],  al
	mov	rdx, qword ptr [rbp - 8]
	mov	edi, edx
	movsxd	rdx, edi
	mov	qword ptr [rbp - 0x38], rdx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x38]
	movzx	edi, word ptr [rax + rdx*2]
	and	edi, 0x4000
	cmp	edi, 0
	setne	cl
	xor	cl, 0xff
	mov	rax, qword ptr [rbp - 8]
	and	cl, 1
	mov	byte ptr [byte ptr [+ (rax * 1) + nonprinting]],  cl
	mov	rax, qword ptr [rbp - 8]
	mov	edi, eax
	movsxd	rax, edi
	mov	qword ptr [rbp - 0x40], rax
	call	__ctype_b_loc
	xor	edi, edi
	mov	cl, dil
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x40]
	movzx	edi, word ptr [rax + rdx*2]
	and	edi, 8
	cmp	edi, 0
	mov	byte ptr [rbp - 0x41], cl
	jne	.label_210
	mov	rax, qword ptr [rbp - 8]
	mov	cl, al
	movzx	edi, cl
	call	field_sep
	xor	al, 0xff
	mov	byte ptr [rbp - 0x41], al
.label_210:
	mov	al, byte ptr [rbp - 0x41]
	mov	rcx, qword ptr [rbp - 8]
	and	al, 1
	mov	byte ptr [byte ptr [+ (rcx * 1) + nondictionary]],  al
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, ecx
	mov	edi, edx
	call	toupper
	mov	sil, al
	mov	rcx, qword ptr [rbp - 8]
	mov	byte ptr [byte ptr [+ (rcx * 1) + fold_toupper]],  sil
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_206
.label_204:
	test	byte ptr [byte ptr [hard_LC_TIME]],  1
	je	.label_208
	mov	qword ptr [rbp - 8], 0
.label_207:
	cmp	qword ptr [rbp - 8], 0xc
	jae	.label_212
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x2000e
	mov	ecx, eax
	mov	edi, ecx
	call	rpl_nl_langinfo
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	movabs	rdi, OFFSET FLAT:monthtab
	mov	qword ptr [rbp - 0x30], rax
	mov	rdx, qword ptr [rbp - 8]
	shl	rdx, 4
	mov	rsi, rdi
	add	rsi, rdx
	mov	qword ptr [rsi], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	shl	rax, 4
	add	rdi, rax
	mov	dword ptr [rdi + 8], ecx
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x20], 0
.label_213:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_205
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x50], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x50]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 1
	cmp	edi, 0
	jne	.label_209
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + fold_toupper]]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rdx + rcx], al
.label_209:
	jmp	.label_211
.label_211:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_213
.label_205:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_207
.label_212:
	movabs	rax, OFFSET FLAT:monthtab
	mov	ecx, 0xc
	mov	esi, ecx
	mov	ecx, 0x10
	mov	edx, ecx
	movabs	rcx, OFFSET FLAT:struct_month_cmp
	mov	rdi, rax
	call	qsort
.label_208:
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ea0

	.globl sighandler
	.type sighandler, @function
sighandler:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	call	cleanup
	xor	edi, edi
	mov	esi, edi
	mov	edi, dword ptr [rbp - 4]
	call	signal
	mov	edi, dword ptr [rbp - 4]
	mov	qword ptr [rbp - 0x10], rax
	call	raise
	mov	dword ptr [rbp - 0x14], eax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ee0

	.globl exit_cleanup
	.type exit_cleanup, @function
exit_cleanup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	rax,  qword ptr [word ptr [temphead]]
	cmp	rax, 0
	je	.label_214
	lea	rdi, [rbp - 0x88]
	call	cs_enter
	call	cleanup
	lea	rdi, [rbp - 0x88]
	call	cs_leave
.label_214:
	call	close_stdout
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404f30

	.globl key_init
	.type key_init, @function
key_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	esi, esi
	mov	eax, 0x48
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	memset
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x10], -1
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404f70

	.globl parse_field_count
	.type parse_field_count, @function
parse_field_count:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_48
	mov	r8d, eax
	lea	rsi, [rbp - 0x28]
	mov	edx, 0xa
	lea	rcx, [rbp - 0x30]
	call	xstrtoumax
	mov	edx, eax
	mov	ecx, edx
	sub	eax, 4
	mov	qword ptr [rbp - 0x38], rcx
	mov	dword ptr [rbp - 0x3c], eax
	ja	.label_215
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_219]]
	jmp	rcx
.label_2450:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_216
	jmp	.label_215
.label_216:
	jmp	.label_217
.label_217:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], -1
	jmp	.label_215
.label_2451:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_220
	movabs	rdi, OFFSET FLAT:label_221
	call	gettext
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x48], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x50], rax
	call	quote
	mov	edi, 2
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	r8, rax
	mov	al, 0
	call	error
.label_220:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_218
.label_215:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_218:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405070

	.globl set_ordering
	.type set_ordering, @function
set_ordering:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
.label_231:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax], 0
	je	.label_230
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x4d
	mov	eax, ecx
	sub	ecx, 0x25
	mov	qword ptr [rbp - 0x28], rax
	mov	dword ptr [rbp - 0x2c], ecx
	ja	.label_224
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_228]]
	jmp	rcx
.label_2467:
	cmp	dword ptr [rbp - 0x1c], 0
	je	.label_232
	cmp	dword ptr [rbp - 0x1c], 2
	jne	.label_222
.label_232:
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x30], 1
.label_222:
	cmp	dword ptr [rbp - 0x1c], 1
	je	.label_225
	cmp	dword ptr [rbp - 0x1c], 2
	jne	.label_229
.label_225:
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x31], 1
.label_229:
	jmp	.label_223
.label_2468:
	movabs	rax, OFFSET FLAT:nondictionary
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x20], rax
	jmp	.label_223
.label_2469:
	movabs	rax, OFFSET FLAT:fold_toupper
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x28], rax
	jmp	.label_223
.label_2470:
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x34], 1
	jmp	.label_223
.label_2471:
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x35], 1
	jmp	.label_223
.label_2472:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x20], 0
	jne	.label_227
	movabs	rax, OFFSET FLAT:nonprinting
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x20], rax
.label_227:
	jmp	.label_223
.label_2464:
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x36], 1
	jmp	.label_223
.label_2473:
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x32], 1
	jmp	.label_223
.label_2465:
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x33], 1
	jmp	.label_223
.label_2474:
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x37], 1
	jmp	.label_223
.label_2466:
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x38], 1
	jmp	.label_223
.label_224:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_226
.label_223:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_231
.label_230:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_226:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4051d0

	.globl badfieldspec
	.type badfieldspec, @function
badfieldspec:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, OFFSET FLAT:label_233
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	call	quote
	mov	edi, 2
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, rax
	mov	al, 0
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405230

	.globl insertkey
	.type insertkey, @function
insertkey:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 0x48
	mov	esi, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmemdup
	movabs	rsi, OFFSET FLAT:keylist
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x10], rsi
.label_234:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_236
	jmp	.label_235
.label_235:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	add	rax, 0x40
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_234
.label_236:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x40], 0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4052b0

	.globl incompatible_options
	.type incompatible_options, @function
incompatible_options:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, OFFSET FLAT:label_237
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rax
	call	gettext
	mov	edi, 2
	xor	esi, esi
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, rax
	mov	al, 0
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052f0

	.globl specify_nmerge
	.type specify_nmerge, @function
specify_nmerge:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	al, sil
	xor	esi, esi
	mov	ecx, esi
	mov	esi, 0xa
	lea	r8, [rbp - 0x18]
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], al
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x40], esi
	mov	rsi, rcx
	mov	edx, dword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rcx, r8
	mov	r8, qword ptr [rbp - 0x48]
	call	xstrtoumax
	mov	edi, 7
	lea	rsi, [rbp - 0x28]
	mov	dword ptr [rbp - 0x2c], eax
	call	getrlimit
	cmp	eax, 0
	jne	.label_239
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_243
.label_239:
	mov	eax, 0x14
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rcx
	jmp	.label_243
.label_243:
	mov	rax, qword ptr [rbp - 0x50]
	sub	rax, 3
	mov	ecx, eax
	mov	dword ptr [rbp - 0x30], ecx
	cmp	dword ptr [rbp - 0x2c], 0
	jne	.label_244
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, eax
	mov	dword ptr [dword ptr [nmerge]],  ecx
	mov	ecx,  dword ptr [dword ptr [nmerge]]
	mov	eax, ecx
	cmp	rax, qword ptr [rbp - 0x18]
	je	.label_238
	mov	dword ptr [rbp - 0x2c], 1
	jmp	.label_242
.label_238:
	cmp	dword ptr [dword ptr [nmerge]],  2
	jae	.label_249
	movabs	rdi, OFFSET FLAT:label_252
	call	gettext
	movabs	rdi, OFFSET FLAT:long_options
	movsxd	rcx, dword ptr [rbp - 4]
	shl	rcx, 5
	add	rdi, rcx
	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	qword ptr [rbp - 0x60], rcx
	call	quote
	xor	edx, edx
	mov	edi, edx
	mov	esi, edx
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	r8, rax
	mov	al, 0
	call	error
	movabs	rdi, OFFSET FLAT:label_241
	call	gettext
	movabs	rdi, OFFSET FLAT:label_245
	movabs	rcx, OFFSET FLAT:long_options
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 5
	add	rcx, rdx
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x70], rcx
	call	quote
	mov	edi, 2
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	r8, rax
	mov	al, 0
	call	error
.label_249:
	mov	eax, dword ptr [rbp - 0x30]
	cmp	eax,  dword ptr [dword ptr [nmerge]]
	jae	.label_248
	mov	dword ptr [rbp - 0x2c], 1
	jmp	.label_251
.label_248:
	add	rsp, 0x90
	pop	rbp
	ret	
.label_251:
	jmp	.label_240
.label_240:
	jmp	.label_242
.label_242:
	jmp	.label_244
.label_244:
	cmp	dword ptr [rbp - 0x2c], 1
	jne	.label_246
	movabs	rdi, OFFSET FLAT:label_247
	call	gettext
	movabs	rdi, OFFSET FLAT:long_options
	movsxd	rcx, dword ptr [rbp - 4]
	shl	rcx, 5
	add	rdi, rcx
	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x78], rax
	mov	qword ptr [rbp - 0x80], rcx
	call	quote
	xor	edx, edx
	mov	edi, edx
	mov	esi, edx
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	r8, rax
	mov	al, 0
	call	error
	movabs	rdi, OFFSET FLAT:label_250
	call	gettext
	lea	rsi, [rbp - 0x3b]
	movabs	rcx, OFFSET FLAT:long_options
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 5
	add	rcx, rdx
	mov	rcx, qword ptr [rcx]
	mov	edi, dword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x88], rax
	mov	qword ptr [rbp - 0x90], rcx
	call	uinttostr
	mov	edi, 2
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	r8, rax
	mov	al, 0
	call	error
.label_246:
	movabs	rcx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rbp - 0x2c]
	mov	esi, dword ptr [rbp - 4]
	mov	al, byte ptr [rbp - 5]
	mov	r8, qword ptr [rbp - 0x10]
	movsx	edx, al
	call	xstrtol_fatal
	.section	.text
	.align	16
	#Procedure 0x405570

	.globl specify_sort_size
	.type specify_sort_size, @function
specify_sort_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, sil
	lea	rsi, [rbp - 0x20]
	mov	ecx, 0xa
	lea	r8, [rbp - 0x18]
	movabs	r9, OFFSET FLAT:label_273
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], al
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	edx, ecx
	mov	rcx, r8
	mov	r8, r9
	call	xstrtoumax
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_266
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax - 1]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_266
	movabs	rax, 0x3fffffffffffff
	cmp	qword ptr [rbp - 0x18], rax
	ja	.label_261
	mov	rax, qword ptr [rbp - 0x18]
	shl	rax, 0xa
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_260
.label_261:
	mov	dword ptr [rbp - 0x24], 1
.label_260:
	jmp	.label_266
.label_266:
	cmp	dword ptr [rbp - 0x24], 2
	jne	.label_259
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax - 1]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_259
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax + 1], 0
	jne	.label_259
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x25
	mov	dword ptr [rbp - 0x34], ecx
	mov	dword ptr [rbp - 0x38], edx
	je	.label_271
	jmp	.label_262
.label_262:
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x3c], eax
	jne	.label_255
	jmp	.label_265
.label_265:
	mov	dword ptr [rbp - 0x24], 0
	jmp	.label_255
.label_271:
	movsd	xmm0,  qword ptr [word ptr [rip + label_269]]
	movsd	xmm1,  qword ptr [word ptr [rip + label_270]]
	movsd	qword ptr [rbp - 0x48], xmm0
	movsd	qword ptr [rbp - 0x50], xmm1
	call	physmem_total
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_256]]
	movq	xmm2, qword ptr [rbp - 0x18]
	punpckldq	xmm2, xmm1
	movapd	xmm1,  xmmword ptr [word ptr [rip + label_257]]
	subpd	xmm2, xmm1
	pshufd	xmm1, xmm2, 0x4e
	addpd	xmm1, xmm2
	mulsd	xmm0, xmm1
	movsd	xmm1, qword ptr [rbp - 0x50]
	divsd	xmm0, xmm1
	movsd	qword ptr [rbp - 0x30], xmm0
	movsd	xmm0, qword ptr [rbp - 0x48]
	ucomisd	xmm0, qword ptr [rbp - 0x30]
	jbe	.label_258
	movsd	xmm0, qword ptr [rbp - 0x30]
	movsd	xmm1,  qword ptr [word ptr [rip + label_263]]
	movaps	xmm2, xmm0
	subsd	xmm2, xmm1
	cvttsd2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttsd2si	rcx, xmm0
	ucomisd	xmm1, xmm0
	cmova	rax, rcx
	mov	qword ptr [rbp - 0x18], rax
	mov	dword ptr [rbp - 0x24], 0
	jmp	.label_264
.label_258:
	mov	dword ptr [rbp - 0x24], 1
.label_264:
	jmp	.label_255
.label_255:
	jmp	.label_259
.label_259:
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_268
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax,  qword ptr [word ptr [sort_size]]
	jae	.label_272
	jmp	.label_253
.label_272:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [sort_size]],  rax
	mov	rax,  qword ptr [word ptr [sort_size]]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_254
	mov	rax,  qword ptr [word ptr [sort_size]]
	mov	ecx,  dword ptr [dword ptr [nmerge]]
	mov	edx, ecx
	imul	rdx, rdx, 0x22
	cmp	rax, rdx
	jbe	.label_267
	mov	rax,  qword ptr [word ptr [sort_size]]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_274
.label_267:
	mov	eax,  dword ptr [dword ptr [nmerge]]
	mov	ecx, eax
	imul	rcx, rcx, 0x22
	mov	qword ptr [rbp - 0x58], rcx
.label_274:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [word ptr [sort_size]],  rax
	jmp	.label_253
.label_254:
	mov	dword ptr [rbp - 0x24], 1
.label_268:
	movabs	rcx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rbp - 0x24]
	mov	esi, dword ptr [rbp - 4]
	mov	al, byte ptr [rbp - 5]
	mov	r8, qword ptr [rbp - 0x10]
	movsx	edx, al
	call	xstrtol_fatal
.label_253:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4057e0

	.globl add_temp_dir
	.type add_temp_dir, @function
add_temp_dir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi,  qword ptr [word ptr [temp_dir_count]]
	cmp	rdi,  qword ptr [word ptr [temp_dir_alloc]]
	jne	.label_275
	movabs	rsi, OFFSET FLAT:temp_dir_alloc
	mov	eax, 8
	mov	edx, eax
	mov	rcx,  qword ptr [word ptr [temp_dirs]]
	mov	rdi, rcx
	call	x2nrealloc
	mov	qword ptr [word ptr [temp_dirs]],  rax
.label_275:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [temp_dir_count]]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [word ptr [temp_dir_count]],  rdx
	mov	rdx,  qword ptr [word ptr [temp_dirs]]
	mov	qword ptr [rdx + rcx*8], rax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405860

	.globl specify_nthreads
	.type specify_nthreads, @function
specify_nthreads:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, sil
	xor	esi, esi
	mov	ecx, 0xa
	lea	r8, [rbp - 0x20]
	movabs	r9, OFFSET FLAT:label_48
	mov	dword ptr [rbp - 0xc], edi
	mov	byte ptr [rbp - 0xd], al
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 0x18]
	mov	edx, ecx
	mov	rcx, r8
	mov	r8, r9
	call	xstrtoul
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 1
	jne	.label_280
	mov	qword ptr [rbp - 8], -1
	jmp	.label_276
.label_280:
	cmp	dword ptr [rbp - 0x24], 0
	je	.label_278
	movabs	rcx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rbp - 0x24]
	mov	esi, dword ptr [rbp - 0xc]
	mov	al, byte ptr [rbp - 0xd]
	mov	r8, qword ptr [rbp - 0x18]
	movsx	edx, al
	call	xstrtol_fatal
.label_278:
	mov	rax, -1
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_281
	mov	qword ptr [rbp - 0x20], -1
.label_281:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_279
	movabs	rdi, OFFSET FLAT:label_277
	call	gettext
	mov	edi, 2
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_279:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_276:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405940

	.globl xfopen
	.type xfopen, @function
xfopen:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	stream_open
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_283
	movabs	rdi, OFFSET FLAT:label_282
	call	gettext
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rax
	call	sort_die
.label_283:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4059a0

	.globl xfclose
	.type xfclose, @function
xfclose:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	call	fileno
	mov	ecx, eax
	test	eax, eax
	mov	dword ptr [rbp - 0x14], ecx
	je	.label_291
	jmp	.label_285
.label_285:
	mov	eax, dword ptr [rbp - 0x14]
	sub	eax, 1
	mov	dword ptr [rbp - 0x18], eax
	je	.label_287
	jmp	.label_292
.label_291:
	mov	rdi, qword ptr [rbp - 8]
	call	feof_unlocked
	cmp	eax, 0
	je	.label_286
	mov	rdi, qword ptr [rbp - 8]
	call	clearerr_unlocked
.label_286:
	jmp	.label_288
.label_287:
	mov	rdi, qword ptr [rbp - 8]
	call	fflush_unlocked
	cmp	eax, 0
	je	.label_290
	movabs	rdi, OFFSET FLAT:label_289
	call	gettext
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	sort_die
.label_290:
	jmp	.label_288
.label_292:
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fclose
	cmp	eax, 0
	je	.label_284
	movabs	rdi, OFFSET FLAT:label_182
	call	gettext
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	sort_die
.label_284:
	jmp	.label_288
.label_288:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405a70

	.globl default_key_compare
	.type default_key_compare, @function
default_key_compare:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, 1
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x20], 0
	mov	byte ptr [rbp - 9], al
	jne	.label_293
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 0x28], 0
	mov	byte ptr [rbp - 9], al
	jne	.label_293
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	test	byte ptr [rcx + 0x30], 1
	mov	byte ptr [rbp - 9], al
	jne	.label_293
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	test	byte ptr [rcx + 0x31], 1
	mov	byte ptr [rbp - 9], al
	jne	.label_293
	mov	rdi, qword ptr [rbp - 8]
	call	key_numeric
	mov	cl, 1
	test	al, 1
	mov	byte ptr [rbp - 9], cl
	jne	.label_293
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	test	byte ptr [rcx + 0x36], 1
	mov	byte ptr [rbp - 9], al
	jne	.label_293
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	test	byte ptr [rcx + 0x38], 1
	mov	byte ptr [rbp - 9], al
	jne	.label_293
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x33]
	mov	byte ptr [rbp - 9], cl
.label_293:
	mov	al, byte ptr [rbp - 9]
	xor	al, 0xff
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405b20

	.globl check_ordering_compatibility
	.type check_ordering_compatibility, @function
check_ordering_compatibility:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rax,  qword ptr [word ptr [keylist]]
	mov	qword ptr [rbp - 8], rax
.label_296:
	cmp	qword ptr [rbp - 8], 0
	je	.label_295
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	dl, byte ptr [rcx + 0x32]
	and	dl, 1
	movzx	esi, dl
	mov	rcx, qword ptr [rbp - 8]
	mov	dl, byte ptr [rcx + 0x34]
	and	dl, 1
	movzx	edi, dl
	add	esi, edi
	mov	rcx, qword ptr [rbp - 8]
	mov	dl, byte ptr [rcx + 0x35]
	and	dl, 1
	movzx	edi, dl
	add	esi, edi
	mov	rcx, qword ptr [rbp - 8]
	mov	dl, byte ptr [rcx + 0x36]
	and	dl, 1
	movzx	edi, dl
	add	esi, edi
	mov	rcx, qword ptr [rbp - 8]
	mov	dl, byte ptr [rcx + 0x38]
	and	dl, 1
	movzx	edi, dl
	mov	rcx, qword ptr [rbp - 8]
	mov	dl, byte ptr [rcx + 0x33]
	and	dl, 1
	movzx	r8d, dl
	or	edi, r8d
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 0x20], 0
	setne	dl
	xor	dl, 0xff
	xor	dl, 0xff
	and	dl, 1
	movzx	r8d, dl
	or	edi, r8d
	add	esi, edi
	cmp	eax, esi
	jge	.label_297
	lea	rsi, [rbp - 0x30]
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x37], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x31], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x30], 0
	mov	rdi, qword ptr [rbp - 8]
	call	key_to_opts
	lea	rdi, [rbp - 0x30]
	call	incompatible_options
.label_297:
	jmp	.label_294
.label_294:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_296
.label_295:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405c10

	.globl key_warnings
	.type key_warnings, @function
key_warnings:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1e0
	mov	al, sil
	mov	esi, 0x48
	mov	edx, esi
	lea	rcx, [rbp - 0x60]
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x148], rdi
	mov	rdi, rcx
	mov	rsi, qword ptr [rbp - 0x148]
	call	memcpy
	mov	qword ptr [rbp - 0x68], 1
	mov	rcx,  qword ptr [word ptr [keylist]]
	mov	qword ptr [rbp - 0x18], rcx
.label_317:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_311
	mov	rax, qword ptr [rbp - 0x18]
	test	byte ptr [rax + 0x39], 1
	je	.label_320
	lea	rax, [rbp - 0xf0]
	lea	rcx, [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x70], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rbp - 0x78], rdx
	mov	qword ptr [rbp - 0xf8], rcx
	mov	qword ptr [rbp - 0x100], rax
	cmp	qword ptr [rbp - 0x70], -1
	jne	.label_319
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
.label_319:
	lea	rsi, [rbp - 0x90]
	mov	rdi, qword ptr [rbp - 0xf8]
	mov	eax, OFFSET FLAT:label_325
	mov	ecx, eax
	mov	qword ptr [rbp - 0x150], rsi
	mov	rsi, rcx
	call	stpcpy
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x150]
	mov	qword ptr [rbp - 0x158], rax
	call	umaxtostr
	lea	rsi, [rbp - 0x90]
	mov	rdi, qword ptr [rbp - 0x158]
	mov	qword ptr [rbp - 0x160], rsi
	mov	rsi, rax
	call	stpcpy
	mov	qword ptr [rbp - 0xf8], rax
	mov	rdi, qword ptr [rbp - 0x100]
	mov	edx, OFFSET FLAT:label_303
	mov	esi, edx
	call	stpcpy
	mov	rcx, qword ptr [rbp - 0x70]
	add	rcx, 1
	mov	rdi, rcx
	mov	rsi, qword ptr [rbp - 0x160]
	mov	qword ptr [rbp - 0x168], rax
	call	umaxtostr
	mov	rdi, qword ptr [rbp - 0x168]
	mov	rsi, rax
	call	stpcpy
	mov	qword ptr [rbp - 0x100], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x10], -1
	je	.label_316
	lea	rsi, [rbp - 0x90]
	mov	rdi, qword ptr [rbp - 0xf8]
	mov	eax, OFFSET FLAT:label_318
	mov	ecx, eax
	mov	qword ptr [rbp - 0x170], rsi
	mov	rsi, rcx
	call	stpcpy
	mov	rcx, qword ptr [rbp - 0x78]
	add	rcx, 1
	mov	rdi, rcx
	mov	rsi, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0x178], rax
	call	umaxtostr
	lea	rsi, [rbp - 0x90]
	mov	rdi, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x180], rsi
	mov	rsi, rax
	call	stpcpy
	mov	rdi, qword ptr [rbp - 0x100]
	mov	edx, OFFSET FLAT:label_329
	mov	esi, edx
	mov	qword ptr [rbp - 0x188], rax
	call	stpcpy
	mov	rcx, qword ptr [rbp - 0x78]
	add	rcx, 1
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	qword ptr [rsi + 0x18], -1
	sete	r8b
	and	r8b, 1
	movzx	edx, r8b
	movsxd	rsi, edx
	add	rcx, rsi
	mov	rdi, rcx
	mov	rsi, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0x190], rax
	call	umaxtostr
	mov	rdi, qword ptr [rbp - 0x190]
	mov	rsi, rax
	call	stpcpy
	mov	qword ptr [rbp - 0x198], rax
.label_316:
	movabs	rdi, OFFSET FLAT:label_306
	call	gettext
	xor	edi, edi
	lea	rsi, [rbp - 0xc0]
	mov	qword ptr [rbp - 0x1a0], rax
	call	quote_n
	mov	edi, 1
	lea	rsi, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x1a8], rax
	call	quote_n
	xor	edi, edi
	mov	dword ptr [rbp - 0x1ac], edi
	mov	esi, dword ptr [rbp - 0x1ac]
	mov	rdx, qword ptr [rbp - 0x1a0]
	mov	rcx, qword ptr [rbp - 0x1a8]
	mov	r8, rax
	mov	al, 0
	call	error
.label_320:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], -1
	mov	byte ptr [rbp - 0x1ad], cl
	je	.label_321
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx]
	setb	dl
	mov	byte ptr [rbp - 0x1ad], dl
.label_321:
	mov	al, byte ptr [rbp - 0x1ad]
	and	al, 1
	mov	byte ptr [rbp - 0x101], al
	test	byte ptr [rbp - 0x101], 1
	je	.label_327
	movabs	rdi, OFFSET FLAT:label_334
	call	gettext
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x1b8], rdi
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x1b8]
	mov	al, 0
	call	error
.label_327:
	mov	rdi, qword ptr [rbp - 0x18]
	call	key_numeric
	mov	cl, 1
	test	al, 1
	mov	byte ptr [rbp - 0x1b9], cl
	jne	.label_304
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x36]
	mov	byte ptr [rbp - 0x1b9], cl
.label_304:
	mov	al, byte ptr [rbp - 0x1b9]
	xor	ecx, ecx
	mov	dl, cl
	and	al, 1
	mov	byte ptr [rbp - 0x102], al
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	qword ptr [rsi + 0x10], 0
	mov	byte ptr [rbp - 0x1ba], dl
	jne	.label_307
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x18], 0
	setne	cl
	mov	byte ptr [rbp - 0x1ba], cl
.label_307:
	mov	al, byte ptr [rbp - 0x1ba]
	and	al, 1
	mov	byte ptr [rbp - 0x103], al
	test	byte ptr [rbp - 0x101], 1
	jne	.label_299
	test	byte ptr [rbp - 9], 1
	jne	.label_299
	cmp	dword ptr [dword ptr [tab]],  0x80
	jne	.label_299
	test	byte ptr [rbp - 0x103], 1
	jne	.label_299
	mov	rax, qword ptr [rbp - 0x18]
	test	byte ptr [rax + 0x30], 1
	jne	.label_324
	test	byte ptr [rbp - 0x102], 1
	je	.label_315
.label_324:
	mov	rax, qword ptr [rbp - 0x18]
	test	byte ptr [rax + 0x30], 1
	jne	.label_331
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	jne	.label_315
.label_331:
	mov	rax, qword ptr [rbp - 0x18]
	test	byte ptr [rax + 0x31], 1
	jne	.label_299
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x18], 0
	je	.label_299
.label_315:
	movabs	rdi, OFFSET FLAT:label_302
	call	gettext
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x1c8], rdi
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	al, 0
	call	error
.label_299:
	test	byte ptr [rbp - 9], 1
	jne	.label_308
	mov	rdi, qword ptr [rbp - 0x18]
	call	key_numeric
	test	al, 1
	jne	.label_310
	jmp	.label_308
.label_310:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x118], rax
	cmp	qword ptr [rbp - 0x110], 0
	jne	.label_314
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
.label_314:
	cmp	qword ptr [rbp - 0x118], 0
	je	.label_322
	mov	rax, qword ptr [rbp - 0x110]
	cmp	rax, qword ptr [rbp - 0x118]
	jae	.label_309
.label_322:
	movabs	rdi, OFFSET FLAT:label_326
	call	gettext
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x1d0], rdi
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x1d0]
	mov	al, 0
	call	error
.label_309:
	jmp	.label_308
.label_308:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_300
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_300
	mov	qword ptr [rbp - 0x40], 0
.label_300:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_305
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x28]
	jne	.label_305
	mov	qword ptr [rbp - 0x38], 0
.label_305:
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x30]
	xor	cl, 0xff
	and	cl, 1
	movzx	edx, cl
	mov	cl, byte ptr [rbp - 0x30]
	and	cl, 1
	movzx	esi, cl
	and	esi, edx
	cmp	esi, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x30], cl
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x31]
	xor	cl, 0xff
	and	cl, 1
	movzx	edx, cl
	mov	cl, byte ptr [rbp - 0x2f]
	and	cl, 1
	movzx	esi, cl
	and	esi, edx
	cmp	esi, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x2f], cl
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x36]
	xor	cl, 0xff
	and	cl, 1
	movzx	edx, cl
	mov	cl, byte ptr [rbp - 0x2a]
	and	cl, 1
	movzx	esi, cl
	and	esi, edx
	cmp	esi, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x2a], cl
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x32]
	xor	cl, 0xff
	and	cl, 1
	movzx	edx, cl
	mov	cl, byte ptr [rbp - 0x2e]
	and	cl, 1
	movzx	esi, cl
	and	esi, edx
	cmp	esi, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x2e], cl
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x34]
	xor	cl, 0xff
	and	cl, 1
	movzx	edx, cl
	mov	cl, byte ptr [rbp - 0x2c]
	and	cl, 1
	movzx	esi, cl
	and	esi, edx
	cmp	esi, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x2c], cl
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x35]
	xor	cl, 0xff
	and	cl, 1
	movzx	edx, cl
	mov	cl, byte ptr [rbp - 0x2b]
	and	cl, 1
	movzx	esi, cl
	and	esi, edx
	cmp	esi, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x2b], cl
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x33]
	xor	cl, 0xff
	and	cl, 1
	movzx	edx, cl
	mov	cl, byte ptr [rbp - 0x2d]
	and	cl, 1
	movzx	esi, cl
	and	esi, edx
	cmp	esi, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x2d], cl
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x38]
	xor	cl, 0xff
	and	cl, 1
	movzx	edx, cl
	mov	cl, byte ptr [rbp - 0x28]
	and	cl, 1
	movzx	esi, cl
	and	esi, edx
	cmp	esi, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x28], cl
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x37]
	xor	cl, 0xff
	and	cl, 1
	movzx	edx, cl
	mov	cl, byte ptr [rbp - 0x29]
	and	cl, 1
	movzx	esi, cl
	and	esi, edx
	cmp	esi, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x29], cl
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_317
.label_311:
	lea	rdi, [rbp - 0x60]
	call	default_key_compare
	test	al, 1
	jne	.label_328
	jmp	.label_330
.label_328:
	test	byte ptr [rbp - 0x29], 1
	je	.label_298
	test	byte ptr [byte ptr [stable]],  1
	jne	.label_333
	test	byte ptr [byte ptr [unique]],  1
	je	.label_298
.label_333:
	cmp	qword ptr [word ptr [keylist]],  0
	je	.label_298
.label_330:
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	mov	byte ptr [rbp - 0x119], al
	test	byte ptr [byte ptr [stable]],  1
	jne	.label_301
	test	byte ptr [byte ptr [unique]],  1
	jne	.label_301
	mov	byte ptr [rbp - 0x29], 0
.label_301:
	lea	rdi, [rbp - 0x60]
	lea	rsi, [rbp - 0x140]
	call	key_to_opts
	lea	rdi, [rbp - 0x140]
	call	strlen
	mov	rdi, rax
	call	select_plural
	movabs	rdi, OFFSET FLAT:label_312
	movabs	rsi, OFFSET FLAT:label_313
	mov	rdx, rax
	call	ngettext
	xor	ecx, ecx
	lea	rdx, [rbp - 0x140]
	mov	edi, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x1d8], rdx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x1d8]
	mov	al, 0
	call	error
	mov	al, byte ptr [rbp - 0x119]
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
.label_298:
	test	byte ptr [rbp - 0x29], 1
	je	.label_323
	test	byte ptr [byte ptr [stable]],  1
	jne	.label_323
	test	byte ptr [byte ptr [unique]],  1
	jne	.label_323
	cmp	qword ptr [word ptr [keylist]],  0
	je	.label_323
	movabs	rdi, OFFSET FLAT:label_332
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_323:
	add	rsp, 0x1e0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406410

	.globl random_md5_state_init
	.type random_md5_state_init, @function
random_md5_state_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	eax, 0x10
	mov	esi, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	randread_new
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_335
	movabs	rdi, OFFSET FLAT:label_282
	call	gettext
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rax
	call	sort_die
.label_335:
	mov	eax, 0x10
	mov	edx, eax
	lea	rsi, [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x28]
	call	randread
	mov	rdi, qword ptr [rbp - 0x28]
	call	randread_free
	cmp	eax, 0
	je	.label_336
	movabs	rdi, OFFSET FLAT:label_182
	call	gettext
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rax
	call	sort_die
.label_336:
	movabs	rdi, OFFSET FLAT:random_md5_state
	call	md5_init_ctx
	mov	eax, 0x10
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:random_md5_state
	lea	rdi, [rbp - 0x20]
	call	md5_process_bytes
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4064d0

	.globl check
	.type check, @function
check:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x120
	mov	al, sil
	movabs	rsi, OFFSET FLAT:label_159
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 8]
	call	xfopen
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x78], 0
	mov	qword ptr [rbp - 0x80], 0
	mov	rax,  qword ptr [word ptr [keylist]]
	mov	qword ptr [rbp - 0x88], rax
	mov	cl,  byte ptr [byte ptr [unique]]
	xor	cl, 0xff
	and	cl, 1
	mov	byte ptr [rbp - 0x89], cl
	mov	byte ptr [rbp - 0x8a], 1
	mov	rax,  qword ptr [word ptr [merge_buffer_size]]
	cmp	rax,  qword ptr [word ptr [sort_size]]
	jbe	.label_354
	mov	rax,  qword ptr [word ptr [merge_buffer_size]]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_351
.label_354:
	mov	rax,  qword ptr [word ptr [sort_size]]
	mov	qword ptr [rbp - 0xd8], rax
.label_351:
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rbp - 0x50]
	mov	ecx, 0x20
	mov	esi, ecx
	mov	rdx, rax
	call	initbuf
	mov	qword ptr [rbp - 0x70], 0
.label_341:
	lea	rdi, [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 8]
	call	fillbuf
	test	al, 1
	jne	.label_349
	jmp	.label_344
.label_349:
	lea	rdi, [rbp - 0x50]
	call	buffer_linelim
	xor	ecx, ecx
	mov	edi, ecx
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x98]
	sub	rdi, qword ptr [rbp - 0x40]
	shl	rdi, 5
	add	rax, rdi
	mov	qword ptr [rbp - 0xa0], rax
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_338
	lea	rdi, [rbp - 0x70]
	mov	al, byte ptr [rbp - 0x89]
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x98]
	add	rdx, -0x20
	mov	rsi, rdx
	mov	dword ptr [rbp - 0xdc], ecx
	call	compare
	mov	ecx, dword ptr [rbp - 0xdc]
	cmp	ecx, eax
	jg	.label_338
	jmp	.label_342
.label_342:
	movsx	eax, byte ptr [rbp - 9]
	cmp	eax, 0x63
	jne	.label_343
	lea	rdi, [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, -0x20
	mov	qword ptr [rbp - 0xa8], rax
	call	buffer_linelim
	movabs	rdi, OFFSET FLAT:label_350
	mov	rcx, qword ptr [rbp - 0xa8]
	sub	rax, rcx
	sar	rax, 5
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0xe8], rax
	call	gettext
	lea	rsi, [rbp - 0xd0]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xf0], rax
	mov	qword ptr [rbp - 0xf8], rcx
	mov	qword ptr [rbp - 0x100], rdx
	call	umaxtostr
	mov	rdi, qword ptr [rbp - 0xe8]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rdx, qword ptr [rbp - 0x100]
	mov	rcx, qword ptr [rbp - 0xf8]
	mov	r8, rax
	mov	al, 0
	call	fprintf
	movabs	rdi, OFFSET FLAT:label_352
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	dword ptr [rbp - 0x104], eax
	mov	qword ptr [rbp - 0x110], rsi
	mov	qword ptr [rbp - 0x118], rcx
	call	gettext
	mov	rdi, qword ptr [rbp - 0x118]
	mov	rsi, qword ptr [rbp - 0x110]
	mov	rdx, rax
	call	write_line
.label_343:
	mov	byte ptr [rbp - 0x8a], 0
	jmp	.label_344
.label_338:
	jmp	.label_339
.label_339:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x98]
	add	rcx, -0x20
	mov	qword ptr [rbp - 0x98], rcx
	cmp	rax, rcx
	jae	.label_346
	mov	al, byte ptr [rbp - 0x89]
	and	al, 1
	movzx	ecx, al
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x98]
	add	rdx, -0x20
	mov	rsi, rdx
	mov	dword ptr [rbp - 0x11c], ecx
	call	compare
	mov	ecx, dword ptr [rbp - 0x11c]
	cmp	ecx, eax
	jg	.label_337
	jmp	.label_342
.label_337:
	jmp	.label_339
.label_346:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_340
	jmp	.label_345
.label_345:
	mov	rax, qword ptr [rbp - 0x78]
	shl	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_348
	mov	rax, qword ptr [rbp - 0x98]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_355
.label_348:
	jmp	.label_353
.label_353:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rcx + 8]
	jb	.label_345
.label_355:
	mov	rdi, qword ptr [rbp - 0x70]
	call	free
	mov	rdi, qword ptr [rbp - 0x78]
	call	xmalloc
	mov	qword ptr [rbp - 0x70], rax
.label_340:
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rax + 8]
	call	memcpy
	mov	rax, qword ptr [rbp - 0x98]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x88], 0
	je	.label_347
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdx]
	sub	rcx, rdx
	add	rax, rcx
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdx]
	sub	rcx, rdx
	add	rax, rcx
	mov	qword ptr [rbp - 0x58], rax
.label_347:
	jmp	.label_341
.label_344:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	call	xfclose
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	rdi, qword ptr [rbp - 0x70]
	call	free
	mov	al, byte ptr [rbp - 0x8a]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x120
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4068e0

	.globl check_inputs
	.type check_inputs, @function
check_inputs:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
.label_359:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_360
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, OFFSET FLAT:label_108
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	jne	.label_361
	jmp	.label_357
.label_361:
	mov	esi, 4
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + rax*8]
	call	euidaccess
	cmp	eax, 0
	je	.label_356
	movabs	rdi, OFFSET FLAT:label_358
	call	gettext
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rcx + rdi*8]
	mov	rdi, rax
	call	sort_die
.label_356:
	jmp	.label_357
.label_357:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_359
.label_360:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406990

	.globl check_output
	.type check_output, @function
check_output:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_362
	mov	edx, 0x1b6
	mov	dword ptr [rbp - 0xc], 0x80041
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0x10], eax
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_363
	movabs	rdi, OFFSET FLAT:label_282
	call	gettext
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rax
	call	sort_die
.label_363:
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0x10]
	call	move_fd
.label_362:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406a00

	.globl merge
	.type merge, @function
merge:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x120
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
.label_389:
	mov	eax,  dword ptr [dword ptr [nmerge]]
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x18]
	jae	.label_368
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x30], 0
.label_367:
	mov	eax,  dword ptr [dword ptr [nmerge]]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	ja	.label_386
	lea	rdi, [rbp - 0x48]
	call	create_temp
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	ecx,  dword ptr [dword ptr [nmerge]]
	mov	edx, ecx
	cmp	rdi, rdx
	mov	qword ptr [rbp - 0xa8], rax
	jae	.label_381
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_365
.label_381:
	mov	eax,  dword ptr [dword ptr [nmerge]]
	mov	ecx, eax
	mov	qword ptr [rbp - 0xb0], rcx
.label_365:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	ecx,  dword ptr [dword ptr [nmerge]]
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x50]
	add	rsi, 0xd
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xb8], rsi
	mov	rsi, rax
	mov	r8, qword ptr [rbp - 0xb8]
	call	mergefiles
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x58]
	jae	.label_383
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_388
.label_383:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0xc0], rax
.label_388:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 0xd
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_367
.label_386:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	ecx,  dword ptr [dword ptr [nmerge]]
	mov	eax, ecx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	ecx,  dword ptr [dword ptr [nmerge]]
	mov	esi, ecx
	mov	qword ptr [rbp - 0xc8], rax
	mov	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	rsi
	mov	rsi, qword ptr [rbp - 0xc8]
	sub	rsi, rdx
	mov	qword ptr [rbp - 0x40], rsi
	mov	rdx, qword ptr [rbp - 0x40]
	cmp	rdx, qword ptr [rbp - 0x38]
	jae	.label_384
	lea	rdi, [rbp - 0x68]
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	call	create_temp
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rdi, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0xd0], rax
	jae	.label_379
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_390
.label_379:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0xd8], rax
.label_390:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x70]
	add	rsi, 0xd
	mov	rdi, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0xe0], rsi
	mov	rsi, rax
	mov	r8, qword ptr [rbp - 0xe0]
	call	mergefiles
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x78]
	jae	.label_377
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_380
.label_377:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xe8], rax
.label_380:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 0xd
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x30], rdx
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
.label_384:
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x28]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, qword ptr [rbp - 0x28]
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rcx
	call	memmove
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0xf0], rax
	jmp	.label_389
.label_368:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	avoid_trashing_input
.label_385:
	lea	rdx, [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	call	open_input_files
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_378
	movabs	rsi, OFFSET FLAT:label_382
	mov	rdi, qword ptr [rbp - 0x20]
	call	stream_open
	mov	qword ptr [rbp - 0x90], rax
	cmp	qword ptr [rbp - 0x90], 0
	je	.label_387
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x80]
	call	mergefps
	jmp	.label_371
.label_387:
	call	__errno_location
	cmp	dword ptr [rax], 0x18
	jne	.label_373
	cmp	qword ptr [rbp - 0x88], 2
	ja	.label_375
.label_373:
	movabs	rdi, OFFSET FLAT:label_282
	call	gettext
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	sort_die
.label_375:
	jmp	.label_364
.label_378:
	cmp	qword ptr [rbp - 0x88], 2
	ja	.label_369
	movabs	rdi, OFFSET FLAT:label_282
	call	gettext
	mov	rdi, qword ptr [rbp - 0x88]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rdi]
	mov	rdi, rax
	call	sort_die
.label_369:
	jmp	.label_364
.label_364:
	jmp	.label_366
.label_366:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, -1
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [rbp - 0x88]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rax]
	call	xfclose
	lea	rax, [rbp - 0x98]
	cmp	qword ptr [rbp - 0x88], 2
	setbe	dl
	xor	dl, 0xff
	and	dl, 1
	movzx	esi, dl
	lea	rdi, [rbp - 0x98]
	mov	qword ptr [rbp - 0xf8], rax
	call	maybe_create_temp
	mov	qword ptr [rbp - 0xa0], rax
	cmp	qword ptr [rbp - 0xa0], 0
	setne	al
	xor	al, 0xff
	test	al, 1
	jne	.label_366
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x100], rdi
	jae	.label_372
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_376
.label_372:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x108], rax
.label_376:
	mov	rax, qword ptr [rbp - 0x108]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0xa0]
	add	rsi, 0xd
	mov	r9, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0x110], rsi
	mov	rsi, rax
	mov	r8, qword ptr [rbp - 0x110]
	call	mergefps
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x88]
	jae	.label_370
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x118], rax
	jmp	.label_374
.label_370:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x118], rax
.label_374:
	mov	rax, qword ptr [rbp - 0x118]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, 0xd
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x10
	mov	rcx, qword ptr [rbp - 0x88]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, qword ptr [rbp - 0x88]
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rcx
	call	memmove
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	rcx, qword ptr [rbp - 0x88]
	sub	rcx, 1
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x120], rax
	jmp	.label_385
.label_371:
	add	rsp, 0x120
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407000

	.globl sort
	.type sort, @function
sort:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x140
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x60], 0
	mov	byte ptr [rbp - 0x61], 0
	mov	qword ptr [rbp - 0x40], 0
.label_399:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_400
	movabs	rsi, OFFSET FLAT:label_159
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x78], rax
	mov	rdi, qword ptr [rbp - 0x78]
	call	xfopen
	mov	qword ptr [rbp - 0x80], rax
	cmp	qword ptr [rbp - 0x20], 1
	jbe	.label_406
	mov	qword ptr [rbp - 0x98], 1
	mov	qword ptr [rbp - 0xa0], 1
.label_394:
	mov	rax, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_410
	mov	rax, qword ptr [rbp - 0x98]
	shl	rax, 1
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_394
.label_410:
	mov	rax, qword ptr [rbp - 0xa0]
	shl	rax, 5
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_401
.label_406:
	mov	qword ptr [rbp - 0x90], 0x30
.label_401:
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_409
	lea	rdi, [rbp - 0x80]
	mov	eax, 1
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 0x10]
	mov	r9, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x130], rcx
	mov	rcx, r8
	mov	r8, r9
	call	sort_buffer_size
	lea	rdi, [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x130]
	mov	rdx, rax
	call	initbuf
.label_409:
	mov	byte ptr [rbp - 0x28], 0
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
.label_396:
	lea	rdi, [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x78]
	call	fillbuf
	test	al, 1
	jne	.label_405
	jmp	.label_398
.label_405:
	test	byte ptr [rbp - 0x28], 1
	je	.label_407
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_407
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x90]
	imul	rdx, qword ptr [rbp - 0x48]
	sub	rcx, rdx
	cmp	rax, rcx
	jae	.label_407
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_398
.label_407:
	lea	rdi, [rbp - 0x58]
	mov	qword ptr [word ptr [saved_line]],  0
	call	buffer_linelim
	mov	qword ptr [rbp - 0xa8], rax
	test	byte ptr [rbp - 0x28], 1
	je	.label_393
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_393
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_393
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_393
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x78]
	call	xfclose
	movabs	rsi, OFFSET FLAT:label_382
	mov	rdi, qword ptr [rbp - 0x18]
	call	xfopen
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	mov	byte ptr [rbp - 0x61], 1
	jmp	.label_397
.label_393:
	lea	rdi, [rbp - 0x88]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	call	create_temp
	add	rax, 0xd
	mov	qword ptr [rbp - 0x70], rax
.label_397:
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x48]
	jae	.label_403
	lea	rdi, [rbp - 0x108]
	mov	rsi, qword ptr [rbp - 0x20]
	call	queue_init
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0xa8]
	call	merge_tree_init
	lea	r8, [rbp - 0x108]
	mov	qword ptr [rbp - 0x110], rax
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 0x80
	mov	r9, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x138], rcx
	mov	rcx, rax
	mov	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rsp], rax
	call	sortlines
	jmp	.label_404
.label_403:
	mov	rax, qword ptr [rbp - 0xa8]
	add	rax, -0x20
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rdi, rax
	call	write_unique
.label_404:
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x70]
	call	xfclose
	test	byte ptr [rbp - 0x61], 1
	je	.label_392
	jmp	.label_395
.label_392:
	jmp	.label_396
.label_398:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x78]
	call	xfclose
	jmp	.label_399
.label_400:
	jmp	.label_395
.label_395:
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
	test	byte ptr [rbp - 0x61], 1
	jne	.label_402
	mov	eax, 0x10
	mov	esi, eax
	mov	rcx,  qword ptr [word ptr [temphead]]
	mov	qword ptr [rbp - 0x118], rcx
	mov	rdi, qword ptr [rbp - 0x60]
	call	xnmalloc
	mov	qword ptr [rbp - 0x120], rax
	mov	qword ptr [rbp - 0x128], 0
.label_391:
	cmp	qword ptr [rbp - 0x118], 0
	je	.label_408
	mov	rax, qword ptr [rbp - 0x118]
	add	rax, 0xd
	mov	rcx, qword ptr [rbp - 0x128]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x120]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	rcx, qword ptr [rbp - 0x128]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x120]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x118], rax
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, 1
	mov	qword ptr [rbp - 0x128], rax
	jmp	.label_391
.label_408:
	mov	rdi, qword ptr [rbp - 0x120]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	call	merge
	mov	rcx, qword ptr [rbp - 0x120]
	mov	rdi, rcx
	call	free
.label_402:
	call	reap_all
	add	rsp, 0x140
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407420

	.globl sort_die
	.type sort_die, @function
sort_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rbp - 0x10], 0
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rcx
	je	.label_412
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_414
.label_412:
	movabs	rdi, OFFSET FLAT:label_413
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_414:
	mov	rax, qword ptr [rbp - 0x28]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rax
	call	quotearg_n_style_colon
	mov	edi, 2
	movabs	rdx, OFFSET FLAT:label_411
	mov	esi, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, rax
	mov	al, 0
	call	error
	.section	.text
	.align	16
	#Procedure 0x4074a0

	.globl field_sep
	.type field_sep, @function
field_sep:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	movzx	edi, byte ptr [rbp - 1]
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x10], rcx
	call	__ctype_b_loc
	mov	dl, 1
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 1
	cmp	edi, 0
	mov	byte ptr [rbp - 0x11], dl
	jne	.label_415
	movzx	eax, byte ptr [rbp - 1]
	cmp	eax, 0xa
	sete	cl
	mov	byte ptr [rbp - 0x11], cl
.label_415:
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407500

	.globl struct_month_cmp
	.type struct_month_cmp, @function
struct_month_cmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407540

	.globl cleanup
	.type cleanup, @function
cleanup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [temphead]]
	mov	qword ptr [rbp - 8], rax
.label_416:
	cmp	qword ptr [rbp - 8], 0
	je	.label_417
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0xd
	mov	rdi, rax
	call	unlink
	mov	dword ptr [rbp - 0xc], eax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_416
.label_417:
	mov	qword ptr [word ptr [temphead]],  0
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4075a0

	.globl cs_enter
	.type cs_enter, @function
cs_enter:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	movabs	rsi, OFFSET FLAT:caught_signals
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	add	rdi, 8
	mov	qword ptr [rbp - 0x18], rdi
	mov	edi, eax
	mov	rdx, qword ptr [rbp - 0x18]
	call	pthread_sigmask
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	sete	cl
	mov	rdx, qword ptr [rbp - 8]
	and	cl, 1
	mov	byte ptr [rdx], cl
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4075f0

	.globl cs_leave
	.type cs_leave, @function
cs_leave:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	test	byte ptr [rdi], 1
	je	.label_418
	mov	edi, 2
	xor	eax, eax
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 8
	mov	rsi, rcx
	call	pthread_sigmask
	mov	dword ptr [rbp - 0xc], eax
.label_418:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407630

	.globl stream_open
	.type stream_open, @function
stream_open:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rsi]
	cmp	eax, 0x72
	jne	.label_432
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:label_108
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_430
	mov	byte ptr [byte ptr [have_read_stdin]],  1
	mov	rax,  qword ptr [word ptr [stdin]]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_431
.label_430:
	mov	esi, 0x80000
	mov	rdi, qword ptr [rbp - 8]
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_424
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_429
.label_424:
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rsi, qword ptr [rbp - 0x10]
	call	fdopen
	mov	qword ptr [rbp - 0x30], rax
.label_429:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x18], rax
.label_431:
	mov	esi, 2
	mov	rdi, qword ptr [rbp - 0x18]
	call	fadvise
	jmp	.label_425
.label_432:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x77
	jne	.label_426
	cmp	qword ptr [rbp - 8], 0
	je	.label_419
	mov	edi, 1
	xor	eax, eax
	mov	esi, eax
	call	ftruncate
	cmp	eax, 0
	je	.label_419
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x20], ecx
	call	get_outstatus
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_427
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	je	.label_427
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x28]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_420
.label_427:
	movabs	rdi, OFFSET FLAT:label_423
	mov	esi, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x34], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x40], rax
	call	quotearg_n_style_colon
	mov	edi, 2
	mov	esi, dword ptr [rbp - 0x34]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_420:
	jmp	.label_419
.label_419:
	mov	rax,  qword ptr [word ptr [stdout]]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_428
.label_426:
	movabs	rdi, OFFSET FLAT:label_421
	movabs	rsi, OFFSET FLAT:label_174
	mov	edx, 0x3d6
	movabs	rcx, OFFSET FLAT:label_422
	call	__assert_fail
.label_428:
	jmp	.label_425
.label_425:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4077f0

	.globl get_outstatus
	.type get_outstatus, @function
get_outstatus:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	cmp	dword ptr [dword ptr [get_outstatus.outstat_errno]],  0
	jne	.label_433
	mov	edi, 1
	movabs	rsi, OFFSET FLAT:get_outstatus.outstat
	call	fstat
	cmp	eax, 0
	jne	.label_435
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 4], eax
	jmp	.label_434
.label_435:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 4], ecx
.label_434:
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [dword ptr [get_outstatus.outstat_errno]],  eax
.label_433:
	xor	eax, eax
	mov	ecx, eax
	movabs	rdx, OFFSET FLAT:get_outstatus.outstat
	cmp	dword ptr [dword ptr [get_outstatus.outstat_errno]],  0
	cmovl	rcx, rdx
	mov	rax, rcx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407870

	.globl key_numeric
	.type key_numeric, @function
key_numeric:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	test	byte ptr [rdi + 0x32], 1
	mov	byte ptr [rbp - 9], al
	jne	.label_436
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	test	byte ptr [rcx + 0x34], 1
	mov	byte ptr [rbp - 9], al
	jne	.label_436
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x35]
	mov	byte ptr [rbp - 9], cl
.label_436:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4078c0

	.globl key_to_opts
	.type key_to_opts, @function
key_to_opts:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	test	byte ptr [rsi + 0x30], 1
	jne	.label_437
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x31], 1
	je	.label_442
.label_437:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x62
.label_442:
	movabs	rax, OFFSET FLAT:nondictionary
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 0x20], rax
	jne	.label_448
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x64
.label_448:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x28], 0
	je	.label_445
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x66
.label_445:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x34], 1
	je	.label_438
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x67
.label_438:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x35], 1
	je	.label_446
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x68
.label_446:
	movabs	rax, OFFSET FLAT:nonprinting
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 0x20], rax
	jne	.label_444
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x69
.label_444:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x36], 1
	je	.label_447
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x4d
.label_447:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x32], 1
	je	.label_440
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x6e
.label_440:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x33], 1
	je	.label_443
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x52
.label_443:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x37], 1
	je	.label_439
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x72
.label_439:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x38], 1
	je	.label_441
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x56
.label_441:
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], 0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407a60

	.globl select_plural
	.type select_plural, @function
select_plural:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], -1
	ja	.label_449
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_450
.label_449:
	mov	eax, 0xf4240
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	add	rdx, 0xf4240
	mov	qword ptr [rbp - 0x10], rdx
.label_450:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407ab0

	.globl initbuf
	.type initbuf, @function
initbuf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_453:
	mov	eax, 0x20
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	and	rdx, 0x1f
	sub	rcx, rdx
	add	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	malloc
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax], 0
	je	.label_452
	jmp	.label_454
.label_452:
	mov	rax, qword ptr [rbp - 0x18]
	shr	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_451
	call	xalloc_die
.label_451:
	jmp	.label_453
.label_454:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x30], 0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407b80

	.globl fillbuf
	.type fillbuf, @function
fillbuf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx,  qword ptr [word ptr [keylist]]
	mov	qword ptr [rbp - 0x28], rdx
	mov	al,  byte ptr [byte ptr [eolchar]]
	mov	byte ptr [rbp - 0x29], al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x28]
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdx,  qword ptr [word ptr [merge_buffer_size]]
	sub	rdx, 0x22
	mov	qword ptr [rbp - 0x40], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	test	byte ptr [rdx + 0x30], 1
	je	.label_455
	mov	byte ptr [rbp - 1], 0
	jmp	.label_464
.label_455:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	je	.label_465
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	rsi, qword ptr [rbp - 0x10]
	add	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x10]
	sub	rcx, qword ptr [rsi + 0x20]
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x20]
	mov	rsi, rdx
	mov	rdx, rcx
	call	memmove
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 8], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], 0
	mov	qword ptr [rbp - 0x98], rax
.label_465:
	jmp	.label_473
.label_473:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	buffer_linelim
	xor	edx, edx
	mov	ecx, edx
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rcx
	sub	rsi, qword ptr [rdi + 0x10]
	shl	rsi, 5
	add	rax, rsi
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	imul	rsi, qword ptr [rbp - 0x38]
	sub	rcx, rsi
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_481
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_472
.label_481:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xa0], rax
.label_472:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x68], rax
.label_476:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x60]
	jae	.label_474
	mov	eax, 1
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, 1
	mov	rdx, qword ptr [rbp - 0x38]
	add	rdx, 1
	mov	rax, rcx
	xor	edi, edi
	mov	qword ptr [rbp - 0xa8], rdx
	mov	edx, edi
	mov	rcx, qword ptr [rbp - 0xa8]
	div	rcx
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rax
	call	fread_unlocked
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x60], rcx
	mov	rax, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rbp - 0x70]
	je	.label_463
	mov	rdi, qword ptr [rbp - 0x18]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_457
	movabs	rdi, OFFSET FLAT:label_459
	call	gettext
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	sort_die
.label_457:
	mov	rdi, qword ptr [rbp - 0x18]
	call	feof_unlocked
	cmp	eax, 0
	je	.label_461
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x30], 1
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x80]
	jne	.label_469
	mov	byte ptr [rbp - 1], 0
	jmp	.label_464
.label_469:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x80]
	je	.label_460
	mov	rax, qword ptr [rbp - 0x80]
	movsx	ecx, byte ptr [rax - 1]
	movsx	edx, byte ptr [rbp - 0x29]
	cmp	ecx, edx
	je	.label_460
	mov	al, byte ptr [rbp - 0x29]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x80], rdx
	mov	byte ptr [rcx], al
.label_460:
	jmp	.label_461
.label_461:
	jmp	.label_463
.label_463:
	jmp	.label_467
.label_467:
	mov	rdi, qword ptr [rbp - 0x48]
	movsx	esi, byte ptr [rbp - 0x29]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rax, rcx
	mov	rdx, rax
	call	memchr
	mov	qword ptr [rbp - 0x88], rax
	cmp	rax, 0
	je	.label_471
	mov	rax, qword ptr [rbp - 0x88]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, -0x20
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x68]
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rcx + 8]
	jbe	.label_478
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_477
.label_478:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0xb0], rax
.label_477:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x60], rcx
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_456
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 0x10], -1
	jne	.label_479
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_466
.label_479:
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x28]
	call	limfield
	mov	qword ptr [rbp - 0xb8], rax
.label_466:
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], -1
	je	.label_470
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x28]
	call	begfield
	mov	rsi, qword ptr [rbp - 0x58]
	mov	qword ptr [rsi + 0x10], rax
	jmp	.label_480
.label_470:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x30], 1
	je	.label_462
	jmp	.label_458
.label_458:
	mov	rax, qword ptr [rbp - 0x68]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	test	byte ptr [byte ptr [+ (rcx * 1) + blanks]],  1
	je	.label_475
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_458
.label_475:
	jmp	.label_462
.label_462:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx + 0x10], rax
.label_480:
	jmp	.label_456
.label_456:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_467
.label_471:
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x30], 1
	je	.label_468
	jmp	.label_474
.label_468:
	jmp	.label_476
.label_474:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	buffer_linelim
	mov	rcx, qword ptr [rbp - 0x58]
	sub	rax, rcx
	sar	rax, 5
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_482
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x68]
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 0x22
	mov	qword ptr [word ptr [merge_buffer_size]],  rax
	mov	byte ptr [rbp - 1], 1
	jmp	.label_464
.label_482:
	lea	rsi, [rbp - 0x90]
	mov	eax, 0x20
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	shr	rcx, 5
	mov	qword ptr [rbp - 0x90], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx]
	call	x2nrealloc
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x90]
	shl	rax, 5
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x18], rax
	jmp	.label_473
.label_464:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4080b0

	.globl buffer_linelim
	.type buffer_linelim, @function
buffer_linelim:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rdi, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4080e0

	.globl compare
	.type compare, @function
compare:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [word ptr [keylist]],  0
	je	.label_483
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	keycompare
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	jne	.label_491
	test	byte ptr [byte ptr [unique]],  1
	jne	.label_491
	test	byte ptr [byte ptr [stable]],  1
	je	.label_494
.label_491:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_499
.label_494:
	jmp	.label_483
.label_483:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_487
	xor	eax, eax
	cmp	qword ptr [rbp - 0x30], 0
	setne	cl
	and	cl, 1
	movzx	edx, cl
	sub	eax, edx
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_497
.label_487:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_490
	mov	dword ptr [rbp - 0x1c], 1
	jmp	.label_489
.label_490:
	test	byte ptr [byte ptr [hard_LC_COLLATE]],  1
	je	.label_493
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, 1
	mov	rsi, rax
	call	xmemcoll0
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_496
.label_493:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rdi
	mov	qword ptr [rbp - 0x40], rsi
	jae	.label_485
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_484
.label_485:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x48], rax
.label_484:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, rax
	call	memcmp
	mov	dword ptr [rbp - 0x1c], eax
	cmp	eax, 0
	jne	.label_495
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_498
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_486
.label_498:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	setne	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0x4c], edx
.label_486:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x1c], eax
.label_495:
	jmp	.label_496
.label_496:
	jmp	.label_489
.label_489:
	jmp	.label_497
.label_497:
	test	byte ptr [byte ptr [reverse]],  1
	je	.label_492
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x50], eax
	jmp	.label_488
.label_492:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x50], eax
.label_488:
	mov	eax, dword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 4], eax
.label_499:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4082b0

	.globl write_line
	.type write_line, @function
write_line:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 8]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rdx
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_508
	test	byte ptr [byte ptr [debug]],  1
	je	.label_508
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rax
.label_509:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_502
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x38], rcx
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x39], dl
	movsx	esi, byte ptr [rbp - 0x39]
	cmp	esi, 9
	jne	.label_501
	mov	byte ptr [rbp - 0x39], 0x3e
	jmp	.label_504
.label_501:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_506
	mov	byte ptr [rbp - 0x39], 0xa
.label_506:
	jmp	.label_504
.label_504:
	movsx	edi, byte ptr [rbp - 0x39]
	mov	rsi, qword ptr [rbp - 0x10]
	call	fputc_unlocked
	cmp	eax, -1
	jne	.label_507
	movabs	rdi, OFFSET FLAT:label_503
	call	gettext
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	sort_die
.label_507:
	jmp	.label_509
.label_502:
	mov	rdi, qword ptr [rbp - 8]
	call	debug_line
	jmp	.label_505
.label_508:
	mov	eax, 1
	mov	esi, eax
	mov	cl,  byte ptr [byte ptr [eolchar]]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rdx - 1], cl
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	call	fwrite_unlocked
	cmp	rax, qword ptr [rbp - 0x28]
	je	.label_500
	movabs	rdi, OFFSET FLAT:label_503
	call	gettext
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	sort_die
.label_500:
	mov	rax, qword ptr [rbp - 0x30]
	mov	byte ptr [rax - 1], 0
.label_505:
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408400

	.globl limfield
	.type limfield, @function
limfield:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rdi + 8]
	add	rsi, -1
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	qword ptr [rbp - 0x30], rsi
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_510
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_510:
	cmp	dword ptr [dword ptr [tab]],  0x80
	je	.label_538
	jmp	.label_524
.label_524:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x31], cl
	jae	.label_542
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x28], rcx
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x31], dl
.label_542:
	mov	al, byte ptr [rbp - 0x31]
	test	al, 1
	jne	.label_519
	jmp	.label_523
.label_519:
	jmp	.label_525
.label_525:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x32], cl
	jae	.label_527
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx,  dword ptr [dword ptr [tab]]
	setne	dl
	mov	byte ptr [rbp - 0x32], dl
.label_527:
	mov	al, byte ptr [rbp - 0x32]
	test	al, 1
	jne	.label_539
	jmp	.label_540
.label_539:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_525
.label_540:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_511
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_515
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_511
.label_515:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_511:
	jmp	.label_524
.label_523:
	jmp	.label_520
.label_538:
	jmp	.label_522
.label_522:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x33], cl
	jae	.label_530
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x28], rcx
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x33], dl
.label_530:
	mov	al, byte ptr [rbp - 0x33]
	test	al, 1
	jne	.label_541
	jmp	.label_535
.label_541:
	jmp	.label_532
.label_532:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x34], cl
	jae	.label_512
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + blanks]]
	mov	byte ptr [rbp - 0x34], al
.label_512:
	mov	al, byte ptr [rbp - 0x34]
	test	al, 1
	jne	.label_526
	jmp	.label_528
.label_526:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_532
.label_528:
	jmp	.label_518
.label_518:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x35], cl
	jae	.label_536
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + blanks]]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x35], al
.label_536:
	mov	al, byte ptr [rbp - 0x35]
	test	al, 1
	jne	.label_514
	jmp	.label_517
.label_514:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_518
.label_517:
	jmp	.label_522
.label_535:
	jmp	.label_520
.label_520:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_533
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x31], 1
	je	.label_531
	jmp	.label_516
.label_516:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x36], cl
	jae	.label_534
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + blanks]]
	mov	byte ptr [rbp - 0x36], al
.label_534:
	mov	al, byte ptr [rbp - 0x36]
	test	al, 1
	jne	.label_513
	jmp	.label_537
.label_513:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_516
.label_537:
	jmp	.label_531
.label_531:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, qword ptr [rbp - 0x30]
	cmp	rax, rcx
	jae	.label_521
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_529
.label_521:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
.label_529:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x18], rax
.label_533:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4086f0

	.globl begfield
	.type begfield, @function
begfield:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rdi + 8]
	add	rsi, -1
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x30], rsi
	cmp	dword ptr [dword ptr [tab]],  0x80
	je	.label_569
	jmp	.label_555
.label_555:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x31], cl
	jae	.label_561
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x28], rcx
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x31], dl
.label_561:
	mov	al, byte ptr [rbp - 0x31]
	test	al, 1
	jne	.label_572
	jmp	.label_545
.label_572:
	jmp	.label_547
.label_547:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x32], cl
	jae	.label_549
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx,  dword ptr [dword ptr [tab]]
	setne	dl
	mov	byte ptr [rbp - 0x32], dl
.label_549:
	mov	al, byte ptr [rbp - 0x32]
	test	al, 1
	jne	.label_556
	jmp	.label_558
.label_556:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_547
.label_558:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_565
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_565:
	jmp	.label_555
.label_545:
	jmp	.label_563
.label_569:
	jmp	.label_568
.label_568:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x33], cl
	jae	.label_544
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x28], rcx
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x33], dl
.label_544:
	mov	al, byte ptr [rbp - 0x33]
	test	al, 1
	jne	.label_554
	jmp	.label_567
.label_554:
	jmp	.label_552
.label_552:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x34], cl
	jae	.label_559
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + blanks]]
	mov	byte ptr [rbp - 0x34], al
.label_559:
	mov	al, byte ptr [rbp - 0x34]
	test	al, 1
	jne	.label_570
	jmp	.label_543
.label_570:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_552
.label_543:
	jmp	.label_550
.label_550:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x35], cl
	jae	.label_551
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + blanks]]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x35], al
.label_551:
	mov	al, byte ptr [rbp - 0x35]
	test	al, 1
	jne	.label_562
	jmp	.label_564
.label_562:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_550
.label_564:
	jmp	.label_568
.label_567:
	jmp	.label_563
.label_563:
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x30], 1
	je	.label_566
	jmp	.label_546
.label_546:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x36], cl
	jae	.label_548
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + blanks]]
	mov	byte ptr [rbp - 0x36], al
.label_548:
	mov	al, byte ptr [rbp - 0x36]
	test	al, 1
	jne	.label_557
	jmp	.label_560
.label_557:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_546
.label_560:
	jmp	.label_566
.label_566:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, qword ptr [rbp - 0x30]
	cmp	rax, rcx
	jae	.label_553
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_571
.label_553:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
.label_571:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4089b0

	.globl keycompare
	.type keycompare, @function
keycompare:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10b0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi,  qword ptr [word ptr [keylist]]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	qword ptr [rbp - 0x38], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	qword ptr [rbp - 0x40], rsi
.label_583:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	jbe	.label_686
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x1058], rax
	jmp	.label_586
.label_686:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x1058], rax
.label_586:
	mov	rax, qword ptr [rbp - 0x1058]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x40]
	jbe	.label_595
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x1060], rax
	jmp	.label_602
.label_595:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x1060], rax
.label_602:
	mov	rax, qword ptr [rbp - 0x1060]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x68], rax
	test	byte ptr [byte ptr [hard_LC_COLLATE]],  1
	jne	.label_610
	mov	rdi, qword ptr [rbp - 0x20]
	call	key_numeric
	test	al, 1
	jne	.label_610
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x36], 1
	jne	.label_610
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x33], 1
	jne	.label_610
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x38], 1
	je	.label_640
.label_610:
	cmp	qword ptr [rbp - 0x58], 0
	jne	.label_656
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_671
.label_656:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	add	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x1050], rax
	cmp	qword ptr [rbp - 0x1050], 0xfa0
	ja	.label_639
	lea	rax, [rbp - 0x1040]
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x98], 0
	jmp	.label_645
.label_639:
	mov	rdi, qword ptr [rbp - 0x1050]
	call	xmalloc
	mov	qword ptr [rbp - 0x98], rax
	mov	qword ptr [rbp - 0x70], rax
.label_645:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	mov	qword ptr [rbp - 0x1048], 0
	mov	qword ptr [rbp - 0x80], 0
.label_589:
	mov	rax, qword ptr [rbp - 0x1048]
	cmp	rax, qword ptr [rbp - 0x60]
	jae	.label_632
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_663
	mov	rax, qword ptr [rbp - 0x1048]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	rdx, qword ptr [rbp - 0x58]
	test	byte ptr [rdx + rcx], 1
	jne	.label_672
.label_663:
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_609
	mov	rax, qword ptr [rbp - 0x1048]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	rdx, qword ptr [rbp - 0x50]
	movsx	edi, byte ptr [rdx + rcx]
	mov	dword ptr [rbp - 0x1064], edi
	jmp	.label_578
.label_609:
	mov	rax, qword ptr [rbp - 0x1048]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x1064], edx
.label_578:
	mov	eax, dword ptr [rbp - 0x1064]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x80], rsi
	mov	rsi, qword ptr [rbp - 0x70]
	mov	byte ptr [rsi + rdx], cl
.label_672:
	jmp	.label_587
.label_587:
	mov	rax, qword ptr [rbp - 0x1048]
	add	rax, 1
	mov	qword ptr [rbp - 0x1048], rax
	jmp	.label_589
.label_632:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	byte ptr [rcx + rax], 0
	mov	qword ptr [rbp - 0x1048], 0
	mov	qword ptr [rbp - 0x88], 0
.label_642:
	mov	rax, qword ptr [rbp - 0x1048]
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_606
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_611
	mov	rax, qword ptr [rbp - 0x1048]
	mov	rcx, qword ptr [rbp - 0x30]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	rdx, qword ptr [rbp - 0x58]
	test	byte ptr [rdx + rcx], 1
	jne	.label_617
.label_611:
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_623
	mov	rax, qword ptr [rbp - 0x1048]
	mov	rcx, qword ptr [rbp - 0x30]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	rdx, qword ptr [rbp - 0x50]
	movsx	edi, byte ptr [rdx + rcx]
	mov	dword ptr [rbp - 0x1068], edi
	jmp	.label_628
.label_623:
	mov	rax, qword ptr [rbp - 0x1048]
	mov	rcx, qword ptr [rbp - 0x30]
	movsx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x1068], edx
.label_628:
	mov	eax, dword ptr [rbp - 0x1068]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x88], rsi
	mov	rsi, qword ptr [rbp - 0x78]
	mov	byte ptr [rsi + rdx], cl
.label_617:
	jmp	.label_641
.label_641:
	mov	rax, qword ptr [rbp - 0x1048]
	add	rax, 1
	mov	qword ptr [rbp - 0x1048], rax
	jmp	.label_642
.label_606:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	byte ptr [rcx + rax], 0
	jmp	.label_649
.label_671:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x89], dl
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x8a], dl
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	byte ptr [rcx + rax], 0
.label_649:
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x32], 1
	je	.label_673
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x78]
	call	numcompare
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_646
.label_673:
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x34], 1
	je	.label_678
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x78]
	call	general_numcompare
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_644
.label_678:
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x35], 1
	je	.label_683
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x78]
	call	human_numcompare
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_575
.label_683:
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x36], 1
	je	.label_581
	xor	eax, eax
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x70]
	call	getmonth
	xor	ecx, ecx
	mov	esi, ecx
	mov	rdi, qword ptr [rbp - 0x78]
	mov	dword ptr [rbp - 0x106c], eax
	call	getmonth
	mov	ecx, dword ptr [rbp - 0x106c]
	sub	ecx, eax
	mov	dword ptr [rbp - 0x44], ecx
	jmp	.label_596
.label_581:
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x33], 1
	je	.label_600
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x88]
	call	compare_random
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_612
.label_600:
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x38], 1
	je	.label_614
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x78]
	call	filevercmp
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_619
.label_614:
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_621
	xor	eax, eax
	cmp	qword ptr [rbp - 0x88], 0
	setne	cl
	and	cl, 1
	movzx	edx, cl
	sub	eax, edx
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_624
.label_621:
	cmp	qword ptr [rbp - 0x88], 0
	jne	.label_629
	mov	dword ptr [rbp - 0x44], 1
	jmp	.label_633
.label_629:
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x88]
	add	rcx, 1
	mov	rsi, rax
	call	xmemcoll0
	mov	dword ptr [rbp - 0x44], eax
.label_633:
	jmp	.label_624
.label_624:
	jmp	.label_619
.label_619:
	jmp	.label_612
.label_612:
	jmp	.label_596
.label_596:
	jmp	.label_575
.label_575:
	jmp	.label_644
.label_644:
	jmp	.label_646
.label_646:
	cmp	qword ptr [rbp - 0x58], 0
	jne	.label_648
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_652
.label_648:
	mov	rdi, qword ptr [rbp - 0x98]
	call	free
	jmp	.label_654
.label_652:
	mov	al, byte ptr [rbp - 0x89]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	byte ptr [rdx + rcx], al
	mov	al, byte ptr [rbp - 0x8a]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	byte ptr [rdx + rcx], al
.label_654:
	jmp	.label_605
.label_640:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_660
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_662
	jmp	.label_666
.label_666:
	jmp	.label_618
.label_618:
	jmp	.label_668
.label_668:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x38]
	mov	byte ptr [rbp - 0x106d], cl
	jae	.label_669
	mov	rax, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	rdx, qword ptr [rbp - 0x58]
	mov	al, byte ptr [rdx + rcx]
	mov	byte ptr [rbp - 0x106d], al
.label_669:
	mov	al, byte ptr [rbp - 0x106d]
	test	al, 1
	jne	.label_680
	jmp	.label_682
.label_680:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_668
.label_682:
	jmp	.label_598
.label_598:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	rdx, qword ptr [rbp - 0x40]
	mov	byte ptr [rbp - 0x106e], cl
	jae	.label_577
	mov	rax, qword ptr [rbp - 0x30]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	rdx, qword ptr [rbp - 0x58]
	mov	al, byte ptr [rdx + rcx]
	mov	byte ptr [rbp - 0x106e], al
.label_577:
	mov	al, byte ptr [rbp - 0x106e]
	test	al, 1
	jne	.label_592
	jmp	.label_597
.label_592:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_598
.label_597:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_588
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x40]
	jb	.label_608
.label_588:
	jmp	.label_613
.label_608:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	rdx, qword ptr [rbp - 0x50]
	movsx	edi, byte ptr [rdx + rcx]
	call	to_uchar
	movzx	edi, al
	mov	rcx, qword ptr [rbp - 0x30]
	movsx	esi, byte ptr [rcx]
	mov	dword ptr [rbp - 0x1074], edi
	mov	edi, esi
	call	to_uchar
	movzx	esi, al
	mov	ecx, esi
	mov	rdx, qword ptr [rbp - 0x50]
	movsx	edi, byte ptr [rdx + rcx]
	call	to_uchar
	movzx	esi, al
	mov	edi, dword ptr [rbp - 0x1074]
	sub	edi, esi
	mov	dword ptr [rbp - 0x44], edi
	cmp	dword ptr [rbp - 0x44], 0
	je	.label_627
	jmp	.label_579
.label_627:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_618
.label_613:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	setb	cl
	and	cl, 1
	movzx	edx, cl
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x40]
	setb	cl
	and	cl, 1
	movzx	esi, cl
	sub	edx, esi
	mov	dword ptr [rbp - 0x44], edx
	jmp	.label_676
.label_662:
	jmp	.label_647
.label_647:
	jmp	.label_601
.label_601:
	jmp	.label_650
.label_650:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x38]
	mov	byte ptr [rbp - 0x1075], cl
	jae	.label_653
	mov	rax, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	rdx, qword ptr [rbp - 0x58]
	mov	al, byte ptr [rdx + rcx]
	mov	byte ptr [rbp - 0x1075], al
.label_653:
	mov	al, byte ptr [rbp - 0x1075]
	test	al, 1
	jne	.label_657
	jmp	.label_659
.label_657:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_650
.label_659:
	jmp	.label_665
.label_665:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	rdx, qword ptr [rbp - 0x40]
	mov	byte ptr [rbp - 0x1076], cl
	jae	.label_667
	mov	rax, qword ptr [rbp - 0x30]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	rdx, qword ptr [rbp - 0x58]
	mov	al, byte ptr [rdx + rcx]
	mov	byte ptr [rbp - 0x1076], al
.label_667:
	mov	al, byte ptr [rbp - 0x1076]
	test	al, 1
	jne	.label_679
	jmp	.label_681
.label_679:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_665
.label_681:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_684
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x40]
	jb	.label_573
.label_684:
	jmp	.label_593
.label_573:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	rcx, qword ptr [rbp - 0x30]
	movsx	edx, byte ptr [rcx]
	mov	dword ptr [rbp - 0x107c], edi
	mov	edi, edx
	call	to_uchar
	movzx	edx, al
	mov	edi, dword ptr [rbp - 0x107c]
	sub	edi, edx
	mov	dword ptr [rbp - 0x44], edi
	cmp	dword ptr [rbp - 0x44], 0
	je	.label_591
	jmp	.label_579
.label_591:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_601
.label_593:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	setb	cl
	and	cl, 1
	movzx	edx, cl
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x40]
	setb	cl
	and	cl, 1
	movzx	esi, cl
	sub	edx, esi
	mov	dword ptr [rbp - 0x44], edx
	jmp	.label_676
.label_676:
	jmp	.label_604
.label_660:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_620
	xor	eax, eax
	cmp	qword ptr [rbp - 0x68], 0
	setne	cl
	and	cl, 1
	movzx	edx, cl
	sub	eax, edx
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_599
.label_620:
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_622
	jmp	.label_630
.label_622:
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_631
	jmp	.label_634
.label_634:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x38]
	mov	byte ptr [rbp - 0x107d], cl
	jae	.label_635
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x40]
	setb	cl
	mov	byte ptr [rbp - 0x107d], cl
.label_635:
	mov	al, byte ptr [rbp - 0x107d]
	test	al, 1
	jne	.label_603
	jmp	.label_643
.label_603:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	rdx, qword ptr [rbp - 0x50]
	movsx	edi, byte ptr [rdx + rcx]
	call	to_uchar
	movzx	edi, al
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x30], rdx
	movsx	esi, byte ptr [rcx]
	mov	dword ptr [rbp - 0x1084], edi
	mov	edi, esi
	call	to_uchar
	movzx	esi, al
	mov	ecx, esi
	mov	rdx, qword ptr [rbp - 0x50]
	movsx	edi, byte ptr [rdx + rcx]
	call	to_uchar
	movzx	esi, al
	mov	edi, dword ptr [rbp - 0x1084]
	sub	edi, esi
	mov	dword ptr [rbp - 0x44], edi
	cmp	dword ptr [rbp - 0x44], 0
	je	.label_661
	jmp	.label_579
.label_661:
	jmp	.label_634
.label_643:
	jmp	.label_582
.label_631:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x1090], rdi
	mov	qword ptr [rbp - 0x1098], rsi
	jae	.label_670
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10a0], rax
	jmp	.label_677
.label_670:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x10a0], rax
.label_677:
	mov	rax, qword ptr [rbp - 0x10a0]
	mov	rdi, qword ptr [rbp - 0x1090]
	mov	rsi, qword ptr [rbp - 0x1098]
	mov	rdx, rax
	call	memcmp
	mov	dword ptr [rbp - 0x44], eax
	cmp	dword ptr [rbp - 0x44], 0
	je	.label_574
	jmp	.label_579
.label_574:
	jmp	.label_582
.label_582:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_584
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x10a4], eax
	jmp	.label_636
.label_584:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x68]
	setne	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0x10a4], edx
.label_636:
	mov	eax, dword ptr [rbp - 0x10a4]
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_599
.label_599:
	jmp	.label_604
.label_604:
	jmp	.label_605
.label_605:
	cmp	dword ptr [rbp - 0x44], 0
	je	.label_607
	jmp	.label_579
.label_607:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_626
	jmp	.label_615
.label_626:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x10], -1
	je	.label_616
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	limfield
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	limfield
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_625
.label_616:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 8]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx + 8]
	add	rax, -1
	mov	qword ptr [rbp - 0x40], rax
.label_625:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], -1
	je	.label_637
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	begfield
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	begfield
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_580
.label_637:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x30], 1
	je	.label_576
	jmp	.label_638
.label_638:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x38]
	mov	byte ptr [rbp - 0x10a5], cl
	jae	.label_655
	mov	rax, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + blanks]]
	mov	byte ptr [rbp - 0x10a5], al
.label_655:
	mov	al, byte ptr [rbp - 0x10a5]
	test	al, 1
	jne	.label_651
	jmp	.label_664
.label_651:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_638
.label_664:
	jmp	.label_674
.label_674:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	rdx, qword ptr [rbp - 0x40]
	mov	byte ptr [rbp - 0x10a6], cl
	jae	.label_675
	mov	rax, qword ptr [rbp - 0x30]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + blanks]]
	mov	byte ptr [rbp - 0x10a6], al
.label_675:
	mov	al, byte ptr [rbp - 0x10a6]
	test	al, 1
	jne	.label_658
	jmp	.label_685
.label_658:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_674
.label_685:
	jmp	.label_576
.label_576:
	jmp	.label_580
.label_580:
	jmp	.label_583
.label_615:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_585
.label_630:
	mov	dword ptr [rbp - 0x44], 1
.label_579:
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x37], 1
	je	.label_590
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x10ac], eax
	jmp	.label_594
.label_590:
	mov	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x10ac], eax
.label_594:
	mov	eax, dword ptr [rbp - 0x10ac]
	mov	dword ptr [rbp - 4], eax
.label_585:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10b0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409670

	.globl numcompare
	.type numcompare, @function
numcompare:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
.label_690:
	mov	rax, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	test	byte ptr [byte ptr [+ (rcx * 1) + blanks]],  1
	je	.label_689
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_690
.label_689:
	jmp	.label_687
.label_687:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	test	byte ptr [byte ptr [+ (rcx * 1) + blanks]],  1
	je	.label_688
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_687
.label_688:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx,  dword ptr [dword ptr [decimal_point]]
	mov	ecx,  dword ptr [dword ptr [thousands_sep]]
	call	strnumcmp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409710

	.globl general_numcompare
	.type general_numcompare, @function
general_numcompare:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rbp - 0x20]
	call	strtold
	fstp	xword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rbp - 0x28]
	call	strtold
	fstp	xword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rbp - 0x20]
	jne	.label_707
	mov	eax, 0xffffffff
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x28]
	cmove	eax, ecx
	mov	dword ptr [rbp - 4], eax
	jmp	.label_695
.label_707:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_702
	mov	dword ptr [rbp - 4], 1
	jmp	.label_695
.label_702:
	fld	xword ptr [rbp - 0x40]
	fld	xword ptr [rbp - 0x50]
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_691
	jmp	.label_696
.label_696:
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_697
.label_691:
	fld	xword ptr [rbp - 0x40]
	fld	xword ptr [rbp - 0x50]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_700
	jmp	.label_692
.label_692:
	mov	eax, 1
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_706
.label_700:
	fld	xword ptr [rbp - 0x40]
	fld	xword ptr [rbp - 0x50]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_693
	jnp	.label_698
	jmp	.label_693
.label_698:
	xor	eax, eax
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_701
.label_693:
	fld	xword ptr [rbp - 0x50]
	fucomip	st(0)
	jp	.label_703
	jmp	.label_705
.label_705:
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_708
.label_703:
	fld	xword ptr [rbp - 0x40]
	fucomip	st(0)
	jp	.label_694
	jmp	.label_704
.label_704:
	mov	eax, 1
	mov	dword ptr [rbp - 0x64], eax
	jmp	.label_699
.label_694:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	nan_compare
	mov	dword ptr [rbp - 0x64], eax
.label_699:
	mov	eax, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x60], eax
.label_708:
	mov	eax, dword ptr [rbp - 0x60]
	mov	dword ptr [rbp - 0x5c], eax
.label_701:
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 0x58], eax
.label_706:
	mov	eax, dword ptr [rbp - 0x58]
	mov	dword ptr [rbp - 0x54], eax
.label_697:
	mov	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 4], eax
.label_695:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409860

	.globl human_numcompare
	.type human_numcompare, @function
human_numcompare:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
.label_712:
	mov	rax, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	test	byte ptr [byte ptr [+ (rcx * 1) + blanks]],  1
	je	.label_714
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_712
.label_714:
	jmp	.label_709
.label_709:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	test	byte ptr [byte ptr [+ (rcx * 1) + blanks]],  1
	je	.label_713
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_709
.label_713:
	mov	rdi, qword ptr [rbp - 8]
	call	find_unit_order
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x18], eax
	call	find_unit_order
	mov	ecx, dword ptr [rbp - 0x18]
	sub	ecx, eax
	mov	dword ptr [rbp - 0x14], ecx
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_711
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_710
.label_711:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx,  dword ptr [dword ptr [decimal_point]]
	mov	ecx,  dword ptr [dword ptr [thousands_sep]]
	call	strnumcmp
	mov	dword ptr [rbp - 0x1c], eax
.label_710:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409930

	.globl getmonth
	.type getmonth, @function
getmonth:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0xc
.label_725:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	test	byte ptr [byte ptr [+ (rcx * 1) + blanks]],  1
	je	.label_718
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_725
.label_718:
	jmp	.label_715
.label_715:
	movabs	rax, OFFSET FLAT:monthtab
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x28]
	shr	rcx, 1
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 4
	add	rax, rcx
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
.label_721:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	byte ptr [rax], 0
	jne	.label_726
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_722
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
.label_722:
	movabs	rax, OFFSET FLAT:monthtab
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 4
	add	rax, rcx
	mov	edx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_723
.label_726:
	mov	rax, qword ptr [rbp - 0x38]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	movsx	edi,  byte ptr [byte ptr [+ (rcx * 1) + fold_toupper]]
	call	to_uchar
	movzx	edi, al
	mov	rcx, qword ptr [rbp - 0x40]
	movsx	edx, byte ptr [rcx]
	mov	dword ptr [rbp - 0x44], edi
	mov	edi, edx
	call	to_uchar
	movzx	edx, al
	mov	edi, dword ptr [rbp - 0x44]
	cmp	edi, edx
	jge	.label_724
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_720
.label_724:
	mov	rax, qword ptr [rbp - 0x38]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	movsx	edi,  byte ptr [byte ptr [+ (rcx * 1) + fold_toupper]]
	call	to_uchar
	movzx	edi, al
	mov	rcx, qword ptr [rbp - 0x40]
	movsx	edx, byte ptr [rcx]
	mov	dword ptr [rbp - 0x48], edi
	mov	edi, edx
	call	to_uchar
	movzx	edx, al
	mov	edi, dword ptr [rbp - 0x48]
	cmp	edi, edx
	jle	.label_727
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_720
.label_727:
	jmp	.label_719
.label_719:
	jmp	.label_717
.label_717:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_721
.label_720:
	jmp	.label_716
.label_716:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x28]
	jb	.label_715
	mov	dword ptr [rbp - 4], 0
.label_723:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409af0

	.globl compare_random
	.type compare_random, @function
compare_random:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1240
	mov	eax, 0x9c
	mov	r8d, eax
	movabs	r9, OFFSET FLAT:random_md5_state
	lea	r10, [rbp - 0x1150]
	lea	r11, [rbp - 0xfd0]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], 0
	mov	qword ptr [rbp - 0xfd8], r11
	mov	qword ptr [rbp - 0xfe0], 0xfa0
	mov	qword ptr [rbp - 0xfe8], 0
	mov	rcx, r10
	add	rcx, 0x9c
	mov	rdx, rcx
	mov	rdi, rdx
	mov	rsi, r9
	mov	rdx, r8
	mov	qword ptr [rbp - 0x1190], rcx
	mov	qword ptr [rbp - 0x1198], r10
	mov	qword ptr [rbp - 0x11a0], r8
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x1198]
	mov	rdx, qword ptr [rbp - 0x1190]
	mov	rdi, rcx
	mov	rsi, rdx
	mov	rdx, qword ptr [rbp - 0x11a0]
	call	memcpy
	test	byte ptr [byte ptr [hard_LC_COLLATE]],  1
	je	.label_737
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x1158], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x1160], rax
.label_729:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 3
	add	rax, 2
	mov	qword ptr [rbp - 0x1168], rax
	mov	rax, qword ptr [rbp - 0xfe0]
	cmp	rax, qword ptr [rbp - 0x1168]
	jae	.label_735
	mov	rax, qword ptr [rbp - 0x1168]
	imul	rcx, qword ptr [rbp - 0xfe0], 3
	shr	rcx, 1
	cmp	rax, rcx
	jbe	.label_743
	mov	rax, qword ptr [rbp - 0x1168]
	mov	qword ptr [rbp - 0x11a8], rax
	jmp	.label_734
.label_743:
	imul	rax, qword ptr [rbp - 0xfe0], 3
	shr	rax, 1
	mov	qword ptr [rbp - 0x11a8], rax
.label_734:
	mov	rax, qword ptr [rbp - 0x11a8]
	mov	qword ptr [rbp - 0xfe0], rax
	mov	rdi, qword ptr [rbp - 0xfe8]
	call	free
	mov	rdi, qword ptr [rbp - 0xfe0]
	call	malloc
	mov	qword ptr [rbp - 0xfe8], rax
	mov	qword ptr [rbp - 0xfd8], rax
	cmp	qword ptr [rbp - 0xfd8], 0
	jne	.label_750
	lea	rax, [rbp - 0xfd0]
	mov	qword ptr [rbp - 0xfd8], rax
	mov	qword ptr [rbp - 0xfe0], 0xfa0
.label_750:
	jmp	.label_735
.label_735:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x1158]
	jae	.label_733
	mov	rdi, qword ptr [rbp - 0xfd8]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0xfe0]
	call	xstrxfrm
	add	rax, 1
	mov	qword ptr [rbp - 0x11b0], rax
	jmp	.label_728
.label_733:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x11b0], rcx
	jmp	.label_728
.label_728:
	mov	rax, qword ptr [rbp - 0x11b0]
	mov	qword ptr [rbp - 0x1170], rax
	mov	rax, qword ptr [rbp - 0x1170]
	cmp	rax, qword ptr [rbp - 0xfe0]
	setbe	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x1171], cl
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x1160]
	jae	.label_751
	test	byte ptr [rbp - 0x1171], 1
	je	.label_736
	mov	rax, qword ptr [rbp - 0xfd8]
	add	rax, qword ptr [rbp - 0x1170]
	mov	qword ptr [rbp - 0x11b8], rax
	jmp	.label_738
.label_736:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x11b8], rcx
	jmp	.label_738
.label_738:
	mov	rax, qword ptr [rbp - 0x11b8]
	mov	rsi, qword ptr [rbp - 0x18]
	test	byte ptr [rbp - 0x1171], 1
	mov	qword ptr [rbp - 0x11c0], rax
	mov	qword ptr [rbp - 0x11c8], rsi
	je	.label_752
	mov	rax, qword ptr [rbp - 0xfe0]
	sub	rax, qword ptr [rbp - 0x1170]
	mov	qword ptr [rbp - 0x11d0], rax
	jmp	.label_732
.label_752:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x11d0], rcx
	jmp	.label_732
.label_732:
	mov	rax, qword ptr [rbp - 0x11d0]
	mov	rdi, qword ptr [rbp - 0x11c0]
	mov	rsi, qword ptr [rbp - 0x11c8]
	mov	rdx, rax
	call	xstrxfrm
	add	rax, 1
	mov	qword ptr [rbp - 0x11d8], rax
	jmp	.label_745
.label_751:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x11d8], rcx
	jmp	.label_745
.label_745:
	mov	rax, qword ptr [rbp - 0x11d8]
	mov	qword ptr [rbp - 0x1180], rax
	test	byte ptr [rbp - 0x1171], 1
	je	.label_749
	mov	rax, qword ptr [rbp - 0x1170]
	add	rax, qword ptr [rbp - 0x1180]
	cmp	rax, qword ptr [rbp - 0xfe0]
	jbe	.label_742
.label_749:
	movabs	rax, 0x5555555555555555
	mov	rcx, qword ptr [rbp - 0x1170]
	add	rcx, qword ptr [rbp - 0x1180]
	mov	qword ptr [rbp - 0xfe0], rcx
	cmp	qword ptr [rbp - 0xfe0], rax
	jae	.label_759
	imul	rax, qword ptr [rbp - 0xfe0], 3
	shr	rax, 1
	mov	qword ptr [rbp - 0xfe0], rax
.label_759:
	mov	rdi, qword ptr [rbp - 0xfe8]
	call	free
	mov	rdi, qword ptr [rbp - 0xfe0]
	call	xmalloc
	mov	qword ptr [rbp - 0xfe8], rax
	mov	qword ptr [rbp - 0xfd8], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x1158]
	jae	.label_756
	mov	rdi, qword ptr [rbp - 0xfd8]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x1170]
	call	strxfrm
	mov	qword ptr [rbp - 0x11e0], rax
.label_756:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x1160]
	jae	.label_739
	mov	rax, qword ptr [rbp - 0xfd8]
	add	rax, qword ptr [rbp - 0x1170]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x1180]
	mov	rdi, rax
	call	strxfrm
	mov	qword ptr [rbp - 0x11e8], rax
.label_739:
	jmp	.label_742
.label_742:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x1158]
	jae	.label_754
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	add	rax, 1
	add	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 8], rax
.label_754:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x1160]
	jae	.label_731
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	add	rax, 1
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
.label_731:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x1158]
	jb	.label_741
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x1160]
	jb	.label_741
	mov	rax, qword ptr [rbp - 0x1170]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0xfd8]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x1180]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0xfd8]
	add	rax, qword ptr [rbp - 0x1170]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_748
.label_741:
	lea	rdx, [rbp - 0x1150]
	mov	rdi, qword ptr [rbp - 0xfd8]
	mov	rsi, qword ptr [rbp - 0x1170]
	call	md5_process_bytes
	lea	rdx, [rbp - 0x1150]
	mov	rsi, qword ptr [rbp - 0xfd8]
	add	rsi, qword ptr [rbp - 0x1170]
	mov	rdi, qword ptr [rbp - 0x1180]
	add	rdx, 0x9c
	mov	qword ptr [rbp - 0x11f0], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x11f0]
	call	md5_process_bytes
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_730
	mov	rdi, qword ptr [rbp - 0xfd8]
	mov	rax, qword ptr [rbp - 0xfd8]
	add	rax, qword ptr [rbp - 0x1170]
	mov	rcx, qword ptr [rbp - 0x1170]
	cmp	rcx, qword ptr [rbp - 0x1180]
	mov	qword ptr [rbp - 0x11f8], rdi
	mov	qword ptr [rbp - 0x1200], rax
	jae	.label_755
	mov	rax, qword ptr [rbp - 0x1170]
	mov	qword ptr [rbp - 0x1208], rax
	jmp	.label_740
.label_755:
	mov	rax, qword ptr [rbp - 0x1180]
	mov	qword ptr [rbp - 0x1208], rax
.label_740:
	mov	rax, qword ptr [rbp - 0x1208]
	mov	rdi, qword ptr [rbp - 0x11f8]
	mov	rsi, qword ptr [rbp - 0x1200]
	mov	rdx, rax
	call	memcmp
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_746
	mov	rax, qword ptr [rbp - 0x1170]
	cmp	rax, qword ptr [rbp - 0x1180]
	seta	cl
	and	cl, 1
	movzx	edx, cl
	mov	rax, qword ptr [rbp - 0x1170]
	cmp	rax, qword ptr [rbp - 0x1180]
	setb	cl
	and	cl, 1
	movzx	esi, cl
	sub	edx, esi
	mov	dword ptr [rbp - 0x24], edx
.label_746:
	jmp	.label_730
.label_730:
	jmp	.label_729
.label_748:
	jmp	.label_737
.label_737:
	lea	rdx, [rbp - 0x1150]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	md5_process_bytes
	lea	rdx, [rbp - 0x1010]
	lea	rdi, [rbp - 0x1150]
	mov	rsi, rdx
	call	md5_finish_ctx
	lea	rdx, [rbp - 0x1150]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	add	rdx, 0x9c
	mov	qword ptr [rbp - 0x1210], rax
	call	md5_process_bytes
	lea	rax, [rbp - 0x1010]
	lea	rdx, [rbp - 0x1150]
	add	rdx, 0x9c
	add	rax, 0x10
	mov	rdi, rdx
	mov	rsi, rax
	call	md5_finish_ctx
	lea	rdx, [rbp - 0x1010]
	mov	rsi, rdx
	add	rdx, 0x10
	mov	ecx, 0x10
	mov	edi, ecx
	mov	qword ptr [rbp - 0x1218], rdi
	mov	rdi, rsi
	mov	rsi, rdx
	mov	rdx, qword ptr [rbp - 0x1218]
	mov	qword ptr [rbp - 0x1220], rax
	call	memcmp
	mov	dword ptr [rbp - 0x1184], eax
	cmp	dword ptr [rbp - 0x1184], 0
	jne	.label_747
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_753
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x1228], rdi
	mov	qword ptr [rbp - 0x1230], rsi
	jae	.label_758
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x1238], rax
	jmp	.label_757
.label_758:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x1238], rax
.label_757:
	mov	rax, qword ptr [rbp - 0x1238]
	mov	rdi, qword ptr [rbp - 0x1228]
	mov	rsi, qword ptr [rbp - 0x1230]
	mov	rdx, rax
	call	memcmp
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_744
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x20]
	seta	cl
	and	cl, 1
	movzx	edx, cl
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x20]
	setb	cl
	and	cl, 1
	movzx	esi, cl
	sub	edx, esi
	mov	dword ptr [rbp - 0x24], edx
.label_744:
	jmp	.label_753
.label_753:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x1184], eax
.label_747:
	mov	rdi, qword ptr [rbp - 0xfe8]
	call	free
	mov	eax, dword ptr [rbp - 0x1184]
	add	rsp, 0x1240
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a230

	.globl nan_compare
	.type nan_compare, @function
nan_compare:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	lea	rax, [rbp - 0x30]
	lea	rcx, [rbp - 0x20]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 0x20], xmm0
	mov	rdi, qword ptr [rbp - 8]
	xor	edx, edx
	mov	esi, edx
	mov	qword ptr [rbp - 0x38], rsi
	mov	qword ptr [rbp - 0x40], rcx
	mov	qword ptr [rbp - 0x48], rax
	movaps	xmmword ptr [rbp - 0x60], xmm0
	call	strtold
	fstp	xword ptr [rbp - 0x20]
	movaps	xmm0, xmmword ptr [rbp - 0x60]
	movaps	xmmword ptr [rbp - 0x30], xmm0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x38]
	call	strtold
	fstp	xword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	edx, 0x10
	mov	rdi, rax
	mov	rsi, rcx
	call	memcmp
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a2b0

	.globl find_unit_order
	.type find_unit_order, @function
find_unit_order:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rax, [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rdi]
	cmp	ecx, 0x2d
	sete	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x11], dl
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dl, byte ptr [rbp - 0x11]
	and	dl, 1
	movzx	ecx, dl
	movsxd	rsi, ecx
	add	rdi, rsi
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, rax
	call	traverse_raw_number
	mov	ecx, 0x30
	mov	byte ptr [rbp - 0x21], al
	movzx	r8d, byte ptr [rbp - 0x21]
	cmp	ecx, r8d
	jge	.label_760
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x22], cl
	movzx	edx, byte ptr [rbp - 0x22]
	mov	eax, edx
	movsx	edx,  byte ptr [byte ptr [+ (rax * 1) + unit_order]]
	mov	dword ptr [rbp - 0x28], edx
	test	byte ptr [rbp - 0x11], 1
	je	.label_761
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_762
.label_761:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x2c], eax
.label_762:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_763
.label_760:
	mov	dword ptr [rbp - 4], 0
.label_763:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a360

	.globl traverse_raw_number
	.type traverse_raw_number, @function
traverse_raw_number:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	byte ptr [rbp - 0x1a], 0
	mov	byte ptr [rbp - 0x1b], 0
.label_764:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x19], dl
	movzx	esi, dl
	sub	esi, 0x30
	cmp	esi, 9
	ja	.label_772
	movzx	eax, byte ptr [rbp - 0x1a]
	movzx	ecx, byte ptr [rbp - 0x19]
	cmp	eax, ecx
	jge	.label_773
	mov	al, byte ptr [rbp - 0x19]
	mov	byte ptr [rbp - 0x1a], al
.label_773:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx,  dword ptr [dword ptr [thousands_sep]]
	sete	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x1b], dl
	test	byte ptr [rbp - 0x1b], 1
	je	.label_770
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_770:
	jmp	.label_764
.label_772:
	test	byte ptr [rbp - 0x1b], 1
	je	.label_765
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -2
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dl, byte ptr [rbp - 0x1a]
	mov	byte ptr [rbp - 1], dl
	jmp	.label_768
.label_765:
	movzx	eax, byte ptr [rbp - 0x19]
	cmp	eax,  dword ptr [dword ptr [decimal_point]]
	jne	.label_767
	jmp	.label_771
.label_771:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x19], dl
	movzx	esi, dl
	sub	esi, 0x30
	cmp	esi, 9
	ja	.label_766
	movzx	eax, byte ptr [rbp - 0x1a]
	movzx	ecx, byte ptr [rbp - 0x19]
	cmp	eax, ecx
	jge	.label_769
	mov	al, byte ptr [rbp - 0x19]
	mov	byte ptr [rbp - 0x1a], al
.label_769:
	jmp	.label_771
.label_766:
	jmp	.label_767
.label_767:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dl, byte ptr [rbp - 0x1a]
	mov	byte ptr [rbp - 1], dl
.label_768:
	movzx	eax, byte ptr [rbp - 1]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a480

	.globl xstrxfrm
	.type xstrxfrm, @function
xstrxfrm:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	strxfrm
	mov	qword ptr [rbp - 0x20], rax
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_777
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_776
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x24]
	mov	rdx, rax
	mov	al, 0
	call	error
	movabs	rdi, OFFSET FLAT:label_775
	call	gettext
	xor	esi, esi
	mov	edi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
	movabs	rdi, OFFSET FLAT:label_774
	call	gettext
	xor	edi, edi
	mov	esi, 8
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
	call	quotearg_n_style
	mov	edi, 2
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_777:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a550

	.globl debug_line
	.type debug_line, @function
debug_line:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi,  qword ptr [word ptr [keylist]]
	mov	qword ptr [rbp - 0x10], rdi
.label_781:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	debug_key
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x11], cl
	je	.label_779
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x40]
	mov	qword ptr [rbp - 0x10], rcx
	cmp	rcx, 0
	mov	byte ptr [rbp - 0x12], al
	jne	.label_780
	mov	al, 1
	test	byte ptr [byte ptr [unique]],  1
	mov	byte ptr [rbp - 0x13], al
	jne	.label_778
	mov	al,  byte ptr [byte ptr [stable]]
	mov	byte ptr [rbp - 0x13], al
.label_778:
	mov	al, byte ptr [rbp - 0x13]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x12], al
.label_780:
	mov	al, byte ptr [rbp - 0x12]
	mov	byte ptr [rbp - 0x11], al
.label_779:
	mov	al, byte ptr [rbp - 0x11]
	test	al, 1
	jne	.label_781
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a5e0

	.globl debug_key
	.type debug_key, @function
debug_key:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rdi + 8]
	add	rsi, -1
	mov	qword ptr [rbp - 0x28], rsi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_791
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], -1
	je	.label_787
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	begfield
	mov	qword ptr [rbp - 0x20], rax
.label_787:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], -1
	je	.label_792
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	limfield
	mov	qword ptr [rbp - 0x28], rax
.label_792:
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x30], 1
	je	.label_796
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], -1
	je	.label_782
.label_796:
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x36], 1
	jne	.label_782
	mov	rdi, qword ptr [rbp - 0x10]
	call	key_numeric
	test	al, 1
	jne	.label_782
	jmp	.label_789
.label_782:
	mov	rax, qword ptr [rbp - 0x28]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x29], cl
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax], 0
.label_800:
	mov	rax, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	test	byte ptr [byte ptr [+ (rcx * 1) + blanks]],  1
	je	.label_783
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_800
.label_783:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_798
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_794
.label_798:
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x36], 1
	je	.label_784
	lea	rsi, [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x20]
	call	getmonth
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_786
.label_784:
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x34], 1
	je	.label_788
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rbp - 0x38]
	call	strtold
	fstp	xword ptr [rbp - 0x50]
	jmp	.label_785
.label_788:
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x32], 1
	jne	.label_793
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x35], 1
	je	.label_797
.label_793:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x80], rdx
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_799
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	sete	dl
	mov	byte ptr [rbp - 0x81], dl
.label_799:
	mov	al, byte ptr [rbp - 0x81]
	lea	rdi, [rbp - 0x58]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x80]
	add	rsi, rdx
	mov	qword ptr [rbp - 0x58], rsi
	call	traverse_raw_number
	mov	ecx, 0x30
	mov	byte ptr [rbp - 0x59], al
	movzx	r8d, byte ptr [rbp - 0x59]
	cmp	ecx, r8d
	jg	.label_790
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	mov	sil, byte ptr [rdx]
	mov	byte ptr [rbp - 0x5a], sil
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rdi, qword ptr [rbp - 0x10]
	test	byte ptr [rdi + 0x35], 1
	mov	qword ptr [rbp - 0x90], rdx
	mov	byte ptr [rbp - 0x91], cl
	je	.label_801
	movzx	eax, byte ptr [rbp - 0x5a]
	mov	ecx, eax
	movsx	eax,  byte ptr [byte ptr [+ (rcx * 1) + unit_order]]
	cmp	eax, 0
	setne	dl
	mov	byte ptr [rbp - 0x91], dl
.label_801:
	mov	al, byte ptr [rbp - 0x91]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x90]
	add	rsi, rdx
	mov	qword ptr [rbp - 0x38], rsi
.label_790:
	jmp	.label_795
.label_797:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
.label_795:
	jmp	.label_785
.label_785:
	jmp	.label_786
.label_786:
	jmp	.label_794
.label_794:
	mov	al, byte ptr [rbp - 0x29]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x28], rcx
.label_789:
	jmp	.label_791
.label_791:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	debug_width
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	debug_width
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x70]
	call	mark_key
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a8b0

	.globl debug_width
	.type debug_width, @function
debug_width:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	edx, edx
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 8]
	sub	rsi, rax
	call	mbsnwidth
	movsxd	rsi, eax
	mov	qword ptr [rbp - 0x18], rsi
.label_802:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_803
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	movsx	edx, byte ptr [rax]
	cmp	edx, 9
	sete	sil
	and	sil, 1
	movzx	edx, sil
	movsxd	rax, edx
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_802
.label_803:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a930

	.globl mark_key
	.type mark_key, @function
mark_key:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
.label_805:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 8], rcx
	cmp	rax, 0
	je	.label_804
	mov	edi, 0x20
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_805
.label_804:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_807
	movabs	rdi, OFFSET FLAT:label_809
	call	gettext
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x18], eax
	jmp	.label_808
.label_807:
	jmp	.label_806
.label_806:
	mov	edi, 0x5f
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	jne	.label_806
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x20], eax
.label_808:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a9e0

	.globl move_fd
	.type move_fd, @function
move_fd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	cmp	esi, dword ptr [rbp - 8]
	je	.label_810
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	dup2
	mov	edi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0xc], eax
	call	close
	mov	dword ptr [rbp - 0x10], eax
.label_810:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aa20

	.globl create_temp
	.type create_temp, @function
create_temp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	esi, esi
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	maybe_create_temp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aa40

	.globl mergefiles
	.type mergefiles, @function
mergefiles:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rax, [rbp - 0x30]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, rax
	call	open_input_files
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_811
	cmp	qword ptr [rbp - 0x38], 2
	jae	.label_811
	movabs	rdi, OFFSET FLAT:label_282
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rdi]
	mov	rdi, rax
	call	sort_die
.label_811:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9, qword ptr [rbp - 0x30]
	call	mergefps
	mov	rax, qword ptr [rbp - 0x38]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aae0

	.globl avoid_trashing_input
	.type avoid_trashing_input, @function
avoid_trashing_input:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xf0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], 0
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rcx
.label_821:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_814
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_108
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	sete	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x31], dl
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_820
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	jne	.label_820
	test	byte ptr [rbp - 0x31], 1
	jne	.label_820
	mov	byte ptr [rbp - 0x32], 1
	jmp	.label_813
.label_820:
	call	get_outstatus
	mov	qword ptr [rbp - 0xd0], rax
	cmp	qword ptr [rbp - 0xd0], 0
	jne	.label_812
	jmp	.label_814
.label_812:
	test	byte ptr [rbp - 0x31], 1
	je	.label_817
	xor	edi, edi
	lea	rsi, [rbp - 0xc8]
	call	fstat
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_822
.label_817:
	lea	rsi, [rbp - 0xc8]
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	stat
	mov	dword ptr [rbp - 0xdc], eax
.label_822:
	mov	eax, dword ptr [rbp - 0xdc]
	xor	ecx, ecx
	mov	dl, cl
	cmp	eax, 0
	mov	byte ptr [rbp - 0xdd], dl
	jne	.label_819
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rsi, qword ptr [rbp - 0xd0]
	cmp	rdx, qword ptr [rsi + 8]
	mov	byte ptr [rbp - 0xde], cl
	jne	.label_823
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0xd0]
	cmp	rax, qword ptr [rcx]
	sete	dl
	mov	byte ptr [rbp - 0xde], dl
.label_823:
	mov	al, byte ptr [rbp - 0xde]
	mov	byte ptr [rbp - 0xdd], al
.label_819:
	mov	al, byte ptr [rbp - 0xdd]
	and	al, 1
	mov	byte ptr [rbp - 0x32], al
.label_813:
	test	byte ptr [rbp - 0x32], 1
	je	.label_815
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_816
	lea	rdi, [rbp - 0xd8]
	call	create_temp
	xor	ecx, ecx
	mov	esi, ecx
	mov	ecx, 1
	mov	edx, ecx
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdi, qword ptr [rbp - 0x28]
	add	rdi, 0xd
	mov	qword ptr [rbp - 0xe8], rdi
	mov	rdi, rax
	mov	r8, qword ptr [rbp - 0xe8]
	call	mergefiles
	mov	qword ptr [rbp - 0xf0], rax
.label_816:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0xd
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
.label_815:
	jmp	.label_818
.label_818:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_821
.label_814:
	add	rsp, 0xf0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ad00

	.globl open_input_files
	.type open_input_files, @function
open_input_files:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	eax, 8
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rcx
	call	xnmalloc
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rbp - 0x20], rax
	mov	dword ptr [rbp - 0x24], 0
.label_826:
	movsxd	rax, dword ptr [rbp - 0x24]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_829
	movsxd	rax, dword ptr [rbp - 0x24]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 8], 0
	je	.label_825
	movsxd	rax, dword ptr [rbp - 0x24]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	movsx	ecx, byte ptr [rax + 0xc]
	cmp	ecx, 0
	je	.label_825
	movsxd	rax, dword ptr [rbp - 0x24]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	open_temp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_827
.label_825:
	movabs	rsi, OFFSET FLAT:label_159
	movsxd	rax, dword ptr [rbp - 0x24]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	stream_open
	mov	qword ptr [rbp - 0x30], rax
.label_827:
	mov	rax, qword ptr [rbp - 0x30]
	movsxd	rcx, dword ptr [rbp - 0x24]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx + rcx*8], rax
	movsxd	rax, dword ptr [rbp - 0x24]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rcx + rax*8], 0
	jne	.label_824
	jmp	.label_829
.label_824:
	jmp	.label_828
.label_828:
	mov	eax, dword ptr [rbp - 0x24]
	add	eax, 1
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_826
.label_829:
	movsxd	rax, dword ptr [rbp - 0x24]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ae00

	.globl mergefps
	.type mergefps, @function
mergefps:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	mov	eax, 0x38
	mov	r10d, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, r10
	call	xnmalloc
	mov	r11d, 8
	mov	esi, r11d
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	rdi, qword ptr [rbp - 0x18]
	call	xnmalloc
	mov	r11d, 8
	mov	esi, r11d
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x18]
	call	xnmalloc
	mov	r11d, 8
	mov	esi, r11d
	mov	qword ptr [rbp - 0x78], rax
	mov	rdi, qword ptr [rbp - 0x18]
	call	xnmalloc
	mov	qword ptr [rbp - 0x80], rax
	mov	rax,  qword ptr [word ptr [keylist]]
	mov	qword ptr [rbp - 0xa0], rax
	mov	qword ptr [rbp - 0x58], 0
	mov	qword ptr [rbp - 0x88], 0
.label_834:
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_864
	mov	rax, qword ptr [rbp - 0x88]
	imul	rax, rax, 0x38
	add	rax, qword ptr [rbp - 0x38]
	mov	rcx,  qword ptr [word ptr [merge_buffer_size]]
	mov	rdx,  qword ptr [word ptr [sort_size]]
	mov	qword ptr [rbp - 0xf0], rax
	mov	rax, rdx
	xor	esi, esi
	mov	edx, esi
	div	qword ptr [rbp - 0x18]
	cmp	rcx, rax
	jbe	.label_869
	mov	rax,  qword ptr [word ptr [merge_buffer_size]]
	mov	qword ptr [rbp - 0xf8], rax
	jmp	.label_879
.label_869:
	mov	rax,  qword ptr [word ptr [sort_size]]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xf8], rax
.label_879:
	mov	rax, qword ptr [rbp - 0xf8]
	mov	ecx, 0x20
	mov	esi, ecx
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rdx, rax
	call	initbuf
	mov	rax, qword ptr [rbp - 0x88]
	imul	rax, rax, 0x38
	add	rax, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rsi + rdx*8]
	mov	rdx, qword ptr [rbp - 0x88]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx]
	mov	rdi, rax
	call	fillbuf
	test	al, 1
	jne	.label_856
	jmp	.label_858
.label_856:
	mov	rax, qword ptr [rbp - 0x88]
	imul	rax, rax, 0x38
	add	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	buffer_linelim
	xor	ecx, ecx
	mov	edi, ecx
	mov	qword ptr [rbp - 0xa8], rax
	mov	rax, qword ptr [rbp - 0xa8]
	add	rax, -0x20
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rdx, qword ptr [rbp - 0x88]
	imul	rdx, rdx, 0x38
	add	rdx, qword ptr [rbp - 0x38]
	sub	rdi, qword ptr [rdx + 0x10]
	shl	rdi, 5
	add	rax, rdi
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_833
.label_858:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [rbp - 0x88]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rax]
	call	xfclose
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_839
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x88]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	zaptemp
.label_839:
	mov	rax, qword ptr [rbp - 0x88]
	imul	rax, rax, 0x38
	add	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rax]
	call	free
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x90], rax
.label_876:
	mov	rax, qword ptr [rbp - 0x90]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_859
	mov	rax, qword ptr [rbp - 0x90]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x90]
	add	rcx, 1
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax], rdx
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_876
.label_859:
	jmp	.label_833
.label_833:
	jmp	.label_834
.label_864:
	mov	qword ptr [rbp - 0x88], 0
.label_840:
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_838
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_840
.label_838:
	mov	qword ptr [rbp - 0x88], 1
.label_837:
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_853
	mov	rax, qword ptr [rbp - 0x88]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rcx + rax*8]
	call	compare
	xor	edx, edx
	cmp	edx, eax
	jge	.label_866
	mov	rax, qword ptr [rbp - 0x88]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x88]
	sub	rcx, 1
	mov	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rdx + rcx*8], rax
	mov	qword ptr [rbp - 0x88], 0
.label_866:
	jmp	.label_835
.label_835:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_837
.label_853:
	jmp	.label_842
.label_842:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_843
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0xb0], rax
	test	byte ptr [byte ptr [unique]],  1
	je	.label_846
	cmp	qword ptr [rbp - 0x60], 0
	je	.label_852
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0xb0]
	call	compare
	cmp	eax, 0
	je	.label_852
	lea	rdi, [rbp - 0x58]
	mov	qword ptr [rbp - 0x60], 0
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	write_line
.label_852:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_862
	lea	rax, [rbp - 0x58]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_865
	jmp	.label_871
.label_871:
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_873
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_874
.label_873:
	jmp	.label_877
.label_877:
	mov	rax, qword ptr [rbp - 0x68]
	shl	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	mov	rcx, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rcx + 8]
	jb	.label_871
.label_874:
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
	mov	rdi, qword ptr [rbp - 0x68]
	call	xmalloc
	mov	qword ptr [rbp - 0x58], rax
.label_865:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsi, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x50]
	call	memcpy
	cmp	qword ptr [rbp - 0xa0], 0
	je	.label_848
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rdx, qword ptr [rdx]
	sub	rcx, rdx
	add	rax, rcx
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rdx, qword ptr [rdx]
	sub	rcx, rdx
	add	rax, rcx
	mov	qword ptr [rbp - 0x40], rax
.label_848:
	jmp	.label_862
.label_862:
	jmp	.label_855
.label_846:
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	write_line
.label_855:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_870
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, -0x20
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_863
.label_870:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	imul	rax, rax, 0x38
	add	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rcx]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx]
	mov	rdi, rax
	call	fillbuf
	test	al, 1
	jne	.label_845
	jmp	.label_844
.label_845:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	imul	rax, rax, 0x38
	add	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	buffer_linelim
	xor	ecx, ecx
	mov	edi, ecx
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, -0x20
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rdx]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rdx]
	imul	rdx, rdx, 0x38
	add	rdx, qword ptr [rbp - 0x38]
	sub	rdi, qword ptr [rdx + 0x10]
	shl	rdi, 5
	add	rax, rdi
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rdx]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	qword ptr [rsi + rdx*8], rax
	jmp	.label_849
.label_844:
	mov	qword ptr [rbp - 0x88], 1
.label_832:
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_868
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x80]
	cmp	rax, qword ptr [rcx]
	jbe	.label_872
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rcx + rax*8]
	add	rdx, -1
	mov	qword ptr [rcx + rax*8], rdx
.label_872:
	jmp	.label_830
.label_830:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_832
.label_868:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rax]
	call	xfclose
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_875
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	zaptemp
.label_875:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	imul	rax, rax, 0x38
	add	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rax]
	call	free
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x88], rax
.label_841:
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_857
	mov	eax, 0x38
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rsi + rcx*8 + 8]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rdi + rsi*8], rcx
	mov	rcx, qword ptr [rbp - 0x88]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x88]
	add	rsi, 1
	shl	rsi, 4
	add	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rsi]
	mov	qword ptr [rcx], rdi
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rcx + 8], rsi
	mov	rcx, qword ptr [rbp - 0x88]
	imul	rcx, rcx, 0x38
	add	rcx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x88]
	add	rsi, 1
	imul	rsi, rsi, 0x38
	add	rsi, qword ptr [rbp - 0x38]
	mov	rdi, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rdx + rcx*8 + 8]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + rdx*8], rcx
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rdx + rcx*8 + 8]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	qword ptr [rsi + rdx*8], rcx
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_841
.label_857:
	mov	qword ptr [rbp - 0x88], 0
.label_831:
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_861
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_831
.label_861:
	jmp	.label_842
.label_849:
	jmp	.label_863
.label_863:
	mov	qword ptr [rbp - 0xc0], 1
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0xd0], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xd8], rax
.label_867:
	mov	rax, qword ptr [rbp - 0xc0]
	cmp	rax, qword ptr [rbp - 0xc8]
	jae	.label_836
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rcx + rax*8]
	call	compare
	mov	dword ptr [rbp - 0xe4], eax
	cmp	dword ptr [rbp - 0xe4], 0
	jl	.label_850
	cmp	dword ptr [rbp - 0xe4], 0
	jne	.label_854
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	rdx, qword ptr [rbp - 0x80]
	cmp	rax, qword ptr [rdx + rcx*8]
	jae	.label_854
.label_850:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_860
.label_854:
	mov	rax, qword ptr [rbp - 0xd0]
	add	rax, 1
	mov	qword ptr [rbp - 0xc0], rax
.label_860:
	mov	rax, qword ptr [rbp - 0xc0]
	add	rax, qword ptr [rbp - 0xc8]
	shr	rax, 1
	mov	qword ptr [rbp - 0xd0], rax
	jmp	.label_867
.label_836:
	mov	rax, qword ptr [rbp - 0xc0]
	sub	rax, 1
	mov	qword ptr [rbp - 0xe0], rax
	mov	qword ptr [rbp - 0x90], 0
.label_847:
	mov	rax, qword ptr [rbp - 0x90]
	cmp	rax, qword ptr [rbp - 0xe0]
	jae	.label_878
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_847
.label_878:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_842
.label_843:
	test	byte ptr [byte ptr [unique]],  1
	je	.label_851
	cmp	qword ptr [rbp - 0x60], 0
	je	.label_851
	lea	rdi, [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	write_line
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
.label_851:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	xfclose
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, rsi
	call	free
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdi, rsi
	call	free
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rdi, rsi
	call	free
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdi, rsi
	call	free
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdi, rsi
	call	free
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b8f0

	.globl maybe_create_temp
	.type maybe_create_temp, @function
maybe_create_temp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, sil
	lea	rcx, [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rdi
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	mov	rdi, rcx
	movzx	esi, al
	call	create_temp_file
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_882
	mov	qword ptr [rbp - 8], 0
	jmp	.label_885
.label_882:
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 0xc], 0
	cmp	qword ptr [word ptr [compress_program]],  0
	je	.label_880
	mov	eax, 4
	mov	esi, eax
	lea	rdi, [rbp - 0x28]
	call	pipe_fork
	xor	ecx, ecx
	mov	rsi, qword ptr [rbp - 0x20]
	mov	dword ptr [rsi + 8], eax
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	ecx, dword ptr [rsi + 8]
	jge	.label_888
	mov	edi, dword ptr [rbp - 0x18]
	call	close
	mov	edi, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x2c], eax
	call	close
	mov	edi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x18], edi
	mov	rdi, qword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x30], eax
	call	register_proc
	jmp	.label_881
.label_888:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	dword ptr [rax + 8], 0
	jne	.label_884
	mov	edi, dword ptr [rbp - 0x24]
	call	close
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x34], eax
	call	move_fd
	xor	esi, esi
	mov	edi, dword ptr [rbp - 0x28]
	call	move_fd
	xor	eax, eax
	mov	edx, eax
	mov	rdi,  qword ptr [word ptr [compress_program]]
	mov	rsi,  qword ptr [word ptr [compress_program]]
	mov	al, 0
	call	execlp
	mov	dword ptr [rbp - 0x38], eax
	call	__errno_location
	movabs	rsi, OFFSET FLAT:label_886
	mov	edi, dword ptr [rax]
	call	async_safe_die
.label_884:
	jmp	.label_881
.label_881:
	jmp	.label_880
.label_880:
	movabs	rsi, OFFSET FLAT:label_382
	mov	edi, dword ptr [rbp - 0x18]
	call	fdopen
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	jne	.label_883
	movabs	rdi, OFFSET FLAT:label_887
	call	gettext
	mov	rdi, qword ptr [rbp - 0x20]
	add	rdi, 0xd
	mov	qword ptr [rbp - 0x40], rdi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x40]
	call	sort_die
.label_883:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_885:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ba70

	.globl open_temp
	.type open_temp, @function
open_temp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdi + 0xc]
	cmp	eax, 1
	jne	.label_897
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 8]
	call	wait_proc
.label_897:
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0xd
	mov	rdi, rax
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], 0
	jge	.label_899
	mov	qword ptr [rbp - 8], 0
	jmp	.label_889
.label_899:
	mov	eax, 9
	mov	esi, eax
	lea	rdi, [rbp - 0x1c]
	call	pipe_fork
	mov	dword ptr [rbp - 0x2c], eax
	mov	ecx, eax
	sub	eax, -1
	mov	dword ptr [rbp - 0x34], ecx
	mov	dword ptr [rbp - 0x38], eax
	je	.label_895
	jmp	.label_898
.label_898:
	mov	eax, dword ptr [rbp - 0x34]
	test	eax, eax
	je	.label_900
	jmp	.label_890
.label_895:
	call	__errno_location
	cmp	dword ptr [rax], 0x18
	je	.label_891
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_893
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x3c], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [compress_program]]
	mov	qword ptr [rbp - 0x48], rax
	call	quotearg_style
	mov	edi, 2
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_891:
	mov	edi, dword ptr [rbp - 0x14]
	call	close
	mov	dword ptr [rbp - 0x4c], eax
	call	__errno_location
	mov	dword ptr [rax], 0x18
	jmp	.label_896
.label_900:
	mov	edi, dword ptr [rbp - 0x1c]
	call	close
	xor	esi, esi
	mov	edi, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x50], eax
	call	move_fd
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0x18]
	call	move_fd
	movabs	rdx, OFFSET FLAT:label_894
	xor	eax, eax
	mov	ecx, eax
	mov	rdi,  qword ptr [word ptr [compress_program]]
	mov	rsi,  qword ptr [word ptr [compress_program]]
	mov	al, 0
	call	execlp
	mov	dword ptr [rbp - 0x54], eax
	call	__errno_location
	movabs	rsi, OFFSET FLAT:label_901
	mov	edi, dword ptr [rax]
	call	async_safe_die
.label_890:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dword ptr [rcx + 8], eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	register_proc
	mov	edi, dword ptr [rbp - 0x14]
	call	close
	mov	edi, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x58], eax
	call	close
	movabs	rsi, OFFSET FLAT:label_159
	mov	edi, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x5c], eax
	call	fdopen
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_892
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 0x1c]
	call	close
	mov	ecx, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x60], eax
	mov	dword ptr [rbp - 0x64], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x64]
	mov	dword ptr [rax], ecx
.label_892:
	jmp	.label_896
.label_896:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_889:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bc60

	.globl wait_proc
	.type wait_proc, @function
wait_proc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	call	delete_proc
	test	al, 1
	jne	.label_902
	jmp	.label_903
.label_902:
	mov	edi, dword ptr [rbp - 4]
	call	reap
	mov	dword ptr [rbp - 8], eax
.label_903:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bca0

	.globl pipe_fork
	.type pipe_fork, @function
pipe_fork:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	eax, 0x80000
	movsd	xmm0,  qword ptr [word ptr [rip + label_914]]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	movsd	qword ptr [rbp - 0x30], xmm0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, eax
	call	rpl_pipe2
	cmp	eax, 0
	jge	.label_908
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_911
.label_908:
	mov	eax,  dword ptr [dword ptr [nmerge]]
	add	eax, 1
	cmp	eax,  dword ptr [dword ptr [nprocs]]
	jae	.label_915
	call	reap_some
.label_915:
	jmp	.label_904
.label_904:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	cmp	rax, 0
	je	.label_906
	lea	rdi, [rbp - 0xc0]
	call	cs_enter
	mov	rdi,  qword ptr [word ptr [temphead]]
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [word ptr [temphead]],  0
	call	fork
	mov	dword ptr [rbp - 0x34], eax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
	cmp	dword ptr [rbp - 0x34], 0
	je	.label_909
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [temphead]],  rax
.label_909:
	lea	rdi, [rbp - 0xc0]
	call	cs_leave
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0xc4], eax
	call	__errno_location
	xor	ecx, ecx
	mov	edx, dword ptr [rbp - 0xc4]
	mov	dword ptr [rax], edx
	cmp	ecx, dword ptr [rbp - 0x34]
	jle	.label_905
	call	__errno_location
	cmp	dword ptr [rax], 0xb
	je	.label_913
.label_905:
	jmp	.label_906
.label_913:
	movsd	xmm0, qword ptr [rbp - 0x30]
	call	xnanosleep
	movsd	xmm0,  qword ptr [word ptr [rip + label_917]]
	mulsd	xmm0, qword ptr [rbp - 0x30]
	movsd	qword ptr [rbp - 0x30], xmm0
	mov	dword ptr [rbp - 0xc8], eax
	call	reap_exited
	jmp	.label_904
.label_906:
	cmp	dword ptr [rbp - 0x34], 0
	jge	.label_910
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax]
	call	close
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rdx + 4]
	mov	dword ptr [rbp - 0xcc], eax
	call	close
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0xd0], eax
	mov	dword ptr [rbp - 0xd4], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xd4]
	mov	dword ptr [rax], ecx
	jmp	.label_912
.label_910:
	cmp	dword ptr [rbp - 0x34], 0
	jne	.label_916
	xor	edi, edi
	call	close
	mov	edi, 1
	mov	dword ptr [rbp - 0xd8], eax
	call	close
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_907
.label_916:
	mov	eax,  dword ptr [dword ptr [nprocs]]
	add	eax, 1
	mov	dword ptr [dword ptr [nprocs]],  eax
.label_907:
	jmp	.label_912
.label_912:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
.label_911:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40be80

	.globl async_safe_die
	.type async_safe_die, @function
async_safe_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	eax, 2
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x4c], eax
	mov	qword ptr [rbp - 0x58], rsi
	call	strlen
	mov	edi, dword ptr [rbp - 0x4c]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdx, rax
	call	write
	mov	qword ptr [rbp - 0x18], rax
	cmp	dword ptr [rbp - 4], 0
	je	.label_920
	lea	rsi, [rbp - 0x24]
	mov	edi, dword ptr [rbp - 4]
	call	inttostr
	mov	edi, 2
	movabs	rsi, OFFSET FLAT:label_918
	mov	ecx, 8
	mov	edx, ecx
	mov	qword ptr [rbp - 0x30], rax
	call	write
	mov	edi, 2
	mov	qword ptr [rbp - 0x38], rax
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x5c], edi
	mov	rdi, rax
	mov	qword ptr [rbp - 0x68], rsi
	call	strlen
	mov	edi, dword ptr [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, rax
	call	write
	mov	qword ptr [rbp - 0x40], rax
.label_920:
	mov	edi, 2
	movabs	rsi, OFFSET FLAT:label_919
	mov	eax, 1
	mov	edx, eax
	call	write
	mov	edi, 2
	mov	qword ptr [rbp - 0x48], rax
	call	_exit
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40bf50

	.globl register_proc
	.type register_proc, @function
register_proc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [word ptr [proctab]],  0
	jne	.label_921
	mov	eax, 0x2f
	mov	edi, eax
	xor	eax, eax
	mov	ecx, eax
	movabs	rdx, OFFSET FLAT:proctab_hasher
	movabs	rsi, OFFSET FLAT:proctab_comparator
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, rcx
	mov	r8, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, r8
	mov	r8, qword ptr [rbp - 0x18]
	call	hash_initialize
	mov	qword ptr [word ptr [proctab]],  rax
	cmp	qword ptr [word ptr [proctab]],  0
	jne	.label_923
	call	xalloc_die
.label_923:
	jmp	.label_921
.label_921:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0xc], 1
	mov	rdi,  qword ptr [word ptr [proctab]]
	mov	rax, qword ptr [rbp - 8]
	mov	rsi, rax
	call	hash_insert
	cmp	rax, 0
	jne	.label_922
	call	xalloc_die
.label_922:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c000

	.globl delete_proc
	.type delete_proc, @function
delete_proc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rax, [rbp - 0x18]
	mov	dword ptr [rbp - 8], edi
	mov	edi, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x10], edi
	mov	rdi,  qword ptr [word ptr [proctab]]
	mov	rsi, rax
	call	hash_delete
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_925
	mov	byte ptr [rbp - 1], 0
	jmp	.label_924
.label_925:
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 0xc], 2
	mov	byte ptr [rbp - 1], 1
.label_924:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c060

	.globl reap
	.type reap, @function
reap:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_929
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_926
.label_929:
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_926
.label_926:
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rsi, [rbp - 8]
	mov	ecx, 1
	xor	edx, edx
	cmp	dword ptr [rbp - 4], 0
	cmovne	ecx, edx
	mov	edi, eax
	mov	edx, ecx
	call	waitpid
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	jge	.label_933
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_935
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x20], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [compress_program]]
	mov	qword ptr [rbp - 0x28], rax
	call	quotearg_style
	mov	edi, 2
	mov	esi, dword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_933:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jge	.label_931
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_927
	mov	edi, dword ptr [rbp - 0xc]
	call	delete_proc
	test	al, 1
	jne	.label_927
	jmp	.label_931
.label_927:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x10], eax
	mov	eax, dword ptr [rbp - 0x10]
	and	eax, 0x7f
	cmp	eax, 0
	jne	.label_932
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x18], eax
	mov	eax, dword ptr [rbp - 0x18]
	and	eax, 0xff00
	sar	eax, 8
	cmp	eax, 0
	je	.label_934
.label_932:
	movabs	rdi, OFFSET FLAT:label_928
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [compress_program]]
	mov	qword ptr [rbp - 0x30], rax
	call	quotearg_style
	mov	edi, 2
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_934:
	mov	eax,  dword ptr [dword ptr [nprocs]]
	add	eax, -1
	mov	dword ptr [dword ptr [nprocs]],  eax
.label_931:
	jmp	.label_930
.label_930:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c1b0

	.globl reap_some
	.type reap_some, @function
reap_some:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edi, 0xffffffff
	call	reap
	mov	dword ptr [rbp - 4], eax
	call	reap_exited
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c1d0

	.globl reap_exited
	.type reap_exited, @function
reap_exited:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	jmp	.label_936
.label_936:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	cmp	eax,  dword ptr [dword ptr [nprocs]]
	mov	byte ptr [rbp - 1], cl
	jge	.label_938
	xor	edi, edi
	call	reap
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 1], cl
.label_938:
	mov	al, byte ptr [rbp - 1]
	test	al, 1
	jne	.label_937
	jmp	.label_939
.label_937:
	jmp	.label_936
.label_939:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c220

	.globl proctab_hasher
	.type proctab_hasher, @function
proctab_hasher:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rsi + 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c250

	.globl proctab_comparator
	.type proctab_comparator, @function
proctab_comparator:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	eax, dword ptr [rsi + 8]
	sete	cl
	and	cl, 1
	movzx	eax, cl
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c290

	.globl zaptemp
	.type zaptemp, @function
zaptemp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	movabs	rax, OFFSET FLAT:temphead
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x10], rax
.label_943:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
	add	rax, 0xd
	cmp	rax, qword ptr [rbp - 8]
	je	.label_944
	jmp	.label_942
.label_942:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_943
.label_944:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax + 0xc]
	cmp	ecx, 1
	jne	.label_946
	mov	rax, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rax + 8]
	call	wait_proc
.label_946:
	lea	rdi, [rbp - 0xb0]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x20], rax
	call	cs_enter
	mov	rdi, qword ptr [rbp - 8]
	call	unlink
	mov	dword ptr [rbp - 0x24], eax
	call	__errno_location
	lea	rdi, [rbp - 0xb0]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx], rax
	call	cs_leave
	cmp	dword ptr [rbp - 0x24], 0
	je	.label_940
	movabs	rdi, OFFSET FLAT:label_941
	mov	esi, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0xb4], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0xc0], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xb4]
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_940:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_945
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [temptail]],  rax
.label_945:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c3c0

	.globl create_temp_file
	.type create_temp_file, @function
create_temp_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	rdi,  qword ptr [word ptr [create_temp_file.temp_dir_index]]
	mov	rcx,  qword ptr [word ptr [temp_dirs]]
	mov	rcx, qword ptr [rcx + rdi*8]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 0x20]
	call	strlen
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0xc
	add	rax, 0x14
	and	rax, 0xfffffffffffffff8
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0xd
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	memcpy
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx,  qword ptr [word ptr [create_temp_file.slashbase]]
	mov	qword ptr [rax + rcx], rdx
	mov	r8d,  dword ptr [dword ptr [label_951]]
	mov	dword ptr [rax + rcx + 8], r8d
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
	mov	rax,  qword ptr [word ptr [create_temp_file.temp_dir_index]]
	add	rax, 1
	mov	qword ptr [word ptr [create_temp_file.temp_dir_index]],  rax
	cmp	rax,  qword ptr [word ptr [temp_dir_count]]
	jne	.label_952
	mov	qword ptr [word ptr [create_temp_file.temp_dir_index]],  0
.label_952:
	lea	rdi, [rbp - 0xc0]
	call	cs_enter
	mov	esi, 0x80000
	mov	rdi, qword ptr [rbp - 0x38]
	call	mkostemp_safer
	xor	esi, esi
	mov	dword ptr [rbp - 0x10], eax
	cmp	esi, dword ptr [rbp - 0x10]
	jg	.label_950
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [temptail]]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [word ptr [temptail]],  rax
.label_950:
	call	__errno_location
	lea	rdi, [rbp - 0xc0]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
	call	cs_leave
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0xc4], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xc4]
	mov	dword ptr [rax], ecx
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_953
	test	byte ptr [rbp - 9], 1
	je	.label_947
	call	__errno_location
	cmp	dword ptr [rax], 0x18
	je	.label_948
.label_947:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_949
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc8], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xd0], rax
	call	quotearg_style
	mov	edi, 2
	mov	esi, dword ptr [rbp - 0xc8]
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_948:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 0x30], 0
.label_953:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx], eax
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c5a0

	.globl sort_buffer_size
	.type sort_buffer_size, @function
sort_buffer_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, 1
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	mov	qword ptr [rbp - 0x48], 0
.label_969:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_962
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_964
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	fileno
	lea	rsi, [rbp - 0xd8]
	mov	edi, eax
	call	fstat
	mov	dword ptr [rbp - 0xec], eax
	jmp	.label_959
.label_964:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, OFFSET FLAT:label_108
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	jne	.label_965
	xor	edi, edi
	lea	rsi, [rbp - 0xd8]
	call	fstat
	mov	dword ptr [rbp - 0xf0], eax
	jmp	.label_957
.label_965:
	lea	rsi, [rbp - 0xd8]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + rax*8]
	call	stat
	mov	dword ptr [rbp - 0xf0], eax
.label_957:
	mov	eax, dword ptr [rbp - 0xf0]
	mov	dword ptr [rbp - 0xec], eax
.label_959:
	mov	eax, dword ptr [rbp - 0xec]
	cmp	eax, 0
	je	.label_954
	movabs	rdi, OFFSET FLAT:label_958
	call	gettext
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rcx + rdi*8]
	mov	rdi, rax
	call	sort_die
.label_954:
	mov	eax, dword ptr [rbp - 0xc0]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_968
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xe0], rax
	jmp	.label_956
.label_968:
	cmp	qword ptr [word ptr [sort_size]],  0
	je	.label_963
	mov	rax,  qword ptr [word ptr [sort_size]]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_961
.label_963:
	mov	qword ptr [rbp - 0xe0], 0x20000
.label_956:
	cmp	qword ptr [word ptr [sort_buffer_size.size_bound]],  0
	jne	.label_955
	mov	rax,  qword ptr [word ptr [sort_size]]
	mov	qword ptr [word ptr [sort_buffer_size.size_bound]],  rax
	cmp	qword ptr [word ptr [sort_buffer_size.size_bound]],  0
	jne	.label_966
	call	default_sort_size
	mov	qword ptr [word ptr [sort_buffer_size.size_bound]],  rax
.label_966:
	jmp	.label_955
.label_955:
	mov	rax, qword ptr [rbp - 0xe0]
	imul	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0xe8], rax
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rcx, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xf8], rax
	mov	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0xf8]
	cmp	rcx, rax
	jne	.label_960
	mov	rax,  qword ptr [word ptr [sort_buffer_size.size_bound]]
	sub	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0xe8]
	ja	.label_967
.label_960:
	mov	rax,  qword ptr [word ptr [sort_buffer_size.size_bound]]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_961
.label_967:
	mov	rax, qword ptr [rbp - 0xe8]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_969
.label_962:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_961:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c800

	.globl queue_init
	.type queue_init, @function
queue_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, OFFSET FLAT:compare_nodes
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	shl	rsi, 1
	mov	rdi, rax
	call	heap_alloc
	xor	ecx, ecx
	mov	esi, ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	rdi, rax
	call	pthread_mutex_init
	xor	ecx, ecx
	mov	esi, ecx
	mov	rdi, qword ptr [rbp - 8]
	add	rdi, 0x30
	mov	dword ptr [rbp - 0x14], eax
	call	pthread_cond_init
	mov	dword ptr [rbp - 0x18], eax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c870

	.globl merge_tree_init
	.type merge_tree_init, @function
merge_tree_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	shl	rdx, 8
	mov	rdi, rdx
	call	xmalloc
	xor	ecx, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx + 0x30], rax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 0x38], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax + 0x50], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax + 0x54], 0
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x58
	mov	rdi, rax
	call	pthread_mutex_init
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x28]
	add	rdx, 0x80
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, rdx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x34], eax
	call	init_node
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, rcx
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c970

	.globl sortlines
	.type sortlines, @function
sortlines:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	mov	rax, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	shr	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x10], 1
	jbe	.label_970
	mov	eax, 0x20000
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x40]
	ja	.label_970
	lea	rdi, [rbp - 0x58]
	xor	eax, eax
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:sortlines_thread
	lea	rcx, [rbp - 0x90]
	call	pthread_create
	cmp	eax, 0
	jne	.label_970
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rsi + 0x28]
	shl	rcx, 5
	add	rdx, rcx
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdi + 0x48]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xb0], rdi
	mov	rdi, rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rsp], r10
	call	sortlines
	xor	eax, eax
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x58]
	call	pthread_join
	mov	dword ptr [rbp - 0xb4], eax
	jmp	.label_971
.label_970:
	mov	eax, 1
	mov	ecx, eax
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	qword ptr [rbp - 0x98], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rsi + 0x30]
	mov	qword ptr [rbp - 0xa0], rsi
	mov	rsi, qword ptr [rbp - 8]
	sub	rdx, qword ptr [rbp - 0x18]
	shl	rdx, 5
	add	rsi, rdx
	mov	qword ptr [rbp - 0xa8], rsi
	cmp	rcx, qword ptr [rbp - 0xa0]
	jae	.label_972
	xor	ecx, ecx
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rdx
	sub	rdi, qword ptr [rbp - 0x98]
	shl	rdi, 5
	add	rsi, rdi
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	r8, qword ptr [rbp - 0xa8]
	mov	r9, qword ptr [rbp - 0x98]
	shr	r9, 1
	sub	rdx, r9
	shl	rdx, 5
	add	r8, rdx
	mov	qword ptr [rbp - 0xc0], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, r8
	call	sequential_sort
.label_972:
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x98]
	jae	.label_973
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0xa8]
	call	sequential_sort
.label_973:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, rcx
	sub	rsi, qword ptr [rbp - 0x98]
	shl	rsi, 5
	add	rdx, rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, rcx
	sub	rsi, qword ptr [rbp - 0x98]
	shl	rsi, 5
	add	rdx, rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi + 0x10], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, rcx
	sub	rsi, qword ptr [rbp - 0x98]
	shl	rsi, 5
	add	rdx, rsi
	sub	rcx, qword ptr [rbp - 0xa0]
	shl	rcx, 5
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x18], rdx
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	call	queue_insert
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	call	merge_loop
.label_971:
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cc30

	.globl write_unique
	.type write_unique, @function
write_unique:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	test	byte ptr [byte ptr [unique]],  1
	je	.label_974
	cmp	qword ptr [word ptr [saved_line]],  0
	je	.label_975
	movabs	rsi, OFFSET FLAT:saved_line
	mov	rdi, qword ptr [rbp - 8]
	call	compare
	cmp	eax, 0
	jne	.label_975
	jmp	.label_979
.label_975:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax]
	mov	qword ptr [word ptr [saved_line]],  rcx
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [word ptr [label_976]],  rcx
	mov	rcx, qword ptr [rax + 0x10]
	mov	qword ptr [word ptr [label_977]],  rcx
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [word ptr [label_978]],  rax
.label_974:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	write_line
.label_979:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ccd0

	.globl reap_all
	.type reap_all, @function
reap_all:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	jmp	.label_980
.label_980:
	xor	eax, eax
	cmp	eax,  dword ptr [dword ptr [nprocs]]
	jge	.label_981
	mov	edi, 0xffffffff
	call	reap
	mov	dword ptr [rbp - 4], eax
	jmp	.label_980
.label_981:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cd10

	.globl default_sort_size
	.type default_sort_size, @function
default_sort_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	edi, 2
	lea	rsi, [rbp - 0x18]
	mov	qword ptr [rbp - 8], -1
	call	getrlimit
	cmp	eax, 0
	jne	.label_983
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_983
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
.label_983:
	mov	edi, 9
	lea	rsi, [rbp - 0x18]
	call	getrlimit
	cmp	eax, 0
	jne	.label_987
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_987
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
.label_987:
	mov	edi, 5
	lea	rsi, [rbp - 0x18]
	mov	rax, qword ptr [rbp - 8]
	shr	rax, 1
	mov	qword ptr [rbp - 8], rax
	call	getrlimit
	cmp	eax, 0
	jne	.label_985
	mov	rax, qword ptr [rbp - 0x18]
	shr	rax, 4
	imul	rax, rax, 0xf
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_985
	mov	rax, qword ptr [rbp - 0x18]
	shr	rax, 4
	imul	rax, rax, 0xf
	mov	qword ptr [rbp - 8], rax
.label_985:
	call	physmem_available
	movsd	qword ptr [rbp - 0x20], xmm0
	call	physmem_total
	movsd	xmm1,  qword ptr [word ptr [rip + label_982]]
	movsd	qword ptr [rbp - 0x28], xmm0
	movsd	xmm0, qword ptr [rbp - 0x20]
	movsd	xmm2, qword ptr [rbp - 0x28]
	divsd	xmm2, xmm1
	ucomisd	xmm0, xmm2
	jbe	.label_984
	movsd	xmm0, qword ptr [rbp - 0x20]
	movsd	qword ptr [rbp - 0x38], xmm0
	jmp	.label_991
.label_984:
	movsd	xmm0,  qword ptr [word ptr [rip + label_982]]
	movsd	xmm1, qword ptr [rbp - 0x28]
	divsd	xmm1, xmm0
	movsd	qword ptr [rbp - 0x38], xmm1
.label_991:
	movsd	xmm0, qword ptr [rbp - 0x38]
	movsd	qword ptr [rbp - 0x30], xmm0
	movsd	xmm0, qword ptr [rbp - 0x28]
	movsd	xmm1,  qword ptr [word ptr [rip + label_988]]
	mulsd	xmm0, xmm1
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_256]]
	movq	xmm2, qword ptr [rbp - 8]
	punpckldq	xmm2, xmm1
	movapd	xmm1,  xmmword ptr [word ptr [rip + label_257]]
	subpd	xmm2, xmm1
	pshufd	xmm1, xmm2, 0x4e
	addpd	xmm1, xmm2
	ucomisd	xmm1, xmm0
	jbe	.label_989
	movsd	xmm0, qword ptr [rbp - 0x28]
	movsd	xmm1,  qword ptr [word ptr [rip + label_988]]
	mulsd	xmm0, xmm1
	movsd	xmm1,  qword ptr [word ptr [rip + label_263]]
	movaps	xmm2, xmm0
	subsd	xmm2, xmm1
	cvttsd2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttsd2si	rcx, xmm0
	ucomisd	xmm0, xmm1
	cmovb	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_989:
	movsd	xmm0, qword ptr [rbp - 0x30]
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_256]]
	movq	xmm2, qword ptr [rbp - 8]
	punpckldq	xmm2, xmm1
	movapd	xmm1,  xmmword ptr [word ptr [rip + label_257]]
	subpd	xmm2, xmm1
	pshufd	xmm1, xmm2, 0x4e
	addpd	xmm1, xmm2
	ucomisd	xmm1, xmm0
	jbe	.label_990
	movsd	xmm0, qword ptr [rbp - 0x30]
	movsd	xmm1,  qword ptr [word ptr [rip + label_263]]
	movaps	xmm2, xmm0
	subsd	xmm2, xmm1
	cvttsd2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttsd2si	rcx, xmm0
	ucomisd	xmm1, xmm0
	cmova	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_990:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx,  dword ptr [dword ptr [nmerge]]
	mov	edx, ecx
	imul	rdx, rdx, 0x22
	cmp	rax, rdx
	jbe	.label_992
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_986
.label_992:
	mov	eax,  dword ptr [dword ptr [nmerge]]
	mov	ecx, eax
	imul	rcx, rcx, 0x22
	mov	qword ptr [rbp - 0x40], rcx
.label_986:
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cf60

	.globl compare_nodes
	.type compare_nodes, @function
compare_nodes:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	eax, dword ptr [rsi + 0x50]
	mov	rsi, qword ptr [rbp - 0x28]
	cmp	eax, dword ptr [rsi + 0x50]
	jne	.label_993
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	rdx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rdx + 0x30]
	cmp	rax, rcx
	setb	sil
	and	sil, 1
	movzx	edi, sil
	mov	dword ptr [rbp - 4], edi
	jmp	.label_994
.label_993:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x50]
	mov	rax, qword ptr [rbp - 0x28]
	cmp	ecx, dword ptr [rax + 0x50]
	setb	dl
	and	dl, 1
	movzx	ecx, dl
	mov	dword ptr [rbp - 4], ecx
.label_994:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cff0

	.globl init_node
	.type init_node, @function
init_node:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	al, r9b
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	test	byte ptr [rbp - 0x29], 1
	je	.label_998
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_995
.label_998:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x80], rax
.label_995:
	mov	rax, qword ptr [rbp - 0x80]
	xor	ecx, ecx
	mov	edx, ecx
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	shr	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, rdx
	sub	rsi, qword ptr [rbp - 0x28]
	shl	rsi, 5
	add	rax, rsi
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x50]
	sub	rdx, qword ptr [rbp - 0x40]
	shl	rdx, 5
	add	rax, rdx
	mov	qword ptr [rbp - 0x58], rax
	test	byte ptr [rbp - 0x29], 1
	je	.label_996
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_999
.label_996:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	qword ptr [rbp - 0x88], rax
.label_999:
	mov	rax, qword ptr [rbp - 0x88]
	xor	ecx, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, rax
	add	rdx, 0x80
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	qword ptr [rdx + 0x10], rax
	mov	rdx, qword ptr [rbp - 0x68]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	qword ptr [rdx + 0x18], rax
	mov	rdx, qword ptr [rbp - 0x68]
	mov	qword ptr [rdx + 8], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	qword ptr [rdx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	qword ptr [rdx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	qword ptr [rdx + 0x30], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	qword ptr [rdx + 0x38], rax
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x50]
	add	ecx, 1
	mov	rax, qword ptr [rbp - 0x68]
	mov	dword ptr [rax + 0x50], ecx
	mov	rax, qword ptr [rbp - 0x68]
	mov	byte ptr [rax + 0x54], 0
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 0x58
	mov	rdi, rax
	call	pthread_mutex_init
	cmp	qword ptr [rbp - 0x20], 1
	mov	dword ptr [rbp - 0x8c], eax
	jbe	.label_1000
	mov	r9d, 1
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx + 0x40], rax
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	r8, qword ptr [rbp - 0x28]
	call	init_node
	xor	r9d, r9d
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	r8, qword ptr [rbp - 0x28]
	call	init_node
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_997
.label_1000:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rax + 0x40], 0
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rax + 0x48], 0
.label_997:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d210

	.globl sortlines_thread
	.type sortlines_thread, @function
sortlines_thread:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	mov	r8, qword ptr [rax + 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	mov	r9, qword ptr [rax + 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rsp], rax
	call	sortlines
	xor	r10d, r10d
	mov	eax, r10d
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d270

	.globl sequential_sort
	.type sequential_sort, @function
sequential_sort:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	al, cl
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	cmp	qword ptr [rbp - 0x10], 2
	jne	.label_1010
	mov	rax, qword ptr [rbp - 8]
	add	rax, -0x20
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, -0x40
	mov	rdi, rax
	mov	rsi, rcx
	call	compare
	xor	edx, edx
	cmp	edx, eax
	setl	r8b
	and	r8b, 1
	movzx	eax, r8b
	mov	dword ptr [rbp - 0x20], eax
	test	byte ptr [rbp - 0x19], 1
	je	.label_1011
	mov	eax, 0xffffffff
	mov	rcx, qword ptr [rbp - 0x18]
	sub	eax, dword ptr [rbp - 0x20]
	movsxd	rdx, eax
	shl	rdx, 5
	add	rdx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rdx]
	mov	qword ptr [rcx - 0x20], rsi
	mov	rsi, qword ptr [rdx + 8]
	mov	qword ptr [rcx - 0x18], rsi
	mov	rsi, qword ptr [rdx + 0x10]
	mov	qword ptr [rcx - 0x10], rsi
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rcx - 8], rdx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rbp - 0x20]
	add	eax, 0xfffffffe
	movsxd	rdx, eax
	shl	rdx, 5
	add	rdx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rdx]
	mov	qword ptr [rcx - 0x40], rsi
	mov	rsi, qword ptr [rdx + 8]
	mov	qword ptr [rcx - 0x38], rsi
	mov	rsi, qword ptr [rdx + 0x10]
	mov	qword ptr [rcx - 0x30], rsi
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rcx - 0x28], rdx
	jmp	.label_1002
.label_1011:
	cmp	dword ptr [rbp - 0x20], 0
	je	.label_1001
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx - 0x20]
	mov	qword ptr [rax - 0x20], rdx
	mov	rdx, qword ptr [rcx - 0x18]
	mov	qword ptr [rax - 0x18], rdx
	mov	rdx, qword ptr [rcx - 0x10]
	mov	qword ptr [rax - 0x10], rdx
	mov	rcx, qword ptr [rcx - 8]
	mov	qword ptr [rax - 8], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx - 0x40]
	mov	qword ptr [rax - 0x20], rdx
	mov	rdx, qword ptr [rcx - 0x38]
	mov	qword ptr [rax - 0x18], rdx
	mov	rdx, qword ptr [rcx - 0x30]
	mov	qword ptr [rax - 0x10], rdx
	mov	rcx, qword ptr [rcx - 0x28]
	mov	qword ptr [rax - 8], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rcx - 0x20]
	mov	qword ptr [rax - 0x40], rdx
	mov	rdx, qword ptr [rcx - 0x18]
	mov	qword ptr [rax - 0x38], rdx
	mov	rdx, qword ptr [rcx - 0x10]
	mov	qword ptr [rax - 0x30], rdx
	mov	rcx, qword ptr [rcx - 8]
	mov	qword ptr [rax - 0x28], rcx
.label_1001:
	jmp	.label_1002
.label_1002:
	jmp	.label_1003
.label_1010:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	shr	rdx, 1
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdx, qword ptr [rbp - 8]
	sub	rcx, qword ptr [rbp - 0x28]
	shl	rcx, 5
	add	rdx, rcx
	mov	qword ptr [rbp - 0x40], rdx
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	test	byte ptr [rbp - 0x19], 1
	mov	qword ptr [rbp - 0x58], rdi
	mov	qword ptr [rbp - 0x60], rsi
	mov	qword ptr [rbp - 0x68], rcx
	je	.label_1005
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1008
.label_1005:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x70], rcx
	jmp	.label_1008
.label_1008:
	mov	rax, qword ptr [rbp - 0x70]
	xor	ecx, ecx
	mov	edx, ecx
	sub	rdx, rax
	shl	rdx, 5
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, rdx
	mov	sil, byte ptr [rbp - 0x19]
	and	sil, 1
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	byte ptr [rbp - 0x71], sil
	mov	rsi, rdx
	mov	rdx, rax
	mov	r8b, byte ptr [rbp - 0x71]
	movzx	ecx, r8b
	call	sequential_sort
	mov	ecx, 1
	mov	eax, ecx
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1012
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rbp - 0x19]
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	call	sequential_sort
	jmp	.label_1006
.label_1012:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_1009
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rcx - 0x20]
	mov	qword ptr [rax - 0x20], rdx
	mov	rdx, qword ptr [rcx - 0x18]
	mov	qword ptr [rax - 0x18], rdx
	mov	rdx, qword ptr [rcx - 0x10]
	mov	qword ptr [rax - 0x10], rdx
	mov	rcx, qword ptr [rcx - 8]
	mov	qword ptr [rax - 8], rcx
.label_1009:
	jmp	.label_1006
.label_1006:
	test	byte ptr [rbp - 0x19], 1
	je	.label_1007
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1004
.label_1007:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x50], rax
.label_1004:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x50]
	call	mergelines
.label_1003:
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d530

	.globl queue_insert
	.type queue_insert, @function
queue_insert:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	add	rsi, 8
	mov	rdi, rsi
	call	pthread_mutex_lock
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x14], eax
	call	heap_insert
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi + 0x54], 1
	mov	rsi, qword ptr [rbp - 8]
	add	rsi, 0x30
	mov	rdi, rsi
	mov	dword ptr [rbp - 0x18], eax
	call	pthread_cond_signal
	mov	rsi, qword ptr [rbp - 8]
	add	rsi, 8
	mov	rdi, rsi
	mov	dword ptr [rbp - 0x1c], eax
	call	pthread_mutex_unlock
	mov	dword ptr [rbp - 0x20], eax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d5a0

	.globl merge_loop
	.type merge_loop, @function
merge_loop:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
.label_1014:
	mov	rdi, qword ptr [rbp - 8]
	call	queue_pop
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 0x50], 0
	jne	.label_1013
	mov	rdi, qword ptr [rbp - 0x28]
	call	unlock_node
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x28]
	call	queue_insert
	jmp	.label_1015
.label_1013:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	mergelines_node
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x28]
	call	queue_check_insert
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x28]
	call	queue_check_insert_parent
	mov	rdi, qword ptr [rbp - 0x28]
	call	unlock_node
	jmp	.label_1014
.label_1015:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d640

	.globl mergelines
	.type mergelines, @function
mergelines:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	shr	rdx, 1
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 8]
	sub	rcx, qword ptr [rbp - 0x20]
	shl	rcx, 5
	add	rdx, rcx
	mov	qword ptr [rbp - 0x30], rdx
.label_1021:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -0x20
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, -0x20
	mov	rdi, rax
	mov	rsi, rcx
	call	compare
	cmp	eax, 0
	jg	.label_1022
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, -0x20
	mov	qword ptr [rbp - 8], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -0x20
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rcx - 0x20]
	mov	qword ptr [rax - 0x20], rdx
	mov	rdx, qword ptr [rcx - 0x18]
	mov	qword ptr [rax - 0x18], rdx
	mov	rdx, qword ptr [rcx - 0x10]
	mov	qword ptr [rax - 0x10], rdx
	mov	rcx, qword ptr [rcx - 8]
	mov	qword ptr [rax - 8], rcx
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jne	.label_1018
	jmp	.label_1019
.label_1018:
	jmp	.label_1016
.label_1022:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, -0x20
	mov	qword ptr [rbp - 8], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, rcx
	add	rdx, -0x20
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, qword ptr [rcx - 0x20]
	mov	qword ptr [rax - 0x20], rdx
	mov	rdx, qword ptr [rcx - 0x18]
	mov	qword ptr [rax - 0x18], rdx
	mov	rdx, qword ptr [rcx - 0x10]
	mov	qword ptr [rax - 0x10], rdx
	mov	rcx, qword ptr [rcx - 8]
	mov	qword ptr [rax - 8], rcx
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	jne	.label_1017
	jmp	.label_1020
.label_1020:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, -0x20
	mov	qword ptr [rbp - 8], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -0x20
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rcx - 0x20]
	mov	qword ptr [rax - 0x20], rdx
	mov	rdx, qword ptr [rcx - 0x18]
	mov	qword ptr [rax - 0x18], rdx
	mov	rdx, qword ptr [rcx - 0x10]
	mov	qword ptr [rax - 0x10], rdx
	mov	rcx, qword ptr [rcx - 8]
	mov	qword ptr [rax - 8], rcx
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jne	.label_1020
	jmp	.label_1019
.label_1017:
	jmp	.label_1016
.label_1016:
	jmp	.label_1021
.label_1019:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d7d0

	.globl queue_pop
	.type queue_pop, @function
queue_pop:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	add	rdi, 8
	call	pthread_mutex_lock
	mov	dword ptr [rbp - 0x14], eax
.label_1024:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	heap_remove_top
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_1023
	jmp	.label_1025
.label_1023:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x30
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 8
	mov	rdi, rax
	mov	rsi, rcx
	call	pthread_cond_wait
	mov	dword ptr [rbp - 0x18], eax
	jmp	.label_1024
.label_1025:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	rdi, rax
	call	pthread_mutex_unlock
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x1c], eax
	call	lock_node
	mov	rdi, qword ptr [rbp - 0x10]
	mov	byte ptr [rdi + 0x54], 0
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d870

	.globl unlock_node
	.type unlock_node, @function
unlock_node:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	add	rdi, 0x58
	call	pthread_mutex_unlock
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d8a0

	.globl mergelines_node
	.type mergelines_node, @function
mergelines_node:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdx + 0x50]
	add	eax, 1
	shl	eax, 1
	mov	eax, eax
	mov	edx, eax
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x58]
	shr	rdx, cl
	add	rdx, 1
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdx, qword ptr [rbp - 8]
	cmp	dword ptr [rdx + 0x50], 1
	jbe	.label_1036
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
.label_1041:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x59], cl
	je	.label_1029
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, qword ptr [rsi + 0x18]
	mov	byte ptr [rbp - 0x59], cl
	je	.label_1029
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x38], rcx
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x59], dl
.label_1029:
	mov	al, byte ptr [rbp - 0x59]
	test	al, 1
	jne	.label_1058
	jmp	.label_1047
.label_1058:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	add	rax, -0x20
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 8]
	add	rcx, -0x20
	mov	rdi, rax
	mov	rsi, rcx
	call	compare
	cmp	eax, 0
	jg	.label_1032
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, rax
	add	rcx, -0x20
	mov	qword ptr [rbp - 0x50], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx]
	mov	rsi, rdx
	add	rsi, -0x20
	mov	qword ptr [rcx], rsi
	mov	rcx, qword ptr [rdx - 0x20]
	mov	qword ptr [rax - 0x20], rcx
	mov	rcx, qword ptr [rdx - 0x18]
	mov	qword ptr [rax - 0x18], rcx
	mov	rcx, qword ptr [rdx - 0x10]
	mov	qword ptr [rax - 0x10], rcx
	mov	rcx, qword ptr [rdx - 8]
	mov	qword ptr [rax - 8], rcx
	jmp	.label_1038
.label_1032:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, rax
	add	rcx, -0x20
	mov	qword ptr [rbp - 0x50], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx + 8]
	mov	rsi, rdx
	add	rsi, -0x20
	mov	qword ptr [rcx + 8], rsi
	mov	rcx, qword ptr [rdx - 0x20]
	mov	qword ptr [rax - 0x20], rcx
	mov	rcx, qword ptr [rdx - 0x18]
	mov	qword ptr [rax - 0x18], rcx
	mov	rcx, qword ptr [rdx - 0x10]
	mov	qword ptr [rax - 0x10], rcx
	mov	rcx, qword ptr [rdx - 8]
	mov	qword ptr [rax - 8], rcx
.label_1038:
	jmp	.label_1041
.label_1047:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	sub	rax, rcx
	sar	rax, 5
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 8]
	sub	rax, rcx
	sar	rax, 5
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x30]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_1044
	jmp	.label_1056
.label_1056:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x5a], cl
	je	.label_1060
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x38], rcx
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x5a], dl
.label_1060:
	mov	al, byte ptr [rbp - 0x5a]
	test	al, 1
	jne	.label_1040
	jmp	.label_1046
.label_1040:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, rax
	add	rcx, -0x20
	mov	qword ptr [rbp - 0x50], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx]
	mov	rsi, rdx
	add	rsi, -0x20
	mov	qword ptr [rcx], rsi
	mov	rcx, qword ptr [rdx - 0x20]
	mov	qword ptr [rax - 0x20], rcx
	mov	rcx, qword ptr [rdx - 0x18]
	mov	qword ptr [rax - 0x18], rcx
	mov	rcx, qword ptr [rdx - 0x10]
	mov	qword ptr [rax - 0x10], rcx
	mov	rcx, qword ptr [rdx - 8]
	mov	qword ptr [rax - 8], rcx
	jmp	.label_1056
.label_1046:
	jmp	.label_1042
.label_1044:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	cmp	rax, qword ptr [rbp - 0x40]
	jne	.label_1027
	jmp	.label_1028
.label_1028:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, qword ptr [rsi + 0x18]
	mov	byte ptr [rbp - 0x5b], cl
	je	.label_1034
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x38], rcx
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x5b], dl
.label_1034:
	mov	al, byte ptr [rbp - 0x5b]
	test	al, 1
	jne	.label_1048
	jmp	.label_1054
.label_1048:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, rax
	add	rcx, -0x20
	mov	qword ptr [rbp - 0x50], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx + 8]
	mov	rsi, rdx
	add	rsi, -0x20
	mov	qword ptr [rcx + 8], rsi
	mov	rcx, qword ptr [rdx - 0x20]
	mov	qword ptr [rax - 0x20], rcx
	mov	rcx, qword ptr [rdx - 0x18]
	mov	qword ptr [rax - 0x18], rcx
	mov	rcx, qword ptr [rdx - 0x10]
	mov	qword ptr [rax - 0x10], rcx
	mov	rcx, qword ptr [rdx - 8]
	mov	qword ptr [rax - 8], rcx
	jmp	.label_1028
.label_1054:
	jmp	.label_1027
.label_1027:
	jmp	.label_1042
.label_1042:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x20]
	mov	qword ptr [rcx], rax
	jmp	.label_1045
.label_1036:
	jmp	.label_1031
.label_1031:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x5c], cl
	je	.label_1050
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, qword ptr [rsi + 0x18]
	mov	byte ptr [rbp - 0x5c], cl
	je	.label_1050
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x38], rcx
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x5c], dl
.label_1050:
	mov	al, byte ptr [rbp - 0x5c]
	test	al, 1
	jne	.label_1033
	jmp	.label_1039
.label_1033:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	add	rax, -0x20
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 8]
	add	rcx, -0x20
	mov	rdi, rax
	mov	rsi, rcx
	call	compare
	cmp	eax, 0
	jg	.label_1052
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax]
	add	rcx, -0x20
	mov	qword ptr [rax], rcx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, rcx
	call	write_unique
	jmp	.label_1061
.label_1052:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 8]
	add	rcx, -0x20
	mov	qword ptr [rax + 8], rcx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, rcx
	call	write_unique
.label_1061:
	jmp	.label_1031
.label_1039:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	sub	rax, rcx
	sar	rax, 5
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 8]
	sub	rax, rcx
	sar	rax, 5
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x30]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_1035
	jmp	.label_1049
.label_1049:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x5d], cl
	je	.label_1055
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x38], rcx
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x5d], dl
.label_1055:
	mov	al, byte ptr [rbp - 0x5d]
	test	al, 1
	jne	.label_1030
	jmp	.label_1037
.label_1030:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax]
	add	rcx, -0x20
	mov	qword ptr [rax], rcx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, rcx
	call	write_unique
	jmp	.label_1049
.label_1037:
	jmp	.label_1026
.label_1035:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	cmp	rax, qword ptr [rbp - 0x40]
	jne	.label_1053
	jmp	.label_1051
.label_1051:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, qword ptr [rsi + 0x18]
	mov	byte ptr [rbp - 0x5e], cl
	je	.label_1057
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x38], rcx
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x5e], dl
.label_1057:
	mov	al, byte ptr [rbp - 0x5e]
	test	al, 1
	jne	.label_1043
	jmp	.label_1059
.label_1043:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 8]
	add	rcx, -0x20
	mov	qword ptr [rax + 8], rcx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, rcx
	call	write_unique
	jmp	.label_1051
.label_1059:
	jmp	.label_1053
.label_1053:
	jmp	.label_1026
.label_1026:
	jmp	.label_1045
.label_1045:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	sub	rax, rcx
	sar	rax, 5
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 8]
	sub	rax, rcx
	sar	rax, 5
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx + 0x28]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x28], rdx
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx + 0x30]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40de40

	.globl queue_check_insert
	.type queue_check_insert, @function
queue_check_insert:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	test	byte ptr [rsi + 0x54], 1
	jne	.label_1062
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	sub	rax, rcx
	sar	rax, 5
	cmp	rax, 0
	setne	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x11], dl
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	sar	rax, 5
	cmp	rax, 0
	setne	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x12], dl
	test	byte ptr [rbp - 0x11], 1
	je	.label_1065
	test	byte ptr [rbp - 0x12], 1
	jne	.label_1063
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x30], 0
	jne	.label_1064
	jmp	.label_1063
.label_1065:
	test	byte ptr [rbp - 0x12], 1
	je	.label_1064
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x28], 0
	jne	.label_1064
.label_1063:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	queue_insert
.label_1064:
	jmp	.label_1062
.label_1062:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40df00

	.globl queue_check_insert_parent
	.type queue_check_insert_parent, @function
queue_check_insert_parent:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi + 0x50], 1
	jbe	.label_1066
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x38]
	call	lock_node
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax + 0x38]
	call	queue_check_insert
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x38]
	call	unlock_node
	jmp	.label_1068
.label_1066:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 0x30]
	cmp	rax, 0
	jne	.label_1067
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax + 0x38]
	call	queue_insert
.label_1067:
	jmp	.label_1068
.label_1068:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40df90

	.globl lock_node
	.type lock_node, @function
lock_node:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	add	rdi, 0x58
	call	pthread_mutex_lock
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dfc0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	push	rbp
	mov	rbp, rsp
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x40dfd0

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x40], -1
	mov	byte ptr [rbp - 0x41], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x30], 0
.label_1073:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1078
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	call	strncmp
	cmp	eax, 0
	jne	.label_1075
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_1071
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1074
.label_1071:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_1076
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1069
.label_1076:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1080
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x40]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	imul	rdx, qword ptr [rbp - 0x30]
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdi, rax
	mov	rsi, rcx
	call	memcmp
	cmp	eax, 0
	je	.label_1079
.label_1080:
	mov	byte ptr [rbp - 0x41], 1
.label_1079:
	jmp	.label_1069
.label_1069:
	jmp	.label_1070
.label_1070:
	jmp	.label_1075
.label_1075:
	jmp	.label_1072
.label_1072:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1073
.label_1078:
	test	byte ptr [rbp - 0x41], 1
	je	.label_1077
	mov	qword ptr [rbp - 8], -2
	jmp	.label_1074
.label_1077:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_1074:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e120

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x18], -1
	jne	.label_1081
	movabs	rdi, OFFSET FLAT:label_1084
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1083
.label_1081:
	movabs	rdi, OFFSET FLAT:label_1082
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_1083:
	mov	rax, qword ptr [rbp - 0x28]
	xor	edi, edi
	mov	esi, 8
	mov	qword ptr [rbp - 0x20], rax
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, rax
	call	quotearg_n_style
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
	call	quote_n
	xor	edi, edi
	mov	dword ptr [rbp - 0x3c], edi
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	r8, rax
	mov	al, 0
	call	error
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e1c0

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:label_1085
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, rax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	qword ptr [rbp - 0x20], 0
	mov	dword ptr [rbp - 0x2c], eax
.label_1087:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1089
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1092
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rcx, qword ptr [rbp - 0x20]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	je	.label_1090
.label_1092:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_1086
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	imul	rdx, qword ptr [rbp - 0x20]
	add	rcx, rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1088
.label_1090:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_1091
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
.label_1088:
	jmp	.label_1093
.label_1093:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1087
.label_1089:
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x50], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e310

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	call	argmatch
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jl	.label_1095
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1094
.label_1095:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	call	argmatch_invalid
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	call	argmatch_valid
	call	qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], -1
.label_1094:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e3a0
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], 0
.label_1098:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1096
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x30]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_1097
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1099
.label_1097:
	jmp	.label_1100
.label_1100:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1098
.label_1096:
	mov	qword ptr [rbp - 8], 0
.label_1099:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e440
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [file_name]],  rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e460
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	push	rbp
	mov	rbp, rsp
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	byte ptr [byte ptr [ignore_EPIPE]],  al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e480

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_1103
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_1106
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_1103
.label_1106:
	movabs	rdi, OFFSET FLAT:label_1105
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_1101
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_411
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_1102
.label_1101:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_137
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_1102:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_1103:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_1104
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_1104:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e570

	.globl md5_init_ctx
	.type md5_init_ctx, @function
md5_init_ctx:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi], 0x67452301
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 4], 0xefcdab89
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 8], 0x98badcfe
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 0xc], 0x10325476
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 0x14], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 0x10], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 0x18], 0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e5d0

	.globl md5_read_ctx
	.type md5_read_ctx, @function
md5_read_ctx:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rsi]
	call	set_uint32
	mov	rdi, qword ptr [rbp - 0x18]
	add	rdi, 4
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rax + 4]
	call	set_uint32
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 8
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rdi + 8]
	mov	rdi, rax
	call	set_uint32
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0xc
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rdi + 0xc]
	mov	rdi, rax
	call	set_uint32
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e650

	.globl set_uint32
	.type set_uint32, @function
set_uint32:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	dword ptr [rdi], esi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e670

	.globl md5_finish_ctx
	.type md5_finish_ctx, @function
md5_finish_ctx:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	eax, 0x20
	mov	ecx, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	edx, dword ptr [rsi + 0x18]
	mov	dword ptr [rbp - 0x14], edx
	cmp	dword ptr [rbp - 0x14], 0x38
	cmovb	eax, ecx
	movsxd	rsi, eax
	mov	qword ptr [rbp - 0x20], rsi
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 8]
	add	eax, dword ptr [rsi + 0x10]
	mov	dword ptr [rsi + 0x10], eax
	mov	rsi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rsi + 0x10]
	cmp	eax, dword ptr [rbp - 0x14]
	jae	.label_1107
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x14]
	add	ecx, 1
	mov	dword ptr [rax + 0x14], ecx
.label_1107:
	movabs	rsi, OFFSET FLAT:fillbuf_0
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x10]
	shl	ecx, 3
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 2
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + rax*4 + 0x1c], ecx
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x14]
	shl	ecx, 3
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax + 0x10]
	shr	edi, 0x1d
	or	ecx, edi
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + rax*4 + 0x1c], ecx
	mov	ecx, dword ptr [rbp - 0x14]
	mov	eax, ecx
	mov	rdx, qword ptr [rbp - 8]
	add	rdx, 0x1c
	add	rdx, rax
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 2
	shl	rax, 2
	mov	ecx, dword ptr [rbp - 0x14]
	mov	r8d, ecx
	sub	rax, r8
	mov	rdi, rdx
	mov	rdx, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x1c
	mov	rdx, qword ptr [rbp - 0x20]
	shl	rdx, 2
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, rdx
	mov	rdx, qword ptr [rbp - 0x28]
	call	md5_process_block
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	md5_read_ctx
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e780

	.globl md5_process_block
	.type md5_process_block, @function
md5_process_block:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x68], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	shr	rdx, 2
	mov	qword ptr [rbp - 0x70], rdx
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x70]
	shl	rsi, 2
	add	rdx, rsi
	mov	qword ptr [rbp - 0x78], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rdx]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rdx + 4]
	mov	dword ptr [rbp - 0x80], eax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rdx + 8]
	mov	dword ptr [rbp - 0x84], eax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rdx + 0xc]
	mov	dword ptr [rbp - 0x88], eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	eax, edx
	mov	dword ptr [rbp - 0x8c], eax
	mov	eax, dword ptr [rbp - 0x8c]
	mov	rdx, qword ptr [rbp - 0x18]
	add	eax, dword ptr [rdx + 0x10]
	mov	dword ptr [rdx + 0x10], eax
	mov	rdx, qword ptr [rbp - 0x10]
	shr	rdx, 0x1f
	shr	rdx, 1
	mov	rsi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rsi + 0x10]
	cmp	eax, dword ptr [rbp - 0x8c]
	setb	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	add	rdx, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rsi + 0x14]
	mov	edi, eax
	add	rdi, rdx
	mov	eax, edi
	mov	dword ptr [rsi + 0x14], eax
.label_1155:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x78]
	jae	.label_1164
	lea	rax, [rbp - 0x60]
	mov	qword ptr [rbp - 0x98], rax
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x9c], ecx
	mov	ecx, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0xa0], ecx
	mov	ecx, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0xa4], ecx
	mov	ecx, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0xa8], ecx
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, dword ptr [rbp - 0x88]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0xd76aa478
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 7
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x19
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1149
.label_1149:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, dword ptr [rbp - 0x84]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0xe8c7b756
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xc
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x14
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1163
.label_1163:
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, dword ptr [rbp - 0x80]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0x242070db
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0x11
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0xf
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1117
.label_1117:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0xc1bdceee
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x16
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xa
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1136
.label_1136:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, dword ptr [rbp - 0x88]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0xf57c0faf
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 7
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x19
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1127
.label_1127:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, dword ptr [rbp - 0x84]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0x4787c62a
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xc
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x14
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1148
.label_1148:
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, dword ptr [rbp - 0x80]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0xa8304613
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0x11
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0xf
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1114
.label_1114:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0xfd469501
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x16
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xa
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1138
.label_1138:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, dword ptr [rbp - 0x88]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0x698098d8
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 7
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x19
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1135
.label_1135:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, dword ptr [rbp - 0x84]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0x8b44f7af
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xc
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x14
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1126
.label_1126:
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, dword ptr [rbp - 0x80]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0xffff5bb1
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0x11
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0xf
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1159
.label_1159:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0x895cd7be
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x16
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xa
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1160
.label_1160:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, dword ptr [rbp - 0x88]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0x6b901122
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 7
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x19
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1116
.label_1116:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, dword ptr [rbp - 0x84]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0xfd987193
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xc
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x14
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1108
.label_1108:
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, dword ptr [rbp - 0x80]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0xa679438e
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0x11
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0xf
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1115
.label_1115:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0x49b40821
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x16
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xa
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1139
.label_1139:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, dword ptr [rbp - 0x84]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x5c]
	add	eax, 0xf61e2562
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 5
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1b
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1165
.label_1165:
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, dword ptr [rbp - 0x80]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x48]
	add	eax, 0xc040b340
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 9
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x17
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1145
.label_1145:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x34]
	add	eax, 0x265e5a51
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0xe
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x12
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1113
.label_1113:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, dword ptr [rbp - 0x88]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x60]
	add	eax, 0xe9b6c7aa
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x14
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xc
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1158
.label_1158:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, dword ptr [rbp - 0x84]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x4c]
	add	eax, 0xd62f105d
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 5
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1b
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1129
.label_1129:
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, dword ptr [rbp - 0x80]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x38]
	add	eax, 0x2441453
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 9
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x17
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1166
.label_1166:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x24]
	add	eax, 0xd8a1e681
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0xe
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x12
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1146
.label_1146:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, dword ptr [rbp - 0x88]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x50]
	add	eax, 0xe7d3fbc8
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x14
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xc
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1124
.label_1124:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, dword ptr [rbp - 0x84]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x3c]
	add	eax, 0x21e1cde6
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 5
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1b
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1161
.label_1161:
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, dword ptr [rbp - 0x80]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x28]
	add	eax, 0xc33707d6
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 9
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x17
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1131
.label_1131:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x54]
	add	eax, 0xf4d50d87
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0xe
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x12
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1109
.label_1109:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, dword ptr [rbp - 0x88]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x40]
	add	eax, 0x455a14ed
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x14
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xc
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1156
.label_1156:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, dword ptr [rbp - 0x84]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x2c]
	add	eax, 0xa9e3e905
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 5
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1b
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1125
.label_1125:
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, dword ptr [rbp - 0x80]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x58]
	add	eax, 0xfcefa3f8
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 9
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x17
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1171
.label_1171:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x44]
	add	eax, 0x676f02d9
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0xe
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x12
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1140
.label_1140:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, dword ptr [rbp - 0x88]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x30]
	add	eax, 0x8d2a4c8a
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x14
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xc
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1119
.label_1119:
	mov	eax, dword ptr [rbp - 0x80]
	xor	eax, dword ptr [rbp - 0x84]
	xor	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x4c]
	add	eax, 0xfffa3942
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 4
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1c
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1157
.label_1157:
	mov	eax, dword ptr [rbp - 0x7c]
	xor	eax, dword ptr [rbp - 0x80]
	xor	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x40]
	add	eax, 0x8771f681
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xb
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x15
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1122
.label_1122:
	mov	eax, dword ptr [rbp - 0x88]
	xor	eax, dword ptr [rbp - 0x7c]
	xor	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x34]
	add	eax, 0x6d9d6122
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0x10
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x10
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1162
.label_1162:
	mov	eax, dword ptr [rbp - 0x84]
	xor	eax, dword ptr [rbp - 0x88]
	xor	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x28]
	add	eax, 0xfde5380c
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x17
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 9
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1137
.label_1137:
	mov	eax, dword ptr [rbp - 0x80]
	xor	eax, dword ptr [rbp - 0x84]
	xor	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x5c]
	add	eax, 0xa4beea44
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 4
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1c
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1170
.label_1170:
	mov	eax, dword ptr [rbp - 0x7c]
	xor	eax, dword ptr [rbp - 0x80]
	xor	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x50]
	add	eax, 0x4bdecfa9
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xb
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x15
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1134
.label_1134:
	mov	eax, dword ptr [rbp - 0x88]
	xor	eax, dword ptr [rbp - 0x7c]
	xor	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x44]
	add	eax, 0xf6bb4b60
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0x10
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x10
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1110
.label_1110:
	mov	eax, dword ptr [rbp - 0x84]
	xor	eax, dword ptr [rbp - 0x88]
	xor	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x38]
	add	eax, 0xbebfbc70
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x17
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 9
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1153
.label_1153:
	mov	eax, dword ptr [rbp - 0x80]
	xor	eax, dword ptr [rbp - 0x84]
	xor	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x2c]
	add	eax, 0x289b7ec6
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 4
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1c
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1169
.label_1169:
	mov	eax, dword ptr [rbp - 0x7c]
	xor	eax, dword ptr [rbp - 0x80]
	xor	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x60]
	add	eax, 0xeaa127fa
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xb
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x15
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1151
.label_1151:
	mov	eax, dword ptr [rbp - 0x88]
	xor	eax, dword ptr [rbp - 0x7c]
	xor	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x54]
	add	eax, 0xd4ef3085
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0x10
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x10
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1123
.label_1123:
	mov	eax, dword ptr [rbp - 0x84]
	xor	eax, dword ptr [rbp - 0x88]
	xor	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x48]
	add	eax, 0x4881d05
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x17
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 9
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1121
.label_1121:
	mov	eax, dword ptr [rbp - 0x80]
	xor	eax, dword ptr [rbp - 0x84]
	xor	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x3c]
	add	eax, 0xd9d4d039
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 4
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1c
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1128
.label_1128:
	mov	eax, dword ptr [rbp - 0x7c]
	xor	eax, dword ptr [rbp - 0x80]
	xor	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x30]
	add	eax, 0xe6db99e5
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xb
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x15
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1133
.label_1133:
	mov	eax, dword ptr [rbp - 0x88]
	xor	eax, dword ptr [rbp - 0x7c]
	xor	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x24]
	add	eax, 0x1fa27cf8
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0x10
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x10
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1152
.label_1152:
	mov	eax, dword ptr [rbp - 0x84]
	xor	eax, dword ptr [rbp - 0x88]
	xor	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x58]
	add	eax, 0xc4ac5665
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x17
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 9
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1112
.label_1112:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x60]
	add	eax, 0xf4292244
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 6
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1a
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1147
.label_1147:
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x44]
	add	eax, 0x432aff97
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x16
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1144
.label_1144:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x28]
	add	eax, 0xab9423a7
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0xf
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x11
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1142
.label_1142:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x4c]
	add	eax, 0xfc93a039
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x15
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xb
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1143
.label_1143:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x30]
	add	eax, 0x655b59c3
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 6
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1a
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1172
.label_1172:
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x54]
	add	eax, 0x8f0ccc92
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x16
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1111
.label_1111:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x38]
	add	eax, 0xffeff47d
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0xf
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x11
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1118
.label_1118:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x5c]
	add	eax, 0x85845dd1
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x15
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xb
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1120
.label_1120:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x40]
	add	eax, 0x6fa87e4f
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 6
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1a
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1132
.label_1132:
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x24]
	add	eax, 0xfe2ce6e0
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x16
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1168
.label_1168:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x48]
	add	eax, 0xa3014314
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0xf
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x11
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1150
.label_1150:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x2c]
	add	eax, 0x4e0811a1
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x15
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xb
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1154
.label_1154:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x50]
	add	eax, 0xf7537e82
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 6
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1a
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1167
.label_1167:
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x34]
	add	eax, 0xbd3af235
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x16
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1130
.label_1130:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x58]
	add	eax, 0x2ad7d2bb
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0xf
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x11
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1141
.label_1141:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x3c]
	add	eax, 0xeb86d391
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x15
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xb
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x9c]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0xa0]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0xa4]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0xa8]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1155
.label_1164:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx], eax
	mov	eax, dword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx + 4], eax
	mov	eax, dword ptr [rbp - 0x84]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx + 8], eax
	mov	eax, dword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx + 0xc], eax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fe90
	.globl md5_stream
	.type md5_stream, @function
md5_stream:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_1180
	mov	ecx, eax
	mov	eax, 0x10
	mov	edx, eax
	mov	qword ptr [rbp - 0xd8], rsi
	mov	rsi, rcx
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0xe0], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xe0]
	call	afalg_stream
	mov	r8d, eax
	sub	eax, -5
	mov	dword ptr [rbp - 0xe4], r8d
	mov	dword ptr [rbp - 0xe8], eax
	je	.label_1178
	jmp	.label_1185
.label_1185:
	mov	eax, dword ptr [rbp - 0xe4]
	test	eax, eax
	jne	.label_1187
	jmp	.label_1176
.label_1176:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1173
.label_1178:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1173
.label_1187:
	mov	eax, 0x8048
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1184
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1173
.label_1184:
	lea	rdi, [rbp - 0xc0]
	call	md5_init_ctx
.label_1188:
	mov	qword ptr [rbp - 0xc8], 0
.label_1182:
	mov	rdi, qword ptr [rbp - 0x10]
	call	feof_unlocked
	cmp	eax, 0
	je	.label_1183
	jmp	.label_1179
.label_1183:
	mov	eax, 1
	mov	esi, eax
	mov	eax, 0x8000
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0xc8]
	sub	rcx, qword ptr [rbp - 0xc8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xf0], rdi
	mov	rdi, rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xf0]
	call	fread_unlocked
	mov	qword ptr [rbp - 0xd0], rax
	mov	rax, qword ptr [rbp - 0xd0]
	add	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xc8], rax
	cmp	qword ptr [rbp - 0xc8], 0x8000
	jne	.label_1186
	jmp	.label_1181
.label_1186:
	cmp	qword ptr [rbp - 0xd0], 0
	jne	.label_1177
	mov	rdi, qword ptr [rbp - 0x10]
	call	ferror_unlocked
.label_2579:
	cmp	eax, 0
	je	.label_1174
	mov	rdi, qword ptr [rbp - 0x20]
	call	free
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1173
.label_1174:
	jmp	.label_1179
.label_1177:
	jmp	.label_1182
.label_1181:
	mov	eax, 0x8000
	mov	esi, eax
	lea	rdx, [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 0x20]
	call	md5_process_block
	jmp	.label_1188
.label_1179:
	cmp	qword ptr [rbp - 0xc8], 0
	jbe	.label_1175
	lea	rdx, [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0xc8]
	call	md5_process_bytes
.label_1175:
	lea	rdi, [rbp - 0xc0]
	mov	rsi, qword ptr [rbp - 0x18]
	call	md5_finish_ctx
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xf8], rax
	call	free
	mov	dword ptr [rbp - 4], 0
.label_1173:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4100a0

	.globl afalg_stream
	.type afalg_stream, @function
afalg_stream:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0xffffff9f
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4100c0

	.globl md5_process_bytes
	.type md5_process_bytes, @function
md5_process_bytes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	dword ptr [rdx + 0x18], 0
	je	.label_1189
	mov	eax, 0x80
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rdx + 0x18]
	mov	edx, eax
	mov	qword ptr [rbp - 0x20], rdx
	sub	rcx, qword ptr [rbp - 0x20]
	cmp	rcx, qword ptr [rbp - 0x10]
	jbe	.label_1194
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1190
.label_1194:
	mov	eax, 0x80
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rcx
.label_1190:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x1c
	add	rcx, rax
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8d, dword ptr [rcx + 0x18]
	mov	edx, r8d
	add	rdx, rax
	mov	r8d, edx
	mov	dword ptr [rcx + 0x18], r8d
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x18], 0x40
	jbe	.label_1191
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x1c
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rcx + 0x18]
	and	edx, 0xffffffc0
	mov	edx, edx
	mov	esi, edx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	md5_process_block
	mov	rax, qword ptr [rbp - 0x18]
	mov	r8d, dword ptr [rax + 0x18]
	and	r8d, 0x3f
	mov	dword ptr [rax + 0x18], r8d
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x1c
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x28]
	and	rcx, 0xffffffffffffffc0
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, 0x1c
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8d, dword ptr [rcx + 0x18]
	mov	ecx, r8d
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdx, rcx
	call	memcpy
.label_1191:
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
.label_1189:
	cmp	qword ptr [rbp - 0x10], 0x40
	jb	.label_1196
	mov	rax, qword ptr [rbp - 8]
	and	rax, 3
	cmp	rax, 0
	je	.label_1199
	jmp	.label_1192
.label_1192:
	cmp	qword ptr [rbp - 0x10], 0x40
	jbe	.label_1193
	mov	eax, 0x40
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, 0x1c
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0x40], rdx
	mov	rdx, rcx
	mov	qword ptr [rbp - 0x48], rcx
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x48]
	call	md5_process_block
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x40
	mov	qword ptr [rbp - 8], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, 0x40
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_1192
.label_1193:
	jmp	.label_1197
.label_1199:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	and	rax, 0xffffffffffffffc0
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	md5_process_block
	mov	rax, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	and	rdx, 0xffffffffffffffc0
	add	rax, rdx
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	and	rax, 0x3f
	mov	qword ptr [rbp - 0x10], rax
.label_1197:
	jmp	.label_1196
.label_1196:
	cmp	qword ptr [rbp - 0x10], 0
	jbe	.label_1198
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x18]
	mov	eax, ecx
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, 0x1c
	add	rdx, rax
	mov	rsi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rdx
	mov	rdx, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0x40
	jb	.label_1195
	mov	eax, 0x40
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x1c
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rcx
	call	md5_process_block
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, 0x40
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x1c
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, 0x1c
	add	rdx, 0x40
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, rcx
	mov	qword ptr [rbp - 0x50], rsi
	mov	rsi, rdx
	mov	rdx, qword ptr [rbp - 0x50]
	call	memcpy
.label_1195:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x18], ecx
.label_1198:
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410370
	.globl md5_buffer
	.type md5_buffer, @function
md5_buffer:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	lea	rax, [rbp - 0xb8]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, rax
	call	md5_init_ctx
	lea	rdx, [rbp - 0xb8]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	md5_process_bytes
	lea	rdi, [rbp - 0xb8]
	mov	rsi, qword ptr [rbp - 0x18]
	call	md5_finish_ctx
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4103d0

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x1c]
	call	posix_fadvise
	mov	dword ptr [rbp - 0x20], eax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410410

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	je	.label_1200
	mov	rdi, qword ptr [rbp - 8]
	call	fileno
	xor	ecx, ecx
	mov	edi, ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	qword ptr [rbp - 0x18], rdi
	mov	edi, eax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x18]
	call	fdadvise
.label_1200:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410460

	.globl filevercmp
	.type filevercmp, @function
filevercmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	strcmp
	mov	dword ptr [rbp - 0x50], eax
	cmp	dword ptr [rbp - 0x50], 0
	jne	.label_1201
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1205
.label_1201:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_1207
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1205
.label_1207:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_1214
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1205
.label_1214:
	xor	eax, eax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	ecx, OFFSET FLAT:label_1209
	mov	edi, ecx
	mov	dword ptr [rbp - 0x54], eax
	call	strcmp
	mov	ecx, dword ptr [rbp - 0x54]
	cmp	ecx, eax
	jne	.label_1219
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1205
.label_1219:
	xor	eax, eax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	ecx, OFFSET FLAT:label_1209
	mov	edi, ecx
	mov	dword ptr [rbp - 0x58], eax
	call	strcmp
	mov	ecx, dword ptr [rbp - 0x58]
	cmp	ecx, eax
	jne	.label_1204
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1205
.label_1204:
	xor	eax, eax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	ecx, OFFSET FLAT:label_1210
	mov	edi, ecx
	mov	dword ptr [rbp - 0x5c], eax
	call	strcmp
	mov	ecx, dword ptr [rbp - 0x5c]
	cmp	ecx, eax
	jne	.label_1215
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1205
.label_1215:
	xor	eax, eax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	ecx, OFFSET FLAT:label_1210
	mov	edi, ecx
	mov	dword ptr [rbp - 0x60], eax
	call	strcmp
	mov	ecx, dword ptr [rbp - 0x60]
	cmp	ecx, eax
	jne	.label_1220
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1205
.label_1220:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_1212
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	je	.label_1212
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1205
.label_1212:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	je	.label_1211
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_1211
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1205
.label_1211:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_1217
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_1217
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_1217:
	lea	rdi, [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rax
	call	match_suffix
	lea	rdi, [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rax
	call	match_suffix
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1213
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_1216
.label_1213:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
.label_1216:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1218
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1221
.label_1218:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x70], rax
.label_1221:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1202
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1208
.label_1202:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_1208
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	call	strncmp
	xor	ecx, ecx
	cmp	ecx, eax
	jne	.label_1208
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x48], rax
.label_1208:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x48]
	call	verrevcmp
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	jne	.label_1203
	mov	eax, dword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_1206
.label_1203:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x74], eax
.label_1206:
	mov	eax, dword ptr [rbp - 0x74]
	mov	dword ptr [rbp - 4], eax
.label_1205:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410740

	.globl match_suffix
	.type match_suffix, @function
match_suffix:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x11], 0
.label_1230:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	cmp	byte ptr [rax], 0
	je	.label_1229
	test	byte ptr [rbp - 0x11], 1
	je	.label_1226
	mov	byte ptr [rbp - 0x11], 0
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	movsx	edi, byte ptr [rax]
	call	c_isalpha
	test	al, 1
	jne	.label_1224
	mov	eax, 0x7e
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	movsx	edx, byte ptr [rcx]
	cmp	eax, edx
	je	.label_1224
	mov	qword ptr [rbp - 0x10], 0
.label_1224:
	jmp	.label_1223
.label_1226:
	mov	eax, 0x2e
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	movsx	edx, byte ptr [rcx]
	cmp	eax, edx
	jne	.label_1225
	mov	byte ptr [rbp - 0x11], 1
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1227
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_1227:
	jmp	.label_1222
.label_1225:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	movsx	edi, byte ptr [rax]
	call	c_isalnum
	test	al, 1
	jne	.label_1228
	mov	eax, 0x7e
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	movsx	edx, byte ptr [rcx]
	cmp	eax, edx
	je	.label_1228
	mov	qword ptr [rbp - 0x10], 0
.label_1228:
	jmp	.label_1222
.label_1222:
	jmp	.label_1223
.label_1223:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax]
	add	rcx, 1
	mov	qword ptr [rax], rcx
	jmp	.label_1230
.label_1229:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410850

	.globl verrevcmp
	.type verrevcmp, @function
verrevcmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x38], 0
.label_1234:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rbp - 0x45], al
	jb	.label_1260
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x28]
	setb	cl
	mov	byte ptr [rbp - 0x45], cl
.label_1260:
	mov	al, byte ptr [rbp - 0x45]
	test	al, 1
	jne	.label_1237
	jmp	.label_1242
.label_1237:
	mov	dword ptr [rbp - 0x3c], 0
.label_1239:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1240
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	mov	dl, 1
	test	al, 1
	mov	byte ptr [rbp - 0x46], dl
	jne	.label_1240
	jmp	.label_1254
.label_1240:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x38]
	cmp	rdx, qword ptr [rbp - 0x28]
	mov	byte ptr [rbp - 0x47], cl
	jae	.label_1256
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	xor	al, 0xff
	mov	byte ptr [rbp - 0x47], al
.label_1256:
	mov	al, byte ptr [rbp - 0x47]
	mov	byte ptr [rbp - 0x46], al
.label_1254:
	mov	al, byte ptr [rbp - 0x46]
	test	al, 1
	jne	.label_1235
	jmp	.label_1238
.label_1235:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_1241
	xor	eax, eax
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_1244
.label_1241:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rcx + rax]
	call	order
	mov	dword ptr [rbp - 0x4c], eax
.label_1244:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x40], eax
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, qword ptr [rbp - 0x28]
	jne	.label_1252
	xor	eax, eax
	mov	dword ptr [rbp - 0x50], eax
	jmp	.label_1257
.label_1252:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	movzx	edi, byte ptr [rcx + rax]
	call	order
	mov	dword ptr [rbp - 0x50], eax
.label_1257:
	mov	eax, dword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0x44], eax
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x44]
	je	.label_1231
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1233
.label_1231:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1239
.label_1238:
	jmp	.label_1246
.label_1246:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x30
	jne	.label_1248
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1246
.label_1248:
	jmp	.label_1232
.label_1232:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x30
	jne	.label_1259
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1232
.label_1259:
	jmp	.label_1236
.label_1236:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	xor	edi, edi
	mov	dl, dil
	test	al, 1
	mov	byte ptr [rbp - 0x51], dl
	jne	.label_1243
	jmp	.label_1245
.label_1243:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	mov	byte ptr [rbp - 0x51], al
.label_1245:
	mov	al, byte ptr [rbp - 0x51]
	test	al, 1
	jne	.label_1253
	jmp	.label_1255
.label_1253:
	cmp	dword ptr [rbp - 0x3c], 0
	jne	.label_1251
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	esi, byte ptr [rcx + rax]
	sub	edx, esi
	mov	dword ptr [rbp - 0x3c], edx
.label_1251:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1236
.label_1255:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	test	al, 1
	jne	.label_1249
	jmp	.label_1247
.label_1249:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1233
.label_1247:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	test	al, 1
	jne	.label_1250
	jmp	.label_1258
.label_1250:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1233
.label_1258:
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_1261
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1233
.label_1261:
	jmp	.label_1234
.label_1242:
	mov	dword ptr [rbp - 4], 0
.label_1233:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410b30

	.globl order
	.type order, @function
order:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, dil
	mov	byte ptr [rbp - 5], al
	movzx	edi, byte ptr [rbp - 5]
	call	c_isdigit
	test	al, 1
	jne	.label_1263
	jmp	.label_1267
.label_1263:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1265
.label_1267:
	movzx	edi, byte ptr [rbp - 5]
	call	c_isalpha
	test	al, 1
	jne	.label_1264
	jmp	.label_1266
.label_1264:
	movzx	eax, byte ptr [rbp - 5]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1265
.label_1266:
	movzx	eax, byte ptr [rbp - 5]
	cmp	eax, 0x7e
	jne	.label_1262
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1265
.label_1262:
	movzx	eax, byte ptr [rbp - 5]
	add	eax, 0xff
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
.label_1265:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410bc0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	esi, eax
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], 1
	mov	edi, dword ptr [rbp - 4]
	call	setlocale
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1268
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_1272
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_1271
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_1269
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1270
.label_1271:
	mov	byte ptr [rbp - 5], 0
.label_1270:
	jmp	.label_1268
.label_1268:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410c40

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410c60

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410c80

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x20]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410ca0

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
.label_1275:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1274
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1277
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x28], 1
.label_1273:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1276
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1273
.label_1276:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_1279
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
.label_1279:
	jmp	.label_1277
.label_1277:
	jmp	.label_1278
.label_1278:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1275
.label_1274:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410d50
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x18], rdi
.label_1287:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1285
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_1281
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_1283:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1284
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1283
.label_1284:
	jmp	.label_1281
.label_1281:
	jmp	.label_1280
.label_1280:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1287
.label_1285:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	jne	.label_1282
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_1282
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1286
.label_1282:
	mov	byte ptr [rbp - 1], 0
.label_1286:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410e40
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:label_1288
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
	call	hash_get_n_entries
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 8]
	call	hash_get_n_buckets
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 8]
	call	hash_get_n_buckets_used
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 8]
	call	hash_get_max_bucket_length
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	ecx, OFFSET FLAT:label_1291
	mov	esi, ecx
	xor	ecx, ecx
	mov	r8b, cl
	mov	al, r8b
	mov	byte ptr [rbp - 0x39], r8b
	call	fprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	ecx, OFFSET FLAT:label_1289
	mov	esi, ecx
	mov	r8b, byte ptr [rbp - 0x39]
	mov	dword ptr [rbp - 0x40], eax
	mov	al, r8b
	call	fprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	movq	xmm0, rdx
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_256]]
	punpckldq	xmm0, xmm1
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_257]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	movsd	xmm0,  qword ptr [word ptr [rip + label_270]]
	mulsd	xmm3, xmm0
	movq	xmm0, qword ptr [rbp - 0x20]
	punpckldq	xmm0, xmm1
	subpd	xmm0, xmm2
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	divsd	xmm3, xmm1
	mov	rsi, qword ptr [rbp - 0x38]
	movaps	xmm0, xmm3
	mov	dword ptr [rbp - 0x44], eax
	mov	al, 1
	call	fprintf
	movabs	rsi, OFFSET FLAT:label_1290
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x48], eax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410f60
	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	safe_hasher
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	jne	.label_1298
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1292
.label_1298:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_1297:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1293
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	je	.label_1295
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_1295
	jmp	.label_1294
.label_1295:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1292
.label_1294:
	jmp	.label_1296
.label_1296:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1297
.label_1293:
	mov	qword ptr [rbp - 8], 0
.label_1292:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411020

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x30]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x20]
	call	rax
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rsi + 0x10]
	jb	.label_1299
	call	abort
.label_1299:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 4
	add	rax, rcx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411090
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdi + 0x20], 0
	jne	.label_1300
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1301
.label_1300:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
.label_1302:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jb	.label_1303
	call	abort
.label_1303:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_1304
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1301
.label_1304:
	jmp	.label_1305
.label_1305:
	jmp	.label_1306
.label_1306:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1302
.label_1301:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411120
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	safe_hasher
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_1308:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_1311
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], 0
	je	.label_1311
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1307
.label_1311:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1308
	jmp	.label_1309
.label_1309:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1312
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	je	.label_1310
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1307
.label_1310:
	jmp	.label_1309
.label_1312:
	mov	qword ptr [rbp - 8], 0
.label_1307:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4111f0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x30], rdx
.label_1318:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1317
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1313
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_1315:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1319
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_1314
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1316
.label_1314:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1315
.label_1319:
	jmp	.label_1313
.label_1313:
	jmp	.label_1320
.label_1320:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1318
.label_1317:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1316:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4112c0
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x30], rdx
.label_1324:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1325
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1327
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_1323:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1328
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx]
	mov	rsi, qword ptr [rbp - 0x20]
	call	rax
	test	al, 1
	jne	.label_1322
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1326
.label_1322:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1323
.label_1328:
	jmp	.label_1327
.label_1327:
	jmp	.label_1321
.label_1321:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1324
.label_1325:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1326:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411390
	.globl hash_string
	.type hash_string, @function
hash_string:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
.label_1330:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x19], cl
	cmp	cl, 0
	je	.label_1329
	imul	rax, qword ptr [rbp - 0x18], 0x1f
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	edx, ecx
	add	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1330
.label_1329:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4113f0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax,  qword ptr [word ptr [default_tuning]]
	mov	qword ptr [rdi], rax
	mov	rax,  qword ptr [word ptr [label_1331]]
	mov	qword ptr [rdi + 8], rax
	mov	ecx,  dword ptr [dword ptr [label_1332]]
	mov	dword ptr [rdi + 0x10], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411420

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1340
	movabs	rax, OFFSET FLAT:raw_hasher
	mov	qword ptr [rbp - 0x20], rax
.label_1340:
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1337
	movabs	rax, OFFSET FLAT:raw_comparator
	mov	qword ptr [rbp - 0x28], rax
.label_1337:
	mov	eax, 0x50
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1341
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1334
.label_1341:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1338
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x18], rax
.label_1338:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	mov	rdi, qword ptr [rbp - 0x38]
	call	check_tuning
	test	al, 1
	jne	.label_1333
	jmp	.label_1335
.label_1333:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	compute_bucket_size
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_1339
	jmp	.label_1335
.label_1339:
	mov	eax, 0x10
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx + 0x10]
	call	calloc
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	jne	.label_1336
	jmp	.label_1335
.label_1336:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x10]
	shl	rcx, 4
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x48], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1334
.label_1335:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 8], 0
.label_1334:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4115c0

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 3
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, eax
	call	rotr_sz
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	xor	esi, esi
	mov	edx, esi
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411600

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	cmp	rsi, qword ptr [rbp - 0x10]
	sete	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411620

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	push	rbp
	mov	rbp, rsp
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x28]
	mov	qword ptr [rbp - 0x18], rdi
	cmp	qword ptr [rbp - 0x18], rax
	jne	.label_1342
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1345
.label_1342:
	movss	xmm0,  dword ptr [dword ptr [rip + label_1346]]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_1344
	movss	xmm0,  dword ptr [dword ptr [rip + label_1343]]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	subss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	jbe	.label_1344
	movss	xmm0,  dword ptr [dword ptr [rip + label_1343]]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 0xc]
	ucomiss	xmm1, xmm0
	jbe	.label_1344
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jb	.label_1344
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 4]
	ucomiss	xmm1, xmm0
	jbe	.label_1344
	movss	xmm0,  dword ptr [dword ptr [rip + label_1343]]
	mov	rax, qword ptr [rbp - 0x18]
	ucomiss	xmm0, dword ptr [rax + 4]
	jb	.label_1344
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_1344
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1345
.label_1344:
	movabs	rax, OFFSET FLAT:default_tuning
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x28], rax
	mov	byte ptr [rbp - 1], 0
.label_1345:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411750

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	test	byte ptr [rsi + 0x10], 1
	jne	.label_1347
	movss	xmm0,  dword ptr [dword ptr [rip + label_1352]]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm1, rsi
	addss	xmm1, xmm1
	cvtsi2ss	xmm2, rax
	test	rax, rax
	movss	dword ptr [rbp - 0x20], xmm0
	movss	dword ptr [rbp - 0x24], xmm2
	movss	dword ptr [rbp - 0x28], xmm1
	js	.label_1353
	movss	xmm0, dword ptr [rbp - 0x24]
	movss	dword ptr [rbp - 0x28], xmm0
.label_1353:
	movss	xmm0, dword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x18]
	divss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	xmm1, dword ptr [rbp - 0x20]
	ucomiss	xmm0, xmm1
	jb	.label_1349
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1348
.label_1349:
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1351]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	ucomiss	xmm1, xmm0
	cmova	rax, rcx
	mov	qword ptr [rbp - 0x10], rax
.label_1347:
	mov	rdi, qword ptr [rbp - 0x10]
	call	next_prime
	movabs	rdi, 0xfffffffffffffff
	mov	qword ptr [rbp - 0x10], rax
	cmp	rdi, qword ptr [rbp - 0x10]
	jae	.label_1350
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1348
.label_1350:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_1348:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411870
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
.label_1360:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1361
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1359
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_1358:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1356
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1354
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	call	rax
.label_1354:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1358
.label_1356:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1355
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx]
	call	rax
.label_1355:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
.label_1359:
	jmp	.label_1357
.label_1357:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1360
.label_1361:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411990
	.globl hash_free
	.type hash_free, @function
hash_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x40], 0
	je	.label_1366
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], 0
	je	.label_1366
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_1372:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1370
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1365
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_1364:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1373
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	call	rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1364
.label_1373:
	jmp	.label_1365
.label_1365:
	jmp	.label_1375
.label_1375:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1372
.label_1370:
	jmp	.label_1366
.label_1366:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_1369:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1362
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_1363:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1371
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1363
.label_1371:
	jmp	.label_1368
.label_1368:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1369
.label_1362:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x18], rax
.label_1367:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1374
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1367
.label_1374:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411b10

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x28]
	call	compute_bucket_size
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_1382
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1377
.label_1382:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_1378
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1377
.label_1378:
	mov	eax, 0x10
	mov	esi, eax
	lea	rcx, [rbp - 0x68]
	mov	qword ptr [rbp - 0x70], rcx
	mov	rdi, qword ptr [rbp - 0x78]
	call	calloc
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x70]
	cmp	qword ptr [rax], 0
	jne	.label_1384
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1377
.label_1384:
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	shl	rcx, 4
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x10]
	call	transfer_entries
	test	al, 1
	jne	.label_1383
	jmp	.label_1376
.label_1383:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x18]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x18], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x48]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x48], rax
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1377
.label_1376:
	mov	edx, 1
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x70]
	call	transfer_entries
	test	al, 1
	jne	.label_1379
	jmp	.label_1380
.label_1379:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x70]
	call	transfer_entries
	test	al, 1
	jne	.label_1381
.label_1380:
	call	abort
.label_1381:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	byte ptr [rbp - 1], 0
.label_1377:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411d20

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, dl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x28], rsi
.label_1390:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1385
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	je	.label_1389
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
.label_1392:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1395
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	call	safe_hasher
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax], 0
	je	.label_1387
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_1396
.label_1387:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	call	free_entry
.label_1396:
	jmp	.label_1397
.label_1397:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1392
.label_1395:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 8], 0
	test	byte ptr [rbp - 0x19], 1
	je	.label_1386
	jmp	.label_1388
.label_1386:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	call	safe_hasher
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax], 0
	je	.label_1398
	mov	rdi, qword ptr [rbp - 0x10]
	call	allocate_entry
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_1391
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1394
.label_1391:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_1393
.label_1398:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
.label_1393:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, -1
	mov	qword ptr [rax + 0x18], rcx
.label_1389:
	jmp	.label_1388
.label_1388:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1390
.label_1385:
	mov	byte ptr [rbp - 1], 1
.label_1394:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411f00

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1399
	call	abort
.label_1399:
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	je	.label_1415
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1402
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1402:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1404
.label_1415:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rax + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	edi, edx
	and	edi, 1
	mov	r8d, edi
	or	r8, rsi
	cvtsi2ss	xmm0, r8
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rcx
	movss	dword ptr [rbp - 0x5c], xmm1
	movss	dword ptr [rbp - 0x60], xmm0
	js	.label_1411
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_1411:
	movss	xmm0, dword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x58]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 0x58]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	movss	dword ptr [rbp - 0x64], xmm0
	movss	dword ptr [rbp - 0x68], xmm1
	movss	dword ptr [rbp - 0x6c], xmm3
	movss	dword ptr [rbp - 0x70], xmm2
	js	.label_1406
	movss	xmm0, dword ptr [rbp - 0x6c]
	movss	dword ptr [rbp - 0x70], xmm0
.label_1406:
	movss	xmm0, dword ptr [rbp - 0x70]
	movss	xmm1, dword ptr [rbp - 0x68]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm0, xmm1
	jbe	.label_1405
	mov	rdi, qword ptr [rbp - 0x10]
	call	check_tuning
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	r8d, edx
	and	r8d, 1
	mov	r9d, r8d
	or	r9, rsi
	cvtsi2ss	xmm0, r9
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	byte ptr [rbp - 0x71], al
	mov	qword ptr [rbp - 0x80], rdi
	mov	qword ptr [rbp - 0x88], rcx
	movss	dword ptr [rbp - 0x8c], xmm1
	movss	dword ptr [rbp - 0x90], xmm0
	js	.label_1416
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	dword ptr [rbp - 0x90], xmm0
.label_1416:
	movss	xmm0, dword ptr [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x88]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 0x88]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	movss	dword ptr [rbp - 0x94], xmm0
	movss	dword ptr [rbp - 0x98], xmm1
	movss	dword ptr [rbp - 0x9c], xmm3
	movss	dword ptr [rbp - 0xa0], xmm2
	js	.label_1407
	movss	xmm0, dword ptr [rbp - 0x9c]
	movss	dword ptr [rbp - 0xa0], xmm0
.label_1407:
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x94]
	ucomiss	xmm0, xmm1
	jbe	.label_1401
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x10], 1
	je	.label_1409
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xa4], xmm1
	movss	dword ptr [rbp - 0xa8], xmm0
	js	.label_1417
	movss	xmm0, dword ptr [rbp - 0xa4]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1417:
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 0xc]
	movss	dword ptr [rbp - 0xac], xmm0
	jmp	.label_1410
.label_1409:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xb0], xmm1
	movss	dword ptr [rbp - 0xb4], xmm0
	js	.label_1400
	movss	xmm0, dword ptr [rbp - 0xb0]
	movss	dword ptr [rbp - 0xb4], xmm0
.label_1400:
	movss	xmm0, dword ptr [rbp - 0xb4]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0xac], xmm0
.label_1410:
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1352]]
	movss	dword ptr [rbp - 0x3c], xmm0
	movss	xmm0, dword ptr [rbp - 0x3c]
	ucomiss	xmm0, xmm1
	jb	.label_1413
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1404
.label_1413:
	mov	rdi, qword ptr [rbp - 0x10]
	movss	xmm0, dword ptr [rbp - 0x3c]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1351]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	ucomiss	xmm1, xmm0
	cmova	rax, rcx
	mov	rsi, rax
	call	hash_rehash
	test	al, 1
	jne	.label_1403
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1404
.label_1403:
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	cmp	rax, 0
	je	.label_1412
	call	abort
.label_1412:
	jmp	.label_1401
.label_1401:
	jmp	.label_1405
.label_1405:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1408
	mov	rdi, qword ptr [rbp - 0x10]
	call	allocate_entry
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_1414
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1404
.label_1414:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, 1
	mov	qword ptr [rax + 0x20], rcx
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1404
.label_1408:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, 1
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
	mov	dword ptr [rbp - 4], 1
.label_1404:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4123a0

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, cl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	safe_hasher
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	jne	.label_1420
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1421
.label_1420:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx]
	je	.label_1422
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_1422
	jmp	.label_1419
.label_1422:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_1423
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 8], 0
	je	.label_1430
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax], rdx
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x48]
	call	free_entry
	jmp	.label_1429
.label_1430:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
.label_1429:
	jmp	.label_1423
.label_1423:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1421
.label_1419:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_1418:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 8], 0
	je	.label_1424
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx]
	je	.label_1426
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_1426
	jmp	.label_1427
.label_1426:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_1428
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x58]
	call	free_entry
.label_1428:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1421
.label_1427:
	jmp	.label_1425
.label_1425:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1418
.label_1424:
	mov	qword ptr [rbp - 8], 0
.label_1421:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412570

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x48], 0
	je	.label_1431
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x48], rax
	jmp	.label_1432
.label_1431:
	mov	eax, 0x10
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
.label_1432:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4125d0

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdx, [rbp - 0x18]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	hash_insert_if_absent
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], -1
	jne	.label_1433
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_1436
.label_1433:
	cmp	dword ptr [rbp - 0x1c], 0
	jne	.label_1435
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1434
.label_1435:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_1434:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_1436:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412640

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	lea	rdx, [rbp - 0x28]
	mov	ecx, 1
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1447
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1451
.label_1447:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, -1
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	jne	.label_1439
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	dec	rcx
	mov	qword ptr [rax + 0x18], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rax + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	edi, edx
	and	edi, 1
	mov	r8d, edi
	or	r8, rsi
	cvtsi2ss	xmm0, r8
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rcx
	movss	dword ptr [rbp - 0x5c], xmm1
	movss	dword ptr [rbp - 0x60], xmm0
	js	.label_1445
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_1445:
	movss	xmm0, dword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x58]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 0x58]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	movss	dword ptr [rbp - 0x64], xmm0
	movss	dword ptr [rbp - 0x68], xmm1
	movss	dword ptr [rbp - 0x6c], xmm3
	movss	dword ptr [rbp - 0x70], xmm2
	js	.label_1438
	movss	xmm0, dword ptr [rbp - 0x6c]
	movss	dword ptr [rbp - 0x70], xmm0
.label_1438:
	movss	xmm0, dword ptr [rbp - 0x70]
	movss	xmm1, dword ptr [rbp - 0x68]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm1, xmm0
	jbe	.label_1443
	mov	rdi, qword ptr [rbp - 0x10]
	call	check_tuning
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	r8d, edx
	and	r8d, 1
	mov	r9d, r8d
	or	r9, rsi
	cvtsi2ss	xmm0, r9
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	byte ptr [rbp - 0x71], al
	mov	qword ptr [rbp - 0x80], rdi
	mov	qword ptr [rbp - 0x88], rcx
	movss	dword ptr [rbp - 0x8c], xmm1
	movss	dword ptr [rbp - 0x90], xmm0
	js	.label_1441
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	dword ptr [rbp - 0x90], xmm0
.label_1441:
	movss	xmm0, dword ptr [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x88]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 0x88]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	movss	dword ptr [rbp - 0x94], xmm0
	movss	dword ptr [rbp - 0x98], xmm1
	movss	dword ptr [rbp - 0x9c], xmm3
	movss	dword ptr [rbp - 0xa0], xmm2
	js	.label_1446
	movss	xmm0, dword ptr [rbp - 0x9c]
	movss	dword ptr [rbp - 0xa0], xmm0
.label_1446:
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x94]
	ucomiss	xmm1, xmm0
	jbe	.label_1442
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x10], 1
	je	.label_1437
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xa4], xmm1
	movss	dword ptr [rbp - 0xa8], xmm0
	js	.label_1444
	movss	xmm0, dword ptr [rbp - 0xa4]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1444:
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 4]
	movss	dword ptr [rbp - 0xac], xmm0
	jmp	.label_1448
.label_1437:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xb0], xmm1
	movss	dword ptr [rbp - 0xb4], xmm0
	js	.label_1440
	movss	xmm0, dword ptr [rbp - 0xb0]
	movss	dword ptr [rbp - 0xb4], xmm0
.label_1440:
	movss	xmm0, dword ptr [rbp - 0xb4]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0xac], xmm0
.label_1448:
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1351]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	ucomiss	xmm0, xmm1
	cmovb	rax, rcx
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x38]
	call	hash_rehash
	test	al, 1
	jne	.label_1452
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x40], rax
.label_1450:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1449
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1450
.label_1449:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x48], 0
.label_1452:
	jmp	.label_1442
.label_1442:
	jmp	.label_1443
.label_1443:
	jmp	.label_1439
.label_1439:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1451:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412a40

	.globl next_prime
	.type next_prime, @function
next_prime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0xa
	jae	.label_1453
	mov	qword ptr [rbp - 8], 0xa
.label_1453:
	mov	rax, qword ptr [rbp - 8]
	or	rax, 1
	mov	qword ptr [rbp - 8], rax
.label_1455:
	xor	eax, eax
	mov	cl, al
	mov	rdx, -1
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 9], cl
	je	.label_1457
	mov	rdi, qword ptr [rbp - 8]
	call	is_prime
	xor	al, 0xff
	mov	byte ptr [rbp - 9], al
.label_1457:
	mov	al, byte ptr [rbp - 9]
	test	al, 1
	jne	.label_1454
	jmp	.label_1456
.label_1454:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 2
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1455
.label_1456:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412ac0

	.globl is_prime
	.type is_prime, @function
is_prime:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 3
	mov	rdi, qword ptr [rbp - 0x10]
	imul	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
.label_1458:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 0x19], cl
	jae	.label_1461
	mov	rax, qword ptr [rbp - 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rdx, 0
	setne	sil
	mov	byte ptr [rbp - 0x19], sil
.label_1461:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_1460
	jmp	.label_1459
.label_1460:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 2
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1458
.label_1459:
	xor	eax, eax
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x20], eax
	mov	rax, rdx
	xor	esi, esi
	mov	edx, esi
	div	qword ptr [rbp - 0x10]
	cmp	rdx, 0
	mov	esi, dword ptr [rbp - 0x20]
	cmovne	esi, ecx
	cmp	esi, 0
	setne	dil
	and	dil, 1
	movzx	ecx, dil
	mov	eax, ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412b80

	.globl free_entry
	.type free_entry, @function
free_entry:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi], 0
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x48]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x48], rsi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412bc0

	.globl heap_alloc
	.type heap_alloc, @function
heap_alloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 0x20
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, rcx
	call	xmalloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1464
	mov	qword ptr [rbp - 0x10], 1
.label_1464:
	mov	eax, 8
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	xnmalloc
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x10], 0
	cmp	qword ptr [rbp - 8], 0
	je	.label_1463
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1462
.label_1463:
	movabs	rax, OFFSET FLAT:heap_default_compare
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1462
.label_1462:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412c80

	.globl heap_default_compare
	.type heap_default_compare, @function
heap_default_compare:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412c90
	.globl heap_free
	.type heap_free, @function
heap_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412cc0

	.globl heap_insert
	.type heap_insert, @function
heap_insert:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	sub	rsi, 1
	mov	rdi, qword ptr [rbp - 8]
	cmp	rsi, qword ptr [rdi + 0x10]
	ja	.label_1465
	mov	eax, 8
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	mov	rsi, qword ptr [rbp - 8]
	add	rsi, 8
	mov	rdi, rcx
	call	x2nrealloc
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
.label_1465:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rcx + 0x10], rsi
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rcx + rdx*8 + 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rax + 0x18]
	call	heapify_up
	xor	eax, eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412d60

	.globl heapify_up
	.type heapify_up, @function
heapify_up:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rsi + rdx*8]
	mov	qword ptr [rbp - 0x28], rdx
.label_1466:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x20], 1
	mov	byte ptr [rbp - 0x29], cl
	je	.label_1469
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx + rcx*8]
	mov	rsi, qword ptr [rbp - 0x28]
	call	rax
	cmp	eax, 0
	setle	r8b
	mov	byte ptr [rbp - 0x29], r8b
.label_1469:
	mov	al, byte ptr [rbp - 0x29]
	test	al, 1
	jne	.label_1467
	jmp	.label_1468
.label_1467:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1466
.label_1468:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + rcx*8], rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412e20

	.globl heap_remove_top
	.type heap_remove_top, @function
heap_remove_top:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdi + 0x10], 0
	jne	.label_1470
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1471
.label_1470:
	mov	eax, 1
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rsi
	add	rdi, -1
	mov	qword ptr [rcx + 0x10], rdi
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	rcx, qword ptr [rcx + rsi*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rsi + 8], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	call	heapify_down
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	qword ptr [rbp - 0x20], rax
.label_1471:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412ec0

	.globl heapify_down
	.type heapify_down, @function
heapify_down:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
.label_1475:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	shr	rcx, 1
	cmp	rax, rcx
	ja	.label_1472
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1473
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx + rcx*8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rdx + rcx*8 + 8]
	call	rax
	cmp	eax, 0
	jge	.label_1473
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
.label_1473:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx + rcx*8]
	mov	rsi, qword ptr [rbp - 0x28]
	call	rax
	cmp	eax, 0
	jg	.label_1474
	jmp	.label_1472
.label_1474:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1475
.label_1472:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412fc0

	.globl inttostr
	.type inttostr, @function
inttostr:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0xb
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi], 0
	cmp	dword ptr [rbp - 4], 0
	jge	.label_1476
	jmp	.label_1479
.label_1479:
	mov	eax, 0x30
	mov	ecx, 0xa
	mov	edx, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax, edx
	cdq	
	idiv	ecx
	mov	ecx, dword ptr [rbp - 0x1c]
	sub	ecx, edx
	mov	sil, cl
	mov	rdi, qword ptr [rbp - 0x18]
	mov	r8, rdi
	add	r8, -1
	mov	qword ptr [rbp - 0x18], r8
	mov	byte ptr [rdi - 1], sil
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x20], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x20]
	idiv	ecx
	mov	dword ptr [rbp - 4], eax
	cmp	eax, 0
	jne	.label_1479
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_1477
.label_1476:
	jmp	.label_1478
.label_1478:
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x24], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x24]
	idiv	ecx
	add	edx, 0x30
	mov	sil, dl
	mov	rdi, qword ptr [rbp - 0x18]
	mov	r8, rdi
	add	r8, -1
	mov	qword ptr [rbp - 0x18], r8
	mov	byte ptr [rdi - 1], sil
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x28], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x28]
	idiv	ecx
	mov	dword ptr [rbp - 4], eax
	cmp	eax, 0
	jne	.label_1478
	jmp	.label_1477
.label_1477:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4130b0

	.globl uinttostr
	.type uinttostr, @function
uinttostr:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0xa
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi], 0
	cmp	dword ptr [rbp - 4], 0
	jae	.label_1480
	jmp	.label_1483
.label_1483:
	mov	eax, 0x30
	mov	ecx, 0xa
	mov	edx, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax, edx
	xor	edx, edx
	div	ecx
	mov	ecx, dword ptr [rbp - 0x1c]
	sub	ecx, edx
	mov	sil, cl
	mov	rdi, qword ptr [rbp - 0x18]
	mov	r8, rdi
	add	r8, -1
	mov	qword ptr [rbp - 0x18], r8
	mov	byte ptr [rdi - 1], sil
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x20], eax
	mov	eax, ecx
	xor	edx, edx
	mov	ecx, dword ptr [rbp - 0x20]
	div	ecx
	mov	dword ptr [rbp - 4], eax
	cmp	eax, 0
	jne	.label_1483
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_1481
.label_1480:
	jmp	.label_1482
.label_1482:
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x24], eax
	mov	eax, ecx
	xor	edx, edx
	mov	ecx, dword ptr [rbp - 0x24]
	div	ecx
	add	edx, 0x30
	mov	sil, dl
	mov	rdi, qword ptr [rbp - 0x18]
	mov	r8, rdi
	add	r8, -1
	mov	qword ptr [rbp - 0x18], r8
	mov	byte ptr [rdi - 1], sil
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x28], eax
	mov	eax, ecx
	xor	edx, edx
	mov	ecx, dword ptr [rbp - 0x28]
	div	ecx
	mov	dword ptr [rbp - 4], eax
	cmp	eax, 0
	jne	.label_1482
	jmp	.label_1481
.label_1481:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4131b0

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0x14
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi], 0
	cmp	qword ptr [rbp - 8], 0
	jae	.label_1484
	jmp	.label_1487
.label_1487:
	mov	eax, 0x30
	mov	ecx, eax
	mov	eax, 0xa
	mov	edx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	esi, esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	edx, esi
	mov	rdi, qword ptr [rbp - 0x20]
	div	rdi
	sub	rcx, rdx
	mov	r8b, cl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], r8b
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_1487
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_1486
.label_1484:
	jmp	.label_1485
.label_1485:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	add	rdx, 0x30
	mov	sil, dl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_1485
	jmp	.label_1486
.label_1486:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4132b0
	.globl gnu_mbswidth
	.type gnu_mbswidth, @function
gnu_mbswidth:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rax
	call	strlen
	mov	edx, dword ptr [rbp - 0xc]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	mbsnwidth
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4132f0

	.globl mbsnwidth
	.type mbsnwidth, @function
mbsnwidth:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	add	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rsi
	mov	dword ptr [rbp - 0x34], 0
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_1513
	jmp	.label_1489
.label_1489:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1499
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x20
	mov	eax, ecx
	sub	ecx, 0x5e
	mov	qword ptr [rbp - 0x60], rax
	mov	dword ptr [rbp - 0x64], ecx
	ja	.label_1503
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1511]]
	jmp	rcx
.label_2362:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_1488
.label_1503:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	rdi, rcx
	call	memset
.label_1501:
	lea	rdi, [rbp - 0x44]
	lea	rcx, [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	sub	rax, rdx
	mov	rdx, rax
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], -1
	jne	.label_1512
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 1
	cmp	eax, 0
	jne	.label_1505
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_1495
.label_1505:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1493
.label_1512:
	cmp	qword ptr [rbp - 0x50], -2
	jne	.label_1518
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 1
	cmp	eax, 0
	jne	.label_1492
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_1495
.label_1492:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1493
.label_1518:
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_1502
	mov	qword ptr [rbp - 0x50], 1
.label_1502:
	mov	edi, dword ptr [rbp - 0x44]
	call	wcwidth
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 0
	jl	.label_1509
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 0x54]
	sub	eax, dword ptr [rbp - 0x34]
	cmp	ecx, eax
	jle	.label_1507
	jmp	.label_1500
.label_1507:
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_1508
.label_1509:
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 2
	cmp	eax, 0
	jne	.label_1491
	mov	edi, dword ptr [rbp - 0x44]
	call	iswcntrl
	cmp	eax, 0
	jne	.label_1497
	cmp	dword ptr [rbp - 0x34], 0x7fffffff
	jne	.label_1517
	jmp	.label_1500
.label_1517:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
.label_1497:
	jmp	.label_1504
.label_1491:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1493
.label_1504:
	jmp	.label_1508
.label_1508:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rbp - 0x40]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_1501
.label_1495:
	jmp	.label_1488
.label_1488:
	jmp	.label_1489
.label_1499:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1493
.label_1513:
	jmp	.label_1494
.label_1494:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1496
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x55], dl
	movzx	esi, byte ptr [rbp - 0x55]
	movsxd	rax, esi
	mov	qword ptr [rbp - 0x70], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x70]
	movzx	esi, word ptr [rax + rcx*2]
	and	esi, 0x4000
	cmp	esi, 0
	je	.label_1506
	cmp	dword ptr [rbp - 0x34], 0x7fffffff
	jne	.label_1514
	jmp	.label_1500
.label_1514:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_1515
.label_1506:
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 2
	cmp	eax, 0
	jne	.label_1490
	movzx	eax, byte ptr [rbp - 0x55]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 2
	cmp	edx, 0
	jne	.label_1498
	cmp	dword ptr [rbp - 0x34], 0x7fffffff
	jne	.label_1516
	jmp	.label_1500
.label_1516:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
.label_1498:
	jmp	.label_1510
.label_1490:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1493
.label_1510:
	jmp	.label_1515
.label_1515:
	jmp	.label_1494
.label_1496:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1493
.label_1500:
	mov	dword ptr [rbp - 4], 0x7fffffff
.label_1493:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413620

	.globl num_processors
	.type num_processors, @function
num_processors:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], -1
	cmp	dword ptr [rbp - 0xc], 2
	jne	.label_1519
	movabs	rdi, OFFSET FLAT:label_1528
	call	getenv
	mov	rdi, rax
	call	parse_omp_threads
	movabs	rdi, OFFSET FLAT:label_1525
	mov	qword ptr [rbp - 0x20], rax
	call	getenv
	mov	rdi, rax
	call	parse_omp_threads
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1522
	mov	qword ptr [rbp - 0x18], -1
.label_1522:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1521
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1524
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1527
.label_1524:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
.label_1527:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1526
.label_1521:
	mov	dword ptr [rbp - 0xc], 1
.label_1519:
	mov	edi, dword ptr [rbp - 0xc]
	call	num_processors_ignoring_omp
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1523
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1520
.label_1523:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rax
.label_1520:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
.label_1526:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413710

	.globl parse_omp_threads
	.type parse_omp_threads, @function
parse_omp_threads:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], 0
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1534
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1531
.label_1534:
	jmp	.label_1544
.label_1544:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x29], cl
	je	.label_1530
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rax]
	call	c_isspace
	mov	byte ptr [rbp - 0x29], al
.label_1530:
	mov	al, byte ptr [rbp - 0x29]
	test	al, 1
	jne	.label_1540
	jmp	.label_1541
.label_1540:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1544
.label_1541:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rax]
	call	c_isdigit
	test	al, 1
	jne	.label_1535
	jmp	.label_1538
.label_1535:
	lea	rsi, [rbp - 0x20]
	mov	edx, 0xa
	mov	qword ptr [rbp - 0x20], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	strtoul
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1536
	jmp	.label_1532
.label_1532:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x2a], cl
	je	.label_1533
	mov	rax, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rax]
	call	c_isspace
	mov	byte ptr [rbp - 0x2a], al
.label_1533:
	mov	al, byte ptr [rbp - 0x2a]
	test	al, 1
	jne	.label_1543
	jmp	.label_1529
.label_1543:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1532
.label_1529:
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1537
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1531
.label_1537:
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2c
	jne	.label_1542
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1531
.label_1542:
	jmp	.label_1539
.label_1539:
	jmp	.label_1536
.label_1536:
	jmp	.label_1538
.label_1538:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
.label_1531:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413880

	.globl num_processors_ignoring_omp
	.type num_processors_ignoring_omp, @function
num_processors_ignoring_omp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], edi
	cmp	dword ptr [rbp - 0xc], 1
	jne	.label_1545
	call	num_processors_via_affinity_mask
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jbe	.label_1550
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1547
.label_1550:
	mov	edi, 0x54
	call	sysconf
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jle	.label_1548
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1547
.label_1548:
	jmp	.label_1549
.label_1545:
	mov	edi, 0x53
	call	sysconf
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 1
	jne	.label_1546
	call	num_processors_via_affinity_mask
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jbe	.label_1552
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_1552:
	jmp	.label_1546
.label_1546:
	cmp	qword ptr [rbp - 0x28], 0
	jle	.label_1551
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1547
.label_1551:
	jmp	.label_1549
.label_1549:
	mov	qword ptr [rbp - 8], 1
.label_1547:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413950

	.globl num_processors_via_affinity_mask
	.type num_processors_via_affinity_mask, @function
num_processors_via_affinity_mask:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	xor	edi, edi
	mov	eax, 0x80
	mov	esi, eax
	lea	rdx, [rbp - 0x88]
	call	sched_getaffinity
	cmp	eax, 0
	jne	.label_1553
	mov	eax, 0x80
	mov	edi, eax
	lea	rsi, [rbp - 0x88]
	call	__sched_cpucount
	movsxd	rsi, eax
	mov	qword ptr [rbp - 0x90], rsi
	cmp	qword ptr [rbp - 0x90], 0
	jbe	.label_1555
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1554
.label_1555:
	jmp	.label_1553
.label_1553:
	mov	qword ptr [rbp - 8], 0
.label_1554:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4139d0

	.globl physmem_total
	.type physmem_total, @function
physmem_total:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	edi, 0x55
	call	sysconf
	mov	edi, 0x1e
	cvtsi2sd	xmm0, rax
	movsd	qword ptr [rbp - 0x10], xmm0
	call	sysconf
	xorps	xmm0, xmm0
	cvtsi2sd	xmm1, rax
	movsd	qword ptr [rbp - 0x18], xmm1
	movsd	xmm1, qword ptr [rbp - 0x10]
	ucomisd	xmm1, xmm0
	jb	.label_1557
	xorps	xmm0, xmm0
	movsd	xmm1, qword ptr [rbp - 0x18]
	ucomisd	xmm1, xmm0
	jb	.label_1557
	movsd	xmm0, qword ptr [rbp - 0x10]
	mulsd	xmm0, qword ptr [rbp - 0x18]
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.label_1556
.label_1557:
	lea	rdi, [rbp - 0x88]
	call	sysinfo
	cmp	eax, 0
	jne	.label_1558
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_256]]
	movq	xmm1, qword ptr [rbp - 0x68]
	punpckldq	xmm1, xmm0
	movapd	xmm0,  xmmword ptr [word ptr [rip + label_257]]
	subpd	xmm1, xmm0
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mov	eax, dword ptr [rbp - 0x20]
	mov	ecx, eax
	cvtsi2sd	xmm1, rcx
	mulsd	xmm0, xmm1
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.label_1556
.label_1558:
	movsd	xmm0,  qword ptr [word ptr [rip + label_1559]]
	movsd	qword ptr [rbp - 8], xmm0
.label_1556:
	movsd	xmm0, qword ptr [rbp - 8]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413ab0

	.globl physmem_available
	.type physmem_available, @function
physmem_available:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	edi, 0x56
	call	sysconf
	mov	edi, 0x1e
	cvtsi2sd	xmm0, rax
	movsd	qword ptr [rbp - 0x10], xmm0
	call	sysconf
	xorps	xmm0, xmm0
	cvtsi2sd	xmm1, rax
	movsd	qword ptr [rbp - 0x18], xmm1
	movsd	xmm1, qword ptr [rbp - 0x10]
	ucomisd	xmm1, xmm0
	jb	.label_1562
	xorps	xmm0, xmm0
	movsd	xmm1, qword ptr [rbp - 0x18]
	ucomisd	xmm1, xmm0
	jb	.label_1562
	movsd	xmm0, qword ptr [rbp - 0x10]
	mulsd	xmm0, qword ptr [rbp - 0x18]
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.label_1561
.label_1562:
	lea	rdi, [rbp - 0x88]
	call	sysinfo
	cmp	eax, 0
	jne	.label_1560
	movq	xmm0, qword ptr [rbp - 0x60]
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_256]]
	punpckldq	xmm0, xmm1
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_257]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	movq	xmm0, qword ptr [rbp - 0x50]
	punpckldq	xmm0, xmm1
	subpd	xmm0, xmm2
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	addsd	xmm3, xmm1
	mov	eax, dword ptr [rbp - 0x20]
	mov	ecx, eax
	cvtsi2sd	xmm0, rcx
	mulsd	xmm3, xmm0
	movsd	qword ptr [rbp - 8], xmm3
	jmp	.label_1561
.label_1560:
	call	physmem_total
	movsd	xmm1,  qword ptr [word ptr [rip + label_1563]]
	divsd	xmm0, xmm1
	movsd	qword ptr [rbp - 8], xmm0
.label_1561:
	movsd	xmm0, qword ptr [rbp - 8]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413bb0

	.globl rpl_pipe2
	.type rpl_pipe2, @function
rpl_pipe2:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rdi]
	mov	dword ptr [rbp - 0x1c], esi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rdi + 4]
	mov	dword ptr [rbp - 0x18], esi
	cmp	dword ptr [dword ptr [rpl_pipe2.have_pipe2_really]],  0
	jl	.label_1575
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	call	pipe2
	mov	dword ptr [rbp - 0x20], eax
	cmp	dword ptr [rbp - 0x20], 0
	jge	.label_1574
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	je	.label_1576
.label_1574:
	mov	dword ptr [dword ptr [rpl_pipe2.have_pipe2_really]],  1
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1566
.label_1576:
	mov	dword ptr [dword ptr [rpl_pipe2.have_pipe2_really]],  0xffffffff
.label_1575:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0xfff7f7ff
	cmp	eax, 0
	je	.label_1573
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1566
.label_1573:
	mov	rdi, qword ptr [rbp - 0x10]
	call	pipe
	cmp	eax, 0
	jge	.label_1571
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1566
.label_1571:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x800
	cmp	eax, 0
	je	.label_1569
	mov	esi, 3
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 4]
	mov	al, 0
	call	rpl_fcntl
	mov	dword ptr [rbp - 0x24], eax
	cmp	eax, 0
	jl	.label_1570
	mov	esi, 4
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 4]
	mov	ecx, dword ptr [rbp - 0x24]
	or	ecx, 0x800
	mov	edx, ecx
	mov	al, 0
	call	rpl_fcntl
	cmp	eax, -1
	je	.label_1570
	mov	esi, 3
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax]
	mov	al, 0
	call	rpl_fcntl
	mov	dword ptr [rbp - 0x24], eax
	cmp	eax, 0
	jl	.label_1570
	mov	esi, 4
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax]
	mov	ecx, dword ptr [rbp - 0x24]
	or	ecx, 0x800
	mov	edx, ecx
	mov	al, 0
	call	rpl_fcntl
	cmp	eax, -1
	jne	.label_1564
.label_1570:
	jmp	.label_1568
.label_1564:
	jmp	.label_1569
.label_1569:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x80000
	cmp	eax, 0
	je	.label_1567
	mov	esi, 1
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 4]
	mov	al, 0
	call	rpl_fcntl
	mov	dword ptr [rbp - 0x28], eax
	cmp	eax, 0
	jl	.label_1572
	mov	esi, 2
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 4]
	mov	ecx, dword ptr [rbp - 0x28]
	or	ecx, 1
	mov	edx, ecx
	mov	al, 0
	call	rpl_fcntl
	cmp	eax, -1
	je	.label_1572
	mov	esi, 1
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax]
	mov	al, 0
	call	rpl_fcntl
	mov	dword ptr [rbp - 0x28], eax
	cmp	eax, 0
	jl	.label_1572
	mov	esi, 2
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax]
	mov	ecx, dword ptr [rbp - 0x28]
	or	ecx, 1
	mov	edx, ecx
	mov	al, 0
	call	rpl_fcntl
	cmp	eax, -1
	jne	.label_1565
.label_1572:
	jmp	.label_1568
.label_1565:
	jmp	.label_1567
.label_1567:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1566
.label_1568:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax]
	call	close
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rdx + 4]
	mov	dword ptr [rbp - 0x30], eax
	call	close
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rdx], ecx
	mov	ecx, dword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rdx + 4], ecx
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x34], eax
	mov	dword ptr [rbp - 0x38], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x38]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 4], 0xffffffff
.label_1566:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413e20

	.globl posix2_version
	.type posix2_version, @function
posix2_version:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	movabs	rdi, OFFSET FLAT:label_1577
	mov	qword ptr [rbp - 8], 0x31069
	call	getenv
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1579
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1579
	lea	rsi, [rbp - 0x18]
	mov	edx, 0xa
	mov	rdi, qword ptr [rbp - 0x10]
	call	strtol
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_1582
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1582:
	jmp	.label_1579
.label_1579:
	cmp	qword ptr [rbp - 8], -0x80000000
	jge	.label_1581
	mov	rax, -0x80000000
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1583
.label_1581:
	cmp	qword ptr [rbp - 8], 0x7fffffff
	jge	.label_1580
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1578
.label_1580:
	mov	eax, 0x7fffffff
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_1578
.label_1578:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_1583:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, eax
	mov	eax, ecx
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413ef0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1588
	movabs	rdi, OFFSET FLAT:label_1586
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_1588:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1590
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1584
.label_1590:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_1584:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_1587
	movabs	rsi, OFFSET FLAT:label_1591
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_1587
	movabs	rsi, OFFSET FLAT:label_1589
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_1585
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_1585:
	jmp	.label_1587
.label_1587:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414010
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], ecx
	cmp	qword ptr [rbp - 8], 0
	je	.label_1592
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1593
.label_1592:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1593
.label_1593:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, 0x38
	mov	esi, ecx
	mov	rdi, rax
	call	xmemdup
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x24], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414090
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_1594
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1595
.label_1594:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1595
.label_1595:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4140d0
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	esi, dword ptr [rbp - 0xc]
	cmp	qword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0x10], esi
	je	.label_1596
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1597
.label_1596:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1597
.label_1597:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414120

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	push	rbp
	mov	rbp, rsp
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	dword ptr [rbp - 0x10], edx
	mov	al, byte ptr [rbp - 9]
	mov	byte ptr [rbp - 0x11], al
	cmp	qword ptr [rbp - 8], 0
	je	.label_1598
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1599
.label_1598:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1599
.label_1599:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	edx, ecx
	shr	rdx, 5
	shl	rdx, 2
	add	rax, rdx
	mov	qword ptr [rbp - 0x20], rax
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	eax, ecx
	and	rax, 0x1f
	mov	ecx, eax
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x34], ecx
	mov	ecx, esi
	mov	esi, dword ptr [rbp - 0x34]
	shr	esi, cl
	and	esi, 1
	mov	dword ptr [rbp - 0x28], esi
	mov	esi, dword ptr [rbp - 0x10]
	and	esi, 1
	xor	esi, dword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rbp - 0x24]
	shl	esi, cl
	mov	rax, qword ptr [rbp - 0x20]
	xor	esi, dword ptr [rax]
	mov	dword ptr [rax], esi
	mov	eax, dword ptr [rbp - 0x28]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4141d0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1600
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_1600:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0x10], ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 4], ecx
	mov	eax, dword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414210

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1601
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_1601:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1603
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1602
.label_1603:
	call	abort
.label_1602:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414280
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1604
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1605
.label_1604:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1605
.label_1605:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x40], rax
	mov	r8d, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x4c], r8d
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x4c]
	mov	dword ptr [rax], r8d
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414350

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x158
	mov	rax, qword ptr [rbp + 0x20]
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], r8d
	mov	dword ptr [rbp - 0x38], r9d
	mov	qword ptr [rbp - 0x40], r11
	mov	qword ptr [rbp - 0x48], r10
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x70], 0
	mov	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0x79], 0
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	sete	bl
	and	bl, 1
	mov	byte ptr [rbp - 0x7a], bl
	mov	r8d, dword ptr [rbp - 0x38]
	and	r8d, 2
	cmp	r8d, 0
	setne	bl
	and	bl, 1
	mov	byte ptr [rbp - 0x7b], bl
	mov	byte ptr [rbp - 0x7c], 0
	mov	byte ptr [rbp - 0x7d], 0
	mov	byte ptr [rbp - 0x7e], 1
.label_1707:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_1805
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1607]]
	jmp	rcx
.label_2424:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_2423:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1617
	jmp	.label_1620
.label_1620:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1621
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1621:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1617
.label_1617:
	movabs	rax, OFFSET FLAT:label_1632
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_1633
.label_2425:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_1633
.label_2426:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_1641
	movabs	rdi, OFFSET FLAT:label_1645
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_1650
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_1641:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1658
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_1738:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_1663
	jmp	.label_1667
.label_1667:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1669
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_1669:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1675
.label_1675:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1738
.label_1663:
	jmp	.label_1658
.label_1658:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1633
.label_2421:
	mov	byte ptr [rbp - 0x79], 1
.label_2420:
	mov	byte ptr [rbp - 0x7b], 1
.label_2422:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1692
	mov	byte ptr [rbp - 0x79], 1
.label_1692:
	jmp	.label_1752
.label_1752:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1624
	jmp	.label_1697
.label_1697:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1698
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1698:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1624
.label_1624:
	movabs	rax, OFFSET FLAT:label_1650
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_1633
.label_2419:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_1633
.label_1805:
	call	abort
.label_1633:
	mov	qword ptr [rbp - 0x58], 0
.label_1677:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1711
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_1714
.label_1711:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_1714:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_1724
	jmp	.label_1731
.label_1724:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_1732
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_1732
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_1732
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_1741
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_1741
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_1751
.label_1741:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_1751:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_1732
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_1732
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1762
	jmp	.label_1625
.label_1762:
	mov	byte ptr [rbp - 0x81], 1
.label_1732:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x7f], dl
	movzx	esi, byte ptr [rbp - 0x7f]
	mov	eax, esi
	mov	rcx, rax
	sub	rcx, 0x7e
	mov	qword ptr [rbp - 0xf0], rax
	mov	qword ptr [rbp - 0xf8], rcx
	ja	.label_1729
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1775]]
	jmp	rcx
.label_2376:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1776
	jmp	.label_1804
.label_1804:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1809
	jmp	.label_1625
.label_1809:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1785
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1785
	jmp	.label_1787
.label_1787:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1681
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1681:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1790
.label_1790:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1794
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1794:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1801
.label_1801:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1803
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1803:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1785:
	jmp	.label_1608
.label_1608:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1611
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1611:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1665
.label_1665:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_1623
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1623
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_1623
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_1623
	jmp	.label_1639
.label_1639:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1772
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_1772:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1649
.label_1649:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1653
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_1653:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1623
.label_1623:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_1668
.label_1776:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_1671
	jmp	.label_1673
.label_1671:
	jmp	.label_1668
.label_1668:
	jmp	.label_1612
.label_2387:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_1676
	jmp	.label_1682
.label_1682:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_1757
	jmp	.label_1685
.label_1676:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1686
	jmp	.label_1625
.label_1686:
	jmp	.label_1691
.label_1757:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_1694
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1694
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_1694
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_1646
	jmp	.label_1704
.label_1704:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_1646
	jmp	.label_1709
.label_1709:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_1646
	jmp	.label_1716
.label_1716:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_1646
	jmp	.label_1719
.label_1719:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_1720
	jmp	.label_1646
.label_1646:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1727
	jmp	.label_1625
.label_1727:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1730
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_1730:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1740
.label_1740:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1743
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1743:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1747
.label_1747:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1660
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1660:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1756
.label_1756:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1770
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_1770:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1761
.label_1720:
	jmp	.label_1761
.label_1761:
	jmp	.label_1694
.label_1694:
	jmp	.label_1691
.label_1685:
	jmp	.label_1691
.label_1691:
	jmp	.label_1612
.label_2377:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_1768
.label_2378:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_1768
.label_2382:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_1768
.label_2380:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_1774
.label_2383:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_1774
.label_2379:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_1774
.label_2381:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_1768
.label_2388:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1778
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1767
	jmp	.label_1625
.label_1767:
	jmp	.label_1629
.label_1778:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1783
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1783
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_1783
	jmp	.label_1629
.label_1783:
	jmp	.label_1774
.label_1774:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1789
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1789
	jmp	.label_1625
.label_1789:
	jmp	.label_1768
.label_1768:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1795
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_1780
.label_1795:
	jmp	.label_1612
.label_2389:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1800
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_1792
	jmp	.label_1807
.label_1800:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_1792
.label_1807:
	jmp	.label_1612
.label_1792:
	jmp	.label_1606
.label_1606:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_1609
	jmp	.label_1612
.label_1609:
	jmp	.label_1614
.label_1614:
	mov	byte ptr [rbp - 0x83], 1
.label_2384:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1618
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1618
	jmp	.label_1625
.label_1618:
	jmp	.label_1612
.label_2386:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1627
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1631
	jmp	.label_1625
.label_1631:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1638
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_1638
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_1638:
	jmp	.label_1643
.label_1643:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1781
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1781:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1652
.label_1652:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1657
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1657:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1666
.label_1666:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1672
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1672:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1627:
	jmp	.label_1612
.label_2385:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_1612
.label_1729:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_1683
	mov	qword ptr [rbp - 0x90], 1
	movzx	eax, byte ptr [rbp - 0x7f]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x128], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x128]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	cmp	edx, 0
	setne	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x91], sil
	jmp	.label_1690
.label_1683:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1700
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_1700:
	jmp	.label_1706
.label_1706:
	lea	rdi, [rbp - 0xa4]
	lea	rcx, [rbp - 0xa0]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x58]
	add	rsi, qword ptr [rbp - 0x90]
	sub	rdx, rsi
	mov	rsi, rax
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0xb0], rax
	cmp	qword ptr [rbp - 0xb0], 0
	jne	.label_1717
	jmp	.label_1722
.label_1717:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_1723
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_1722
.label_1723:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_1759
	mov	byte ptr [rbp - 0x91], 0
.label_1748:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_1734
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_1734:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_1745
	jmp	.label_1746
.label_1745:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1748
.label_1746:
	jmp	.label_1722
.label_1759:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1755
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1755
	mov	qword ptr [rbp - 0xb8], 1
.label_1786:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_1758
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0xb8]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	add	esi, -0x5b
	sub	esi, 2
	mov	dword ptr [rbp - 0x130], edx
	mov	dword ptr [rbp - 0x134], esi
	jb	.label_1626
	jmp	.label_1771
.label_1771:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_1626
	jmp	.label_1773
.label_1773:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_1626
	jmp	.label_1777
.label_1777:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_1779
	jmp	.label_1626
.label_1626:
	jmp	.label_1625
.label_1779:
	jmp	.label_1648
.label_1648:
	jmp	.label_1655
.label_1655:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_1786
.label_1758:
	jmp	.label_1755
.label_1755:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_1791
	mov	byte ptr [rbp - 0x91], 0
.label_1791:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1725
.label_1725:
	jmp	.label_1798
.label_1798:
	jmp	.label_1799
.label_1799:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_1706
.label_1722:
	jmp	.label_1690
.label_1690:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_1808
	test	byte ptr [rbp - 0x79], 1
	je	.label_1616
	test	byte ptr [rbp - 0x91], 1
	jne	.label_1616
.label_1808:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_1661:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1628
	test	byte ptr [rbp - 0x91], 1
	jne	.label_1628
	jmp	.label_1674
.label_1674:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1634
	jmp	.label_1625
.label_1634:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1637
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1637
	jmp	.label_1642
.label_1642:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1644
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1644:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1651
.label_1651:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1656
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1656:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1664
.label_1664:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1670
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1670:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1637:
	jmp	.label_1678
.label_1678:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1679
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1679:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1766
.label_1766:
	jmp	.label_1687
.label_1687:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1688
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_1688:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1696
.label_1696:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1699
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_1699:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_1702
.label_1628:
	test	byte ptr [rbp - 0x81], 1
	je	.label_1708
	jmp	.label_1710
.label_1710:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1712
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1712:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_1708:
	jmp	.label_1702
.label_1702:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_1721
	jmp	.label_1726
.label_1721:
	jmp	.label_1728
.label_1728:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_1684
	test	byte ptr [rbp - 0x82], 1
	jne	.label_1684
	jmp	.label_1735
.label_1735:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1736
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1736:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1739
.label_1739:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1742
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1742:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1684:
	jmp	.label_1749
.label_1749:
	jmp	.label_1750
.label_1750:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1753
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_1753:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 1]
	mov	byte ptr [rbp - 0x7f], dl
	jmp	.label_1661
.label_1726:
	jmp	.label_1629
.label_1616:
	jmp	.label_1612
.label_1612:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1763
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1764
.label_1763:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1765
.label_1764:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1765
	movzx	eax, byte ptr [rbp - 0x7f]
	mov	ecx, eax
	shr	rcx, 5
	mov	rdx, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rdx + rcx*4]
	movzx	esi, byte ptr [rbp - 0x7f]
	mov	ecx, esi
	and	rcx, 0x1f
	mov	esi, ecx
	mov	ecx, esi
	shr	eax, cl
	and	eax, 1
	cmp	eax, 0
	jne	.label_1754
.label_1765:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_1754
	jmp	.label_1629
.label_1754:
	jmp	.label_1780
.label_1780:
	jmp	.label_1797
.label_1797:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1782
	jmp	.label_1625
.label_1782:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1784
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1784
	jmp	.label_1788
.label_1788:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1715
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1715:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1793
.label_1793:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1796
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1796:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1802
.label_1802:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1806
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1806:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1784:
	jmp	.label_1613
.label_1613:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1615
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1615:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1622
.label_1622:
	jmp	.label_1629
.label_1629:
	jmp	.label_1705
.label_1705:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_1630
	test	byte ptr [rbp - 0x82], 1
	jne	.label_1630
	jmp	.label_1635
.label_1635:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1636
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1636:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1640
.label_1640:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1647
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1647:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1630:
	jmp	.label_1659
.label_1659:
	jmp	.label_1662
.label_1662:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1654
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_1654:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_1695
	mov	byte ptr [rbp - 0x7e], 0
.label_1695:
	jmp	.label_1673
.label_1673:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_1677
.label_1731:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_1680
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1680
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1680
	jmp	.label_1625
.label_1680:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1689
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1689
	test	byte ptr [rbp - 0x7d], 1
	je	.label_1689
	test	byte ptr [rbp - 0x7e], 1
	je	.label_1693
	mov	r8d, 5
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x40]
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1701
.label_1693:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1703
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_1703
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_1707
.label_1703:
	jmp	.label_1760
.label_1760:
	jmp	.label_1689
.label_1689:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_1713
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1713
	jmp	.label_1733
.label_1733:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_1718
	jmp	.label_1610
.label_1610:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1619
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_1619:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1769
.label_1769:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1733
.label_1718:
	jmp	.label_1713
.label_1713:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1737
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_1737:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1701
.label_1625:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1744
	test	byte ptr [rbp - 0x79], 1
	je	.label_1744
	mov	dword ptr [rbp - 0x34], 4
.label_1744:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rbp - 0x34]
	mov	r9d, dword ptr [rbp - 0x38]
	and	r9d, 0xfffffffd
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x148], rcx
	mov	rcx, r8
	mov	r8d, eax
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x10], rax
.label_1701:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4156f0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_alloc_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415730

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1810
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1811
.label_1810:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1811
.label_1811:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, 1
	xor	esi, esi
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], edi
	mov	rax, qword ptr [rbp - 0x30]
	mov	edi, dword ptr [rax + 4]
	cmp	qword ptr [rbp - 0x20], 0
	cmovne	ecx, esi
	or	edi, ecx
	mov	dword ptr [rbp - 0x38], edi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [r8]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	r10, qword ptr [rbp - 0x30]
	add	r10, 8
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x28]
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rbx, qword ptr [rbx + 0x30]
	mov	rdi, rdx
	mov	rsi, rdx
	mov	rdx, rax
	mov	qword ptr [rsp], r10
	mov	qword ptr [rsp + 8], r11
	mov	qword ptr [rsp + 0x10], rbx
	call	quotearg_buffer_restyled
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	r8d, dword ptr [rbp - 0x34]
	mov	qword ptr [rbp - 0x58], rax
	mov	dword ptr [rbp - 0x5c], r8d
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x5c]
	mov	dword ptr [rax], r8d
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1812
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1812:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415890
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_1816:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_1815
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1816
.label_1815:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_1817
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_1814]],  rax
.label_1817:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_1813
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_1813:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415970

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdx, -1
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4159b0

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], edi
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 0x30], rax
	cmp	dword ptr [rbp - 4], 0
	jge	.label_1818
	call	abort
.label_1818:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_1822
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_1825
	call	xalloc_die
.label_1825:
	test	byte ptr [rbp - 0x31], 1
	je	.label_1821
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_1824
.label_1821:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_1824:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	movsxd	rdx, ecx
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rdx
	call	xrealloc
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [word ptr [slotvec]],  rax
	test	byte ptr [rbp - 0x31], 1
	je	.label_1823
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_1814]]
	mov	qword ptr [rax + 8], rcx
.label_1823:
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x30]
	movsxd	rcx,  dword ptr [dword ptr [nslots]]
	shl	rcx, 4
	add	rax, rcx
	mov	edx, dword ptr [rbp - 4]
	add	edx, 1
	sub	edx,  dword ptr [dword ptr [nslots]]
	movsxd	rcx, edx
	shl	rcx, 4
	mov	rdi, rax
	mov	rdx, rcx
	call	memset
	mov	esi, dword ptr [rbp - 4]
	add	esi, 1
	mov	dword ptr [dword ptr [nslots]],  esi
.label_1822:
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	or	ecx, 1
	mov	dword ptr [rbp - 0x4c], ecx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x58]
	ja	.label_1819
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_1820
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_1820:
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	movsxd	rdi, dword ptr [rbp - 4]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rdi + 8], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x68], rax
.label_1819:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x6c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415c30

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415c70
	.globl quotearg
	.type quotearg, @function
quotearg:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quotearg_n
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415c90
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415cc0

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x48]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415d00

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rax, rdi
	xor	ecx, ecx
	mov	edx, 0x38
	lea	r8, [rbp - 0x40]
	mov	dword ptr [rbp - 4], esi
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, r8
	mov	esi, ecx
	mov	qword ptr [rbp - 0x50], rax
	call	memset
	cmp	dword ptr [rbp - 4], 0xa
	jne	.label_1826
	call	abort
.label_1826:
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x40], eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x50]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415d70

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x50]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rcx, [rbp - 0x50]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415db0

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_style
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415de0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_style_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415e10

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	al, dl
	lea	rcx, [rbp - 0x50]
	mov	edx, 1
	movabs	r8, OFFSET FLAT:default_quoting_options
	mov	r9d, 0x38
	mov	r10d, r9d
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x11], al
	mov	rsi, rcx
	mov	rdi, rsi
	mov	rsi, r8
	mov	dword ptr [rbp - 0x54], edx
	mov	rdx, r10
	mov	qword ptr [rbp - 0x60], rcx
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	movsx	esi, byte ptr [rbp - 0x11]
	mov	edx, dword ptr [rbp - 0x54]
	call	set_char_quoting
	xor	edi, edi
	lea	rcx, [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x64], eax
	call	quotearg_n_options
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415e90

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, sil
	mov	rsi, -1
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rbp - 9]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415ec0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	esi, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	quotearg_char
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415ee0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edx, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415f10

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rax, [rbp - 0x80]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rax, [rbp - 0x48]
	mov	esi, 0x3a
	mov	edx, 1
	mov	ecx, 0x38
	mov	edi, ecx
	lea	r8, [rbp - 0x80]
	mov	r9, rax
	mov	qword ptr [rbp - 0x88], rdi
	mov	rdi, r9
	mov	dword ptr [rbp - 0x8c], esi
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x90], edx
	mov	rdx, r8
	mov	qword ptr [rbp - 0x98], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x98]
	mov	esi, dword ptr [rbp - 0x8c]
	mov	edx, dword ptr [rbp - 0x90]
	call	set_char_quoting
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x9c], eax
	call	quotearg_n_options
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415fc0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	r8, -1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416000

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rax, [rbp - 0x60]
	movabs	r9, OFFSET FLAT:default_quoting_options
	mov	r10d, 0x38
	mov	r11d, r10d
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, rax
	mov	rdi, rcx
	mov	rsi, r9
	mov	rdx, r11
	mov	qword ptr [rbp - 0x68], rax
	call	memcpy
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x68]
	call	set_custom_quoting
	lea	rcx, [rbp - 0x60]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	quotearg_n_options
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416080
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_custom
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4160b0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	edi, eax
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4160f0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:quote_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416130
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quote_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416160

	.globl quote_n
	.type quote_n, @function
quote_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdx, -1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quote_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416190

	.globl quote
	.type quote, @function
quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quote_n
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4161b0

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	call	gettext
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_1828
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1833
.label_1828:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_1829
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1827
	movabs	rax, OFFSET FLAT:label_1831
	movabs	rcx, OFFSET FLAT:label_1832
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1833
.label_1827:
	movabs	rsi, OFFSET FLAT:label_1836
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1830
	movabs	rax, OFFSET FLAT:label_1834
	movabs	rcx, OFFSET FLAT:label_1835
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1833
.label_1830:
	movabs	rax, OFFSET FLAT:label_1650
	movabs	rcx, OFFSET FLAT:label_1632
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_1833:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4162b0

	.globl randread_new
	.type randread_new, @function
randread_new:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1841
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, rcx
	mov	rsi, rcx
	call	simple_new
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1843
.label_1841:
	mov	qword ptr [rbp - 0x20], 0
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1837
	movabs	rsi, OFFSET FLAT:label_1838
	mov	rdi, qword ptr [rbp - 0x10]
	call	fopen_safer
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jne	.label_1839
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1843
.label_1839:
	jmp	.label_1837
.label_1837:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	call	simple_new
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1842
	mov	eax, 0x1000
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	add	rdx, 0x18
	cmp	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rdx
	mov	qword ptr [rbp - 0x38], rdi
	jae	.label_1845
	mov	eax, 0x1000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x40], rcx
	jmp	.label_1840
.label_1845:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
.label_1840:
	mov	rax, qword ptr [rbp - 0x40]
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rcx, rax
	call	setvbuf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1844
.label_1842:
	mov	eax, 0x800
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x18], 0
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 0x18
	add	rcx, 8
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rcx
	call	get_nonce
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 0x18
	add	rcx, 8
	mov	rdi, rcx
	call	isaac_seed
.label_1844:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1843:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416400

	.globl simple_new
	.type simple_new, @function
simple_new:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 0x1038
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, rcx
	call	xmalloc
	movabs	rcx, OFFSET FLAT:randread_error
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 8], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416460

	.globl get_nonce
	.type get_nonce, @function
get_nonce:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	movabs	rax, OFFSET FLAT:label_1854
	xor	ecx, ecx
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, rax
	mov	esi, ecx
	mov	al, 0
	call	open
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x2c], eax
	cmp	ecx, dword ptr [rbp - 0x2c]
	jg	.label_1848
	mov	edi, dword ptr [rbp - 0x2c]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x8c], edi
	mov	qword ptr [rbp - 0x98], rsi
	jae	.label_1850
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_1856
.label_1850:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
.label_1856:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	edi, dword ptr [rbp - 0x8c]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdx, rax
	call	read
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jge	.label_1846
	mov	qword ptr [rbp - 0x28], 0
.label_1846:
	mov	edi, dword ptr [rbp - 0x2c]
	call	close
	mov	dword ptr [rbp - 0xa4], eax
.label_1848:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1849
	mov	eax, 0x10
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_1852
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0xb0], rcx
	jmp	.label_1858
.label_1852:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xb0], rax
.label_1858:
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rdi, [rbp - 0x40]
	xor	ecx, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x48], rax
	call	gettimeofday
	lea	rsi, [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x20]
	add	rdi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	dword ptr [rbp - 0xb4], eax
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x48]
	add	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rdx
.label_1849:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1851
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_1853
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0xc0], rcx
	jmp	.label_1860
.label_1853:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xc0], rax
.label_1860:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x58], rax
	call	getpid
	lea	rcx, [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0xc8], rsi
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0xc8]
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rcx
.label_1851:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1855
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_1857
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0xd0], rcx
	jmp	.label_1863
.label_1857:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xd0], rax
.label_1863:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x68], rax
	call	getppid
	lea	rcx, [rbp - 0x5c]
	mov	dword ptr [rbp - 0x5c], eax
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0xd8], rsi
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0xd8]
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x68]
	add	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rcx
.label_1855:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1859
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_1861
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0xe0], rcx
	jmp	.label_1865
.label_1861:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xe0], rax
.label_1865:
	mov	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0x78], rax
	call	getuid
	lea	rcx, [rbp - 0x6c]
	mov	dword ptr [rbp - 0x6c], eax
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0xe8], rsi
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0xe8]
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x78]
	add	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rcx
.label_1859:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1862
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_1864
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0xf0], rcx
	jmp	.label_1847
.label_1864:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xf0], rax
.label_1847:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0x88], rax
	call	getgid
	lea	rcx, [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0xf8], rsi
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0xf8]
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x88]
	add	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rcx
.label_1862:
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416810
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 8], rsi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416830
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x10], rsi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416850

	.globl randread
	.type randread, @function
randread:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	cmp	qword ptr [rdx], 0
	je	.label_1866
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	readsource
	jmp	.label_1867
.label_1866:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	readisaac
.label_1867:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4168b0

	.globl readsource
	.type readsource, @function
readsource:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_1868:
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	call	fread_unlocked
	mov	qword ptr [rbp - 0x20], rax
	call	__errno_location
	mov	r8d, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], r8d
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x18], rcx
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1870
	jmp	.label_1872
.label_1870:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_1869
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_1871
.label_1869:
	xor	eax, eax
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_1871
.label_1871:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x2c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx + 0x10]
	call	rax
	jmp	.label_1868
.label_1872:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416980

	.globl readisaac
	.type readisaac, @function
readisaac:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x20], rdx
.label_1874:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_1878
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	add	rdx, 0x820
	add	rdx, 0x800
	sub	rcx, qword ptr [rbp - 0x20]
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, rdx
	mov	rdx, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx], rcx
	jmp	.label_1876
.label_1878:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	add	rdx, 0x820
	add	rdx, 0x800
	sub	rcx, qword ptr [rbp - 0x20]
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsi, rdx
	mov	rdx, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x18], rdx
	mov	rcx, qword ptr [rbp - 0x10]
	and	rcx, 7
	cmp	rcx, 0
	jne	.label_1875
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_1877:
	mov	eax, 0x800
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x18]
	ja	.label_1879
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	isaac_refill
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x800
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x800
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1873
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], 0
	jmp	.label_1876
.label_1873:
	jmp	.label_1877
.label_1879:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x10], rax
.label_1875:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x820
	mov	rdi, rax
	mov	rsi, rcx
	call	isaac_refill
	mov	qword ptr [rbp - 0x20], 0x800
	jmp	.label_1874
.label_1876:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416b00

	.globl randread_free
	.type randread_free, @function
randread_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 0x1038
	mov	esi, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	explicit_bzero
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rsi
	call	free
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1880
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1881
.label_1880:
	xor	eax, eax
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1881
.label_1881:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416b70

	.globl randread_error
	.type randread_error, @function
randread_error:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_1882
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 0xc], edi
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], esi
	call	__errno_location
	cmp	dword ptr [rax], 0
	jne	.label_1883
	movabs	rdi, OFFSET FLAT:label_1885
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1886
.label_1883:
	movabs	rdi, OFFSET FLAT:label_1884
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
.label_1886:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	call	quote
	mov	edi, dword ptr [rbp - 0xc]
	mov	esi, dword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_1882:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x416c00

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x800]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x808]
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x810]
	add	rax, 1
	mov	qword ptr [rdi + 0x810], rax
	add	rsi, rax
	mov	qword ptr [rbp - 0x20], rsi
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_1888:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 0x15
	xor	rax, rcx
	xor	rax, 0xffffffffffffffff
	xor	rax, 0
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx + 0x400]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x38]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x40]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xb8], rax
	call	just
	shr	rax, 5
	mov	rcx, qword ptr [rbp - 0xb8]
	xor	rcx, rax
	xor	rcx, 0
	mov	rax, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rax + 0x408]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x50], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x50]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 0xc
	xor	rax, rcx
	xor	rax, 0
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx + 0x410]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x58]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x60], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x10], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x60]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc0], rax
	call	just
	shr	rax, 0x21
	mov	rcx, qword ptr [rbp - 0xc0]
	xor	rcx, rax
	xor	rcx, 0
	mov	rax, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rax + 0x418]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x68]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x70], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x18], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x70]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x68]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x20
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x20
	mov	qword ptr [rbp - 0x28], rax
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x400
	cmp	rax, rcx
	jb	.label_1888
	jmp	.label_1887
.label_1887:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 0x15
	xor	rax, rcx
	xor	rax, 0xffffffffffffffff
	xor	rax, 0
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx - 0x400]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x78], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x78]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x80], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x80]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc8], rax
	call	just
	shr	rax, 5
	mov	rcx, qword ptr [rbp - 0xc8]
	xor	rcx, rax
	xor	rcx, 0
	mov	rax, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rax - 0x3f8]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x88], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x88]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x90], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x90]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 0xc
	xor	rax, rcx
	xor	rax, 0
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx - 0x3f0]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x98], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x98]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x10], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0xa0]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x98]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xd0], rax
	call	just
	shr	rax, 0x21
	mov	rcx, qword ptr [rbp - 0xd0]
	xor	rcx, rax
	xor	rcx, 0
	mov	rax, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rax - 0x3e8]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0xa8]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x18], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0xb0]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0xa8]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x20
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x20
	mov	qword ptr [rbp - 0x28], rax
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x800
	cmp	rax, rcx
	jb	.label_1887
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x800], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x808], rax
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417140

	.globl ind
	.type ind, @function
ind:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x10]
	and	rdi, 0x7f8
	add	rsi, rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417190

	.globl just
	.type just, @function
just:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], -1
	mov	rdi, qword ptr [rbp - 8]
	and	rdi, qword ptr [rbp - 0x10]
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4171b0

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, 0x98f5704f6c44c0ab
	movabs	rcx, 0xae985bf2cbfc89ed
	movabs	rdx, 0x48fe4a0fa5a09315
	movabs	rsi, 0x82f053db8355e0ce
	movabs	r8, 0xb29b2e824a595524
	movabs	r9, 0x8c0ea5053d4712a0
	movabs	r10, 0xb9f8b322c73ac862
	movabs	r11, 0x647c4677a2884b7c
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], r11
	mov	qword ptr [rbp - 0x18], r10
	mov	qword ptr [rbp - 0x20], r9
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x38], rdx
	mov	qword ptr [rbp - 0x40], rcx
	mov	qword ptr [rbp - 0x48], rax
	mov	dword ptr [rbp - 0x4c], 0
.label_1890:
	cmp	dword ptr [rbp - 0x4c], 0x100
	jge	.label_1891
	movsxd	rax, dword ptr [rbp - 0x4c]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 1
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 2
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 3
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 4
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 5
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 6
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 7
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 0x48]
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 9
	xor	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	just
	shr	rax, 0x17
	xor	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x28], rcx
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 0xf
	xor	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x30], rcx
	mov	rdi, qword ptr [rbp - 0x28]
	call	just
	shr	rax, 0xe
	xor	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x38], rcx
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 0x14
	xor	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x40], rcx
	mov	rdi, qword ptr [rbp - 0x38]
	call	just
	shr	rax, 0x11
	xor	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x48], rcx
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 0xe
	xor	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 0x4c]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 1
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 2
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 3
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 4
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 5
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 6
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 7
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	eax, dword ptr [rbp - 0x4c]
	add	eax, 8
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_1890
.label_1891:
	mov	dword ptr [rbp - 0x50], 0
.label_1892:
	cmp	dword ptr [rbp - 0x50], 0x100
	jge	.label_1889
	movsxd	rax, dword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 1
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 2
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 3
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 4
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 5
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 6
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 0x48]
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 9
	xor	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	just
	shr	rax, 0x17
	xor	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x28], rcx
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 0xf
	xor	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x30], rcx
	mov	rdi, qword ptr [rbp - 0x28]
	call	just
	shr	rax, 0xe
	xor	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x38], rcx
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 0x14
	xor	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x40], rcx
	mov	rdi, qword ptr [rbp - 0x38]
	call	just
	shr	rax, 0x11
	xor	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x48], rcx
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 0xe
	xor	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 1
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 2
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 3
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 4
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 5
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 6
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	eax, dword ptr [rbp - 0x50]
	add	eax, 8
	mov	dword ptr [rbp - 0x50], eax
	jmp	.label_1892
.label_1889:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x810], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x808], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x800], 0
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417850

	.globl readtokens0_init
	.type readtokens0_init, @function
readtokens0_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	xor	eax, eax
	mov	ecx, eax
	movabs	rdx, OFFSET FLAT:malloc
	movabs	r8, OFFSET FLAT:free
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 8], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x10], 0
	mov	rdi, qword ptr [rbp - 8]
	add	rdi, 0x18
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	call	_obstack_begin
	xor	r9d, r9d
	mov	ecx, r9d
	movabs	rdx, OFFSET FLAT:malloc
	movabs	r8, OFFSET FLAT:free
	mov	rsi, qword ptr [rbp - 8]
	add	rsi, 0x70
	mov	rdi, rsi
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x1c], eax
	call	_obstack_begin
	xor	r9d, r9d
	mov	ecx, r9d
	movabs	rdx, OFFSET FLAT:malloc
	movabs	r8, OFFSET FLAT:free
	mov	rsi, qword ptr [rbp - 8]
	add	rsi, 0xc8
	mov	rdi, rsi
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x2c], eax
	call	_obstack_begin
	mov	dword ptr [rbp - 0x30], eax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417940
	.globl readtokens0_free
	.type readtokens0_free, @function
readtokens0_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	add	rdi, 0x18
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	cmp	rdi, rax
	jbe	.label_1893
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jae	.label_1893
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x18], rax
	jmp	.label_1896
.label_1893:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	_obstack_free
.label_1896:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x70
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x28], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, rcx
	jbe	.label_1897
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 0x20]
	jae	.label_1897
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x18], rax
	jmp	.label_1895
.label_1897:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	_obstack_free
.label_1895:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0xc8
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x38], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, rcx
	jbe	.label_1898
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx + 0x20]
	jae	.label_1898
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x18], rax
	jmp	.label_1894
.label_1898:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	call	_obstack_free
.label_1894:
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417a80

	.globl readtokens0
	.type readtokens0, @function
readtokens0:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
.label_1910:
	mov	rdi, qword ptr [rbp - 8]
	call	fgetc
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], -1
	jne	.label_1907
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x18
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1909
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x18
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 1
	jae	.label_1908
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x38]
	call	_obstack_newchunk
.label_1908:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rax + 0x18]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rax + 0x18], rdx
	mov	byte ptr [rcx], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	save_token
.label_1909:
	jmp	.label_1900
.label_1907:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x18
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], 1
	jae	.label_1903
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x50]
	call	_obstack_newchunk
.label_1903:
	mov	eax, dword ptr [rbp - 0x14]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rdx + 0x18]
	mov	rdi, rsi
	add	rdi, 1
	mov	qword ptr [rdx + 0x18], rdi
	mov	byte ptr [rsi], cl
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_1904
	mov	rdi, qword ptr [rbp - 0x10]
	call	save_token
.label_1904:
	jmp	.label_1910
.label_1900:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x70
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 8
	jae	.label_1899
	mov	eax, 8
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x68]
	call	_obstack_newchunk
.label_1899:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 8
	mov	qword ptr [rax + 0x18], rcx
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x70
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax + 0x18]
	cmp	rax, qword ptr [rbp - 0x98]
	jne	.label_1901
	mov	rax, qword ptr [rbp - 0x90]
	mov	cl, byte ptr [rax + 0x50]
	and	cl, 0xfd
	or	cl, 2
	mov	byte ptr [rax + 0x50], cl
.label_1901:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rdx + 0x18]
	sub	rdx, 0
	mov	rsi, qword ptr [rbp - 0x90]
	add	rdx, qword ptr [rsi + 0x30]
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rsi, qword ptr [rsi + 0x30]
	xor	rsi, 0xffffffffffffffff
	and	rdx, rsi
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x90]
	mov	qword ptr [rdx + 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rdx + 8]
	sub	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rdx + 0x20]
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rsi, qword ptr [rsi + 8]
	sub	rdx, rsi
	cmp	rcx, rdx
	jbe	.label_1902
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	qword ptr [rcx + 0x18], rax
.label_1902:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0xc8
	mov	qword ptr [rbp - 0xa8], rax
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rax + 0x18]
	cmp	rax, qword ptr [rbp - 0xb0]
	jne	.label_1905
	mov	rax, qword ptr [rbp - 0xa8]
	mov	cl, byte ptr [rax + 0x50]
	and	cl, 0xfd
	or	cl, 2
	mov	byte ptr [rax + 0x50], cl
.label_1905:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rdx, qword ptr [rdx + 0x18]
	sub	rdx, 0
	mov	rsi, qword ptr [rbp - 0xa8]
	add	rdx, qword ptr [rsi + 0x30]
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rsi, qword ptr [rsi + 0x30]
	xor	rsi, 0xffffffffffffffff
	and	rdx, rsi
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rdx + 0x18], rcx
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rdx, qword ptr [rdx + 8]
	sub	rcx, rdx
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rdx, qword ptr [rdx + 0x20]
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rsi, qword ptr [rsi + 8]
	sub	rdx, rsi
	cmp	rcx, rdx
	jbe	.label_1906
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx + 0x18], rax
.label_1906:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rdi, qword ptr [rbp - 8]
	call	ferror
	cmp	eax, 0
	setne	dl
	xor	dl, 0xff
	and	dl, 1
	movzx	eax, dl
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417e80

	.globl save_token
	.type save_token, @function
save_token:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	add	rdi, 0x18
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdi + 0x18]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	sub	rdi, rax
	mov	qword ptr [rbp - 0x20], rdi
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x18]
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_1911
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x50]
	and	cl, 0xfd
	or	cl, 2
	mov	byte ptr [rax + 0x50], cl
.label_1911:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx + 0x18]
	sub	rdx, 0
	mov	rsi, qword ptr [rbp - 0x30]
	add	rdx, qword ptr [rsi + 0x30]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rsi + 0x30]
	xor	rsi, 0xffffffffffffffff
	and	rdx, rsi
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx + 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx + 8]
	sub	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx + 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rsi + 8]
	sub	rdx, rsi
	cmp	rcx, rdx
	jbe	.label_1912
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x18], rax
.label_1912:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x70
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 8
	jae	.label_1913
	mov	eax, 8
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x48]
	call	_obstack_newchunk
.label_1913:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 8
	mov	qword ptr [rax + 0x18], rcx
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0xc8
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 8
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x78]
	jae	.label_1914
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x78]
	call	_obstack_newchunk
.label_1914:
	lea	rax, [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rsi, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x70]
	add	rax, qword ptr [rcx + 0x18]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax]
	add	rcx, 1
	mov	qword ptr [rax], rcx
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4180a0
	.globl mkstemp_safer
	.type mkstemp_safer, @function
mkstemp_safer:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	mkstemp
	mov	edi, eax
	call	fd_safer
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4180d0

	.globl mkostemp_safer
	.type mkostemp_safer, @function
mkostemp_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	mkostemp
	mov	esi, dword ptr [rbp - 0xc]
	mov	edi, eax
	call	fd_safer_flag
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418100

	.globl strnumcmp
	.type strnumcmp, @function
strnumcmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	dword ptr [rbp - 0x18], ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	ecx, dword ptr [rbp - 0x18]
	call	numcompare_0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418130

	.globl numcompare_0
	.type numcompare_0, @function
numcompare_0:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	dword ptr [rbp - 0x20], ecx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rsi]
	mov	byte ptr [rbp - 0x21], al
	mov	rsi, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rsi]
	mov	byte ptr [rbp - 0x22], al
	movzx	ecx, byte ptr [rbp - 0x21]
	cmp	ecx, 0x2d
	jne	.label_1924
	jmp	.label_1948
.label_1948:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x21]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x39], al
	je	.label_1952
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x39], cl
.label_1952:
	mov	al, byte ptr [rbp - 0x39]
	test	al, 1
	jne	.label_1948
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x2d
	je	.label_1987
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_1937
	jmp	.label_1966
.label_1966:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0x30
	je	.label_1966
	jmp	.label_1937
.label_1937:
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_1968
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1920
.label_1968:
	jmp	.label_1919
.label_1919:
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x22]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x3a], al
	je	.label_1921
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x3a], cl
.label_1921:
	mov	al, byte ptr [rbp - 0x3a]
	test	al, 1
	jne	.label_1930
	jmp	.label_1934
.label_1930:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	jmp	.label_1919
.label_1934:
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_1945
	jmp	.label_1949
.label_1949:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x30
	je	.label_1949
	jmp	.label_1945
.label_1945:
	xor	eax, eax
	movzx	ecx, byte ptr [rbp - 0x22]
	sub	ecx, 0x30
	cmp	ecx, 9
	setbe	dl
	and	dl, 1
	movzx	ecx, dl
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1920
.label_1987:
	jmp	.label_1958
.label_1958:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x22]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x3b], al
	je	.label_1974
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x3b], cl
.label_1974:
	mov	al, byte ptr [rbp - 0x3b]
	test	al, 1
	jne	.label_1958
	jmp	.label_1959
.label_1959:
	xor	eax, eax
	mov	cl, al
	movzx	eax, byte ptr [rbp - 0x21]
	movzx	edx, byte ptr [rbp - 0x22]
	cmp	eax, edx
	mov	byte ptr [rbp - 0x3c], cl
	jne	.label_1954
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	setbe	cl
	mov	byte ptr [rbp - 0x3c], cl
.label_1954:
	mov	al, byte ptr [rbp - 0x3c]
	test	al, 1
	jne	.label_1978
	jmp	.label_1929
.label_1978:
	jmp	.label_1932
.label_1932:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_1932
	jmp	.label_1944
.label_1944:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_1944
	jmp	.label_1959
.label_1929:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_1961
	movzx	eax, byte ptr [rbp - 0x22]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_1950
.label_1961:
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_1970
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	jbe	.label_1970
.label_1950:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cl, al
	movsx	edx, cl
	call	fraccompare
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1920
.label_1970:
	movzx	eax, byte ptr [rbp - 0x22]
	movzx	ecx, byte ptr [rbp - 0x21]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x28], eax
	mov	qword ptr [rbp - 0x30], 0
.label_1940:
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_1985
	jmp	.label_1915
.label_1915:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_1915
	jmp	.label_1983
.label_1983:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1940
.label_1985:
	mov	qword ptr [rbp - 0x38], 0
.label_1960:
	movzx	eax, byte ptr [rbp - 0x22]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_1969
	jmp	.label_1942
.label_1942:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_1942
	jmp	.label_1982
.label_1982:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1960
.label_1969:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	je	.label_1953
	mov	eax, 0xffffffff
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	rdx, qword ptr [rbp - 0x38]
	cmovb	eax, ecx
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1920
.label_1953:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1976
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1920
.label_1976:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1920
.label_1924:
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x2d
	jne	.label_1935
	jmp	.label_1926
.label_1926:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x22]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x3d], al
	je	.label_1986
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x3d], cl
.label_1986:
	mov	al, byte ptr [rbp - 0x3d]
	test	al, 1
	jne	.label_1926
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_1931
	jmp	.label_1936
.label_1936:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x30
	je	.label_1936
	jmp	.label_1931
.label_1931:
	movzx	eax, byte ptr [rbp - 0x22]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_1951
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1920
.label_1951:
	jmp	.label_1962
.label_1962:
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x21]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x3e], al
	je	.label_1964
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x3e], cl
.label_1964:
	mov	al, byte ptr [rbp - 0x3e]
	test	al, 1
	jne	.label_1972
	jmp	.label_1973
.label_1972:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	jmp	.label_1962
.label_1973:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_1917
	jmp	.label_1981
.label_1981:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0x30
	je	.label_1981
	jmp	.label_1917
.label_1917:
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	setbe	cl
	and	cl, 1
	movzx	eax, cl
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1920
.label_1935:
	jmp	.label_1928
.label_1928:
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x21]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x3f], al
	je	.label_1918
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x3f], cl
.label_1918:
	mov	al, byte ptr [rbp - 0x3f]
	test	al, 1
	jne	.label_1939
	jmp	.label_1943
.label_1939:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	jmp	.label_1928
.label_1943:
	jmp	.label_1956
.label_1956:
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x22]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x40], al
	je	.label_1957
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x40], cl
.label_1957:
	mov	al, byte ptr [rbp - 0x40]
	test	al, 1
	jne	.label_1967
	jmp	.label_1971
.label_1967:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	jmp	.label_1956
.label_1971:
	jmp	.label_1977
.label_1977:
	xor	eax, eax
	mov	cl, al
	movzx	eax, byte ptr [rbp - 0x21]
	movzx	edx, byte ptr [rbp - 0x22]
	cmp	eax, edx
	mov	byte ptr [rbp - 0x41], cl
	jne	.label_1979
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	setbe	cl
	mov	byte ptr [rbp - 0x41], cl
.label_1979:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_1984
	jmp	.label_1988
.label_1984:
	jmp	.label_1916
.label_1916:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_1916
	jmp	.label_1927
.label_1927:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_1927
	jmp	.label_1977
.label_1988:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_1941
	movzx	eax, byte ptr [rbp - 0x22]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_1946
.label_1941:
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_1955
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	jbe	.label_1955
.label_1946:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cl, al
	movsx	edx, cl
	call	fraccompare
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1920
.label_1955:
	movzx	eax, byte ptr [rbp - 0x21]
	movzx	ecx, byte ptr [rbp - 0x22]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x28], eax
	mov	qword ptr [rbp - 0x30], 0
.label_1933:
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_1963
	jmp	.label_1980
.label_1980:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_1980
	jmp	.label_1975
.label_1975:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1933
.label_1963:
	mov	qword ptr [rbp - 0x38], 0
.label_1923:
	movzx	eax, byte ptr [rbp - 0x22]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_1922
	jmp	.label_1925
.label_1925:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_1925
	jmp	.label_1938
.label_1938:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1923
.label_1922:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	je	.label_1947
	mov	eax, 1
	mov	ecx, 0xffffffff
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	rdx, qword ptr [rbp - 0x38]
	cmovb	eax, ecx
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1920
.label_1947:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1965
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1920
.label_1965:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
.label_1920:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4188c0

	.globl fraccompare
	.type fraccompare, @function
fraccompare:
	push	rbp
	mov	rbp, rsp
	mov	al, dl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	byte ptr [rbp - 0x19], al
	mov	rsi, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rsi]
	movsx	ecx, byte ptr [rbp - 0x19]
	cmp	edx, ecx
	jne	.label_1989
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	movsx	edx, byte ptr [rbp - 0x19]
	cmp	ecx, edx
	jne	.label_1989
	jmp	.label_1992
.label_1992:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	movsx	edx, byte ptr [rax + 1]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	movsx	esi, byte ptr [rax + 1]
	cmp	edx, esi
	jne	.label_2006
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	jbe	.label_2003
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1996
.label_2003:
	jmp	.label_1992
.label_2006:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_1995
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_1995
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rax]
	sub	ecx, edx
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_1996
.label_1995:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_1994
	jmp	.label_2001
.label_1994:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_1999
	jmp	.label_1993
.label_1999:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1996
.label_1989:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	movsx	edx, byte ptr [rax]
	movsx	esi, byte ptr [rbp - 0x19]
	cmp	edx, esi
	jne	.label_1991
	jmp	.label_2001
.label_2001:
	jmp	.label_1990
.label_1990:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x30
	jne	.label_2005
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1990
.label_2005:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	setbe	dl
	and	dl, 1
	movzx	ecx, dl
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_1996
.label_1991:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	movsx	edx, byte ptr [rax]
	movsx	esi, byte ptr [rbp - 0x19]
	cmp	edx, esi
	jne	.label_2004
	jmp	.label_1993
.label_1993:
	jmp	.label_1997
.label_1997:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x30
	jne	.label_1998
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1997
.label_1998:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rcx]
	sub	edx, 0x30
	cmp	edx, 9
	setbe	sil
	and	sil, 1
	movzx	edx, sil
	sub	eax, edx
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1996
.label_2004:
	jmp	.label_2000
.label_2000:
	jmp	.label_2002
.label_2002:
	mov	dword ptr [rbp - 4], 0
.label_1996:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418ac0

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_2007
	cmp	dword ptr [rbp - 4], 2
	jg	.label_2007
	mov	edi, dword ptr [rbp - 4]
	call	dup_safer
	mov	dword ptr [rbp - 8], eax
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], edi
	mov	edi, dword ptr [rbp - 4]
	call	close
	mov	edi, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	mov	dword ptr [rbp - 0x14], edi
	call	__errno_location
	mov	edi, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], edi
	mov	edi, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], edi
.label_2007:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418b20

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	rbp
	mov	rbp, rsp
	push	r14
	push	rbx
	sub	rsp, 0x180
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], r9
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2016
	movabs	rsi, OFFSET FLAT:label_2021
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_2025
.label_2016:
	movabs	rsi, OFFSET FLAT:label_2026
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_2025:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_2014
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, rcx
	call	gettext
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	esi, edx
	xor	edx, edx
	mov	r8b, dl
	mov	ecx, 0x7e3
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rdx, rax
	mov	al, r8b
	call	fprintf
	mov	ecx, OFFSET FLAT:label_2013
	mov	edi, ecx
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsi, rdx
	sub	rsi, 9
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x60], rdx
	mov	qword ptr [rbp - 0x68], rsi
	ja	.label_2022
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2009]]
	jmp	rcx
.label_2363:
	jmp	.label_2008
.label_2364:
	movabs	rdi, OFFSET FLAT:label_2015
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_2008
.label_2365:
	movabs	rdi, OFFSET FLAT:label_2012
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x80], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_2008
.label_2366:
	movabs	rdi, OFFSET FLAT:label_2011
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x90], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_2008
.label_2367:
	movabs	rdi, OFFSET FLAT:label_2019
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_2008
.label_2368:
	movabs	rdi, OFFSET FLAT:label_2024
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xb0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rdi
	mov	rdi, rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rsp], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_2008
.label_2369:
	movabs	rdi, OFFSET FLAT:label_2018
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc8], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xd0], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0xd8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rsp + 8], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_2008
.label_2370:
	movabs	rdi, OFFSET FLAT:label_2023
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xe8], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xf0], rdi
	mov	rdi, r11
	mov	qword ptr [rbp - 0xf8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xfc], eax
	jmp	.label_2008
.label_2371:
	movabs	rdi, OFFSET FLAT:label_2010
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x108], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x110], rdi
	mov	rdi, rbx
	mov	qword ptr [rbp - 0x118], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x11c], eax
	jmp	.label_2008
.label_2372:
	movabs	rdi, OFFSET FLAT:label_2017
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x128], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	r14, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x130], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x138], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x13c], eax
	jmp	.label_2008
.label_2022:
	movabs	rdi, OFFSET FLAT:label_2020
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x148], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	r14, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x150], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x158], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x15c], eax
.label_2008:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4190e0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_2029:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_2027
	jmp	.label_2028
.label_2028:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2029
.label_2027:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419150

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_2030:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_2034
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_2032
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_2031
.label_2032:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_2031:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_2034:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_2036
	jmp	.label_2035
.label_2036:
	jmp	.label_2033
.label_2033:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2030
.label_2035:
	lea	r8, [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419260

	.globl version_etc
	.type version_etc, @function
version_etc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1a0
	test	al, al
	movaps	xmmword ptr [rbp - 0x100], xmm7
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	qword ptr [rbp - 0x178], rdi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	qword ptr [rbp - 0x1a0], rsi
	je	.label_2037
	movaps	xmm0, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm7
.label_2037:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rsi, qword ptr [rbp - 0x198]
	mov	rdi, qword ptr [rbp - 0x1a0]
	mov	r8, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 8], r8
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdx, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rbp - 0x38], rdx
	mov	dword ptr [rbp - 0x3c], 0x30
	mov	dword ptr [rbp - 0x40], 0x20
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	r8, [rbp - 0x40]
	call	version_etc_va
	add	rsp, 0x1a0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4193d0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_2038
	call	gettext
	movabs	rsi, OFFSET FLAT:label_2040
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_2039
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_47
	movabs	rdx, OFFSET FLAT:label_40
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_2041
	mov	dword ptr [rbp - 8], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419460

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_2042
	call	xalloc_die
.label_2042:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4194b0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2043
	cmp	qword ptr [rbp - 8], 0
	je	.label_2043
	call	xalloc_die
.label_2043:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4194f0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_2044
	call	xalloc_die
.label_2044:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419540

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_2045
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2045
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2047
.label_2045:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2046
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2046
	call	xalloc_die
.label_2046:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_2047:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4195c0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_2048
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_2051
	mov	eax, 0x80
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	setne	sil
	xor	sil, 0xff
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_2051:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2049
	call	xalloc_die
.label_2049:
	jmp	.label_2050
.label_2048:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_2052
	call	xalloc_die
.label_2052:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_2050:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4196b0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4196d0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 1
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	x2nrealloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419700
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x10], rax
	call	memset
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419740

	.globl xcalloc
	.type xcalloc, @function
xcalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jb	.label_2053
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_2054
.label_2053:
	call	xalloc_die
.label_2054:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4197a0

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	call	xmalloc
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x18], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4197e0
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rax
	call	strlen
	add	rax, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	call	xmemdup
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419820

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_2055
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_137
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x419860
	.globl xmemcoll
	.type xmemcoll, @function
xmemcoll:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	memcoll
	mov	dword ptr [rbp - 0x24], eax
	call	__errno_location
	mov	r8d, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], r8d
	cmp	dword ptr [rbp - 0x28], 0
	je	.label_2056
	mov	edi, dword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	call	collate_error
.label_2056:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4198d0

	.globl collate_error
	.type collate_error, @function
collate_error:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:label_2057
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	esi, dword ptr [rbp - 4]
	mov	rdi, rax
	mov	dword ptr [rbp - 0x2c], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x2c]
	mov	rdx, rax
	mov	al, 0
	call	error
	movabs	rdi, OFFSET FLAT:label_2058
	call	gettext
	xor	esi, esi
	mov	edi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
	movabs	rdi, OFFSET FLAT:label_2059
	mov	esi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 0x30], esi
	call	gettext
	xor	edi, edi
	mov	esi, 8
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rax
	call	quotearg_n_style_mem
	mov	edi, 1
	mov	esi, 8
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x40], rax
	call	quotearg_n_style_mem
	xor	esi, esi
	mov	edi, dword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	r8, rax
	mov	al, 0
	call	error
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4199a0

	.globl xmemcoll0
	.type xmemcoll0, @function
xmemcoll0:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	memcoll0
	mov	dword ptr [rbp - 0x24], eax
	call	__errno_location
	mov	r8d, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], r8d
	cmp	dword ptr [rbp - 0x28], 0
	je	.label_2060
	mov	edi, dword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, 1
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, rax
	mov	r8, qword ptr [rbp - 0x30]
	call	collate_error
.label_2060:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419a20

	.globl xnanosleep
	.type xnanosleep, @function
xnanosleep:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movsd	qword ptr [rbp - 0x10], xmm0
	movsd	xmm0, qword ptr [rbp - 0x10]
	call	dtotimespec
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x18], rdx
.label_2064:
	call	__errno_location
	lea	rdi, [rbp - 0x20]
	xor	ecx, ecx
	mov	esi, ecx
	mov	dword ptr [rax], 0
	call	rpl_nanosleep
	cmp	eax, 0
	jne	.label_2065
	jmp	.label_2061
.label_2065:
	call	__errno_location
	cmp	dword ptr [rax], 4
	je	.label_2063
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_2063
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2062
.label_2063:
	jmp	.label_2064
.label_2061:
	mov	dword ptr [rbp - 4], 0
.label_2062:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419ab0

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_2099
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_2099
	jmp	.label_2104
.label_2099:
	movabs	rdi, OFFSET FLAT:label_2105
	movabs	rsi, OFFSET FLAT:label_2106
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_2107
	call	__assert_fail
.label_2104:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2072
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2075
.label_2072:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2075
.label_2075:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_2090:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_2088
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_2090
.label_2088:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_2097
	mov	dword ptr [rbp - 4], 4
	jmp	.label_2076
.label_2097:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoul
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_2101
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_2071
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_2071
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_2071
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_2074
.label_2071:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_2076
.label_2074:
	jmp	.label_2079
.label_2101:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_2081
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_2085
	mov	dword ptr [rbp - 4], 4
	jmp	.label_2076
.label_2085:
	mov	dword ptr [rbp - 0x4c], 1
.label_2081:
	jmp	.label_2079
.label_2079:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_2087
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_2076
.label_2087:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_2080
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_2100
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_2076
.label_2100:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_2069
	jmp	.label_2067
.label_2067:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_2069
	jmp	.label_2073
.label_2073:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_2069
	jmp	.label_2078
.label_2078:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_2069
	jmp	.label_2083
.label_2083:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_2069
	jmp	.label_2108
.label_2108:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_2069
	jmp	.label_2089
.label_2089:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_2069
	jmp	.label_2091
.label_2091:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_2069
	jmp	.label_2098
.label_2098:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_2069
	jmp	.label_2103
.label_2103:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_2069
	jmp	.label_2102
.label_2102:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_2095
	jmp	.label_2069
.label_2069:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_2093
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_2070
	jmp	.label_2077
.label_2077:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_2070
	jmp	.label_2082
.label_2082:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_2084
	jmp	.label_2086
.label_2086:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_2092
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_2092:
	jmp	.label_2084
.label_2070:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_2084:
	jmp	.label_2093
.label_2093:
	jmp	.label_2095
.label_2095:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xc0], rax
	mov	dword ptr [rbp - 0xc4], ecx
	ja	.label_2096
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2094]]
	jmp	rcx
.label_2438:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2066
.label_2429:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2066
.label_2439:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_2066
.label_2430:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2066
.label_2431:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2066
.label_2432:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2066
.label_2433:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2066
.label_2434:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2066
.label_2435:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2066
.label_2440:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2066
.label_2436:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2066
.label_2437:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2066
.label_2096:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_2076
.label_2066:
	mov	eax, dword ptr [rbp - 0x68]
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx]
	cmp	byte ptr [rcx], 0
	je	.label_2068
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_2068:
	jmp	.label_2080
.label_2080:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_2076:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a060

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	movsxd	rdi, dword ptr [rbp - 0x14]
	xor	esi, esi
	mov	edx, esi
	div	rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdi]
	jae	.label_2109
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2110
.label_2109:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_2110:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a0c0

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	dword ptr [rbp - 0x14], 0
.label_2112:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_2111
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2112
.label_2111:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a110

	.globl xstrtol_fatal
	.type xstrtol_fatal, @function
xstrtol_fatal:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dl
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x20], r8
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, byte ptr [rbp - 9]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9d,  dword ptr [dword ptr [exit_failure]]
	movsx	edx, al
	call	xstrtol_error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x41a160

	.globl xstrtol_error
	.type xstrtol_error, @function
xstrtol_error:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, dl
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x20], r8
	mov	dword ptr [rbp - 0x24], r9d
	mov	qword ptr [word ptr [rbp - 48]], OFFSET FLAT:label_2113
	mov	edx, dword ptr [rbp - 4]
	mov	esi, edx
	sub	esi, 1
	mov	dword ptr [rbp - 0x48], edx
	mov	dword ptr [rbp - 0x4c], esi
	je	.label_2114
	jmp	.label_2125
.label_2125:
	mov	eax, dword ptr [rbp - 0x48]
	add	eax, -2
	sub	eax, 2
	mov	dword ptr [rbp - 0x50], eax
	jb	.label_2115
	jmp	.label_2122
.label_2122:
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 4
	mov	dword ptr [rbp - 0x54], eax
	je	.label_2124
	jmp	.label_2119
.label_2119:
	call	abort
.label_2124:
	movabs	rax, OFFSET FLAT:label_2121
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2117
.label_2115:
	movabs	rax, OFFSET FLAT:label_2116
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2117
.label_2114:
	movabs	rax, OFFSET FLAT:label_2123
	mov	qword ptr [rbp - 0x38], rax
.label_2117:
	cmp	dword ptr [rbp - 8], 0
	jge	.label_2118
	lea	rax, [rbp - 0x42]
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x30]
	movsxd	rdi, ecx
	sub	rdx, rdi
	add	rsi, rdx
	mov	qword ptr [rbp - 0x30], rsi
	mov	r8b, byte ptr [rbp - 9]
	mov	byte ptr [rbp - 0x42], r8b
	mov	byte ptr [rbp - 0x41], 0
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2120
.label_2118:
	movsxd	rax, dword ptr [rbp - 8]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
.label_2120:
	mov	edi, dword ptr [rbp - 0x24]
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x58], edi
	mov	rdi, rax
	call	gettext
	xor	esi, esi
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0x40]
	mov	r9, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rbp - 0x58]
	mov	rdx, rax
	mov	al, 0
	call	error
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a290

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_2154
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_2154
	jmp	.label_2161
.label_2154:
	movabs	rdi, OFFSET FLAT:label_2105
	movabs	rsi, OFFSET FLAT:label_2106
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_2162
	call	__assert_fail
.label_2161:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2159
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2126
.label_2159:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2126
.label_2126:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_2146:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_2143
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_2146
.label_2143:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_2152
	mov	dword ptr [rbp - 4], 4
	jmp	.label_2127
.label_2152:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoumax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_2157
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_2160
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_2160
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_2160
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_2166
.label_2160:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_2127
.label_2166:
	jmp	.label_2131
.label_2157:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_2134
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_2138
	mov	dword ptr [rbp - 4], 4
	jmp	.label_2127
.label_2138:
	mov	dword ptr [rbp - 0x4c], 1
.label_2134:
	jmp	.label_2131
.label_2131:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_2142
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_2127
.label_2142:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_2133
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_2155
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_2127
.label_2155:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_2130
	jmp	.label_2163
.label_2163:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_2130
	jmp	.label_2165
.label_2165:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_2130
	jmp	.label_2128
.label_2128:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_2130
	jmp	.label_2136
.label_2136:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_2130
	jmp	.label_2156
.label_2156:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_2130
	jmp	.label_2144
.label_2144:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_2130
	jmp	.label_2147
.label_2147:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_2130
	jmp	.label_2153
.label_2153:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_2130
	jmp	.label_2158
.label_2158:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_2130
	jmp	.label_2139
.label_2139:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_2150
	jmp	.label_2130
.label_2130:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_2149
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_2145
	jmp	.label_2140
.label_2140:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_2145
	jmp	.label_2135
.label_2135:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_2137
	jmp	.label_2141
.label_2141:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_2129
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_2129:
	jmp	.label_2137
.label_2145:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_2137:
	jmp	.label_2149
.label_2149:
	jmp	.label_2150
.label_2150:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xc0], rax
	mov	dword ptr [rbp - 0xc4], ecx
	ja	.label_2151
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2148]]
	jmp	rcx
.label_2607:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2132
.label_2598:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2132
.label_2608:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_2132
.label_2599:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2132
.label_2600:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2132
.label_2601:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2132
.label_2602:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2132
.label_2603:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2132
.label_2604:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2132
.label_2609:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2132
.label_2605:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2132
.label_2606:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2132
.label_2151:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_2127
.label_2132:
	mov	eax, dword ptr [rbp - 0x68]
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx]
	cmp	byte ptr [rcx], 0
	je	.label_2164
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_2164:
	jmp	.label_2133
.label_2133:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_2127:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a840

	.globl bkm_scale_0
	.type bkm_scale_0, @function
bkm_scale_0:
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	movsxd	rdi, dword ptr [rbp - 0x14]
	xor	esi, esi
	mov	edx, esi
	div	rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdi]
	jae	.label_2167
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2168
.label_2167:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_2168:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a8a0

	.globl bkm_scale_by_power_0
	.type bkm_scale_by_power_0, @function
bkm_scale_by_power_0:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	dword ptr [rbp - 0x14], 0
.label_2170:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_2169
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale_0
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2170
.label_2169:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a8f0

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	esi, eax
	call	memset
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a920

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], 0
	mov	dword ptr [rbp - 0x1c], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	dword ptr [rbp - 0x18], eax
	cmp	dword ptr [rbp - 0x18], 0
	jge	.label_2171
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2174
.label_2171:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_2172
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_2173
.label_2172:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_2173
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_2173:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_2175
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_2175:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_2174:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a9f0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x240
	test	al, al
	movaps	xmmword ptr [rbp - 0x100], xmm7
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	dword ptr [rbp - 0x174], edi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	dword ptr [rbp - 0x19c], esi
	je	.label_2202
	movaps	xmm0, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm7
.label_2202:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0xd8], rdx
	mov	rsi, qword ptr [rbp - 0x198]
	mov	qword ptr [rbp - 0xe0], rsi
	mov	edi, dword ptr [rbp - 0x19c]
	mov	r8d, dword ptr [rbp - 0x174]
	mov	dword ptr [rbp - 4], r8d
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 0x24], 0xffffffff
	lea	r9, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x10], r9
	lea	r9, [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], r9
	mov	dword ptr [rbp - 0x1c], 0x30
	mov	dword ptr [rbp - 0x20], 0x10
	mov	edi, dword ptr [rbp - 8]
	test	edi, edi
	mov	dword ptr [rbp - 0x1a0], edi
	je	.label_2190
	jmp	.label_2192
.label_2192:
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_2194
	jmp	.label_2198
.label_2190:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_2200
	mov	eax, dword ptr [rbp - 0x1b4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1c0], rcx
	jmp	.label_2181
.label_2200:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_2181:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2195
.label_2194:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1c8], rax
	mov	dword ptr [rbp - 0x1cc], ecx
	ja	.label_2178
	mov	eax, dword ptr [rbp - 0x1cc]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1d8], rcx
	jmp	.label_2180
.label_2178:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_2180:
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x2c]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2195
.label_2198:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	mov	dword ptr [rbp - 0x1dc], eax
	je	.label_2179
	jmp	.label_2205
.label_2205:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	mov	dword ptr [rbp - 0x1e0], eax
	je	.label_2176
	jmp	.label_2184
.label_2184:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_2179
	jmp	.label_2187
.label_2187:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	mov	dword ptr [rbp - 0x1e8], eax
	je	.label_2176
	jmp	.label_2191
.label_2191:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	mov	dword ptr [rbp - 0x1ec], eax
	je	.label_2179
	jmp	.label_2196
.label_2196:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	je	.label_2179
	jmp	.label_2206
.label_2206:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_2176
	jmp	.label_2185
.label_2185:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_2179
	jmp	.label_2188
.label_2188:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xb
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_2176
	jmp	.label_2193
.label_2193:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	dword ptr [rbp - 0x200], eax
	je	.label_2179
	jmp	.label_2197
.label_2197:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_2176
	jmp	.label_2177
.label_2177:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x402
	mov	dword ptr [rbp - 0x208], eax
	je	.label_2179
	jmp	.label_2186
.label_2186:
	mov	eax, dword ptr [rbp - 0x1dc]
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_2179
	jmp	.label_2201
.label_2201:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	jne	.label_2189
	jmp	.label_2176
.label_2176:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2199
.label_2179:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	dword ptr [rbp - 0x21c], ecx
	ja	.label_2203
	mov	eax, dword ptr [rbp - 0x21c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x218]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x228], rcx
	jmp	.label_2182
.label_2203:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x228], rdx
.label_2182:
	mov	rax, qword ptr [rbp - 0x228]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x30]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2199
.label_2189:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x230], rax
	mov	dword ptr [rbp - 0x234], ecx
	ja	.label_2204
	mov	eax, dword ptr [rbp - 0x234]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x230]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x240], rcx
	jmp	.label_2183
.label_2204:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x240], rdx
.label_2183:
	mov	rax, qword ptr [rbp - 0x240]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
.label_2199:
	jmp	.label_2195
.label_2195:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x240
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41af10

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	esi, eax
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0xc], eax
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41af40

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	cmp	eax,  dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]]
	jg	.label_2207
	mov	esi, 0x406
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	xor	edx, edx
	mov	dword ptr [rbp - 0xc], eax
	cmp	edx, dword ptr [rbp - 0xc]
	jle	.label_2215
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_2208
.label_2215:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_2210
.label_2208:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	jl	.label_2213
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_2213:
	jmp	.label_2210
.label_2210:
	jmp	.label_2209
.label_2207:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
.label_2209:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_2211
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_2211
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x10], eax
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_2214
	mov	esi, 2
	mov	edi, dword ptr [rbp - 0xc]
	mov	eax, dword ptr [rbp - 0x10]
	or	eax, 1
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_2212
.label_2214:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
	mov	edi, dword ptr [rbp - 0xc]
	call	close
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x18], eax
	mov	dword ptr [rbp - 0x1c], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0xc], 0xffffffff
.label_2212:
	jmp	.label_2211
.label_2211:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b070

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2216
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_2217
.label_2216:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2218
.label_2217:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_2218:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b0d0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi]
	and	eax, 0x100
	cmp	eax, 0
	je	.label_2219
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_2219:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b110

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_2220
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_2220
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_2220
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_2222
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2221
.label_2222:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2221
.label_2220:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_2221:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b1e0

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2223
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_2223:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_2224
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2224
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_2224
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_2225
.label_2224:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_2225:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b290

	.globl rpl_nanosleep
	.type rpl_nanosleep, @function
rpl_nanosleep:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rsi + 8], 0
	jl	.label_2230
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rdx + 8]
	jg	.label_2229
.label_2230:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2228
.label_2229:
	mov	qword ptr [rbp - 0x20], 0x1fa400
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
.label_2227:
	mov	eax, 0x1fa400
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x28]
	jge	.label_2231
	lea	rdi, [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], 0x1fa400
	mov	rsi, qword ptr [rbp - 0x18]
	call	nanosleep
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsi, qword ptr [rbp - 0x28]
	sub	rsi, 0x1fa400
	mov	qword ptr [rbp - 0x28], rsi
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_2226
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2232
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
.label_2232:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2228
.label_2226:
	mov	qword ptr [rbp - 0x30], 0
	jmp	.label_2227
.label_2231:
	lea	rdi, [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsi, qword ptr [rbp - 0x18]
	call	nanosleep
	mov	dword ptr [rbp - 4], eax
.label_2228:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b390

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	add	edi, 0xffffd828
	sub	edi, 0xb
	mov	dword ptr [rbp - 8], edi
	ja	.label_2233
	jmp	.label_2235
.label_2235:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2234
.label_2233:
	jmp	.label_2234
.label_2234:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b3e0

	.globl _obstack_begin
	.type _obstack_begin, @function
_obstack_begin:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x40], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	al, byte ptr [rcx + 0x50]
	and	al, 0xfe
	mov	byte ptr [rcx + 0x50], al
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	_obstack_begin_worker
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b440

	.globl _obstack_begin_worker
	.type _obstack_begin_worker, @function
_obstack_begin_worker:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_2236
	mov	qword ptr [rbp - 0x18], 0x10
.label_2236:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2238
	mov	eax, 0x1000
	mov	dword ptr [rbp - 0x24], 0x20
	sub	eax, dword ptr [rbp - 0x24]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x10], rcx
.label_2238:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rax]
	call	call_chunkfun
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_2237
	call	qword ptr [word ptr [obstack_alloc_failed_handler]]
.label_2237:
	mov	eax, 1
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x20]
	add	rsi, 0x10
	sub	rsi, 0
	mov	rdi, qword ptr [rbp - 0x18]
	sub	rdi, 1
	add	rsi, rdi
	mov	rdi, qword ptr [rbp - 0x18]
	sub	rdi, 1
	xor	rdi, 0xffffffffffffffff
	and	rsi, rdi
	add	rdx, rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x10], rdx
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 8]
	add	rdx, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi], rdx
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx + 8], 0
	mov	rdx, qword ptr [rbp - 8]
	mov	r8b, byte ptr [rdx + 0x50]
	and	r8b, 0xfd
	mov	byte ptr [rdx + 0x50], r8b
	mov	rdx, qword ptr [rbp - 8]
	mov	r8b, byte ptr [rdx + 0x50]
	and	r8b, 0xfb
	mov	byte ptr [rdx + 0x50], r8b
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b560

	.globl _obstack_begin_1
	.type _obstack_begin_1, @function
_obstack_begin_1:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x40], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x48], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	al, byte ptr [rcx + 0x50]
	and	al, 0xfe
	or	al, 1
	mov	byte ptr [rcx + 0x50], al
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	_obstack_begin_worker
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b5d0

	.globl _obstack_newchunk
	.type _obstack_newchunk, @function
_obstack_newchunk:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x10]
	sub	rsi, rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	add	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rsi
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rdi + 0x30]
	mov	qword ptr [rbp - 0x40], rsi
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x28]
	shr	rdi, 3
	add	rsi, rdi
	add	rsi, 0x64
	mov	qword ptr [rbp - 0x48], rsi
	mov	rsi, qword ptr [rbp - 0x48]
	cmp	rsi, qword ptr [rbp - 0x40]
	jae	.label_2241
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
.label_2241:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx]
	jae	.label_2242
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x48], rax
.label_2242:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	ja	.label_2239
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x40]
	ja	.label_2239
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	call	call_chunkfun
	mov	qword ptr [rbp - 0x20], rax
.label_2239:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_2243
	call	qword ptr [word ptr [obstack_alloc_failed_handler]]
.label_2243:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, 0x10
	sub	rdx, 0
	mov	rsi, qword ptr [rbp - 8]
	add	rdx, qword ptr [rsi + 0x30]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x30]
	xor	rsi, 0xffffffffffffffff
	and	rdx, rsi
	add	rcx, rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	call	memcpy
	mov	rcx, qword ptr [rbp - 8]
	mov	r8b, byte ptr [rcx + 0x50]
	shr	r8b, 1
	and	r8b, 1
	movzx	eax, r8b
	cmp	eax, 0
	jne	.label_2240
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, 0x10
	sub	rsi, 0
	mov	rdi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rdi + 0x30]
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x30]
	xor	rdi, 0xffffffffffffffff
	and	rsi, rdi
	add	rcx, rsi
	cmp	rdx, rcx
	jne	.label_2240
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	call_freefun
.label_2240:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	dl, byte ptr [rax + 0x50]
	and	dl, 0xfd
	mov	byte ptr [rax + 0x50], dl
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b7d0

	.globl call_chunkfun
	.type call_chunkfun, @function
call_chunkfun:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rsi + 0x50]
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	je	.label_2244
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + 0x48]
	mov	rsi, qword ptr [rbp - 0x18]
	call	rax
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2245
.label_2244:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	call	rax
	mov	qword ptr [rbp - 8], rax
.label_2245:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b830

	.globl call_freefun
	.type call_freefun, @function
call_freefun:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	al, byte ptr [rsi + 0x50]
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	je	.label_2246
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + 0x48]
	mov	rsi, qword ptr [rbp - 0x10]
	call	rax
	jmp	.label_2247
.label_2246:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rdi, qword ptr [rbp - 0x10]
	call	rax
.label_2247:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b890

	.globl _obstack_allocated_p
	.type _obstack_allocated_p, @function
_obstack_allocated_p:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x18], rsi
.label_2250:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_2249
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x22], al
	jae	.label_2251
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	setb	cl
	mov	byte ptr [rbp - 0x22], cl
.label_2251:
	mov	al, byte ptr [rbp - 0x22]
	mov	byte ptr [rbp - 0x21], al
.label_2249:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_2248
	jmp	.label_2252
.label_2248:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2250
.label_2252:
	cmp	qword ptr [rbp - 0x18], 0
	setne	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b920

	.globl _obstack_free
	.type _obstack_free, @function
_obstack_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x18], rsi
.label_2254:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_2260
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x22], al
	jae	.label_2257
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	setb	cl
	mov	byte ptr [rbp - 0x22], cl
.label_2257:
	mov	al, byte ptr [rbp - 0x22]
	mov	byte ptr [rbp - 0x21], al
.label_2260:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_2259
	jmp	.label_2253
.label_2259:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	call_freefun
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x50]
	and	cl, 0xfd
	or	cl, 2
	mov	byte ptr [rax + 0x50], cl
	jmp	.label_2254
.label_2253:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2255
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], rax
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_2256
.label_2255:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2258
	call	abort
.label_2258:
	jmp	.label_2256
.label_2256:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ba20

	.globl _obstack_memory_used
	.type _obstack_memory_used, @function
_obstack_memory_used:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	mov	qword ptr [rbp - 0x10], rdi
.label_2262:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2261
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2262
.label_2261:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ba80

	.globl print_and_abort
	.type print_and_abort, @function
print_and_abort:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_2055
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 8], rax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_114
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 0xc], eax
	call	exit
	.section	.text
	.align	16
	#Procedure 0x41bad0
	.globl rotl64
	.type rotl64, @function
rotl64:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	ecx, esi
	shl	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0xc]
	mov	eax, eax
	mov	ecx, eax
	shr	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41bb10
	.globl rotr64
	.type rotr64, @function
rotr64:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	ecx, esi
	shr	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0xc]
	mov	eax, eax
	mov	ecx, eax
	shl	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41bb50
	.globl rotl32
	.type rotl32, @function
rotl32:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 8]
	shl	esi, cl
	mov	edi, dword ptr [rbp - 4]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, eax
	shr	edi, cl
	or	esi, edi
	mov	eax, esi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41bb80
	.globl rotr32
	.type rotr32, @function
rotr32:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 8]
	shr	esi, cl
	mov	edi, dword ptr [rbp - 4]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, eax
	shl	edi, cl
	or	esi, edi
	mov	eax, esi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41bbb0
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 0xc]
	mov	edx, eax
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, rdx
	shl	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	movsxd	r8, dword ptr [rbp - 0xc]
	mov	r9, qword ptr [rbp - 0x18]
	sub	r9, r8
	mov	rcx, r9
	shr	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41bc00

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 0xc]
	mov	edx, eax
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, rdx
	shr	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	movsxd	r8, dword ptr [rbp - 0xc]
	mov	r9, qword ptr [rbp - 0x18]
	sub	r9, r8
	mov	rcx, r9
	shl	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41bc50
	.globl rotl16
	.type rotl16, @function
rotl16:

	push	rbp
	mov	rbp, rsp
	mov	ax, di
	mov	edi, 0x10
	mov	word ptr [rbp - 2], ax
	mov	dword ptr [rbp - 8], esi
	movzx	esi, word ptr [rbp - 2]
	mov	ecx, dword ptr [rbp - 8]
	shl	esi, cl
	movzx	edx, word ptr [rbp - 2]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	sar	edx, cl
	or	esi, edx
	and	esi, 0xffff
	mov	ax, si
	movzx	eax, ax
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41bc90
	.globl rotr16
	.type rotr16, @function
rotr16:

	push	rbp
	mov	rbp, rsp
	mov	ax, di
	mov	edi, 0x10
	mov	word ptr [rbp - 2], ax
	mov	dword ptr [rbp - 8], esi
	movzx	esi, word ptr [rbp - 2]
	mov	ecx, dword ptr [rbp - 8]
	sar	esi, cl
	movzx	edx, word ptr [rbp - 2]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	shl	edx, cl
	or	esi, edx
	and	esi, 0xffff
	mov	ax, si
	movzx	eax, ax
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41bcd0
	.globl rotl8
	.type rotl8, @function
rotl8:

	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	edi, 8
	mov	byte ptr [rbp - 1], al
	mov	dword ptr [rbp - 8], esi
	movzx	esi, byte ptr [rbp - 1]
	mov	ecx, dword ptr [rbp - 8]
	shl	esi, cl
	movzx	edx, byte ptr [rbp - 1]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	sar	edx, cl
	or	esi, edx
	and	esi, 0xff
	mov	al, sil
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41bd10
	.globl rotr8
	.type rotr8, @function
rotr8:

	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	edi, 8
	mov	byte ptr [rbp - 1], al
	mov	dword ptr [rbp - 8], esi
	movzx	esi, byte ptr [rbp - 1]
	mov	ecx, dword ptr [rbp - 8]
	sar	esi, cl
	movzx	edx, byte ptr [rbp - 1]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	shl	edx, cl
	or	esi, edx
	and	esi, 0xff
	mov	al, sil
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41bd50

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
	jb	.label_2263
	jmp	.label_2266
.label_2266:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_2263
	jmp	.label_2264
.label_2264:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_2265
	jmp	.label_2263
.label_2263:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2267
.label_2265:
	mov	byte ptr [rbp - 1], 0
.label_2267:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41bdc0

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
	jb	.label_2268
	jmp	.label_2271
.label_2271:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_2269
	jmp	.label_2268
.label_2268:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2270
.label_2269:
	mov	byte ptr [rbp - 1], 0
.label_2270:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41be10
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2272
	jmp	.label_2273
.label_2273:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2274
.label_2272:
	mov	byte ptr [rbp - 1], 0
.label_2274:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41be40
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_2275
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_2275:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41be70
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
	jb	.label_2276
	jmp	.label_2278
.label_2278:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_2279
	jmp	.label_2276
.label_2276:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2277
.label_2279:
	mov	byte ptr [rbp - 1], 0
.label_2277:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41bec0

	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2280
	jmp	.label_2282
.label_2282:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2281
.label_2280:
	mov	byte ptr [rbp - 1], 0
.label_2281:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41bf00
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2283
	jmp	.label_2285
.label_2285:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2284
.label_2283:
	mov	byte ptr [rbp - 1], 0
.label_2284:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41bf40
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2286
	jmp	.label_2288
.label_2288:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2287
.label_2286:
	mov	byte ptr [rbp - 1], 0
.label_2287:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41bf80
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2289
	jmp	.label_2291
.label_2291:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2290
.label_2289:
	mov	byte ptr [rbp - 1], 0
.label_2290:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41bfc0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	mov	eax, edi
	sub	edi, 0x5d
	mov	qword ptr [rbp - 0x10], rax
	mov	dword ptr [rbp - 0x14], edi
	ja	.label_2292
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2294]]
	jmp	rcx
.label_2543:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2293
.label_2292:
	mov	byte ptr [rbp - 1], 0
.label_2293:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c010

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
	jb	.label_2295
	jmp	.label_2298
.label_2298:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_2297
	jmp	.label_2295
.label_2295:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2296
.label_2297:
	mov	byte ptr [rbp - 1], 0
.label_2296:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c060
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2299
	jmp	.label_2301
.label_2301:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2300
.label_2299:
	mov	byte ptr [rbp - 1], 0
.label_2300:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c0a0
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
	jb	.label_2302
	jmp	.label_2305
.label_2305:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_2302
	jmp	.label_2303
.label_2303:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_2304
	jmp	.label_2302
.label_2302:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2306
.label_2304:
	mov	byte ptr [rbp - 1], 0
.label_2306:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c110

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2307
	jmp	.label_2309
.label_2309:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2308
.label_2307:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_2308:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c150
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2310
	jmp	.label_2312
.label_2312:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2311
.label_2310:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_2311:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c190

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rbp - 0x28]
	jne	.label_2313
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2317
.label_2313:
	jmp	.label_2314
.label_2314:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	edi, byte ptr [rax]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	mov	rdx, qword ptr [rbp - 0x28]
	movzx	edi, byte ptr [rdx]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x2a], cl
	movzx	eax, byte ptr [rbp - 0x29]
	cmp	eax, 0
	jne	.label_2316
	jmp	.label_2315
.label_2316:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_2314
.label_2315:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_2317:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c250

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	__fpending
	cmp	rax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x11], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	ferror_unlocked
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x12], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x13], cl
	test	byte ptr [rbp - 0x12], 1
	jne	.label_2318
	test	byte ptr [rbp - 0x13], 1
	je	.label_2319
	test	byte ptr [rbp - 0x11], 1
	jne	.label_2318
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_2319
.label_2318:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_2320
	call	__errno_location
	mov	dword ptr [rax], 0
.label_2320:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2321
.label_2319:
	mov	dword ptr [rbp - 4], 0
.label_2321:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c300

	.globl dtotimespec
	.type dtotimespec, @function
dtotimespec:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	movsd	xmm1,  qword ptr [word ptr [rip + label_2322]]
	movsd	qword ptr [rbp - 0x18], xmm0
	movsd	xmm0, qword ptr [rbp - 0x18]
	ucomisd	xmm0, xmm1
	ja	.label_2323
	movabs	rdi, 0x8000000000000000
	xor	eax, eax
	mov	esi, eax
	call	make_timespec
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [rbp - 8], rdx
	jmp	.label_2327
.label_2323:
	movsd	xmm0,  qword ptr [word ptr [rip + label_263]]
	ucomisd	xmm0, qword ptr [rbp - 0x18]
	ja	.label_2324
	movabs	rdi, 0x7fffffffffffffff
	mov	eax, 0x3b9ac9ff
	mov	esi, eax
	call	make_timespec
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [rbp - 8], rdx
	jmp	.label_2327
.label_2324:
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	movsd	xmm0,  qword ptr [word ptr [rip + label_2325]]
	cvttsd2si	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rdx
	movsd	xmm1, qword ptr [rbp - 0x18]
	cvtsi2sd	xmm2, qword ptr [rbp - 0x20]
	subsd	xmm1, xmm2
	mulsd	xmm0, xmm1
	movsd	qword ptr [rbp - 0x28], xmm0
	cvttsd2si	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rdx
	cvtsi2sd	xmm0, qword ptr [rbp - 0x30]
	movsd	xmm1, qword ptr [rbp - 0x28]
	ucomisd	xmm1, xmm0
	seta	sil
	and	sil, 1
	movzx	eax, sil
	movsxd	rdx, eax
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rax, qword ptr [rbp - 0x30]
	cqo	
	idiv	rcx
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x30]
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x30], rdx
	cmp	qword ptr [rbp - 0x30], 0
	jge	.label_2326
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x3b9aca00
	mov	qword ptr [rbp - 0x30], rax
.label_2326:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	call	make_timespec
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [rbp - 8], rdx
.label_2327:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c450

	.globl fd_safer_flag
	.type fd_safer_flag, @function
fd_safer_flag:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_2328
	cmp	dword ptr [rbp - 4], 2
	jg	.label_2328
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	dup_safer_flag
	mov	dword ptr [rbp - 0xc], eax
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], esi
	mov	edi, dword ptr [rbp - 4]
	call	close
	mov	esi, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x14], eax
	mov	dword ptr [rbp - 0x18], esi
	call	__errno_location
	mov	esi, dword ptr [rbp - 0x18]
	mov	dword ptr [rax], esi
	mov	esi, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 4], esi
.label_2328:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c4c0

	.globl dup_safer_flag
	.type dup_safer_flag, @function
dup_safer_flag:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edx, 3
	xor	eax, eax
	mov	ecx, 0x406
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	and	esi, 0x80000
	cmp	esi, 0
	cmovne	eax, ecx
	mov	esi, eax
	mov	al, 0
	call	rpl_fcntl
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c500

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fopen
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2332
	mov	rdi, qword ptr [rbp - 0x20]
	call	fileno
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x24], eax
	cmp	ecx, dword ptr [rbp - 0x24]
	jg	.label_2329
	cmp	dword ptr [rbp - 0x24], 2
	jg	.label_2329
	mov	edi, dword ptr [rbp - 0x24]
	call	dup_safer
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	jge	.label_2331
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	rdi, qword ptr [rbp - 0x20]
	call	rpl_fclose
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x34], eax
	mov	dword ptr [rbp - 0x38], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x38]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2330
.label_2331:
	mov	rdi, qword ptr [rbp - 0x20]
	call	rpl_fclose
	cmp	eax, 0
	jne	.label_2333
	mov	edi, dword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fdopen
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jne	.label_2334
.label_2333:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 0x28]
	call	close
	mov	ecx, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x3c], eax
	mov	dword ptr [rbp - 0x40], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x40]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2330
.label_2334:
	jmp	.label_2329
.label_2329:
	jmp	.label_2332
.label_2332:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_2330:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c610

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edi, 0xe
	call	rpl_nl_langinfo
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_2335
	movabs	rax, OFFSET FLAT:label_48
	mov	qword ptr [rbp - 8], rax
.label_2335:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_2336
	movabs	rax, OFFSET FLAT:label_2337
	mov	qword ptr [rbp - 8], rax
.label_2336:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c670

	.globl memcoll
	.type memcoll, @function
memcoll:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 0x20]
	jne	.label_2338
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	call	memcmp
	cmp	eax, 0
	jne	.label_2338
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	dword ptr [rbp - 0x24], 0
	jmp	.label_2339
.label_2338:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x25], dl
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x26], dl
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, 1
	mov	rsi, rax
	call	strcoll_loop
	mov	dword ptr [rbp - 0x24], eax
	mov	r8b, byte ptr [rbp - 0x25]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rdx + rcx], r8b
	mov	r8b, byte ptr [rbp - 0x26]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], r8b
.label_2339:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c750

	.globl strcoll_loop
	.type strcoll_loop, @function
strcoll_loop:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
.label_2341:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	strcoll
	mov	cl, 1
	mov	dword ptr [rbp - 0x2c], eax
	cmp	eax, 0
	mov	byte ptr [rbp - 0x41], cl
	jne	.label_2340
	call	__errno_location
	cmp	dword ptr [rax], 0
	setne	cl
	mov	byte ptr [rbp - 0x41], cl
.label_2340:
	mov	al, byte ptr [rbp - 0x41]
	xor	al, 0xff
	test	al, 1
	jne	.label_2346
	jmp	.label_2343
.label_2346:
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	sub	rdi, rax
	mov	qword ptr [rbp - 0x18], rdi
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x28]
	sub	rdi, rax
	mov	qword ptr [rbp - 0x28], rdi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_2342
	xor	eax, eax
	cmp	qword ptr [rbp - 0x28], 0
	setne	cl
	and	cl, 1
	movzx	edx, cl
	sub	eax, edx
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2345
.label_2342:
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_2344
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2345
.label_2344:
	jmp	.label_2341
.label_2343:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
.label_2345:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c860

	.globl memcoll0
	.type memcoll0, @function
memcoll0:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x28]
	jne	.label_2347
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcmp
	cmp	eax, 0
	jne	.label_2347
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2348
.label_2347:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	strcoll_loop
	mov	dword ptr [rbp - 4], eax
.label_2348:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c8e0

	.globl make_timespec
	.type make_timespec, @function
make_timespec:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rsi
	movups	xmm0, xmmword ptr [rbp - 0x30]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c910
	.globl timespec_cmp
	.type timespec_cmp, @function
timespec_cmp:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x28]
	jge	.label_2352
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2350
.label_2352:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x28]
	jle	.label_2353
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2350
.label_2353:
	mov	rax, -1
	cmp	rax, qword ptr [rbp - 0x10]
	jg	.label_2349
	cmp	qword ptr [rbp - 0x10], 0x77359400
	jg	.label_2349
	jmp	.label_2349
.label_2349:
	mov	rax, -1
	cmp	rax, qword ptr [rbp - 0x20]
	jg	.label_2351
	cmp	qword ptr [rbp - 0x20], 0x77359400
	jg	.label_2351
	jmp	.label_2351
.label_2351:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x20]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
.label_2350:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c9c0
	.globl timespec_sign
	.type timespec_sign, @function
timespec_sign:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	cmp	qword ptr [rbp - 0x10], 0
	jge	.label_2354
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2356
.label_2354:
	mov	al, 1
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x15], al
	jne	.label_2355
	cmp	qword ptr [rbp - 8], 0
	setne	al
	mov	byte ptr [rbp - 0x15], al
.label_2355:
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0x14], ecx
.label_2356:
	mov	eax, dword ptr [rbp - 0x14]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ca10
	.globl timespectod
	.type timespectod, @function
timespectod:

	push	rbp
	mov	rbp, rsp
	movsd	xmm0,  qword ptr [word ptr [rip + label_2325]]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	cvtsi2sd	xmm1, qword ptr [rbp - 0x10]
	cvtsi2sd	xmm2, qword ptr [rbp - 8]
	divsd	xmm2, xmm0
	addsd	xmm1, xmm2
	movaps	xmm0, xmm1
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ca40

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	esi, esi
	mov	edx, 3
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	mov	al, 0
	call	rpl_fcntl
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41cb20

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	16
	#Procedure 0x41cb30

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
