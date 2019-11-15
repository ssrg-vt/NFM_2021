	.section	.text
	.align	16
	#Procedure 0x402c50

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_8
	jmp	.label_9
.label_9:
	movabs	rdi, OFFSET FLAT:.str
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_7
.label_8:
	movabs	rdi, OFFSET FLAT:.str.1
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.2
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:.str.3
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.4
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.5
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.6
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.7
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.8
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.9
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.10
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.11
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.12
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.13
	mov	dword ptr [rbp - 0x44], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.14
	mov	dword ptr [rbp - 0x48], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.15
	mov	dword ptr [rbp - 0x4c], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.16
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.17
	mov	dword ptr [rbp - 0x50], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.18
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.19
	mov	dword ptr [rbp - 0x58], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.20
	mov	dword ptr [rbp - 0x5c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.21
	mov	dword ptr [rbp - 0x60], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.22
	mov	dword ptr [rbp - 0x64], eax
	call	emit_ancillary_info
.label_7:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x402f80

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.66
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
	#Procedure 0x402fb0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.67
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
	#Procedure 0x402fe0

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
.label_11:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_10
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_10:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_14
	jmp	.label_15
.label_14:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_11
.label_15:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_12
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_12:
	movabs	rdi, OFFSET FLAT:.str.76
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17_0
	movabs	rdx, OFFSET FLAT:.str.18_0
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
	je	.label_13
	movabs	rsi, OFFSET FLAT:.str.78
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_13
	movabs	rdi, OFFSET FLAT:.str.79
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_13:
	movabs	rdi, OFFSET FLAT:.str.80
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.18_0
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.81
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.82
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
	#Procedure 0x403180

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x4b0
	movabs	rax, OFFSET FLAT:.str.23
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
	jg	.label_105
	cmp	dword ptr [rbp - 0xe8], 0x31069
	setl	al
	mov	byte ptr [rbp - 0x339], al
.label_105:
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
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.25
	movabs	rsi, OFFSET FLAT:.str.26
	cmp	rax, 0
	setne	dl
	xor	dl, 0xff
	xor	dl, 0xff
	and	dl, 1
	mov	byte ptr [rbp - 0x229], dl
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.25
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
	je	.label_140
	mov	rax, qword ptr [rbp - 0x238]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_143
.label_140:
	mov	dword ptr [dword ptr [decimal_point]],  0x2e
.label_143:
	mov	rax, qword ptr [rbp - 0x238]
	mov	rax, qword ptr [rax + 8]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	dword ptr [dword ptr [thousands_sep]],  edi
	cmp	dword ptr [dword ptr [thousands_sep]],  0
	je	.label_149
	mov	rax, qword ptr [rbp - 0x238]
	mov	rax, qword ptr [rax + 8]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_154
.label_149:
	mov	dword ptr [dword ptr [thousands_sep]],  0xffffffff
.label_154:
	mov	byte ptr [byte ptr [have_read_stdin]],  0
	call	inittables
	movabs	rdi, OFFSET FLAT:caught_signals
	call	sigemptyset
	mov	qword ptr [rbp - 0x240], 0
	mov	dword ptr [rbp - 0x354], eax
.label_31:
	cmp	qword ptr [rbp - 0x240], 0xb
	jae	.label_171
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
	je	.label_177
	movabs	rdi, OFFSET FLAT:caught_signals
	mov	rax, qword ptr [rbp - 0x240]
	mov	esi,  dword ptr [dword ptr [+ (rax * 4) + main.sig]]
	call	sigaddset
	mov	dword ptr [rbp - 0x35c], eax
.label_177:
	jmp	.label_29
.label_29:
	mov	rax, qword ptr [rbp - 0x240]
	add	rax, 1
	mov	qword ptr [rbp - 0x240], rax
	jmp	.label_31
.label_171:
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
.label_65:
	cmp	qword ptr [rbp - 0x240], 0xb
	jae	.label_45
	movabs	rdi, OFFSET FLAT:caught_signals
	mov	rax, qword ptr [rbp - 0x240]
	mov	esi,  dword ptr [dword ptr [+ (rax * 4) + main.sig]]
	call	sigismember
	cmp	eax, 0
	je	.label_54
	lea	rsi, [rbp - 0x2d8]
	xor	eax, eax
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x240]
	mov	edi,  dword ptr [dword ptr [+ (rcx * 4) + main.sig]]
	call	sigaction
	mov	dword ptr [rbp - 0x360], eax
.label_54:
	jmp	.label_62
.label_62:
	mov	rax, qword ptr [rbp - 0x240]
	add	rax, 1
	mov	qword ptr [rbp - 0x240], rax
	jmp	.label_65
.label_45:
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
.label_66:
	mov	dword ptr [rbp - 0x2dc], 0xffffffff
	cmp	dword ptr [rbp - 0xbc], -1
	je	.label_83
	test	byte ptr [rbp - 0xe1], 1
	je	.label_89
	cmp	qword ptr [rbp - 0xe0], 0
	je	.label_89
	test	byte ptr [rbp - 0xe9], 1
	je	.label_83
	cmp	byte ptr [rbp - 0xbd], 0
	jne	.label_83
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	je	.label_83
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0x2d
	jne	.label_83
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 1]
	cmp	edx, 0x6f
	jne	.label_83
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 2]
	cmp	edx, 0
	jne	.label_89
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	cmp	eax, dword ptr [rbp - 8]
	je	.label_83
.label_89:
	movabs	rdx, OFFSET FLAT:short_options
	movabs	rcx, OFFSET FLAT:long_options
	lea	r8, [rbp - 0x2dc]
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0xbc], eax
	cmp	eax, -1
	jne	.label_115
.label_83:
	mov	eax, dword ptr [rbp - 8]
	cmp	eax,  dword ptr [dword ptr [optind]]
	jg	.label_118
	jmp	.label_119
.label_118:
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
	jmp	.label_63
.label_115:
	mov	eax, dword ptr [rbp - 0xbc]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x37c], eax
	mov	dword ptr [rbp - 0x380], ecx
	je	.label_48
	jmp	.label_128
.label_128:
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x384], eax
	je	.label_129
	jmp	.label_134
.label_134:
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 1
	mov	dword ptr [rbp - 0x388], eax
	je	.label_135
	jmp	.label_123
.label_123:
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0x43
	mov	dword ptr [rbp - 0x38c], eax
	je	.label_141
	jmp	.label_144
.label_144:
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x390], eax
	je	.label_20
	jmp	.label_145
.label_145:
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0x52
	mov	dword ptr [rbp - 0x394], eax
	je	.label_20
	jmp	.label_43
.label_43:
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0x53
	mov	dword ptr [rbp - 0x398], eax
	je	.label_153
	jmp	.label_155
.label_155:
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x39c], eax
	je	.label_19
	jmp	.label_162
.label_162:
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0x56
	mov	dword ptr [rbp - 0x3a0], eax
	je	.label_20
	jmp	.label_167
.label_167:
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x3a4], eax
	je	.label_20
	jmp	.label_173
.label_173:
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x3a8], eax
	je	.label_141
	jmp	.label_175
.label_175:
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0x3ac], eax
	je	.label_20
	jmp	.label_17
.label_17:
	mov	eax, dword ptr [rbp - 0x37c]
	add	eax, -0x66
	sub	eax, 4
	mov	dword ptr [rbp - 0x3b0], eax
	jb	.label_20
	jmp	.label_26
.label_26:
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0x3b4], eax
	je	.label_64
	jmp	.label_32
.label_32:
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x3b8], eax
	je	.label_33
	jmp	.label_35
.label_35:
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x3bc], eax
	je	.label_20
	jmp	.label_38
.label_38:
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0x6f
	mov	dword ptr [rbp - 0x3c0], eax
	je	.label_40
	jmp	.label_44
.label_44:
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x3c4], eax
	je	.label_20
	jmp	.label_46
.label_46:
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x3c8], eax
	je	.label_47
	jmp	.label_51
.label_51:
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x3cc], eax
	je	.label_53
	jmp	.label_55
.label_55:
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x3d0], eax
	je	.label_56
	jmp	.label_59
.label_59:
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0x79
	mov	dword ptr [rbp - 0x3d4], eax
	je	.label_138
	jmp	.label_68
.label_68:
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0x7a
	mov	dword ptr [rbp - 0x3d8], eax
	je	.label_70
	jmp	.label_74
.label_74:
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x3dc], eax
	je	.label_137
	jmp	.label_157
.label_157:
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0x81
	mov	dword ptr [rbp - 0x3e0], eax
	je	.label_79
	jmp	.label_81
.label_81:
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0x82
	mov	dword ptr [rbp - 0x3e4], eax
	je	.label_36
	jmp	.label_58
.label_58:
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0x83
	mov	dword ptr [rbp - 0x3e8], eax
	je	.label_87
	jmp	.label_92
.label_92:
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0x84
	mov	dword ptr [rbp - 0x3ec], eax
	je	.label_95
	jmp	.label_112
.label_112:
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0x85
	mov	dword ptr [rbp - 0x3f0], eax
	je	.label_98
	jmp	.label_127
.label_127:
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0x86
	mov	dword ptr [rbp - 0x3f4], eax
	je	.label_100
	jmp	.label_130
.label_130:
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0x87
	mov	dword ptr [rbp - 0x3f8], eax
	je	.label_163
	jmp	.label_107
.label_135:
	mov	qword ptr [rbp - 0x18], 0
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2b
	jne	.label_76
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	mov	byte ptr [rbp - 0x3f9], cl
	je	.label_110
	xor	eax, eax
	mov	cl, al
	movsxd	rdx,  dword ptr [dword ptr [optind]]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rsi + rdx*8]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0x2d
	mov	byte ptr [rbp - 0x3f9], cl
	jne	.label_110
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 1]
	sub	edx, 0x30
	cmp	edx, 9
	setbe	sil
	mov	byte ptr [rbp - 0x3f9], sil
.label_110:
	mov	al, byte ptr [rbp - 0x3f9]
	xor	ecx, ecx
	mov	dl, cl
	and	al, 1
	mov	byte ptr [rbp - 0x2dd], al
	test	byte ptr [rbp - 0x2dd], 1
	mov	byte ptr [rbp - 0x3fa], dl
	je	.label_122
	mov	al, byte ptr [rbp - 0xe1]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x3fa], al
.label_122:
	mov	al, byte ptr [rbp - 0x3fa]
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
	je	.label_75
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
	je	.label_101
	mov	rax, qword ptr [rbp - 0xb8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_101
	xor	eax, eax
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0xb8]
	add	rcx, 1
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, 8
	mov	rdi, rcx
	call	parse_field_count
	mov	qword ptr [rbp - 0xb8], rax
.label_101:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	jne	.label_151
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	jne	.label_151
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], -1
.label_151:
	cmp	qword ptr [rbp - 0xb8], 0
	je	.label_160
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rsi, qword ptr [rbp - 0x18]
	call	set_ordering
	movsx	edx, byte ptr [rax]
	cmp	edx, 0
	je	.label_164
.label_160:
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_168
.label_164:
	test	byte ptr [rbp - 0x2dd], 1
	je	.label_72
	movabs	rdx, OFFSET FLAT:.str.27
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
	mov	qword ptr [rbp - 0x408], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x408]
	call	parse_field_count
	mov	qword ptr [rbp - 0xb8], rax
	cmp	qword ptr [rbp - 0xb8], 0
	je	.label_28
	jmp	.label_116
.label_28:
	movabs	rdi, OFFSET FLAT:.str.28
	movabs	rsi, OFFSET FLAT:.str.29
	mov	edx, 0x1112
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	call	__assert_fail
.label_116:
	mov	rax, qword ptr [rbp - 0xb8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_39
	movabs	rdx, OFFSET FLAT:.str.30
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x18
	mov	rdi, rax
	mov	rsi, rcx
	call	parse_field_count
	mov	qword ptr [rbp - 0xb8], rax
.label_39:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_49
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_49
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x10]
	add	rcx, -1
	mov	qword ptr [rax + 0x10], rcx
.label_49:
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rsi, qword ptr [rbp - 0x18]
	call	set_ordering
	cmp	byte ptr [rax], 0
	je	.label_61
	movabs	rsi, OFFSET FLAT:.str.31
	mov	rdi, qword ptr [rbp - 0x2e8]
	call	badfieldspec
.label_61:
	jmp	.label_72
.label_72:
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x39], 1
	mov	rdi, qword ptr [rbp - 0x18]
	call	insertkey
.label_168:
	jmp	.label_75
.label_75:
	jmp	.label_76
.label_76:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_77
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0xe0], rdx
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	qword ptr [rdx + rcx*8], rax
.label_77:
	jmp	.label_41
.label_100:
	movabs	rdi, OFFSET FLAT:.str.32
	movabs	rdx, OFFSET FLAT:sort_args
	movabs	rcx, OFFSET FLAT:sort_types
	mov	eax, 1
	mov	r8d, eax
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	call	__xargmatch_internal
	movsx	r10d,  byte ptr [byte ptr [+ (rax * 1) + sort_types]]
	mov	dword ptr [rbp - 0xbc], r10d
.label_20:
	lea	rsi, [rbp - 0xa8]
	mov	edx, 2
	lea	rdi, [rbp - 0x2ea]
	mov	eax, dword ptr [rbp - 0xbc]
	mov	cl, al
	mov	byte ptr [rbp - 0x2ea], cl
	mov	byte ptr [rbp - 0x2e9], 0
	call	set_ordering
	mov	qword ptr [rbp - 0x410], rax
	jmp	.label_41
.label_137:
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_166
	movabs	rdi, OFFSET FLAT:.str.33
	movabs	rdx, OFFSET FLAT:check_args
	movabs	rcx, OFFSET FLAT:check_types
	mov	eax, 1
	mov	r8d, eax
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	call	__xargmatch_internal
	movsx	r10d,  byte ptr [byte ptr [+ (rax * 1) + check_types]]
	mov	dword ptr [rbp - 0x414], r10d
	jmp	.label_111
.label_166:
	mov	eax, 0x63
	mov	dword ptr [rbp - 0x414], eax
	jmp	.label_111
.label_111:
	mov	eax, dword ptr [rbp - 0x414]
	mov	dword ptr [rbp - 0xbc], eax
.label_141:
	movsx	eax, byte ptr [rbp - 0xbd]
	cmp	eax, 0
	je	.label_117
	movsx	eax, byte ptr [rbp - 0xbd]
	cmp	eax, dword ptr [rbp - 0xbc]
	je	.label_117
	movabs	rdi, OFFSET FLAT:.str.34
	call	incompatible_options
.label_117:
	mov	eax, dword ptr [rbp - 0xbc]
	mov	cl, al
	mov	byte ptr [rbp - 0xbd], cl
	jmp	.label_41
.label_79:
	cmp	qword ptr [word ptr [compress_program]],  0
	je	.label_126
	mov	rdi,  qword ptr [word ptr [compress_program]]
	mov	rsi,  qword ptr [word ptr [optarg]]
	call	strcmp
	cmp	eax, 0
	je	.label_126
	movabs	rdi, OFFSET FLAT:.str.35
	call	gettext
	mov	edi, 2
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_126:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [compress_program]],  rax
	jmp	.label_41
.label_36:
	mov	byte ptr [byte ptr [debug]],  1
	jmp	.label_41
.label_87:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x100], rax
	jmp	.label_41
.label_64:
	lea	rdi, [rbp - 0x60]
	call	key_init
	movabs	rdx, OFFSET FLAT:.str.36
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
	jne	.label_146
	movabs	rsi, OFFSET FLAT:.str.37
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	badfieldspec
.label_146:
	mov	rax, qword ptr [rbp - 0xb8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_90
	movabs	rdx, OFFSET FLAT:.str.30
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
	jne	.label_172
	movabs	rsi, OFFSET FLAT:.str.38
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	badfieldspec
.label_172:
	jmp	.label_90
.label_90:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	jne	.label_21
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	jne	.label_21
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], -1
.label_21:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rsi, qword ptr [rbp - 0x18]
	call	set_ordering
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax, qword ptr [rbp - 0xb8]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0x2c
	je	.label_34
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x10], -1
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x18], 0
	jmp	.label_37
.label_34:
	movabs	rdx, OFFSET FLAT:.str.39
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
	jne	.label_18
	movabs	rsi, OFFSET FLAT:.str.37
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	badfieldspec
.label_18:
	mov	rax, qword ptr [rbp - 0xb8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_57
	movabs	rdx, OFFSET FLAT:.str.30
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x18
	mov	rdi, rax
	mov	rsi, rcx
	call	parse_field_count
	mov	qword ptr [rbp - 0xb8], rax
.label_57:
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rsi, qword ptr [rbp - 0x18]
	call	set_ordering
	mov	qword ptr [rbp - 0xb8], rax
.label_37:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	byte ptr [rax], 0
	je	.label_161
	movabs	rsi, OFFSET FLAT:.str.31
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	badfieldspec
.label_161:
	mov	rdi, qword ptr [rbp - 0x18]
	call	insertkey
	jmp	.label_41
.label_33:
	mov	byte ptr [rbp - 0xbe], 1
	jmp	.label_41
.label_95:
	mov	edi, dword ptr [rbp - 0x2dc]
	mov	eax, dword ptr [rbp - 0xbc]
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [optarg]]
	movsx	esi, cl
	call	specify_nmerge
	jmp	.label_41
.label_40:
	cmp	qword ptr [rbp - 0x228], 0
	je	.label_96
	mov	rdi, qword ptr [rbp - 0x228]
	mov	rsi,  qword ptr [word ptr [optarg]]
	call	strcmp
	cmp	eax, 0
	je	.label_96
	movabs	rdi, OFFSET FLAT:.str.40
	call	gettext
	mov	edi, 2
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_96:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x228], rax
	jmp	.label_41
.label_98:
	cmp	qword ptr [rbp - 0xc8], 0
	je	.label_106
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rsi,  qword ptr [word ptr [optarg]]
	call	strcmp
	cmp	eax, 0
	je	.label_106
	movabs	rdi, OFFSET FLAT:.str.41
	call	gettext
	mov	edi, 2
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_106:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_41
.label_47:
	mov	byte ptr [byte ptr [stable]],  1
	jmp	.label_41
.label_153:
	mov	edi, dword ptr [rbp - 0x2dc]
	mov	eax, dword ptr [rbp - 0xbc]
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [optarg]]
	movsx	esi, cl
	call	specify_sort_size
	jmp	.label_41
.label_53:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x2eb], cl
	cmp	byte ptr [rbp - 0x2eb], 0
	jne	.label_170
	movabs	rdi, OFFSET FLAT:.str.42
	call	gettext
	mov	edi, 2
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_170:
	mov	rax,  qword ptr [word ptr [optarg]]
	cmp	byte ptr [rax + 1], 0
	je	.label_125
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	eax, OFFSET FLAT:.str.43
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_150
	mov	byte ptr [rbp - 0x2eb], 0
	jmp	.label_133
.label_150:
	movabs	rdi, OFFSET FLAT:.str.44
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x420], rax
	call	quote
	mov	edi, 2
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x420]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_133:
	jmp	.label_125
.label_125:
	cmp	dword ptr [dword ptr [tab]],  0x80
	je	.label_147
	mov	eax,  dword ptr [dword ptr [tab]]
	movsx	ecx, byte ptr [rbp - 0x2eb]
	cmp	eax, ecx
	je	.label_147
	movabs	rdi, OFFSET FLAT:.str.45
	call	gettext
	mov	edi, 2
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_147:
	movsx	eax, byte ptr [rbp - 0x2eb]
	mov	dword ptr [dword ptr [tab]],  eax
	jmp	.label_41
.label_19:
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	add_temp_dir
	jmp	.label_41
.label_163:
	mov	edi, dword ptr [rbp - 0x2dc]
	mov	eax, dword ptr [rbp - 0xbc]
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [optarg]]
	movsx	esi, cl
	call	specify_nthreads
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_41
.label_56:
	mov	byte ptr [byte ptr [unique]],  1
	jmp	.label_41
.label_138:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	ecx,  dword ptr [dword ptr [optind]]
	sub	ecx, 1
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rsi + rdx*8]
	jne	.label_176
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x2f8], rax
.label_86:
	mov	rax, qword ptr [rbp - 0x2f8]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_25
	jmp	.label_30
.label_30:
	mov	rax, qword ptr [rbp - 0x2f8]
	add	rax, 1
	mov	qword ptr [rbp - 0x2f8], rax
	jmp	.label_86
.label_25:
	mov	rax, qword ptr [rbp - 0x2f8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	setne	dl
	and	dl, 1
	movzx	ecx, dl
	mov	esi,  dword ptr [dword ptr [optind]]
	sub	esi, ecx
	mov	dword ptr [dword ptr [optind]],  esi
.label_176:
	jmp	.label_41
.label_70:
	mov	byte ptr [byte ptr [eolchar]],  0
	jmp	.label_41
.label_129:
	xor	edi, edi
	call	usage
.label_48:
	movabs	rsi, OFFSET FLAT:.str.22
	movabs	rdx, OFFSET FLAT:.str.17_0
	movabs	r8, OFFSET FLAT:.str.47
	movabs	r9, OFFSET FLAT:.str.48
	xor	eax, eax
	mov	ecx, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	r10,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0x428], rcx
	mov	rcx, r10
	mov	qword ptr [rsp], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_107:
	mov	edi, 2
	call	usage
.label_41:
	jmp	.label_63
.label_63:
	jmp	.label_66
.label_119:
	cmp	qword ptr [rbp - 0x100], 0
	je	.label_67
	cmp	qword ptr [rbp - 0xe0], 0
	je	.label_69
	movabs	rdi, OFFSET FLAT:.str.49
	call	gettext
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0xf8]
	mov	rsi, qword ptr [rcx]
	mov	qword ptr [rbp - 0x430], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x434], edi
	mov	esi, dword ptr [rbp - 0x434]
	mov	rdx, qword ptr [rbp - 0x430]
	mov	rcx, rax
	mov	al, 0
	call	error
	movabs	rdi, OFFSET FLAT:.str.51
	mov	rcx,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x440], rcx
	call	gettext
	movabs	rsi, OFFSET FLAT:.str_2
	mov	rdi, qword ptr [rbp - 0x440]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	edi, 2
	mov	dword ptr [rbp - 0x444], eax
	call	usage
.label_69:
	movabs	rsi, OFFSET FLAT:.str.52
	mov	rdi, qword ptr [rbp - 0x100]
	call	xfopen
	lea	rdi, [rbp - 0x220]
	mov	qword ptr [rbp - 0x300], rax
	call	readtokens0_init
	lea	rsi, [rbp - 0x220]
	mov	rdi, qword ptr [rbp - 0x300]
	call	readtokens0
	test	al, 1
	jne	.label_102
	movabs	rdi, OFFSET FLAT:.str.53
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0x450], rax
	call	quotearg_style
	mov	edi, 2
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x450]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_102:
	mov	rdi, qword ptr [rbp - 0x300]
	mov	rsi, qword ptr [rbp - 0x100]
	call	xfclose
	cmp	qword ptr [rbp - 0x220], 0
	je	.label_114
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x218]
	mov	qword ptr [rbp - 0xf8], rax
	mov	rax, qword ptr [rbp - 0x220]
	mov	qword ptr [rbp - 0xe0], rax
	mov	qword ptr [rbp - 0x308], 0
.label_85:
	mov	rax, qword ptr [rbp - 0x308]
	cmp	rax, qword ptr [rbp - 0xe0]
	jae	.label_120
	mov	rax, qword ptr [rbp - 0x308]
	mov	rcx, qword ptr [rbp - 0xf8]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, OFFSET FLAT:.str.54
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	jne	.label_124
	movabs	rdi, OFFSET FLAT:.str.55
	call	gettext
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0x308]
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0x458], rax
	call	quotearg_style
	mov	edi, 2
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x458]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_124:
	mov	rax, qword ptr [rbp - 0x308]
	mov	rcx, qword ptr [rbp - 0xf8]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0
	jne	.label_136
	movabs	rdi, OFFSET FLAT:.str.56
	mov	rax, qword ptr [rbp - 0x308]
	add	rax, 1
	mov	qword ptr [rbp - 0x310], rax
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0x460], rax
	call	quotearg_n_style_colon
	mov	edi, 2
	xor	esi, esi
	mov	r8, qword ptr [rbp - 0x310]
	mov	rdx, qword ptr [rbp - 0x460]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_136:
	jmp	.label_156
.label_156:
	jmp	.label_159
.label_159:
	mov	rax, qword ptr [rbp - 0x308]
	add	rax, 1
	mov	qword ptr [rbp - 0x308], rax
	jmp	.label_85
.label_120:
	jmp	.label_104
.label_114:
	movabs	rdi, OFFSET FLAT:.str.57
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0x468], rax
	call	quotearg_style
	mov	edi, 2
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x468]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_104:
	jmp	.label_67
.label_67:
	mov	rax,  qword ptr [word ptr [keylist]]
	mov	qword ptr [rbp - 0x18], rax
.label_50:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_16
	mov	rdi, qword ptr [rbp - 0x18]
	call	default_key_compare
	test	al, 1
	jne	.label_22
	jmp	.label_23
.label_22:
	mov	rax, qword ptr [rbp - 0x18]
	test	byte ptr [rax + 0x37], 1
	jne	.label_23
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
.label_23:
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
	jmp	.label_50
.label_16:
	cmp	qword ptr [word ptr [keylist]],  0
	jne	.label_71
	lea	rdi, [rbp - 0xa8]
	call	default_key_compare
	test	al, 1
	jne	.label_71
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
.label_71:
	call	check_ordering_compatibility
	test	byte ptr [byte ptr [debug]],  1
	je	.label_80
	movsx	eax, byte ptr [rbp - 0xbd]
	cmp	eax, 0
	jne	.label_82
	cmp	qword ptr [rbp - 0x228], 0
	je	.label_84
.label_82:
	movsx	eax, byte ptr [rbp - 0xbd]
	cmp	eax, 0
	je	.label_88
	movsx	eax, byte ptr [rbp - 0xbd]
	mov	dword ptr [rbp - 0x46c], eax
	jmp	.label_91
.label_88:
	mov	eax, 0x6f
	mov	dword ptr [rbp - 0x46c], eax
	jmp	.label_91
.label_91:
	mov	eax, dword ptr [rbp - 0x46c]
	movabs	rdi, OFFSET FLAT:main.opts
	mov	cl, al
	mov	byte ptr [byte ptr [main.opts]],  cl
	call	incompatible_options
.label_84:
	test	byte ptr [rbp - 0x229], 1
	je	.label_131
	mov	edi, 3
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	cmp	rax, 0
	setne	cl
	xor	cl, 0xff
	xor	cl, 0xff
	and	cl, 1
	mov	byte ptr [rbp - 0x229], cl
.label_131:
	test	byte ptr [rbp - 0x229], 1
	jne	.label_108
	movabs	rdi, OFFSET FLAT:.str.59
	call	gettext
	xor	ecx, ecx
	movabs	rdx, OFFSET FLAT:.str_1
	mov	edi, ecx
	mov	esi, ecx
	mov	rcx, rax
	mov	al, 0
	call	error
.label_108:
	test	byte ptr [byte ptr [hard_LC_COLLATE]],  1
	je	.label_113
	movabs	rdi, OFFSET FLAT:.str.60
	call	gettext
	mov	edi, 3
	xor	ecx, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x478], rax
	call	setlocale
	mov	rdi, rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x478]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_152
.label_113:
	movabs	rdi, OFFSET FLAT:.str.61
	call	gettext
	xor	ecx, ecx
	movabs	rdx, OFFSET FLAT:.str_1
	mov	edi, ecx
	mov	esi, ecx
	mov	rcx, rax
	mov	al, 0
	call	error
.label_152:
	lea	rdi, [rbp - 0xa8]
	mov	al, byte ptr [rbp - 0xa9]
	and	al, 1
	movzx	esi, al
	call	key_warnings
.label_80:
	mov	al, byte ptr [rbp - 0x71]
	and	al, 1
	mov	byte ptr [byte ptr [reverse]],  al
	test	byte ptr [rbp - 0xc9], 1
	je	.label_158
	mov	rdi, qword ptr [rbp - 0xc8]
	call	random_md5_state_init
.label_158:
	cmp	qword ptr [word ptr [temp_dir_count]],  0
	jne	.label_132
	movabs	rdi, OFFSET FLAT:.str.62
	call	getenv
	mov	qword ptr [rbp - 0x318], rax
	cmp	qword ptr [rbp - 0x318], 0
	je	.label_139
	mov	rax, qword ptr [rbp - 0x318]
	mov	qword ptr [rbp - 0x480], rax
	jmp	.label_142
.label_139:
	movabs	rax, OFFSET FLAT:.str.16
	mov	qword ptr [rbp - 0x480], rax
	jmp	.label_142
.label_142:
	mov	rax, qword ptr [rbp - 0x480]
	mov	rdi, rax
	call	add_temp_dir
.label_132:
	cmp	qword ptr [rbp - 0xe0], 0
	jne	.label_148
	mov	qword ptr [rbp - 0xe0], 1
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rdi, rax
	call	free
	mov	ecx, 8
	mov	edi, ecx
	call	xmalloc
	movabs	rdi, OFFSET FLAT:.str.54
	mov	qword ptr [rbp - 0xf8], rax
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rax], rdi
.label_148:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx,  qword ptr [word ptr [sort_size]]
	jae	.label_165
	mov	rax,  qword ptr [word ptr [sort_size]]
	mov	ecx,  dword ptr [dword ptr [nmerge]]
	mov	edx, ecx
	imul	rdx, rdx, 0x22
	cmp	rax, rdx
	jbe	.label_169
	mov	rax,  qword ptr [word ptr [sort_size]]
	mov	qword ptr [rbp - 0x488], rax
	jmp	.label_174
.label_169:
	mov	eax,  dword ptr [dword ptr [nmerge]]
	mov	ecx, eax
	imul	rcx, rcx, 0x22
	mov	qword ptr [rbp - 0x488], rcx
.label_174:
	mov	rax, qword ptr [rbp - 0x488]
	mov	qword ptr [word ptr [sort_size]],  rax
.label_165:
	cmp	byte ptr [rbp - 0xbd], 0
	je	.label_24
	cmp	qword ptr [rbp - 0xe0], 1
	jbe	.label_27
	movabs	rdi, OFFSET FLAT:.str.63
	call	gettext
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0xf8]
	mov	rsi, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x490], rax
	call	quotearg_style
	mov	edi, 2
	xor	esi, esi
	movsx	r8d, byte ptr [rbp - 0xbd]
	mov	rdx, qword ptr [rbp - 0x490]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_27:
	cmp	qword ptr [rbp - 0x228], 0
	je	.label_42
	movabs	rdi, OFFSET FLAT:main.opts.64
	mov	al, byte ptr [rbp - 0xbd]
	mov	byte ptr [byte ptr [main.opts.64]],  al
	call	incompatible_options
.label_42:
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rdi, qword ptr [rax]
	movsx	esi, byte ptr [rbp - 0xbd]
	call	check
	mov	esi, 1
	xor	ecx, ecx
	test	al, 1
	cmovne	esi, ecx
	mov	dword ptr [rbp - 4], esi
	jmp	.label_52
.label_24:
	mov	rdi, qword ptr [rbp - 0xf8]
	mov	rsi, qword ptr [rbp - 0xe0]
	call	check_inputs
	mov	rdi, qword ptr [rbp - 0x228]
	call	check_output
	test	byte ptr [rbp - 0xbe], 1
	je	.label_60
	mov	eax, 0x10
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0xe0]
	call	xcalloc
	mov	qword ptr [rbp - 0x320], rax
	mov	qword ptr [rbp - 0x328], 0
.label_78:
	mov	rax, qword ptr [rbp - 0x328]
	cmp	rax, qword ptr [rbp - 0xe0]
	jae	.label_73
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
	jmp	.label_78
.label_73:
	xor	eax, eax
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x320]
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rcx, qword ptr [rbp - 0x228]
	call	merge
	jmp	.label_93
.label_60:
	cmp	qword ptr [rbp - 0xd8], 0
	jne	.label_94
	mov	edi, 2
	call	num_processors
	mov	qword ptr [rbp - 0x330], rax
	cmp	qword ptr [rbp - 0x330], 8
	jae	.label_97
	mov	rax, qword ptr [rbp - 0x330]
	mov	qword ptr [rbp - 0x498], rax
	jmp	.label_99
.label_97:
	mov	eax, 8
	mov	ecx, eax
	mov	qword ptr [rbp - 0x498], rcx
	jmp	.label_99
.label_99:
	mov	rax, qword ptr [rbp - 0x498]
	mov	qword ptr [rbp - 0xd8], rax
.label_94:
	movabs	rax, 0xffffffffffffff
	mov	qword ptr [rbp - 0x338], rax
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x338]
	jae	.label_103
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x4a0], rax
	jmp	.label_109
.label_103:
	mov	rax, qword ptr [rbp - 0x338]
	mov	qword ptr [rbp - 0x4a0], rax
.label_109:
	mov	rax, qword ptr [rbp - 0x4a0]
	mov	qword ptr [rbp - 0xd8], rax
	mov	rdi, qword ptr [rbp - 0xf8]
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	rdx, qword ptr [rbp - 0x228]
	mov	rcx, qword ptr [rbp - 0xd8]
	call	sort
.label_93:
	test	byte ptr [byte ptr [have_read_stdin]],  1
	je	.label_121
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_121
	movabs	rdi, OFFSET FLAT:.str.65
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.54
	mov	rdi, rax
	call	sort_die
.label_121:
	mov	dword ptr [rbp - 4], 0
.label_52:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x4b0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ed0

	.globl initialize_exit_failure
	.type initialize_exit_failure, @function
initialize_exit_failure:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 1
	je	.label_178
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [dword ptr [exit_failure]],  eax
.label_178:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ef0

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
	#Procedure 0x404f00

	.globl inittables
	.type inittables, @function
inittables:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], 0
.label_185:
	cmp	qword ptr [rbp - 8], 0x100
	jae	.label_186
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
	jne	.label_179
	mov	rax, qword ptr [rbp - 8]
	mov	cl, al
	movzx	edi, cl
	call	field_sep
	xor	al, 0xff
	mov	byte ptr [rbp - 0x41], al
.label_179:
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
	jmp	.label_185
.label_186:
	test	byte ptr [byte ptr [hard_LC_TIME]],  1
	je	.label_187
	mov	qword ptr [rbp - 8], 0
.label_184:
	cmp	qword ptr [rbp - 8], 0xc
	jae	.label_181
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
.label_182:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_183
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
	jne	.label_188
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
.label_188:
	jmp	.label_180
.label_180:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_182
.label_183:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_184
.label_181:
	movabs	rax, OFFSET FLAT:monthtab
	mov	ecx, 0xc
	mov	esi, ecx
	mov	ecx, 0x10
	mov	edx, ecx
	movabs	rcx, OFFSET FLAT:struct_month_cmp
	mov	rdi, rax
	call	qsort
.label_187:
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405170

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
	#Procedure 0x4051b0

	.globl exit_cleanup
	.type exit_cleanup, @function
exit_cleanup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	rax,  qword ptr [word ptr [temphead]]
	cmp	rax, 0
	je	.label_189
	lea	rdi, [rbp - 0x88]
	call	cs_enter
	call	cleanup
	lea	rdi, [rbp - 0x88]
	call	cs_leave
.label_189:
	call	close_stdout
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405200

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
	#Procedure 0x405240

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
	mov	eax, OFFSET FLAT:.str_0
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
	ja	.label_192
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_190]]
	jmp	rcx
.label_2407:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_193
	jmp	.label_192
.label_193:
	jmp	.label_194
.label_194:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], -1
	jmp	.label_192
.label_2408:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_191
	movabs	rdi, OFFSET FLAT:.str.124
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
.label_191:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_195
.label_192:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_195:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405340

	.globl set_ordering
	.type set_ordering, @function
set_ordering:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
.label_212:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax], 0
	je	.label_219
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x4d
	mov	dword ptr [rbp - 0x20], ecx
	mov	dword ptr [rbp - 0x24], edx
	je	.label_221
	jmp	.label_226
.label_226:
	mov	eax, dword ptr [rbp - 0x20]
	sub	eax, 0x52
	mov	dword ptr [rbp - 0x28], eax
	je	.label_207
	jmp	.label_199
.label_199:
	mov	eax, dword ptr [rbp - 0x20]
	sub	eax, 0x56
	mov	dword ptr [rbp - 0x2c], eax
	je	.label_200
	jmp	.label_204
.label_204:
	mov	eax, dword ptr [rbp - 0x20]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x30], eax
	je	.label_205
	jmp	.label_210
.label_210:
	mov	eax, dword ptr [rbp - 0x20]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0x34], eax
	je	.label_211
	jmp	.label_216
.label_216:
	mov	eax, dword ptr [rbp - 0x20]
	sub	eax, 0x66
	mov	dword ptr [rbp - 0x38], eax
	je	.label_218
	jmp	.label_220
.label_220:
	mov	eax, dword ptr [rbp - 0x20]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x3c], eax
	je	.label_209
	jmp	.label_224
.label_224:
	mov	eax, dword ptr [rbp - 0x20]
	sub	eax, 0x68
	mov	dword ptr [rbp - 0x40], eax
	je	.label_225
	jmp	.label_196
.label_196:
	mov	eax, dword ptr [rbp - 0x20]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0x44], eax
	je	.label_197
	jmp	.label_202
.label_202:
	mov	eax, dword ptr [rbp - 0x20]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x48], eax
	je	.label_203
	jmp	.label_206
.label_206:
	mov	eax, dword ptr [rbp - 0x20]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x4c], eax
	je	.label_208
	jmp	.label_213
.label_205:
	cmp	dword ptr [rbp - 0x1c], 0
	je	.label_214
	cmp	dword ptr [rbp - 0x1c], 2
	jne	.label_215
.label_214:
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x30], 1
.label_215:
	cmp	dword ptr [rbp - 0x1c], 1
	je	.label_222
	cmp	dword ptr [rbp - 0x1c], 2
	jne	.label_223
.label_222:
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x31], 1
.label_223:
	jmp	.label_198
.label_211:
	movabs	rax, OFFSET FLAT:nondictionary
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x20], rax
	jmp	.label_198
.label_218:
	movabs	rax, OFFSET FLAT:fold_toupper
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x28], rax
	jmp	.label_198
.label_209:
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x34], 1
	jmp	.label_198
.label_225:
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x35], 1
	jmp	.label_198
.label_197:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x20], 0
	jne	.label_217
	movabs	rax, OFFSET FLAT:nonprinting
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x20], rax
.label_217:
	jmp	.label_198
.label_221:
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x36], 1
	jmp	.label_198
.label_203:
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x32], 1
	jmp	.label_198
.label_207:
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x33], 1
	jmp	.label_198
.label_208:
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x37], 1
	jmp	.label_198
.label_200:
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x38], 1
	jmp	.label_198
.label_213:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_201
.label_198:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_212
.label_219:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_201:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405560

	.globl badfieldspec
	.type badfieldspec, @function
badfieldspec:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, OFFSET FLAT:.str.125
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
	#Procedure 0x4055c0

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
.label_227:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_229
	jmp	.label_228
.label_228:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	add	rax, 0x40
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_227
.label_229:
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
	#Procedure 0x405640

	.globl incompatible_options
	.type incompatible_options, @function
incompatible_options:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, OFFSET FLAT:.str.134
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
	#Procedure 0x405680

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
	jne	.label_232
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_235
.label_232:
	mov	eax, 0x14
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rcx
	jmp	.label_235
.label_235:
	mov	rax, qword ptr [rbp - 0x50]
	sub	rax, 3
	mov	ecx, eax
	mov	dword ptr [rbp - 0x30], ecx
	cmp	dword ptr [rbp - 0x2c], 0
	jne	.label_236
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, eax
	mov	dword ptr [dword ptr [nmerge]],  ecx
	mov	ecx,  dword ptr [dword ptr [nmerge]]
	mov	eax, ecx
	cmp	rax, qword ptr [rbp - 0x18]
	je	.label_231
	mov	dword ptr [rbp - 0x2c], 1
	jmp	.label_234
.label_231:
	cmp	dword ptr [dword ptr [nmerge]],  2
	jae	.label_239
	movabs	rdi, OFFSET FLAT:.str.135
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
	movabs	rdi, OFFSET FLAT:.str.136
	call	gettext
	movabs	rdi, OFFSET FLAT:.str.137
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
.label_239:
	mov	eax, dword ptr [rbp - 0x30]
	cmp	eax,  dword ptr [dword ptr [nmerge]]
	jae	.label_238
	mov	dword ptr [rbp - 0x2c], 1
	jmp	.label_230
.label_238:
	add	rsp, 0x90
	pop	rbp
	ret	
.label_230:
	jmp	.label_233
.label_233:
	jmp	.label_234
.label_234:
	jmp	.label_236
.label_236:
	cmp	dword ptr [rbp - 0x2c], 1
	jne	.label_237
	movabs	rdi, OFFSET FLAT:.str.138
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
	movabs	rdi, OFFSET FLAT:.str.139
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
.label_237:
	movabs	rcx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rbp - 0x2c]
	mov	esi, dword ptr [rbp - 4]
	mov	al, byte ptr [rbp - 5]
	mov	r8, qword ptr [rbp - 0x10]
	movsx	edx, al
	call	xstrtol_fatal
	.section	.text
	.align	16
	#Procedure 0x405900

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
	movabs	r9, OFFSET FLAT:.str.140
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
	jne	.label_241
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax - 1]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_241
	movabs	rax, 0x3fffffffffffff
	cmp	qword ptr [rbp - 0x18], rax
	ja	.label_250
	mov	rax, qword ptr [rbp - 0x18]
	shl	rax, 0xa
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_254
.label_250:
	mov	dword ptr [rbp - 0x24], 1
.label_254:
	jmp	.label_241
.label_241:
	cmp	dword ptr [rbp - 0x24], 2
	jne	.label_242
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax - 1]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_242
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax + 1], 0
	jne	.label_242
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x25
	mov	dword ptr [rbp - 0x34], ecx
	mov	dword ptr [rbp - 0x38], edx
	je	.label_259
	jmp	.label_245
.label_245:
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x3c], eax
	jne	.label_240
	jmp	.label_253
.label_253:
	mov	dword ptr [rbp - 0x24], 0
	jmp	.label_240
.label_259:
	movsd	xmm0,  qword ptr [word ptr [label_257]]
	movsd	xmm1,  qword ptr [word ptr [label_258]]
	movsd	qword ptr [rbp - 0x48], xmm0
	movsd	qword ptr [rbp - 0x50], xmm1
	call	physmem_total
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_247]]
	movq	xmm2, qword ptr [rbp - 0x18]
	punpckldq	xmm2, xmm1
	movapd	xmm1,  xmmword ptr [word ptr [rip + label_248]]
	subpd	xmm2, xmm1
	pshufd	xmm1, xmm2, 0x4e
	addpd	xmm1, xmm2
	mulsd	xmm0, xmm1
	movsd	xmm1, qword ptr [rbp - 0x50]
	divsd	xmm0, xmm1
	movsd	qword ptr [rbp - 0x30], xmm0
	movsd	xmm0, qword ptr [rbp - 0x48]
	ucomisd	xmm0, qword ptr [rbp - 0x30]
	jbe	.label_249
	movsd	xmm0, qword ptr [rbp - 0x30]
	movsd	xmm1,  qword ptr [word ptr [rip + label_251]]
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
	jmp	.label_252
.label_249:
	mov	dword ptr [rbp - 0x24], 1
.label_252:
	jmp	.label_240
.label_240:
	jmp	.label_242
.label_242:
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_256
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax,  qword ptr [word ptr [sort_size]]
	jae	.label_260
	jmp	.label_243
.label_260:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [sort_size]],  rax
	mov	rax,  qword ptr [word ptr [sort_size]]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_246
	mov	rax,  qword ptr [word ptr [sort_size]]
	mov	ecx,  dword ptr [dword ptr [nmerge]]
	mov	edx, ecx
	imul	rdx, rdx, 0x22
	cmp	rax, rdx
	jbe	.label_255
	mov	rax,  qword ptr [word ptr [sort_size]]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_244
.label_255:
	mov	eax,  dword ptr [dword ptr [nmerge]]
	mov	ecx, eax
	imul	rcx, rcx, 0x22
	mov	qword ptr [rbp - 0x58], rcx
.label_244:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [word ptr [sort_size]],  rax
	jmp	.label_243
.label_246:
	mov	dword ptr [rbp - 0x24], 1
.label_256:
	movabs	rcx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rbp - 0x24]
	mov	esi, dword ptr [rbp - 4]
	mov	al, byte ptr [rbp - 5]
	mov	r8, qword ptr [rbp - 0x10]
	movsx	edx, al
	call	xstrtol_fatal
.label_243:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405b70

	.globl add_temp_dir
	.type add_temp_dir, @function
add_temp_dir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi,  qword ptr [word ptr [temp_dir_count]]
	cmp	rdi,  qword ptr [word ptr [temp_dir_alloc]]
	jne	.label_261
	movabs	rsi, OFFSET FLAT:temp_dir_alloc
	mov	eax, 8
	mov	edx, eax
	mov	rcx,  qword ptr [word ptr [temp_dirs]]
	mov	rdi, rcx
	call	x2nrealloc
	mov	qword ptr [word ptr [temp_dirs]],  rax
.label_261:
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
	#Procedure 0x405bf0

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
	movabs	r9, OFFSET FLAT:.str_0
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
	jne	.label_264
	mov	qword ptr [rbp - 8], -1
	jmp	.label_266
.label_264:
	cmp	dword ptr [rbp - 0x24], 0
	je	.label_262
	movabs	rcx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rbp - 0x24]
	mov	esi, dword ptr [rbp - 0xc]
	mov	al, byte ptr [rbp - 0xd]
	mov	r8, qword ptr [rbp - 0x18]
	movsx	edx, al
	call	xstrtol_fatal
.label_262:
	mov	rax, -1
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_265
	mov	qword ptr [rbp - 0x20], -1
.label_265:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_263
	movabs	rdi, OFFSET FLAT:.str.141
	call	gettext
	mov	edi, 2
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_263:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_266:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405cd0

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
	jne	.label_267
	movabs	rdi, OFFSET FLAT:.str.142
	call	gettext
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rax
	call	sort_die
.label_267:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405d30

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
	je	.label_269
	jmp	.label_272
.label_272:
	mov	eax, dword ptr [rbp - 0x14]
	sub	eax, 1
	mov	dword ptr [rbp - 0x18], eax
	je	.label_274
	jmp	.label_275
.label_269:
	mov	rdi, qword ptr [rbp - 8]
	call	feof_unlocked
	cmp	eax, 0
	je	.label_273
	mov	rdi, qword ptr [rbp - 8]
	call	clearerr_unlocked
.label_273:
	jmp	.label_270
.label_274:
	mov	rdi, qword ptr [rbp - 8]
	call	fflush_unlocked
	cmp	eax, 0
	je	.label_271
	movabs	rdi, OFFSET FLAT:.str.145
	call	gettext
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	sort_die
.label_271:
	jmp	.label_270
.label_275:
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fclose
	cmp	eax, 0
	je	.label_268
	movabs	rdi, OFFSET FLAT:.str.65
	call	gettext
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	sort_die
.label_268:
	jmp	.label_270
.label_270:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405e00

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
	jne	.label_276
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 0x28], 0
	mov	byte ptr [rbp - 9], al
	jne	.label_276
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	test	byte ptr [rcx + 0x30], 1
	mov	byte ptr [rbp - 9], al
	jne	.label_276
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	test	byte ptr [rcx + 0x31], 1
	mov	byte ptr [rbp - 9], al
	jne	.label_276
	mov	rdi, qword ptr [rbp - 8]
	call	key_numeric
	mov	cl, 1
	test	al, 1
	mov	byte ptr [rbp - 9], cl
	jne	.label_276
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	test	byte ptr [rcx + 0x36], 1
	mov	byte ptr [rbp - 9], al
	jne	.label_276
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	test	byte ptr [rcx + 0x38], 1
	mov	byte ptr [rbp - 9], al
	jne	.label_276
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x33]
	mov	byte ptr [rbp - 9], cl
.label_276:
	mov	al, byte ptr [rbp - 9]
	xor	al, 0xff
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405eb0

	.globl check_ordering_compatibility
	.type check_ordering_compatibility, @function
check_ordering_compatibility:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rax,  qword ptr [word ptr [keylist]]
	mov	qword ptr [rbp - 8], rax
.label_279:
	cmp	qword ptr [rbp - 8], 0
	je	.label_278
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
	jge	.label_280
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
.label_280:
	jmp	.label_277
.label_277:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_279
.label_278:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405fa0

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
.label_281:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_297
	mov	rax, qword ptr [rbp - 0x18]
	test	byte ptr [rax + 0x39], 1
	je	.label_306
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
	jne	.label_282
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
.label_282:
	lea	rsi, [rbp - 0x90]
	mov	rdi, qword ptr [rbp - 0xf8]
	mov	eax, OFFSET FLAT:.str.146
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
	mov	edx, OFFSET FLAT:.str.147
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
	je	.label_304
	lea	rsi, [rbp - 0x90]
	mov	rdi, qword ptr [rbp - 0xf8]
	mov	eax, OFFSET FLAT:.str.148
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
	mov	edx, OFFSET FLAT:.str.149
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
.label_304:
	movabs	rdi, OFFSET FLAT:.str.150
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
.label_306:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], -1
	mov	byte ptr [rbp - 0x1ad], cl
	je	.label_284
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx]
	setb	dl
	mov	byte ptr [rbp - 0x1ad], dl
.label_284:
	mov	al, byte ptr [rbp - 0x1ad]
	and	al, 1
	mov	byte ptr [rbp - 0x101], al
	test	byte ptr [rbp - 0x101], 1
	je	.label_292
	movabs	rdi, OFFSET FLAT:.str.151
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
.label_292:
	mov	rdi, qword ptr [rbp - 0x18]
	call	key_numeric
	mov	cl, 1
	test	al, 1
	mov	byte ptr [rbp - 0x1b9], cl
	jne	.label_299
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x36]
	mov	byte ptr [rbp - 0x1b9], cl
.label_299:
	mov	al, byte ptr [rbp - 0x1b9]
	xor	ecx, ecx
	mov	dl, cl
	and	al, 1
	mov	byte ptr [rbp - 0x102], al
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	qword ptr [rsi + 0x10], 0
	mov	byte ptr [rbp - 0x1ba], dl
	jne	.label_301
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x18], 0
	setne	cl
	mov	byte ptr [rbp - 0x1ba], cl
.label_301:
	mov	al, byte ptr [rbp - 0x1ba]
	and	al, 1
	mov	byte ptr [rbp - 0x103], al
	test	byte ptr [rbp - 0x101], 1
	jne	.label_283
	test	byte ptr [rbp - 9], 1
	jne	.label_283
	cmp	dword ptr [dword ptr [tab]],  0x80
	jne	.label_283
	test	byte ptr [rbp - 0x103], 1
	jne	.label_283
	mov	rax, qword ptr [rbp - 0x18]
	test	byte ptr [rax + 0x30], 1
	jne	.label_289
	test	byte ptr [rbp - 0x102], 1
	je	.label_291
.label_289:
	mov	rax, qword ptr [rbp - 0x18]
	test	byte ptr [rax + 0x30], 1
	jne	.label_294
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	jne	.label_291
.label_294:
	mov	rax, qword ptr [rbp - 0x18]
	test	byte ptr [rax + 0x31], 1
	jne	.label_283
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x18], 0
	je	.label_283
.label_291:
	movabs	rdi, OFFSET FLAT:.str.152
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
.label_283:
	test	byte ptr [rbp - 9], 1
	jne	.label_290
	mov	rdi, qword ptr [rbp - 0x18]
	call	key_numeric
	test	al, 1
	jne	.label_303
	jmp	.label_290
.label_303:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x118], rax
	cmp	qword ptr [rbp - 0x110], 0
	jne	.label_305
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
.label_305:
	cmp	qword ptr [rbp - 0x118], 0
	je	.label_285
	mov	rax, qword ptr [rbp - 0x110]
	cmp	rax, qword ptr [rbp - 0x118]
	jae	.label_287
.label_285:
	movabs	rdi, OFFSET FLAT:.str.153
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
.label_287:
	jmp	.label_290
.label_290:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_296
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_296
	mov	qword ptr [rbp - 0x40], 0
.label_296:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_300
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x28]
	jne	.label_300
	mov	qword ptr [rbp - 0x38], 0
.label_300:
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
	jmp	.label_281
.label_297:
	lea	rdi, [rbp - 0x60]
	call	default_key_compare
	test	al, 1
	jne	.label_288
	jmp	.label_293
.label_288:
	test	byte ptr [rbp - 0x29], 1
	je	.label_295
	test	byte ptr [byte ptr [stable]],  1
	jne	.label_302
	test	byte ptr [byte ptr [unique]],  1
	je	.label_295
.label_302:
	cmp	qword ptr [word ptr [keylist]],  0
	je	.label_295
.label_293:
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	mov	byte ptr [rbp - 0x119], al
	test	byte ptr [byte ptr [stable]],  1
	jne	.label_298
	test	byte ptr [byte ptr [unique]],  1
	jne	.label_298
	mov	byte ptr [rbp - 0x29], 0
.label_298:
	lea	rdi, [rbp - 0x60]
	lea	rsi, [rbp - 0x140]
	call	key_to_opts
	lea	rdi, [rbp - 0x140]
	call	strlen
	mov	rdi, rax
	call	select_plural
	movabs	rdi, OFFSET FLAT:.str.154
	movabs	rsi, OFFSET FLAT:.str.155
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
.label_295:
	test	byte ptr [rbp - 0x29], 1
	je	.label_286
	test	byte ptr [byte ptr [stable]],  1
	jne	.label_286
	test	byte ptr [byte ptr [unique]],  1
	jne	.label_286
	cmp	qword ptr [word ptr [keylist]],  0
	je	.label_286
	movabs	rdi, OFFSET FLAT:.str.156
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_286:
	add	rsp, 0x1e0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4067a0

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
	jne	.label_308
	movabs	rdi, OFFSET FLAT:.str.142
	call	gettext
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rax
	call	sort_die
.label_308:
	mov	eax, 0x10
	mov	edx, eax
	lea	rsi, [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x28]
	call	randread
	mov	rdi, qword ptr [rbp - 0x28]
	call	randread_free
	cmp	eax, 0
	je	.label_307
	movabs	rdi, OFFSET FLAT:.str.65
	call	gettext
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rax
	call	sort_die
.label_307:
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
	#Procedure 0x406860

	.globl check
	.type check, @function
check:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x120
	mov	al, sil
	movabs	rsi, OFFSET FLAT:.str.52
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
	jbe	.label_309
	mov	rax,  qword ptr [word ptr [merge_buffer_size]]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_323
.label_309:
	mov	rax,  qword ptr [word ptr [sort_size]]
	mov	qword ptr [rbp - 0xd8], rax
.label_323:
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rbp - 0x50]
	mov	ecx, 0x20
	mov	esi, ecx
	mov	rdx, rax
	call	initbuf
	mov	qword ptr [rbp - 0x70], 0
.label_315:
	lea	rdi, [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 8]
	call	fillbuf
	test	al, 1
	jne	.label_313
	jmp	.label_319
.label_313:
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
	je	.label_311
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
	jg	.label_311
	jmp	.label_317
.label_317:
	movsx	eax, byte ptr [rbp - 9]
	cmp	eax, 0x63
	jne	.label_318
	lea	rdi, [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, -0x20
	mov	qword ptr [rbp - 0xa8], rax
	call	buffer_linelim
	movabs	rdi, OFFSET FLAT:.str.157
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
	movabs	rdi, OFFSET FLAT:.str.158
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
.label_318:
	mov	byte ptr [rbp - 0x8a], 0
	jmp	.label_319
.label_311:
	jmp	.label_312
.label_312:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x98]
	add	rcx, -0x20
	mov	qword ptr [rbp - 0x98], rcx
	cmp	rax, rcx
	jae	.label_320
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
	jg	.label_310
	jmp	.label_317
.label_310:
	jmp	.label_312
.label_320:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_314
	jmp	.label_321
.label_321:
	mov	rax, qword ptr [rbp - 0x78]
	shl	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_322
	mov	rax, qword ptr [rbp - 0x98]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_324
.label_322:
	jmp	.label_325
.label_325:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rcx + 8]
	jb	.label_321
.label_324:
	mov	rdi, qword ptr [rbp - 0x70]
	call	free
	mov	rdi, qword ptr [rbp - 0x78]
	call	xmalloc
	mov	qword ptr [rbp - 0x70], rax
.label_314:
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
	je	.label_316
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
.label_316:
	jmp	.label_315
.label_319:
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
	#Procedure 0x406c70

	.globl check_inputs
	.type check_inputs, @function
check_inputs:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
.label_326:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_327
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, OFFSET FLAT:.str.54
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	jne	.label_328
	jmp	.label_330
.label_328:
	mov	esi, 4
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + rax*8]
	call	euidaccess
	cmp	eax, 0
	je	.label_329
	movabs	rdi, OFFSET FLAT:.str.165
	call	gettext
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rcx + rdi*8]
	mov	rdi, rax
	call	sort_die
.label_329:
	jmp	.label_330
.label_330:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_326
.label_327:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406d20

	.globl check_output
	.type check_output, @function
check_output:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_331
	mov	edx, 0x1b6
	mov	dword ptr [rbp - 0xc], 0x80041
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0x10], eax
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_332
	movabs	rdi, OFFSET FLAT:.str.142
	call	gettext
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rax
	call	sort_die
.label_332:
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0x10]
	call	move_fd
.label_331:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406d90

	.globl merge
	.type merge, @function
merge:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x110
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
.label_334:
	mov	eax,  dword ptr [dword ptr [nmerge]]
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x18]
	jae	.label_339
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x30], 0
.label_338:
	mov	eax,  dword ptr [dword ptr [nmerge]]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	ja	.label_348
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
	jae	.label_353
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_337
.label_353:
	mov	eax,  dword ptr [dword ptr [nmerge]]
	mov	ecx, eax
	mov	qword ptr [rbp - 0xb0], rcx
.label_337:
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
	jae	.label_355
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_333
.label_355:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0xc0], rax
.label_333:
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
	jmp	.label_338
.label_348:
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
	jae	.label_357
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
	jae	.label_352
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_335
.label_352:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0xd8], rax
.label_335:
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
	jae	.label_351
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_341
.label_351:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xe8], rax
.label_341:
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
.label_357:
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
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_334
.label_339:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	avoid_trashing_input
.label_346:
	lea	rdx, [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	call	open_input_files
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_350
	movabs	rsi, OFFSET FLAT:.str.166
	mov	rdi, qword ptr [rbp - 0x20]
	call	stream_open
	mov	qword ptr [rbp - 0x90], rax
	cmp	qword ptr [rbp - 0x90], 0
	je	.label_358
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x80]
	call	mergefps
	jmp	.label_343
.label_358:
	call	__errno_location
	cmp	dword ptr [rax], 0x18
	jne	.label_349
	cmp	qword ptr [rbp - 0x88], 2
	ja	.label_347
.label_349:
	movabs	rdi, OFFSET FLAT:.str.142
	call	gettext
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	sort_die
.label_347:
	jmp	.label_340
.label_350:
	cmp	qword ptr [rbp - 0x88], 2
	ja	.label_354
	movabs	rdi, OFFSET FLAT:.str.142
	call	gettext
	mov	rdi, qword ptr [rbp - 0x88]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rdi]
	mov	rdi, rax
	call	sort_die
.label_354:
	jmp	.label_340
.label_340:
	jmp	.label_336
.label_336:
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
	mov	qword ptr [rbp - 0xf0], rax
	call	maybe_create_temp
	mov	qword ptr [rbp - 0xa0], rax
	cmp	qword ptr [rbp - 0xa0], 0
	setne	al
	xor	al, 0xff
	test	al, 1
	jne	.label_336
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0xf8], rdi
	jae	.label_344
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x100], rax
	jmp	.label_356
.label_344:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x100], rax
.label_356:
	mov	rax, qword ptr [rbp - 0x100]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0xa0]
	add	rsi, 0xd
	mov	r9, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 0xf8]
	mov	qword ptr [rbp - 0x108], rsi
	mov	rsi, rax
	mov	r8, qword ptr [rbp - 0x108]
	call	mergefps
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x88]
	jae	.label_342
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_345
.label_342:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x110], rax
.label_345:
	mov	rax, qword ptr [rbp - 0x110]
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
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x88]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_346
.label_343:
	add	rsp, 0x110
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407380

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
.label_367:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_368
	movabs	rsi, OFFSET FLAT:.str.52
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x78], rax
	mov	rdi, qword ptr [rbp - 0x78]
	call	xfopen
	mov	qword ptr [rbp - 0x80], rax
	cmp	qword ptr [rbp - 0x20], 1
	jbe	.label_374
	mov	qword ptr [rbp - 0x98], 1
	mov	qword ptr [rbp - 0xa0], 1
.label_362:
	mov	rax, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_378
	mov	rax, qword ptr [rbp - 0x98]
	shl	rax, 1
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_362
.label_378:
	mov	rax, qword ptr [rbp - 0xa0]
	shl	rax, 5
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_369
.label_374:
	mov	qword ptr [rbp - 0x90], 0x30
.label_369:
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_375
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
.label_375:
	mov	byte ptr [rbp - 0x28], 0
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
.label_364:
	lea	rdi, [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x78]
	call	fillbuf
	test	al, 1
	jne	.label_373
	jmp	.label_366
.label_373:
	test	byte ptr [rbp - 0x28], 1
	je	.label_376
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_376
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x90]
	imul	rdx, qword ptr [rbp - 0x48]
	sub	rcx, rdx
	cmp	rax, rcx
	jae	.label_376
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_366
.label_376:
	lea	rdi, [rbp - 0x58]
	mov	qword ptr [word ptr [saved_line]],  0
	call	buffer_linelim
	mov	qword ptr [rbp - 0xa8], rax
	test	byte ptr [rbp - 0x28], 1
	je	.label_361
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_361
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_361
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_361
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x78]
	call	xfclose
	movabs	rsi, OFFSET FLAT:.str.166
	mov	rdi, qword ptr [rbp - 0x18]
	call	xfopen
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	mov	byte ptr [rbp - 0x61], 1
	jmp	.label_365
.label_361:
	lea	rdi, [rbp - 0x88]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	call	create_temp
	add	rax, 0xd
	mov	qword ptr [rbp - 0x70], rax
.label_365:
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x48]
	jae	.label_371
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
	jmp	.label_372
.label_371:
	mov	rax, qword ptr [rbp - 0xa8]
	add	rax, -0x20
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rdi, rax
	call	write_unique
.label_372:
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x70]
	call	xfclose
	test	byte ptr [rbp - 0x61], 1
	je	.label_360
	jmp	.label_363
.label_360:
	jmp	.label_364
.label_366:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x78]
	call	xfclose
	jmp	.label_367
.label_368:
	jmp	.label_363
.label_363:
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
	test	byte ptr [rbp - 0x61], 1
	jne	.label_370
	mov	eax, 0x10
	mov	esi, eax
	mov	rcx,  qword ptr [word ptr [temphead]]
	mov	qword ptr [rbp - 0x118], rcx
	mov	rdi, qword ptr [rbp - 0x60]
	call	xnmalloc
	mov	qword ptr [rbp - 0x120], rax
	mov	qword ptr [rbp - 0x128], 0
.label_359:
	cmp	qword ptr [rbp - 0x118], 0
	je	.label_377
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
	jmp	.label_359
.label_377:
	mov	rdi, qword ptr [rbp - 0x120]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	call	merge
	mov	rcx, qword ptr [rbp - 0x120]
	mov	rdi, rcx
	call	free
.label_370:
	call	reap_all
	add	rsp, 0x140
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4077a0

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
	je	.label_379
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_380
.label_379:
	movabs	rdi, OFFSET FLAT:.str.180
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_380:
	mov	rax, qword ptr [rbp - 0x28]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rax
	call	quotearg_n_style_colon
	mov	edi, 2
	movabs	rdx, OFFSET FLAT:.str.1_0
	mov	esi, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, rax
	mov	al, 0
	call	error
	.section	.text
	.align	16
	#Procedure 0x407820

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
	jne	.label_381
	movzx	eax, byte ptr [rbp - 1]
	cmp	eax, 0xa
	sete	cl
	mov	byte ptr [rbp - 0x11], cl
.label_381:
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407880

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
	#Procedure 0x4078c0

	.globl cleanup
	.type cleanup, @function
cleanup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [temphead]]
	mov	qword ptr [rbp - 8], rax
.label_382:
	cmp	qword ptr [rbp - 8], 0
	je	.label_383
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0xd
	mov	rdi, rax
	call	unlink
	mov	dword ptr [rbp - 0xc], eax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_382
.label_383:
	mov	qword ptr [word ptr [temphead]],  0
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407920

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
	#Procedure 0x407970

	.globl cs_leave
	.type cs_leave, @function
cs_leave:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	test	byte ptr [rdi], 1
	je	.label_384
	mov	edi, 2
	xor	eax, eax
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 8
	mov	rsi, rcx
	call	pthread_sigmask
	mov	dword ptr [rbp - 0xc], eax
.label_384:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4079b0

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
	jne	.label_395
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:.str.54
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_393
	mov	byte ptr [byte ptr [have_read_stdin]],  1
	mov	rax,  qword ptr [word ptr [stdin]]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_394
.label_393:
	mov	esi, 0x80000
	mov	rdi, qword ptr [rbp - 8]
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_387
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_392
.label_387:
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rsi, qword ptr [rbp - 0x10]
	call	fdopen
	mov	qword ptr [rbp - 0x30], rax
.label_392:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x18], rax
.label_394:
	mov	esi, 2
	mov	rdi, qword ptr [rbp - 0x18]
	call	fadvise
	jmp	.label_388
.label_395:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x77
	jne	.label_389
	cmp	qword ptr [rbp - 8], 0
	je	.label_385
	mov	edi, 1
	xor	eax, eax
	mov	esi, eax
	call	ftruncate
	cmp	eax, 0
	je	.label_385
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x20], ecx
	call	get_outstatus
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_390
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	je	.label_390
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x28]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_386
.label_390:
	movabs	rdi, OFFSET FLAT:.str.143
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
.label_386:
	jmp	.label_385
.label_385:
	mov	rax,  qword ptr [word ptr [stdout]]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_391
.label_389:
	movabs	rdi, OFFSET FLAT:.str.144
	movabs	rsi, OFFSET FLAT:.str.29
	mov	edx, 0x3d6
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.stream_open
	call	__assert_fail
.label_391:
	jmp	.label_388
.label_388:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407b70

	.globl get_outstatus
	.type get_outstatus, @function
get_outstatus:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	cmp	dword ptr [dword ptr [get_outstatus.outstat_errno]],  0
	jne	.label_396
	mov	edi, 1
	movabs	rsi, OFFSET FLAT:get_outstatus.outstat
	call	__fstat
	cmp	eax, 0
	jne	.label_398
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 4], eax
	jmp	.label_397
.label_398:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 4], ecx
.label_397:
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [dword ptr [get_outstatus.outstat_errno]],  eax
.label_396:
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
	#Procedure 0x407bf0

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
	jne	.label_399
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	test	byte ptr [rcx + 0x34], 1
	mov	byte ptr [rbp - 9], al
	jne	.label_399
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x35]
	mov	byte ptr [rbp - 9], cl
.label_399:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407c40

	.globl key_to_opts
	.type key_to_opts, @function
key_to_opts:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	test	byte ptr [rsi + 0x30], 1
	jne	.label_400
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x31], 1
	je	.label_404
.label_400:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x62
.label_404:
	movabs	rax, OFFSET FLAT:nondictionary
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 0x20], rax
	jne	.label_411
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x64
.label_411:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x28], 0
	je	.label_407
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x66
.label_407:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x34], 1
	je	.label_402
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x67
.label_402:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x35], 1
	je	.label_408
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x68
.label_408:
	movabs	rax, OFFSET FLAT:nonprinting
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 0x20], rax
	jne	.label_401
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x69
.label_401:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x36], 1
	je	.label_405
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x4d
.label_405:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x32], 1
	je	.label_410
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x6e
.label_410:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x33], 1
	je	.label_406
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x52
.label_406:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x37], 1
	je	.label_403
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x72
.label_403:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x38], 1
	je	.label_409
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x56
.label_409:
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], 0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407de0

	.globl select_plural
	.type select_plural, @function
select_plural:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], -1
	ja	.label_412
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_413
.label_412:
	mov	eax, 0xf4240
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	add	rdx, 0xf4240
	mov	qword ptr [rbp - 0x10], rdx
.label_413:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407e30

	.globl initbuf
	.type initbuf, @function
initbuf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_416:
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
	je	.label_415
	jmp	.label_417
.label_415:
	mov	rax, qword ptr [rbp - 0x18]
	shr	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_414
	call	xalloc_die
.label_414:
	jmp	.label_416
.label_417:
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
	#Procedure 0x407f00

	.globl fillbuf
	.type fillbuf, @function
fillbuf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
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
	je	.label_418
	mov	byte ptr [rbp - 1], 0
	jmp	.label_424
.label_418:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	je	.label_440
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
.label_440:
	jmp	.label_437
.label_437:
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
	je	.label_443
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_425
.label_443:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x98], rax
.label_425:
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x68], rax
.label_439:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x60]
	jae	.label_438
	mov	eax, 1
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, 1
	mov	rdx, qword ptr [rbp - 0x38]
	add	rdx, 1
	mov	rax, rcx
	xor	edi, edi
	mov	qword ptr [rbp - 0xa0], rdx
	mov	edx, edi
	mov	rcx, qword ptr [rbp - 0xa0]
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
	je	.label_423
	mov	rdi, qword ptr [rbp - 0x18]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_419
	movabs	rdi, OFFSET FLAT:.str.159
	call	gettext
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	sort_die
.label_419:
	mov	rdi, qword ptr [rbp - 0x18]
	call	feof_unlocked
	cmp	eax, 0
	je	.label_432
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x30], 1
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x80]
	jne	.label_434
	mov	byte ptr [rbp - 1], 0
	jmp	.label_424
.label_434:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x80]
	je	.label_429
	mov	rax, qword ptr [rbp - 0x80]
	movsx	ecx, byte ptr [rax - 1]
	movsx	edx, byte ptr [rbp - 0x29]
	cmp	ecx, edx
	je	.label_429
	mov	al, byte ptr [rbp - 0x29]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x80], rdx
	mov	byte ptr [rcx], al
.label_429:
	jmp	.label_432
.label_432:
	jmp	.label_423
.label_423:
	jmp	.label_426
.label_426:
	mov	rdi, qword ptr [rbp - 0x48]
	movsx	esi, byte ptr [rbp - 0x29]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rax, rcx
	mov	rdx, rax
	call	memchr
	mov	qword ptr [rbp - 0x88], rax
	cmp	rax, 0
	je	.label_435
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
	jbe	.label_436
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0xa8], rax
	jmp	.label_428
.label_436:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0xa8], rax
.label_428:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x60], rcx
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_430
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 0x10], -1
	jne	.label_442
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_431
.label_442:
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x28]
	call	limfield
	mov	qword ptr [rbp - 0xb0], rax
.label_431:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], -1
	je	.label_421
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x28]
	call	begfield
	mov	rsi, qword ptr [rbp - 0x58]
	mov	qword ptr [rsi + 0x10], rax
	jmp	.label_422
.label_421:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x30], 1
	je	.label_441
	jmp	.label_420
.label_420:
	mov	rax, qword ptr [rbp - 0x68]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	test	byte ptr [byte ptr [+ (rcx * 1) + blanks]],  1
	je	.label_427
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_420
.label_427:
	jmp	.label_441
.label_441:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx + 0x10], rax
.label_422:
	jmp	.label_430
.label_430:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_426
.label_435:
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x30], 1
	je	.label_433
	jmp	.label_438
.label_433:
	jmp	.label_439
.label_438:
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
	je	.label_444
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x68]
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 0x22
	mov	qword ptr [word ptr [merge_buffer_size]],  rax
	mov	byte ptr [rbp - 1], 1
	jmp	.label_424
.label_444:
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
	jmp	.label_437
.label_424:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408420

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
	#Procedure 0x408450

	.globl compare
	.type compare, @function
compare:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [word ptr [keylist]],  0
	je	.label_449
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	keycompare
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	jne	.label_447
	test	byte ptr [byte ptr [unique]],  1
	jne	.label_447
	test	byte ptr [byte ptr [stable]],  1
	je	.label_450
.label_447:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_445
.label_450:
	jmp	.label_449
.label_449:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_459
	xor	eax, eax
	cmp	qword ptr [rbp - 0x30], 0
	setne	cl
	and	cl, 1
	movzx	edx, cl
	sub	eax, edx
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_453
.label_459:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_461
	mov	dword ptr [rbp - 0x1c], 1
	jmp	.label_446
.label_461:
	test	byte ptr [byte ptr [hard_LC_COLLATE]],  1
	je	.label_455
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
	jmp	.label_452
.label_455:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rdi
	mov	qword ptr [rbp - 0x40], rsi
	jae	.label_448
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_457
.label_448:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x48], rax
.label_457:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, rax
	call	memcmp
	mov	dword ptr [rbp - 0x1c], eax
	cmp	eax, 0
	jne	.label_451
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_454
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_458
.label_454:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	setne	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0x4c], edx
.label_458:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x1c], eax
.label_451:
	jmp	.label_452
.label_452:
	jmp	.label_446
.label_446:
	jmp	.label_453
.label_453:
	test	byte ptr [byte ptr [reverse]],  1
	je	.label_456
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x50], eax
	jmp	.label_460
.label_456:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x50], eax
.label_460:
	mov	eax, dword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 4], eax
.label_445:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408620

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
	jne	.label_466
	test	byte ptr [byte ptr [debug]],  1
	je	.label_466
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rax
.label_470:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_464
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x38], rcx
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x39], dl
	movsx	esi, byte ptr [rbp - 0x39]
	cmp	esi, 9
	jne	.label_467
	mov	byte ptr [rbp - 0x39], 0x3e
	jmp	.label_462
.label_467:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_468
	mov	byte ptr [rbp - 0x39], 0xa
.label_468:
	jmp	.label_462
.label_462:
	movsx	edi, byte ptr [rbp - 0x39]
	mov	rsi, qword ptr [rbp - 0x10]
	call	fputc_unlocked
	cmp	eax, -1
	jne	.label_465
	movabs	rdi, OFFSET FLAT:.str.163
	call	gettext
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	sort_die
.label_465:
	jmp	.label_470
.label_464:
	mov	rdi, qword ptr [rbp - 8]
	call	debug_line
	jmp	.label_463
.label_466:
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
	je	.label_469
	movabs	rdi, OFFSET FLAT:.str.163
	call	gettext
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	sort_die
.label_469:
	mov	rax, qword ptr [rbp - 0x30]
	mov	byte ptr [rax - 1], 0
.label_463:
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408770

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
	jne	.label_499
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_499:
	cmp	dword ptr [dword ptr [tab]],  0x80
	je	.label_492
	jmp	.label_490
.label_490:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x31], cl
	jae	.label_496
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x28], rcx
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x31], dl
.label_496:
	mov	al, byte ptr [rbp - 0x31]
	test	al, 1
	jne	.label_475
	jmp	.label_479
.label_475:
	jmp	.label_481
.label_481:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x32], cl
	jae	.label_483
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx,  dword ptr [dword ptr [tab]]
	setne	dl
	mov	byte ptr [rbp - 0x32], dl
.label_483:
	mov	al, byte ptr [rbp - 0x32]
	test	al, 1
	jne	.label_493
	jmp	.label_494
.label_493:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_481
.label_494:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_473
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_503
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_473
.label_503:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_473:
	jmp	.label_490
.label_479:
	jmp	.label_480
.label_492:
	jmp	.label_478
.label_478:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x33], cl
	jae	.label_486
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x28], rcx
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x33], dl
.label_486:
	mov	al, byte ptr [rbp - 0x33]
	test	al, 1
	jne	.label_495
	jmp	.label_498
.label_495:
	jmp	.label_488
.label_488:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x34], cl
	jae	.label_500
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + blanks]]
	mov	byte ptr [rbp - 0x34], al
.label_500:
	mov	al, byte ptr [rbp - 0x34]
	test	al, 1
	jne	.label_482
	jmp	.label_484
.label_482:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_488
.label_484:
	jmp	.label_474
.label_474:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x35], cl
	jae	.label_491
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + blanks]]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x35], al
.label_491:
	mov	al, byte ptr [rbp - 0x35]
	test	al, 1
	jne	.label_502
	jmp	.label_472
.label_502:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_474
.label_472:
	jmp	.label_478
.label_498:
	jmp	.label_480
.label_480:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_497
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x31], 1
	je	.label_487
	jmp	.label_471
.label_471:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x36], cl
	jae	.label_476
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + blanks]]
	mov	byte ptr [rbp - 0x36], al
.label_476:
	mov	al, byte ptr [rbp - 0x36]
	test	al, 1
	jne	.label_501
	jmp	.label_489
.label_501:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_471
.label_489:
	jmp	.label_487
.label_487:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, qword ptr [rbp - 0x30]
	cmp	rax, rcx
	jae	.label_477
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_485
.label_477:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
.label_485:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x18], rax
.label_497:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408a60

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
	je	.label_524
	jmp	.label_514
.label_514:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x31], cl
	jae	.label_517
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x28], rcx
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x31], dl
.label_517:
	mov	al, byte ptr [rbp - 0x31]
	test	al, 1
	jne	.label_529
	jmp	.label_519
.label_529:
	jmp	.label_515
.label_515:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x32], cl
	jae	.label_523
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx,  dword ptr [dword ptr [tab]]
	setne	dl
	mov	byte ptr [rbp - 0x32], dl
.label_523:
	mov	al, byte ptr [rbp - 0x32]
	test	al, 1
	jne	.label_508
	jmp	.label_511
.label_508:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_515
.label_511:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_521
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_521:
	jmp	.label_514
.label_519:
	jmp	.label_525
.label_524:
	jmp	.label_530
.label_530:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x33], cl
	jae	.label_532
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x28], rcx
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x33], dl
.label_532:
	mov	al, byte ptr [rbp - 0x33]
	test	al, 1
	jne	.label_507
	jmp	.label_504
.label_507:
	jmp	.label_510
.label_510:
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
	jmp	.label_531
.label_526:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_510
.label_531:
	jmp	.label_505
.label_505:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x35], cl
	jae	.label_506
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + blanks]]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x35], al
.label_506:
	mov	al, byte ptr [rbp - 0x35]
	test	al, 1
	jne	.label_518
	jmp	.label_520
.label_518:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_505
.label_520:
	jmp	.label_530
.label_504:
	jmp	.label_525
.label_525:
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x30], 1
	je	.label_522
	jmp	.label_516
.label_516:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x36], cl
	jae	.label_533
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + blanks]]
	mov	byte ptr [rbp - 0x36], al
.label_533:
	mov	al, byte ptr [rbp - 0x36]
	test	al, 1
	jne	.label_509
	jmp	.label_513
.label_509:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_516
.label_513:
	jmp	.label_522
.label_522:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, qword ptr [rbp - 0x30]
	cmp	rax, rcx
	jae	.label_528
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_527
.label_528:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
.label_527:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408d20

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
.label_624:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	jbe	.label_617
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x1058], rax
	jmp	.label_627
.label_617:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x1058], rax
.label_627:
	mov	rax, qword ptr [rbp - 0x1058]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x40]
	jbe	.label_634
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x1060], rax
	jmp	.label_640
.label_634:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x1060], rax
.label_640:
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
	jne	.label_544
	mov	rdi, qword ptr [rbp - 0x20]
	call	key_numeric
	test	al, 1
	jne	.label_544
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x36], 1
	jne	.label_544
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x33], 1
	jne	.label_544
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x38], 1
	je	.label_635
.label_544:
	cmp	qword ptr [rbp - 0x58], 0
	jne	.label_557
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_559
.label_557:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	add	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x1050], rax
	cmp	qword ptr [rbp - 0x1050], 0xfa0
	ja	.label_561
	lea	rax, [rbp - 0x1040]
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x98], 0
	jmp	.label_568
.label_561:
	mov	rdi, qword ptr [rbp - 0x1050]
	call	xmalloc
	mov	qword ptr [rbp - 0x98], rax
	mov	qword ptr [rbp - 0x70], rax
.label_568:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	mov	qword ptr [rbp - 0x1048], 0
	mov	qword ptr [rbp - 0x80], 0
.label_629:
	mov	rax, qword ptr [rbp - 0x1048]
	cmp	rax, qword ptr [rbp - 0x60]
	jae	.label_620
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_588
	mov	rax, qword ptr [rbp - 0x1048]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	rdx, qword ptr [rbp - 0x58]
	test	byte ptr [rdx + rcx], 1
	jne	.label_597
.label_588:
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_601
	mov	rax, qword ptr [rbp - 0x1048]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	rdx, qword ptr [rbp - 0x50]
	movsx	edi, byte ptr [rdx + rcx]
	mov	dword ptr [rbp - 0x1064], edi
	jmp	.label_608
.label_601:
	mov	rax, qword ptr [rbp - 0x1048]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x1064], edx
.label_608:
	mov	eax, dword ptr [rbp - 0x1064]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x80], rsi
	mov	rsi, qword ptr [rbp - 0x70]
	mov	byte ptr [rsi + rdx], cl
.label_597:
	jmp	.label_623
.label_623:
	mov	rax, qword ptr [rbp - 0x1048]
	add	rax, 1
	mov	qword ptr [rbp - 0x1048], rax
	jmp	.label_629
.label_620:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	byte ptr [rcx + rax], 0
	mov	qword ptr [rbp - 0x1048], 0
	mov	qword ptr [rbp - 0x88], 0
.label_563:
	mov	rax, qword ptr [rbp - 0x1048]
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_641
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_612
	mov	rax, qword ptr [rbp - 0x1048]
	mov	rcx, qword ptr [rbp - 0x30]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	rdx, qword ptr [rbp - 0x58]
	test	byte ptr [rdx + rcx], 1
	jne	.label_535
.label_612:
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_540
	mov	rax, qword ptr [rbp - 0x1048]
	mov	rcx, qword ptr [rbp - 0x30]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	rdx, qword ptr [rbp - 0x50]
	movsx	edi, byte ptr [rdx + rcx]
	mov	dword ptr [rbp - 0x1068], edi
	jmp	.label_606
.label_540:
	mov	rax, qword ptr [rbp - 0x1048]
	mov	rcx, qword ptr [rbp - 0x30]
	movsx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x1068], edx
.label_606:
	mov	eax, dword ptr [rbp - 0x1068]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x88], rsi
	mov	rsi, qword ptr [rbp - 0x78]
	mov	byte ptr [rsi + rdx], cl
.label_535:
	jmp	.label_558
.label_558:
	mov	rax, qword ptr [rbp - 0x1048]
	add	rax, 1
	mov	qword ptr [rbp - 0x1048], rax
	jmp	.label_563
.label_641:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	byte ptr [rcx + rax], 0
	jmp	.label_574
.label_559:
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
.label_574:
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x32], 1
	je	.label_598
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x78]
	call	numcompare
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_570
.label_598:
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x34], 1
	je	.label_604
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x78]
	call	general_numcompare
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_567
.label_604:
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x35], 1
	je	.label_613
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x78]
	call	human_numcompare
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_565
.label_613:
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x36], 1
	je	.label_622
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
	jmp	.label_546
.label_622:
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x33], 1
	je	.label_638
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x88]
	call	compare_random
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_562
.label_638:
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x38], 1
	je	.label_645
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x78]
	call	filevercmp
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_537
.label_645:
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_539
	xor	eax, eax
	cmp	qword ptr [rbp - 0x88], 0
	setne	cl
	and	cl, 1
	movzx	edx, cl
	sub	eax, edx
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_542
.label_539:
	cmp	qword ptr [rbp - 0x88], 0
	jne	.label_611
	mov	dword ptr [rbp - 0x44], 1
	jmp	.label_553
.label_611:
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x88]
	add	rcx, 1
	mov	rsi, rax
	call	xmemcoll0
	mov	dword ptr [rbp - 0x44], eax
.label_553:
	jmp	.label_542
.label_542:
	jmp	.label_537
.label_537:
	jmp	.label_562
.label_562:
	jmp	.label_546
.label_546:
	jmp	.label_565
.label_565:
	jmp	.label_567
.label_567:
	jmp	.label_570
.label_570:
	cmp	qword ptr [rbp - 0x58], 0
	jne	.label_572
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_576
.label_572:
	mov	rdi, qword ptr [rbp - 0x98]
	call	free
	jmp	.label_579
.label_576:
	mov	al, byte ptr [rbp - 0x89]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	byte ptr [rdx + rcx], al
	mov	al, byte ptr [rbp - 0x8a]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	byte ptr [rdx + rcx], al
.label_579:
	jmp	.label_583
.label_635:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_585
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_587
	jmp	.label_591
.label_591:
	jmp	.label_545
.label_545:
	jmp	.label_593
.label_593:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x38]
	mov	byte ptr [rbp - 0x106d], cl
	jae	.label_595
	mov	rax, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	rdx, qword ptr [rbp - 0x58]
	mov	al, byte ptr [rdx + rcx]
	mov	byte ptr [rbp - 0x106d], al
.label_595:
	mov	al, byte ptr [rbp - 0x106d]
	test	al, 1
	jne	.label_607
	jmp	.label_610
.label_607:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_593
.label_610:
	jmp	.label_616
.label_616:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	rdx, qword ptr [rbp - 0x40]
	mov	byte ptr [rbp - 0x106e], cl
	jae	.label_578
	mov	rax, qword ptr [rbp - 0x30]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	rdx, qword ptr [rbp - 0x58]
	mov	al, byte ptr [rdx + rcx]
	mov	byte ptr [rbp - 0x106e], al
.label_578:
	mov	al, byte ptr [rbp - 0x106e]
	test	al, 1
	jne	.label_632
	jmp	.label_637
.label_632:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_616
.label_637:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_581
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x40]
	jb	.label_599
.label_581:
	jmp	.label_644
.label_599:
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
	je	.label_602
	jmp	.label_555
.label_602:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_545
.label_644:
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
	jmp	.label_569
.label_587:
	jmp	.label_630
.label_630:
	jmp	.label_573
.label_573:
	jmp	.label_575
.label_575:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x38]
	mov	byte ptr [rbp - 0x1075], cl
	jae	.label_577
	mov	rax, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	rdx, qword ptr [rbp - 0x58]
	mov	al, byte ptr [rdx + rcx]
	mov	byte ptr [rbp - 0x1075], al
.label_577:
	mov	al, byte ptr [rbp - 0x1075]
	test	al, 1
	jne	.label_582
	jmp	.label_584
.label_582:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_575
.label_584:
	jmp	.label_590
.label_590:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	rdx, qword ptr [rbp - 0x40]
	mov	byte ptr [rbp - 0x1076], cl
	jae	.label_592
	mov	rax, qword ptr [rbp - 0x30]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	rdx, qword ptr [rbp - 0x58]
	mov	al, byte ptr [rdx + rcx]
	mov	byte ptr [rbp - 0x1076], al
.label_592:
	mov	al, byte ptr [rbp - 0x1076]
	test	al, 1
	jne	.label_605
	jmp	.label_609
.label_605:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_590
.label_609:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_614
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x40]
	jb	.label_618
.label_614:
	jmp	.label_621
.label_618:
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
	je	.label_631
	jmp	.label_555
.label_631:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_573
.label_621:
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
	jmp	.label_569
.label_569:
	jmp	.label_543
.label_585:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_538
	xor	eax, eax
	cmp	qword ptr [rbp - 0x68], 0
	setne	cl
	and	cl, 1
	movzx	edx, cl
	sub	eax, edx
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_541
.label_538:
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_550
	jmp	.label_551
.label_550:
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_552
	jmp	.label_556
.label_556:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x38]
	mov	byte ptr [rbp - 0x107d], cl
	jae	.label_536
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x40]
	setb	cl
	mov	byte ptr [rbp - 0x107d], cl
.label_536:
	mov	al, byte ptr [rbp - 0x107d]
	test	al, 1
	jne	.label_589
	jmp	.label_564
.label_589:
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
	je	.label_586
	jmp	.label_555
.label_586:
	jmp	.label_556
.label_564:
	jmp	.label_594
.label_552:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x1090], rdi
	mov	qword ptr [rbp - 0x1098], rsi
	jae	.label_596
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10a0], rax
	jmp	.label_603
.label_596:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x10a0], rax
.label_603:
	mov	rax, qword ptr [rbp - 0x10a0]
	mov	rdi, qword ptr [rbp - 0x1090]
	mov	rsi, qword ptr [rbp - 0x1098]
	mov	rdx, rax
	call	memcmp
	mov	dword ptr [rbp - 0x44], eax
	cmp	dword ptr [rbp - 0x44], 0
	je	.label_619
	jmp	.label_555
.label_619:
	jmp	.label_594
.label_594:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_625
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x10a4], eax
	jmp	.label_628
.label_625:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x68]
	setne	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0x10a4], edx
.label_628:
	mov	eax, dword ptr [rbp - 0x10a4]
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_541
.label_541:
	jmp	.label_543
.label_543:
	jmp	.label_583
.label_583:
	cmp	dword ptr [rbp - 0x44], 0
	je	.label_642
	jmp	.label_555
.label_642:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_643
	jmp	.label_647
.label_643:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x10], -1
	je	.label_534
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	limfield
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	limfield
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_548
.label_534:
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
.label_548:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], -1
	je	.label_560
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	begfield
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	begfield
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_566
.label_560:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x30], 1
	je	.label_571
	jmp	.label_554
.label_554:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x38]
	mov	byte ptr [rbp - 0x10a5], cl
	jae	.label_580
	mov	rax, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + blanks]]
	mov	byte ptr [rbp - 0x10a5], al
.label_580:
	mov	al, byte ptr [rbp - 0x10a5]
	test	al, 1
	jne	.label_646
	jmp	.label_547
.label_646:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_554
.label_547:
	jmp	.label_549
.label_549:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	rdx, qword ptr [rbp - 0x40]
	mov	byte ptr [rbp - 0x10a6], cl
	jae	.label_600
	mov	rax, qword ptr [rbp - 0x30]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + blanks]]
	mov	byte ptr [rbp - 0x10a6], al
.label_600:
	mov	al, byte ptr [rbp - 0x10a6]
	test	al, 1
	jne	.label_639
	jmp	.label_615
.label_639:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_549
.label_615:
	jmp	.label_571
.label_571:
	jmp	.label_566
.label_566:
	jmp	.label_624
.label_647:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_626
.label_551:
	mov	dword ptr [rbp - 0x44], 1
.label_555:
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x37], 1
	je	.label_636
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x10ac], eax
	jmp	.label_633
.label_636:
	mov	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x10ac], eax
.label_633:
	mov	eax, dword ptr [rbp - 0x10ac]
	mov	dword ptr [rbp - 4], eax
.label_626:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10b0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4099e0

	.globl numcompare
	.type numcompare, @function
numcompare:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
.label_651:
	mov	rax, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	test	byte ptr [byte ptr [+ (rcx * 1) + blanks]],  1
	je	.label_650
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_651
.label_650:
	jmp	.label_649
.label_649:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	test	byte ptr [byte ptr [+ (rcx * 1) + blanks]],  1
	je	.label_648
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_649
.label_648:
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
	#Procedure 0x409a80

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
	jne	.label_664
	mov	eax, 0xffffffff
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x28]
	cmove	eax, ecx
	mov	dword ptr [rbp - 4], eax
	jmp	.label_661
.label_664:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_658
	mov	dword ptr [rbp - 4], 1
	jmp	.label_661
.label_658:
	fld	xword ptr [rbp - 0x40]
	fld	xword ptr [rbp - 0x50]
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_667
	jmp	.label_652
.label_652:
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_666
.label_667:
	fld	xword ptr [rbp - 0x40]
	fld	xword ptr [rbp - 0x50]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_656
	jmp	.label_660
.label_660:
	mov	eax, 1
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_663
.label_656:
	fld	xword ptr [rbp - 0x40]
	fld	xword ptr [rbp - 0x50]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_655
	jnp	.label_653
	jmp	.label_655
.label_653:
	xor	eax, eax
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_657
.label_655:
	fld	xword ptr [rbp - 0x50]
	fucomip	st(0)
	jp	.label_659
	jmp	.label_662
.label_662:
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_665
.label_659:
	fld	xword ptr [rbp - 0x40]
	fucomip	st(0)
	jp	.label_669
	jmp	.label_668
.label_668:
	mov	eax, 1
	mov	dword ptr [rbp - 0x64], eax
	jmp	.label_654
.label_669:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	nan_compare
	mov	dword ptr [rbp - 0x64], eax
.label_654:
	mov	eax, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x60], eax
.label_665:
	mov	eax, dword ptr [rbp - 0x60]
	mov	dword ptr [rbp - 0x5c], eax
.label_657:
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 0x58], eax
.label_663:
	mov	eax, dword ptr [rbp - 0x58]
	mov	dword ptr [rbp - 0x54], eax
.label_666:
	mov	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 4], eax
.label_661:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409bd0

	.globl human_numcompare
	.type human_numcompare, @function
human_numcompare:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
.label_675:
	mov	rax, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	test	byte ptr [byte ptr [+ (rcx * 1) + blanks]],  1
	je	.label_673
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_675
.label_673:
	jmp	.label_670
.label_670:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	test	byte ptr [byte ptr [+ (rcx * 1) + blanks]],  1
	je	.label_671
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_670
.label_671:
	mov	rdi, qword ptr [rbp - 8]
	call	find_unit_order
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x18], eax
	call	find_unit_order
	mov	ecx, dword ptr [rbp - 0x18]
	sub	ecx, eax
	mov	dword ptr [rbp - 0x14], ecx
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_674
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_672
.label_674:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx,  dword ptr [dword ptr [decimal_point]]
	mov	ecx,  dword ptr [dword ptr [thousands_sep]]
	call	strnumcmp
	mov	dword ptr [rbp - 0x1c], eax
.label_672:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409ca0

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
.label_687:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	test	byte ptr [byte ptr [+ (rcx * 1) + blanks]],  1
	je	.label_676
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_687
.label_676:
	jmp	.label_682
.label_682:
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
.label_679:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	byte ptr [rax], 0
	jne	.label_683
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_686
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
.label_686:
	movabs	rax, OFFSET FLAT:monthtab
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 4
	add	rax, rcx
	mov	edx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_677
.label_683:
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
	jge	.label_681
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_680
.label_681:
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
	jle	.label_684
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_680
.label_684:
	jmp	.label_688
.label_688:
	jmp	.label_678
.label_678:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_679
.label_680:
	jmp	.label_685
.label_685:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x28]
	jb	.label_682
	mov	dword ptr [rbp - 4], 0
.label_677:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409e60

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
	je	.label_695
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x1158], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x1160], rax
.label_718:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 3
	add	rax, 2
	mov	qword ptr [rbp - 0x1168], rax
	mov	rax, qword ptr [rbp - 0xfe0]
	cmp	rax, qword ptr [rbp - 0x1168]
	jae	.label_692
	mov	rax, qword ptr [rbp - 0x1168]
	imul	rcx, qword ptr [rbp - 0xfe0], 3
	shr	rcx, 1
	cmp	rax, rcx
	jbe	.label_717
	mov	rax, qword ptr [rbp - 0x1168]
	mov	qword ptr [rbp - 0x11a8], rax
	jmp	.label_691
.label_717:
	imul	rax, qword ptr [rbp - 0xfe0], 3
	shr	rax, 1
	mov	qword ptr [rbp - 0x11a8], rax
.label_691:
	mov	rax, qword ptr [rbp - 0x11a8]
	mov	qword ptr [rbp - 0xfe0], rax
	mov	rdi, qword ptr [rbp - 0xfe8]
	call	free
	mov	rdi, qword ptr [rbp - 0xfe0]
	call	malloc
	mov	qword ptr [rbp - 0xfe8], rax
	mov	qword ptr [rbp - 0xfd8], rax
	cmp	qword ptr [rbp - 0xfd8], 0
	jne	.label_707
	lea	rax, [rbp - 0xfd0]
	mov	qword ptr [rbp - 0xfd8], rax
	mov	qword ptr [rbp - 0xfe0], 0xfa0
.label_707:
	jmp	.label_692
.label_692:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x1158]
	jae	.label_693
	mov	rdi, qword ptr [rbp - 0xfd8]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0xfe0]
	call	xstrxfrm
	add	rax, 1
	mov	qword ptr [rbp - 0x11b0], rax
	jmp	.label_700
.label_693:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x11b0], rcx
	jmp	.label_700
.label_700:
	mov	rax, qword ptr [rbp - 0x11b0]
	mov	qword ptr [rbp - 0x1170], rax
	mov	rax, qword ptr [rbp - 0x1170]
	cmp	rax, qword ptr [rbp - 0xfe0]
	setbe	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x1171], cl
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x1160]
	jae	.label_709
	test	byte ptr [rbp - 0x1171], 1
	je	.label_694
	mov	rax, qword ptr [rbp - 0xfd8]
	add	rax, qword ptr [rbp - 0x1170]
	mov	qword ptr [rbp - 0x11b8], rax
	jmp	.label_698
.label_694:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x11b8], rcx
	jmp	.label_698
.label_698:
	mov	rax, qword ptr [rbp - 0x11b8]
	mov	rsi, qword ptr [rbp - 0x18]
	test	byte ptr [rbp - 0x1171], 1
	mov	qword ptr [rbp - 0x11c0], rax
	mov	qword ptr [rbp - 0x11c8], rsi
	je	.label_690
	mov	rax, qword ptr [rbp - 0xfe0]
	sub	rax, qword ptr [rbp - 0x1170]
	mov	qword ptr [rbp - 0x11d0], rax
	jmp	.label_689
.label_690:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x11d0], rcx
	jmp	.label_689
.label_689:
	mov	rax, qword ptr [rbp - 0x11d0]
	mov	rdi, qword ptr [rbp - 0x11c0]
	mov	rsi, qword ptr [rbp - 0x11c8]
	mov	rdx, rax
	call	xstrxfrm
	add	rax, 1
	mov	qword ptr [rbp - 0x11d8], rax
	jmp	.label_702
.label_709:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x11d8], rcx
	jmp	.label_702
.label_702:
	mov	rax, qword ptr [rbp - 0x11d8]
	mov	qword ptr [rbp - 0x1180], rax
	test	byte ptr [rbp - 0x1171], 1
	je	.label_706
	mov	rax, qword ptr [rbp - 0x1170]
	add	rax, qword ptr [rbp - 0x1180]
	cmp	rax, qword ptr [rbp - 0xfe0]
	jbe	.label_716
.label_706:
	movabs	rax, 0x5555555555555555
	mov	rcx, qword ptr [rbp - 0x1170]
	add	rcx, qword ptr [rbp - 0x1180]
	mov	qword ptr [rbp - 0xfe0], rcx
	cmp	qword ptr [rbp - 0xfe0], rax
	jae	.label_697
	imul	rax, qword ptr [rbp - 0xfe0], 3
	shr	rax, 1
	mov	qword ptr [rbp - 0xfe0], rax
.label_697:
	mov	rdi, qword ptr [rbp - 0xfe8]
	call	free
	mov	rdi, qword ptr [rbp - 0xfe0]
	call	xmalloc
	mov	qword ptr [rbp - 0xfe8], rax
	mov	qword ptr [rbp - 0xfd8], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x1158]
	jae	.label_713
	mov	rdi, qword ptr [rbp - 0xfd8]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x1170]
	call	strxfrm
	mov	qword ptr [rbp - 0x11e0], rax
.label_713:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x1160]
	jae	.label_699
	mov	rax, qword ptr [rbp - 0xfd8]
	add	rax, qword ptr [rbp - 0x1170]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x1180]
	mov	rdi, rax
	call	strxfrm
	mov	qword ptr [rbp - 0x11e8], rax
.label_699:
	jmp	.label_716
.label_716:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x1158]
	jae	.label_711
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	add	rax, 1
	add	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 8], rax
.label_711:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x1160]
	jae	.label_720
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	add	rax, 1
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
.label_720:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x1158]
	jb	.label_703
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x1160]
	jb	.label_703
	mov	rax, qword ptr [rbp - 0x1170]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0xfd8]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x1180]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0xfd8]
	add	rax, qword ptr [rbp - 0x1170]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_719
.label_703:
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
	jne	.label_701
	mov	rdi, qword ptr [rbp - 0xfd8]
	mov	rax, qword ptr [rbp - 0xfd8]
	add	rax, qword ptr [rbp - 0x1170]
	mov	rcx, qword ptr [rbp - 0x1170]
	cmp	rcx, qword ptr [rbp - 0x1180]
	mov	qword ptr [rbp - 0x11f8], rdi
	mov	qword ptr [rbp - 0x1200], rax
	jae	.label_712
	mov	rax, qword ptr [rbp - 0x1170]
	mov	qword ptr [rbp - 0x1208], rax
	jmp	.label_714
.label_712:
	mov	rax, qword ptr [rbp - 0x1180]
	mov	qword ptr [rbp - 0x1208], rax
.label_714:
	mov	rax, qword ptr [rbp - 0x1208]
	mov	rdi, qword ptr [rbp - 0x11f8]
	mov	rsi, qword ptr [rbp - 0x1200]
	mov	rdx, rax
	call	memcmp
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_708
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
.label_708:
	jmp	.label_701
.label_701:
	jmp	.label_718
.label_719:
	jmp	.label_695
.label_695:
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
	jne	.label_705
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_710
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x1228], rdi
	mov	qword ptr [rbp - 0x1230], rsi
	jae	.label_715
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x1238], rax
	jmp	.label_696
.label_715:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x1238], rax
.label_696:
	mov	rax, qword ptr [rbp - 0x1238]
	mov	rdi, qword ptr [rbp - 0x1228]
	mov	rsi, qword ptr [rbp - 0x1230]
	mov	rdx, rax
	call	memcmp
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_704
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
.label_704:
	jmp	.label_710
.label_710:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x1184], eax
.label_705:
	mov	rdi, qword ptr [rbp - 0xfe8]
	call	free
	mov	eax, dword ptr [rbp - 0x1184]
	add	rsp, 0x1240
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a5a0

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
	#Procedure 0x40a620

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
	jge	.label_721
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x22], cl
	movzx	edx, byte ptr [rbp - 0x22]
	mov	eax, edx
	movsx	edx,  byte ptr [byte ptr [+ (rax * 1) + unit_order]]
	mov	dword ptr [rbp - 0x28], edx
	test	byte ptr [rbp - 0x11], 1
	je	.label_722
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_723
.label_722:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x2c], eax
.label_723:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_724
.label_721:
	mov	dword ptr [rbp - 4], 0
.label_724:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a6d0

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
.label_731:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x19], dl
	movzx	esi, dl
	sub	esi, 0x30
	cmp	esi, 9
	ja	.label_729
	movzx	eax, byte ptr [rbp - 0x1a]
	movzx	ecx, byte ptr [rbp - 0x19]
	cmp	eax, ecx
	jge	.label_730
	mov	al, byte ptr [rbp - 0x19]
	mov	byte ptr [rbp - 0x1a], al
.label_730:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx,  dword ptr [dword ptr [thousands_sep]]
	sete	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x1b], dl
	test	byte ptr [rbp - 0x1b], 1
	je	.label_728
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_728:
	jmp	.label_731
.label_729:
	test	byte ptr [rbp - 0x1b], 1
	je	.label_733
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -2
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dl, byte ptr [rbp - 0x1a]
	mov	byte ptr [rbp - 1], dl
	jmp	.label_725
.label_733:
	movzx	eax, byte ptr [rbp - 0x19]
	cmp	eax,  dword ptr [dword ptr [decimal_point]]
	jne	.label_732
	jmp	.label_727
.label_727:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x19], dl
	movzx	esi, dl
	sub	esi, 0x30
	cmp	esi, 9
	ja	.label_726
	movzx	eax, byte ptr [rbp - 0x1a]
	movzx	ecx, byte ptr [rbp - 0x19]
	cmp	eax, ecx
	jge	.label_734
	mov	al, byte ptr [rbp - 0x19]
	mov	byte ptr [rbp - 0x1a], al
.label_734:
	jmp	.label_727
.label_726:
	jmp	.label_732
.label_732:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dl, byte ptr [rbp - 0x1a]
	mov	byte ptr [rbp - 1], dl
.label_725:
	movzx	eax, byte ptr [rbp - 1]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a7f0

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
	je	.label_735
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.160
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x24]
	mov	rdx, rax
	mov	al, 0
	call	error
	movabs	rdi, OFFSET FLAT:.str.161
	call	gettext
	xor	esi, esi
	mov	edi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
	movabs	rdi, OFFSET FLAT:.str.162
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
.label_735:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a8c0

	.globl debug_line
	.type debug_line, @function
debug_line:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi,  qword ptr [word ptr [keylist]]
	mov	qword ptr [rbp - 0x10], rdi
.label_739:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	debug_key
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x11], cl
	je	.label_737
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x40]
	mov	qword ptr [rbp - 0x10], rcx
	cmp	rcx, 0
	mov	byte ptr [rbp - 0x12], al
	jne	.label_738
	mov	al, 1
	test	byte ptr [byte ptr [unique]],  1
	mov	byte ptr [rbp - 0x13], al
	jne	.label_736
	mov	al,  byte ptr [byte ptr [stable]]
	mov	byte ptr [rbp - 0x13], al
.label_736:
	mov	al, byte ptr [rbp - 0x13]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x12], al
.label_738:
	mov	al, byte ptr [rbp - 0x12]
	mov	byte ptr [rbp - 0x11], al
.label_737:
	mov	al, byte ptr [rbp - 0x11]
	test	al, 1
	jne	.label_739
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a950

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
	je	.label_755
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], -1
	je	.label_744
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	begfield
	mov	qword ptr [rbp - 0x20], rax
.label_744:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], -1
	je	.label_750
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	limfield
	mov	qword ptr [rbp - 0x28], rax
.label_750:
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x30], 1
	je	.label_754
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], -1
	je	.label_740
.label_754:
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x36], 1
	jne	.label_740
	mov	rdi, qword ptr [rbp - 0x10]
	call	key_numeric
	test	al, 1
	jne	.label_740
	jmp	.label_741
.label_740:
	mov	rax, qword ptr [rbp - 0x28]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x29], cl
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax], 0
.label_743:
	mov	rax, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	test	byte ptr [byte ptr [+ (rcx * 1) + blanks]],  1
	je	.label_748
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_743
.label_748:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_747
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_757
.label_747:
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x36], 1
	je	.label_759
	lea	rsi, [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x20]
	call	getmonth
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_742
.label_759:
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x34], 1
	je	.label_746
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rbp - 0x38]
	call	strtold
	fstp	xword ptr [rbp - 0x50]
	jmp	.label_751
.label_746:
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x32], 1
	jne	.label_752
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x35], 1
	je	.label_753
.label_752:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x80], rdx
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_756
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	sete	dl
	mov	byte ptr [rbp - 0x81], dl
.label_756:
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
	jg	.label_749
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
	je	.label_745
	movzx	eax, byte ptr [rbp - 0x5a]
	mov	ecx, eax
	movsx	eax,  byte ptr [byte ptr [+ (rcx * 1) + unit_order]]
	cmp	eax, 0
	setne	dl
	mov	byte ptr [rbp - 0x91], dl
.label_745:
	mov	al, byte ptr [rbp - 0x91]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x90]
	add	rsi, rdx
	mov	qword ptr [rbp - 0x38], rsi
.label_749:
	jmp	.label_758
.label_753:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
.label_758:
	jmp	.label_751
.label_751:
	jmp	.label_742
.label_742:
	jmp	.label_757
.label_757:
	mov	al, byte ptr [rbp - 0x29]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x28], rcx
.label_741:
	jmp	.label_755
.label_755:
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
	#Procedure 0x40ac20

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
.label_760:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_761
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
	jmp	.label_760
.label_761:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aca0

	.globl mark_key
	.type mark_key, @function
mark_key:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
.label_764:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 8], rcx
	cmp	rax, 0
	je	.label_763
	mov	edi, 0x20
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_764
.label_763:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_765
	movabs	rdi, OFFSET FLAT:.str.164
	call	gettext
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x18], eax
	jmp	.label_766
.label_765:
	jmp	.label_762
.label_762:
	mov	edi, 0x5f
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	jne	.label_762
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x20], eax
.label_766:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ad50

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
	je	.label_767
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	dup2
	mov	edi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0xc], eax
	call	close
	mov	dword ptr [rbp - 0x10], eax
.label_767:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ad90

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
	#Procedure 0x40adb0

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
	jae	.label_768
	cmp	qword ptr [rbp - 0x38], 2
	jae	.label_768
	movabs	rdi, OFFSET FLAT:.str.142
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rdi]
	mov	rdi, rax
	call	sort_die
.label_768:
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
	#Procedure 0x40ae50

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
.label_774:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_779
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:.str.54
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	sete	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x31], dl
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_773
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	jne	.label_773
	test	byte ptr [rbp - 0x31], 1
	jne	.label_773
	mov	byte ptr [rbp - 0x32], 1
	jmp	.label_775
.label_773:
	call	get_outstatus
	mov	qword ptr [rbp - 0xd0], rax
	cmp	qword ptr [rbp - 0xd0], 0
	jne	.label_778
	jmp	.label_779
.label_778:
	test	byte ptr [rbp - 0x31], 1
	je	.label_770
	xor	edi, edi
	lea	rsi, [rbp - 0xc8]
	call	__fstat
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_776
.label_770:
	lea	rsi, [rbp - 0xc8]
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	stat
	mov	dword ptr [rbp - 0xdc], eax
.label_776:
	mov	eax, dword ptr [rbp - 0xdc]
	xor	ecx, ecx
	mov	dl, cl
	cmp	eax, 0
	mov	byte ptr [rbp - 0xdd], dl
	jne	.label_772
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rsi, qword ptr [rbp - 0xd0]
	cmp	rdx, qword ptr [rsi + 8]
	mov	byte ptr [rbp - 0xde], cl
	jne	.label_777
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0xd0]
	cmp	rax, qword ptr [rcx]
	sete	dl
	mov	byte ptr [rbp - 0xde], dl
.label_777:
	mov	al, byte ptr [rbp - 0xde]
	mov	byte ptr [rbp - 0xdd], al
.label_772:
	mov	al, byte ptr [rbp - 0xdd]
	and	al, 1
	mov	byte ptr [rbp - 0x32], al
.label_775:
	test	byte ptr [rbp - 0x32], 1
	je	.label_780
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_769
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
.label_769:
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
.label_780:
	jmp	.label_771
.label_771:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_774
.label_779:
	add	rsp, 0xf0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b070

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
.label_786:
	movsxd	rax, dword ptr [rbp - 0x24]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_783
	movsxd	rax, dword ptr [rbp - 0x24]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 8], 0
	je	.label_784
	movsxd	rax, dword ptr [rbp - 0x24]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	movsx	ecx, byte ptr [rax + 0xc]
	cmp	ecx, 0
	je	.label_784
	movsxd	rax, dword ptr [rbp - 0x24]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	open_temp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_781
.label_784:
	movabs	rsi, OFFSET FLAT:.str.52
	movsxd	rax, dword ptr [rbp - 0x24]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	stream_open
	mov	qword ptr [rbp - 0x30], rax
.label_781:
	mov	rax, qword ptr [rbp - 0x30]
	movsxd	rcx, dword ptr [rbp - 0x24]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx + rcx*8], rax
	movsxd	rax, dword ptr [rbp - 0x24]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rcx + rax*8], 0
	jne	.label_782
	jmp	.label_783
.label_782:
	jmp	.label_785
.label_785:
	mov	eax, dword ptr [rbp - 0x24]
	add	eax, 1
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_786
.label_783:
	movsxd	rax, dword ptr [rbp - 0x24]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b170

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
.label_812:
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_794
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
	jbe	.label_799
	mov	rax,  qword ptr [word ptr [merge_buffer_size]]
	mov	qword ptr [rbp - 0xf8], rax
	jmp	.label_809
.label_799:
	mov	rax,  qword ptr [word ptr [sort_size]]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xf8], rax
.label_809:
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
	jne	.label_835
	jmp	.label_836
.label_835:
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
	jmp	.label_790
.label_836:
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
	jae	.label_818
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x88]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	zaptemp
.label_818:
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
.label_813:
	mov	rax, qword ptr [rbp - 0x90]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_787
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
	jmp	.label_813
.label_787:
	jmp	.label_790
.label_790:
	jmp	.label_812
.label_794:
	mov	qword ptr [rbp - 0x88], 0
.label_819:
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_817
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_819
.label_817:
	mov	qword ptr [rbp - 0x88], 1
.label_816:
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_832
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
	jge	.label_796
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
.label_796:
	jmp	.label_814
.label_814:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_816
.label_832:
	jmp	.label_797
.label_797:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_821
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0xb0], rax
	test	byte ptr [byte ptr [unique]],  1
	je	.label_823
	cmp	qword ptr [rbp - 0x60], 0
	je	.label_831
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0xb0]
	call	compare
	cmp	eax, 0
	je	.label_831
	lea	rdi, [rbp - 0x58]
	mov	qword ptr [rbp - 0x60], 0
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	write_line
.label_831:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_792
	lea	rax, [rbp - 0x58]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_795
	jmp	.label_802
.label_802:
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_804
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_830
.label_804:
	jmp	.label_807
.label_807:
	mov	rax, qword ptr [rbp - 0x68]
	shl	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	mov	rcx, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rcx + 8]
	jb	.label_802
.label_830:
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
	mov	rdi, qword ptr [rbp - 0x68]
	call	xmalloc
	mov	qword ptr [rbp - 0x58], rax
.label_795:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsi, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x50]
	call	memcpy
	cmp	qword ptr [rbp - 0xa0], 0
	je	.label_826
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
.label_826:
	jmp	.label_792
.label_792:
	jmp	.label_793
.label_823:
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	write_line
.label_793:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_800
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, -0x20
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_806
.label_800:
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
	jne	.label_833
	jmp	.label_822
.label_833:
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
	jmp	.label_827
.label_822:
	mov	qword ptr [rbp - 0x88], 1
.label_810:
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_798
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x80]
	cmp	rax, qword ptr [rcx]
	jbe	.label_803
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rcx + rax*8]
	add	rdx, -1
	mov	qword ptr [rcx + rax*8], rdx
.label_803:
	jmp	.label_834
.label_834:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_810
.label_798:
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
	jae	.label_805
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	zaptemp
.label_805:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	imul	rax, rax, 0x38
	add	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rax]
	call	free
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x88], rax
.label_825:
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_824
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
	jmp	.label_825
.label_824:
	mov	qword ptr [rbp - 0x88], 0
.label_820:
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_789
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_820
.label_789:
	jmp	.label_797
.label_827:
	jmp	.label_806
.label_806:
	mov	qword ptr [rbp - 0xc0], 1
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0xd0], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xd8], rax
.label_791:
	mov	rax, qword ptr [rbp - 0xc0]
	cmp	rax, qword ptr [rbp - 0xc8]
	jae	.label_815
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
	jl	.label_828
	cmp	dword ptr [rbp - 0xe4], 0
	jne	.label_801
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	rdx, qword ptr [rbp - 0x80]
	cmp	rax, qword ptr [rdx + rcx*8]
	jae	.label_801
.label_828:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_788
.label_801:
	mov	rax, qword ptr [rbp - 0xd0]
	add	rax, 1
	mov	qword ptr [rbp - 0xc0], rax
.label_788:
	mov	rax, qword ptr [rbp - 0xc0]
	add	rax, qword ptr [rbp - 0xc8]
	shr	rax, 1
	mov	qword ptr [rbp - 0xd0], rax
	jmp	.label_791
.label_815:
	mov	rax, qword ptr [rbp - 0xc0]
	sub	rax, 1
	mov	qword ptr [rbp - 0xe0], rax
	mov	qword ptr [rbp - 0x90], 0
.label_811:
	mov	rax, qword ptr [rbp - 0x90]
	cmp	rax, qword ptr [rbp - 0xe0]
	jae	.label_808
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_811
.label_808:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_797
.label_821:
	test	byte ptr [byte ptr [unique]],  1
	je	.label_829
	cmp	qword ptr [rbp - 0x60], 0
	je	.label_829
	lea	rdi, [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	write_line
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
.label_829:
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
	#Procedure 0x40bc60

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
	jne	.label_839
	mov	qword ptr [rbp - 8], 0
	jmp	.label_841
.label_839:
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 0xc], 0
	cmp	qword ptr [word ptr [compress_program]],  0
	je	.label_842
	mov	eax, 4
	mov	esi, eax
	lea	rdi, [rbp - 0x28]
	call	pipe_fork
	xor	ecx, ecx
	mov	rsi, qword ptr [rbp - 0x20]
	mov	dword ptr [rsi + 8], eax
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	ecx, dword ptr [rsi + 8]
	jge	.label_837
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
	jmp	.label_838
.label_837:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	dword ptr [rax + 8], 0
	jne	.label_840
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
	movabs	rsi, OFFSET FLAT:.str.175
	mov	edi, dword ptr [rax]
	call	async_safe_die
.label_840:
	jmp	.label_838
.label_838:
	jmp	.label_842
.label_842:
	movabs	rsi, OFFSET FLAT:.str.166
	mov	edi, dword ptr [rbp - 0x18]
	call	fdopen
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	jne	.label_843
	movabs	rdi, OFFSET FLAT:.str.176
	call	gettext
	mov	rdi, qword ptr [rbp - 0x20]
	add	rdi, 0xd
	mov	qword ptr [rbp - 0x40], rdi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x40]
	call	sort_die
.label_843:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_841:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bde0

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
	jne	.label_848
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 8]
	call	wait_proc
.label_848:
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0xd
	mov	rdi, rax
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], 0
	jge	.label_847
	mov	qword ptr [rbp - 8], 0
	jmp	.label_851
.label_847:
	mov	eax, 9
	mov	esi, eax
	lea	rdi, [rbp - 0x1c]
	call	pipe_fork
	mov	dword ptr [rbp - 0x2c], eax
	mov	ecx, eax
	sub	eax, -1
	mov	dword ptr [rbp - 0x34], ecx
	mov	dword ptr [rbp - 0x38], eax
	je	.label_846
	jmp	.label_849
.label_849:
	mov	eax, dword ptr [rbp - 0x34]
	test	eax, eax
	je	.label_850
	jmp	.label_852
.label_846:
	call	__errno_location
	cmp	dword ptr [rax], 0x18
	je	.label_853
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.167
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
.label_853:
	mov	edi, dword ptr [rbp - 0x14]
	call	close
	mov	dword ptr [rbp - 0x4c], eax
	call	__errno_location
	mov	dword ptr [rax], 0x18
	jmp	.label_845
.label_850:
	mov	edi, dword ptr [rbp - 0x1c]
	call	close
	xor	esi, esi
	mov	edi, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x50], eax
	call	move_fd
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0x18]
	call	move_fd
	movabs	rdx, OFFSET FLAT:.str.168
	xor	eax, eax
	mov	ecx, eax
	mov	rdi,  qword ptr [word ptr [compress_program]]
	mov	rsi,  qword ptr [word ptr [compress_program]]
	mov	al, 0
	call	execlp
	mov	dword ptr [rbp - 0x54], eax
	call	__errno_location
	movabs	rsi, OFFSET FLAT:.str.169
	mov	edi, dword ptr [rax]
	call	async_safe_die
.label_852:
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
	movabs	rsi, OFFSET FLAT:.str.52
	mov	edi, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x5c], eax
	call	fdopen
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_844
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
.label_844:
	jmp	.label_845
.label_845:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_851:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bfd0

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
	jne	.label_854
	jmp	.label_855
.label_854:
	mov	edi, dword ptr [rbp - 4]
	call	reap
	mov	dword ptr [rbp - 8], eax
.label_855:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c010

	.globl pipe_fork
	.type pipe_fork, @function
pipe_fork:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	eax, 0x80000
	movsd	xmm0,  qword ptr [word ptr [label_861]]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	movsd	qword ptr [rbp - 0x30], xmm0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, eax
	call	rpl_pipe2
	cmp	eax, 0
	jge	.label_856
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_859
.label_856:
	mov	eax,  dword ptr [dword ptr [nmerge]]
	add	eax, 1
	cmp	eax,  dword ptr [dword ptr [nprocs]]
	jae	.label_863
	call	reap_some
.label_863:
	jmp	.label_857
.label_857:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	cmp	rax, 0
	je	.label_864
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
	je	.label_867
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [temphead]],  rax
.label_867:
	lea	rdi, [rbp - 0xc0]
	call	cs_leave
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0xc4], eax
	call	__errno_location
	xor	ecx, ecx
	mov	edx, dword ptr [rbp - 0xc4]
	mov	dword ptr [rax], edx
	cmp	ecx, dword ptr [rbp - 0x34]
	jle	.label_868
	call	__errno_location
	cmp	dword ptr [rax], 0xb
	je	.label_862
.label_868:
	jmp	.label_864
.label_862:
	movsd	xmm0, qword ptr [rbp - 0x30]
	call	xnanosleep
	movsd	xmm0,  qword ptr [word ptr [label_866]]
	mulsd	xmm0, qword ptr [rbp - 0x30]
	movsd	qword ptr [rbp - 0x30], xmm0
	mov	dword ptr [rbp - 0xc8], eax
	call	reap_exited
	jmp	.label_857
.label_864:
	cmp	dword ptr [rbp - 0x34], 0
	jge	.label_858
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
	jmp	.label_860
.label_858:
	cmp	dword ptr [rbp - 0x34], 0
	jne	.label_865
	xor	edi, edi
	call	close
	mov	edi, 1
	mov	dword ptr [rbp - 0xd8], eax
	call	close
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_869
.label_865:
	mov	eax,  dword ptr [dword ptr [nprocs]]
	add	eax, 1
	mov	dword ptr [dword ptr [nprocs]],  eax
.label_869:
	jmp	.label_860
.label_860:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
.label_859:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c1f0

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
	je	.label_870
	lea	rsi, [rbp - 0x24]
	mov	edi, dword ptr [rbp - 4]
	call	inttostr
	mov	edi, 2
	movabs	rsi, OFFSET FLAT:.str.172
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
.label_870:
	mov	edi, 2
	movabs	rsi, OFFSET FLAT:.str.173
	mov	eax, 1
	mov	edx, eax
	call	write
	mov	edi, 2
	mov	qword ptr [rbp - 0x48], rax
	call	_exit
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c2c0

	.globl register_proc
	.type register_proc, @function
register_proc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [word ptr [proctab]],  0
	jne	.label_871
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
	jne	.label_873
	call	xalloc_die
.label_873:
	jmp	.label_871
.label_871:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0xc], 1
	mov	rdi,  qword ptr [word ptr [proctab]]
	mov	rax, qword ptr [rbp - 8]
	mov	rsi, rax
	call	hash_insert
	cmp	rax, 0
	jne	.label_872
	call	xalloc_die
.label_872:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c370

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
	jne	.label_875
	mov	byte ptr [rbp - 1], 0
	jmp	.label_874
.label_875:
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 0xc], 2
	mov	byte ptr [rbp - 1], 1
.label_874:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c3d0

	.globl reap
	.type reap, @function
reap:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_878
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_882
.label_878:
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_882
.label_882:
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
	jge	.label_881
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.170
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
.label_881:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jge	.label_877
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_876
	mov	edi, dword ptr [rbp - 0xc]
	call	delete_proc
	test	al, 1
	jne	.label_876
	jmp	.label_877
.label_876:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x10], eax
	mov	eax, dword ptr [rbp - 0x10]
	and	eax, 0x7f
	cmp	eax, 0
	jne	.label_880
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x18], eax
	mov	eax, dword ptr [rbp - 0x18]
	and	eax, 0xff00
	sar	eax, 8
	cmp	eax, 0
	je	.label_883
.label_880:
	movabs	rdi, OFFSET FLAT:.str.171
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
.label_883:
	mov	eax,  dword ptr [dword ptr [nprocs]]
	add	eax, -1
	mov	dword ptr [dword ptr [nprocs]],  eax
.label_877:
	jmp	.label_879
.label_879:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c520

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
	#Procedure 0x40c540

	.globl reap_exited
	.type reap_exited, @function
reap_exited:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	jmp	.label_884
.label_884:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	cmp	eax,  dword ptr [dword ptr [nprocs]]
	mov	byte ptr [rbp - 1], cl
	jge	.label_886
	xor	edi, edi
	call	reap
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 1], cl
.label_886:
	mov	al, byte ptr [rbp - 1]
	test	al, 1
	jne	.label_885
	jmp	.label_887
.label_885:
	jmp	.label_884
.label_887:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c590

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
	#Procedure 0x40c5c0

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
	#Procedure 0x40c600

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
.label_888:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
	add	rax, 0xd
	cmp	rax, qword ptr [rbp - 8]
	je	.label_889
	jmp	.label_893
.label_893:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_888
.label_889:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax + 0xc]
	cmp	ecx, 1
	jne	.label_891
	mov	rax, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rax + 8]
	call	wait_proc
.label_891:
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
	je	.label_892
	movabs	rdi, OFFSET FLAT:.str.174
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
.label_892:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_890
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [temptail]],  rax
.label_890:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c730

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
	mov	r8d,  dword ptr [dword ptr [label_895]]
	mov	dword ptr [rax + rcx + 8], r8d
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
	mov	rax,  qword ptr [word ptr [create_temp_file.temp_dir_index]]
	add	rax, 1
	mov	qword ptr [word ptr [create_temp_file.temp_dir_index]],  rax
	cmp	rax,  qword ptr [word ptr [temp_dir_count]]
	jne	.label_896
	mov	qword ptr [word ptr [create_temp_file.temp_dir_index]],  0
.label_896:
	lea	rdi, [rbp - 0xc0]
	call	cs_enter
	mov	esi, 0x80000
	mov	rdi, qword ptr [rbp - 0x38]
	call	mkostemp_safer
	xor	esi, esi
	mov	dword ptr [rbp - 0x10], eax
	cmp	esi, dword ptr [rbp - 0x10]
	jg	.label_894
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [temptail]]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [word ptr [temptail]],  rax
.label_894:
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
	jge	.label_897
	test	byte ptr [rbp - 9], 1
	je	.label_899
	call	__errno_location
	cmp	dword ptr [rax], 0x18
	je	.label_898
.label_899:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.177
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
.label_898:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 0x30], 0
.label_897:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx], eax
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c910

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
.label_910:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_903
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_906
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	fileno
	lea	rsi, [rbp - 0xd8]
	mov	edi, eax
	call	__fstat
	mov	dword ptr [rbp - 0xec], eax
	jmp	.label_902
.label_906:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, OFFSET FLAT:.str.54
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	jne	.label_909
	xor	edi, edi
	lea	rsi, [rbp - 0xd8]
	call	__fstat
	mov	dword ptr [rbp - 0xf0], eax
	jmp	.label_901
.label_909:
	lea	rsi, [rbp - 0xd8]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + rax*8]
	call	stat
	mov	dword ptr [rbp - 0xf0], eax
.label_901:
	mov	eax, dword ptr [rbp - 0xf0]
	mov	dword ptr [rbp - 0xec], eax
.label_902:
	mov	eax, dword ptr [rbp - 0xec]
	cmp	eax, 0
	je	.label_911
	movabs	rdi, OFFSET FLAT:.str.178
	call	gettext
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rcx + rdi*8]
	mov	rdi, rax
	call	sort_die
.label_911:
	mov	eax, dword ptr [rbp - 0xc0]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_908
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xe0], rax
	jmp	.label_900
.label_908:
	cmp	qword ptr [word ptr [sort_size]],  0
	je	.label_904
	mov	rax,  qword ptr [word ptr [sort_size]]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_907
.label_904:
	mov	qword ptr [rbp - 0xe0], 0x20000
.label_900:
	cmp	qword ptr [word ptr [sort_buffer_size.size_bound]],  0
	jne	.label_912
	mov	rax,  qword ptr [word ptr [sort_size]]
	mov	qword ptr [word ptr [sort_buffer_size.size_bound]],  rax
	cmp	qword ptr [word ptr [sort_buffer_size.size_bound]],  0
	jne	.label_914
	call	default_sort_size
	mov	qword ptr [word ptr [sort_buffer_size.size_bound]],  rax
.label_914:
	jmp	.label_912
.label_912:
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
	jne	.label_913
	mov	rax,  qword ptr [word ptr [sort_buffer_size.size_bound]]
	sub	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0xe8]
	ja	.label_905
.label_913:
	mov	rax,  qword ptr [word ptr [sort_buffer_size.size_bound]]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_907
.label_905:
	mov	rax, qword ptr [rbp - 0xe8]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_910
.label_903:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_907:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cb70

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
	#Procedure 0x40cbe0

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
	#Procedure 0x40cce0

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
	jbe	.label_915
	mov	eax, 0x20000
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x40]
	ja	.label_915
	lea	rdi, [rbp - 0x58]
	xor	eax, eax
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:sortlines_thread
	lea	rcx, [rbp - 0x90]
	call	pthread_create
	cmp	eax, 0
	jne	.label_915
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
	jmp	.label_918
.label_915:
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
	jae	.label_916
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
.label_916:
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x98]
	jae	.label_917
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0xa8]
	call	sequential_sort
.label_917:
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
.label_918:
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cfa0

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
	je	.label_919
	cmp	qword ptr [word ptr [saved_line]],  0
	je	.label_923
	movabs	rsi, OFFSET FLAT:saved_line
	mov	rdi, qword ptr [rbp - 8]
	call	compare
	cmp	eax, 0
	jne	.label_923
	jmp	.label_924
.label_923:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax]
	mov	qword ptr [word ptr [saved_line]],  rcx
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [word ptr [label_920]],  rcx
	mov	rcx, qword ptr [rax + 0x10]
	mov	qword ptr [word ptr [label_921]],  rcx
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [word ptr [label_922]],  rax
.label_919:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	write_line
.label_924:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d040

	.globl reap_all
	.type reap_all, @function
reap_all:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	jmp	.label_925
.label_925:
	xor	eax, eax
	cmp	eax,  dword ptr [dword ptr [nprocs]]
	jge	.label_926
	mov	edi, 0xffffffff
	call	reap
	mov	dword ptr [rbp - 4], eax
	jmp	.label_925
.label_926:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d080

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
	jne	.label_935
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_935
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
.label_935:
	mov	edi, 9
	lea	rsi, [rbp - 0x18]
	call	getrlimit
	cmp	eax, 0
	jne	.label_931
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_931
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
.label_931:
	mov	edi, 5
	lea	rsi, [rbp - 0x18]
	mov	rax, qword ptr [rbp - 8]
	shr	rax, 1
	mov	qword ptr [rbp - 8], rax
	call	getrlimit
	cmp	eax, 0
	jne	.label_929
	mov	rax, qword ptr [rbp - 0x18]
	shr	rax, 4
	imul	rax, rax, 0xf
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_929
	mov	rax, qword ptr [rbp - 0x18]
	shr	rax, 4
	imul	rax, rax, 0xf
	mov	qword ptr [rbp - 8], rax
.label_929:
	call	physmem_available
	movsd	qword ptr [rbp - 0x20], xmm0
	call	physmem_total
	movsd	xmm1,  qword ptr [word ptr [label_927]]
	movsd	qword ptr [rbp - 0x28], xmm0
	movsd	xmm0, qword ptr [rbp - 0x20]
	movsd	xmm2, qword ptr [rbp - 0x28]
	divsd	xmm2, xmm1
	ucomisd	xmm0, xmm2
	jbe	.label_928
	movsd	xmm0, qword ptr [rbp - 0x20]
	movsd	qword ptr [rbp - 0x38], xmm0
	jmp	.label_937
.label_928:
	movsd	xmm0,  qword ptr [word ptr [label_927]]
	movsd	xmm1, qword ptr [rbp - 0x28]
	divsd	xmm1, xmm0
	movsd	qword ptr [rbp - 0x38], xmm1
.label_937:
	movsd	xmm0, qword ptr [rbp - 0x38]
	movsd	qword ptr [rbp - 0x30], xmm0
	movsd	xmm0, qword ptr [rbp - 0x28]
	movsd	xmm1,  qword ptr [word ptr [rip + label_932]]
	mulsd	xmm0, xmm1
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_247]]
	movq	xmm2, qword ptr [rbp - 8]
	punpckldq	xmm2, xmm1
	movapd	xmm1,  xmmword ptr [word ptr [rip + label_248]]
	subpd	xmm2, xmm1
	pshufd	xmm1, xmm2, 0x4e
	addpd	xmm1, xmm2
	ucomisd	xmm1, xmm0
	jbe	.label_933
	movsd	xmm0, qword ptr [rbp - 0x28]
	movsd	xmm1,  qword ptr [word ptr [rip + label_932]]
	mulsd	xmm0, xmm1
	movsd	xmm1,  qword ptr [word ptr [rip + label_251]]
	movaps	xmm2, xmm0
	subsd	xmm2, xmm1
	cvttsd2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttsd2si	rcx, xmm0
	ucomisd	xmm0, xmm1
	cmovb	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_933:
	movsd	xmm0, qword ptr [rbp - 0x30]
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_247]]
	movq	xmm2, qword ptr [rbp - 8]
	punpckldq	xmm2, xmm1
	movapd	xmm1,  xmmword ptr [word ptr [rip + label_248]]
	subpd	xmm2, xmm1
	pshufd	xmm1, xmm2, 0x4e
	addpd	xmm1, xmm2
	ucomisd	xmm1, xmm0
	jbe	.label_934
	movsd	xmm0, qword ptr [rbp - 0x30]
	movsd	xmm1,  qword ptr [word ptr [rip + label_251]]
	movaps	xmm2, xmm0
	subsd	xmm2, xmm1
	cvttsd2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttsd2si	rcx, xmm0
	ucomisd	xmm1, xmm0
	cmova	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_934:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx,  dword ptr [dword ptr [nmerge]]
	mov	edx, ecx
	imul	rdx, rdx, 0x22
	cmp	rax, rdx
	jbe	.label_930
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_936
.label_930:
	mov	eax,  dword ptr [dword ptr [nmerge]]
	mov	ecx, eax
	imul	rcx, rcx, 0x22
	mov	qword ptr [rbp - 0x40], rcx
.label_936:
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d2d0

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
	jne	.label_938
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
	jmp	.label_939
.label_938:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x50]
	mov	rax, qword ptr [rbp - 0x28]
	cmp	ecx, dword ptr [rax + 0x50]
	setb	dl
	and	dl, 1
	movzx	ecx, dl
	mov	dword ptr [rbp - 4], ecx
.label_939:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d360

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
	je	.label_940
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_945
.label_940:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x80], rax
.label_945:
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
	je	.label_943
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_941
.label_943:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	qword ptr [rbp - 0x88], rax
.label_941:
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
	jbe	.label_942
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
	jmp	.label_944
.label_942:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rax + 0x40], 0
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rax + 0x48], 0
.label_944:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d580

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
	#Procedure 0x40d5e0

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
	jne	.label_952
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
	je	.label_950
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
	jmp	.label_946
.label_950:
	cmp	dword ptr [rbp - 0x20], 0
	je	.label_954
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
.label_954:
	jmp	.label_946
.label_946:
	jmp	.label_956
.label_952:
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
	je	.label_957
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_949
.label_957:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x70], rcx
	jmp	.label_949
.label_949:
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
	jae	.label_953
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rbp - 0x19]
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	call	sequential_sort
	jmp	.label_947
.label_953:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_951
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
.label_951:
	jmp	.label_947
.label_947:
	test	byte ptr [rbp - 0x19], 1
	je	.label_948
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_955
.label_948:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x50], rax
.label_955:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x50]
	call	mergelines
.label_956:
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d8a0

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
	#Procedure 0x40d910

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
.label_959:
	mov	rdi, qword ptr [rbp - 8]
	call	queue_pop
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 0x50], 0
	jne	.label_958
	mov	rdi, qword ptr [rbp - 0x28]
	call	unlock_node
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x28]
	call	queue_insert
	jmp	.label_960
.label_958:
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
	jmp	.label_959
.label_960:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d9b0

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
.label_964:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -0x20
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, -0x20
	mov	rdi, rax
	mov	rsi, rcx
	call	compare
	cmp	eax, 0
	jg	.label_965
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
	jne	.label_967
	jmp	.label_963
.label_967:
	jmp	.label_962
.label_965:
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
	jne	.label_966
	jmp	.label_961
.label_961:
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
	jne	.label_961
	jmp	.label_963
.label_966:
	jmp	.label_962
.label_962:
	jmp	.label_964
.label_963:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40db40

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
.label_969:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	heap_remove_top
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_968
	jmp	.label_970
.label_968:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x30
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 8
	mov	rdi, rax
	mov	rsi, rcx
	call	pthread_cond_wait
	mov	dword ptr [rbp - 0x18], eax
	jmp	.label_969
.label_970:
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
	#Procedure 0x40dbe0

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
	#Procedure 0x40dc10

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
	jbe	.label_980
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
.label_986:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x59], cl
	je	.label_973
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, qword ptr [rsi + 0x18]
	mov	byte ptr [rbp - 0x59], cl
	je	.label_973
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x38], rcx
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x59], dl
.label_973:
	mov	al, byte ptr [rbp - 0x59]
	test	al, 1
	jne	.label_1002
	jmp	.label_1004
.label_1002:
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
	jg	.label_976
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
	jmp	.label_983
.label_976:
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
.label_983:
	jmp	.label_986
.label_1004:
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
	jne	.label_988
	jmp	.label_1003
.label_1003:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x5a], cl
	je	.label_991
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x38], rcx
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x5a], dl
.label_991:
	mov	al, byte ptr [rbp - 0x5a]
	test	al, 1
	jne	.label_985
	jmp	.label_990
.label_985:
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
	jmp	.label_1003
.label_990:
	jmp	.label_987
.label_988:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	cmp	rax, qword ptr [rbp - 0x40]
	jne	.label_992
	jmp	.label_972
.label_972:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, qword ptr [rsi + 0x18]
	mov	byte ptr [rbp - 0x5b], cl
	je	.label_996
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x38], rcx
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x5b], dl
.label_996:
	mov	al, byte ptr [rbp - 0x5b]
	test	al, 1
	jne	.label_1006
	jmp	.label_999
.label_1006:
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
	jmp	.label_972
.label_999:
	jmp	.label_992
.label_992:
	jmp	.label_987
.label_987:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x20]
	mov	qword ptr [rcx], rax
	jmp	.label_989
.label_980:
	jmp	.label_975
.label_975:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x5c], cl
	je	.label_994
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, qword ptr [rsi + 0x18]
	mov	byte ptr [rbp - 0x5c], cl
	je	.label_994
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x38], rcx
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x5c], dl
.label_994:
	mov	al, byte ptr [rbp - 0x5c]
	test	al, 1
	jne	.label_977
	jmp	.label_984
.label_977:
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
	jg	.label_997
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax]
	add	rcx, -0x20
	mov	qword ptr [rax], rcx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, rcx
	call	write_unique
	jmp	.label_1005
.label_997:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 8]
	add	rcx, -0x20
	mov	qword ptr [rax + 8], rcx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, rcx
	call	write_unique
.label_1005:
	jmp	.label_975
.label_984:
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
	jne	.label_979
	jmp	.label_993
.label_993:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x5d], cl
	je	.label_1000
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x38], rcx
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x5d], dl
.label_1000:
	mov	al, byte ptr [rbp - 0x5d]
	test	al, 1
	jne	.label_974
	jmp	.label_982
.label_974:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax]
	add	rcx, -0x20
	mov	qword ptr [rax], rcx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, rcx
	call	write_unique
	jmp	.label_993
.label_982:
	jmp	.label_995
.label_979:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	cmp	rax, qword ptr [rbp - 0x40]
	jne	.label_971
	jmp	.label_998
.label_998:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, qword ptr [rsi + 0x18]
	mov	byte ptr [rbp - 0x5e], cl
	je	.label_1001
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x38], rcx
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x5e], dl
.label_1001:
	mov	al, byte ptr [rbp - 0x5e]
	test	al, 1
	jne	.label_978
	jmp	.label_981
.label_978:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 8]
	add	rcx, -0x20
	mov	qword ptr [rax + 8], rcx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, rcx
	call	write_unique
	jmp	.label_998
.label_981:
	jmp	.label_971
.label_971:
	jmp	.label_995
.label_995:
	jmp	.label_989
.label_989:
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
	#Procedure 0x40e1b0

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
	jne	.label_1007
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
	je	.label_1010
	test	byte ptr [rbp - 0x12], 1
	jne	.label_1008
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x30], 0
	jne	.label_1009
	jmp	.label_1008
.label_1010:
	test	byte ptr [rbp - 0x12], 1
	je	.label_1009
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x28], 0
	jne	.label_1009
.label_1008:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	queue_insert
.label_1009:
	jmp	.label_1007
.label_1007:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e270

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
	jbe	.label_1011
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
	jmp	.label_1013
.label_1011:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 0x30]
	cmp	rax, 0
	jne	.label_1012
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax + 0x38]
	call	queue_insert
.label_1012:
	jmp	.label_1013
.label_1013:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e300

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
	#Procedure 0x40e330

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	push	rbp
	mov	rbp, rsp
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x40e340

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
.label_1015:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1018
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	call	strncmp
	cmp	eax, 0
	jne	.label_1022
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_1025
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1021
.label_1025:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_1017
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1020
.label_1017:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1016
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
	je	.label_1023
.label_1016:
	mov	byte ptr [rbp - 0x41], 1
.label_1023:
	jmp	.label_1020
.label_1020:
	jmp	.label_1024
.label_1024:
	jmp	.label_1022
.label_1022:
	jmp	.label_1014
.label_1014:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1015
.label_1018:
	test	byte ptr [rbp - 0x41], 1
	je	.label_1019
	mov	qword ptr [rbp - 8], -2
	jmp	.label_1021
.label_1019:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_1021:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e490

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
	jne	.label_1026
	movabs	rdi, OFFSET FLAT:.str_3
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1027
.label_1026:
	movabs	rdi, OFFSET FLAT:.str.1_1
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_1027:
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
	#Procedure 0x40e530

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:.str.2_0
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
.label_1028:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1032
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1029
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rcx, qword ptr [rbp - 0x20]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	je	.label_1030
.label_1029:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:.str.3_0
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
	jmp	.label_1031
.label_1030:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:.str.4_0
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
.label_1031:
	jmp	.label_1033
.label_1033:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1028
.label_1032:
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x50], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e680

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
	jl	.label_1035
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1034
.label_1035:
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
.label_1034:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e710
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
.label_1037:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1036
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x30]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_1039
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1040
.label_1039:
	jmp	.label_1038
.label_1038:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1037
.label_1036:
	mov	qword ptr [rbp - 8], 0
.label_1040:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e7b0
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
	#Procedure 0x40e7d0
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
	#Procedure 0x40e7f0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_1041
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_1044
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_1041
.label_1044:
	movabs	rdi, OFFSET FLAT:.str_4
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_1045
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str.1_0
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_1043
.label_1045:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_1043:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_1041:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_1042
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_1042:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e8e0

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
	#Procedure 0x40e940

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
	#Procedure 0x40e9c0

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
	#Procedure 0x40e9e0

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
	jae	.label_1046
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x14]
	add	ecx, 1
	mov	dword ptr [rax + 0x14], ecx
.label_1046:
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
	#Procedure 0x40eaf0

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
.label_1082:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x78]
	jae	.label_1070
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
	jmp	.label_1077
.label_1077:
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
	jmp	.label_1102
.label_1102:
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
	jmp	.label_1091
.label_1091:
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
	jmp	.label_1073
.label_1073:
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
	jmp	.label_1084
.label_1084:
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
	jmp	.label_1080
.label_1080:
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
	jmp	.label_1076
.label_1076:
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
	jmp	.label_1090
.label_1090:
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
	jmp	.label_1068
.label_1068:
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
	jmp	.label_1060
.label_1060:
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
	jmp	.label_1057
.label_1057:
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
	jmp	.label_1049
.label_1049:
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
	jmp	.label_1048
.label_1048:
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
	jmp	.label_1106
.label_1106:
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
	jmp	.label_1109
.label_1109:
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
	jmp	.label_1110
.label_1110:
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
	jmp	.label_1093
.label_1093:
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
	jmp	.label_1097
.label_1097:
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
	jmp	.label_1111
.label_1111:
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
	jmp	.label_1086
.label_1086:
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
	jmp	.label_1061
.label_1061:
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
	jmp	.label_1095
.label_1095:
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
	jmp	.label_1074
.label_1074:
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
	jmp	.label_1054
.label_1054:
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
	jmp	.label_1088
.label_1088:
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
	jmp	.label_1063
.label_1063:
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
	jmp	.label_1107
.label_1107:
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
	jmp	.label_1083
.label_1083:
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
	jmp	.label_1056
.label_1056:
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
	jmp	.label_1062
.label_1062:
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
	jmp	.label_1071
.label_1071:
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
	jmp	.label_1051
.label_1051:
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
	jmp	.label_1085
.label_1085:
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
	jmp	.label_1052
.label_1052:
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
	jmp	.label_1089
.label_1089:
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
	jmp	.label_1069
.label_1069:
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
	jmp	.label_1101
.label_1101:
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
	jmp	.label_1067
.label_1067:
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
	jmp	.label_1108
.label_1108:
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
	jmp	.label_1081
.label_1081:
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
	jmp	.label_1059
.label_1059:
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
	jmp	.label_1079
.label_1079:
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
	jmp	.label_1053
.label_1053:
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
	jmp	.label_1092
.label_1092:
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
	jmp	.label_1098
.label_1098:
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
	jmp	.label_1104
.label_1104:
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
	jmp	.label_1105
.label_1105:
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
	jmp	.label_1087
.label_1087:
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
	jmp	.label_1075
.label_1075:
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
	jmp	.label_1096
.label_1096:
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
	jmp	.label_1094
.label_1094:
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
	jmp	.label_1064
.label_1064:
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
	jmp	.label_1103
.label_1103:
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
	jmp	.label_1072
.label_1072:
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
	jmp	.label_1050
.label_1050:
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
	jmp	.label_1047
.label_1047:
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
	jmp	.label_1065
.label_1065:
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
	jmp	.label_1099
.label_1099:
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
.label_2366:
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1078
.label_1078:
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
	jmp	.label_1058
.label_1058:
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
	jmp	.label_1066
.label_1066:
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
	jmp	.label_1055
.label_1055:
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
	jmp	.label_1100
.label_1100:
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
	jmp	.label_1082
.label_1070:
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
	#Procedure 0x410200
	.globl md5_stream
	.type md5_stream, @function
md5_stream:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str_5
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
	je	.label_1114
	jmp	.label_1121
.label_1121:
	mov	eax, dword ptr [rbp - 0xe4]
	test	eax, eax
	jne	.label_1123
	jmp	.label_1126
.label_1126:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1113
.label_1114:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1113
.label_1123:
	mov	eax, 0x8048
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1120
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1113
.label_1120:
	lea	rdi, [rbp - 0xc0]
	call	md5_init_ctx
.label_1118:
	mov	qword ptr [rbp - 0xc8], 0
.label_1124:
	mov	rdi, qword ptr [rbp - 0x10]
	call	feof_unlocked
	cmp	eax, 0
	je	.label_1119
	jmp	.label_1115
.label_1119:
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
	jne	.label_1122
	jmp	.label_1116
.label_1122:
	cmp	qword ptr [rbp - 0xd0], 0
	jne	.label_1117
	mov	rdi, qword ptr [rbp - 0x10]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_1112
	mov	rdi, qword ptr [rbp - 0x20]
	call	free
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1113
.label_1112:
	jmp	.label_1115
.label_1117:
	jmp	.label_1124
.label_1116:
	mov	eax, 0x8000
	mov	esi, eax
	lea	rdx, [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 0x20]
	call	md5_process_block
	jmp	.label_1118
.label_1115:
	cmp	qword ptr [rbp - 0xc8], 0
	jbe	.label_1125
	lea	rdx, [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0xc8]
	call	md5_process_bytes
.label_1125:
	lea	rdi, [rbp - 0xc0]
	mov	rsi, qword ptr [rbp - 0x18]
	call	md5_finish_ctx
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xf8], rax
	call	free
	mov	dword ptr [rbp - 4], 0
.label_1113:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410410

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
	#Procedure 0x410430

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
	je	.label_1135
	mov	eax, 0x80
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rdx + 0x18]
	mov	edx, eax
	mov	qword ptr [rbp - 0x20], rdx
	sub	rcx, qword ptr [rbp - 0x20]
	cmp	rcx, qword ptr [rbp - 0x10]
	jbe	.label_1129
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1136
.label_1129:
	mov	eax, 0x80
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rcx
.label_1136:
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
	jbe	.label_1137
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
.label_1137:
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
.label_1135:
	cmp	qword ptr [rbp - 0x10], 0x40
	jb	.label_1131
	mov	rax, qword ptr [rbp - 8]
	and	rax, 3
	cmp	rax, 0
	je	.label_1134
	jmp	.label_1127
.label_1127:
	cmp	qword ptr [rbp - 0x10], 0x40
	jbe	.label_1128
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
	jmp	.label_1127
.label_1128:
	jmp	.label_1132
.label_1134:
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
.label_1132:
	jmp	.label_1131
.label_1131:
	cmp	qword ptr [rbp - 0x10], 0
	jbe	.label_1133
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
	jb	.label_1130
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
.label_1130:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x18], ecx
.label_1133:
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4106e0
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
	#Procedure 0x410740

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
	#Procedure 0x410780

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	je	.label_1138
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
.label_1138:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4107d0

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
	jne	.label_1153
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1141
.label_1153:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_1142
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1141
.label_1142:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_1146
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1141
.label_1146:
	xor	eax, eax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	ecx, OFFSET FLAT:.str_6
	mov	edi, ecx
	mov	dword ptr [rbp - 0x54], eax
	call	strcmp
	mov	ecx, dword ptr [rbp - 0x54]
	cmp	ecx, eax
	jne	.label_1151
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1141
.label_1151:
	xor	eax, eax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	ecx, OFFSET FLAT:.str_6
	mov	edi, ecx
	mov	dword ptr [rbp - 0x58], eax
	call	strcmp
	mov	ecx, dword ptr [rbp - 0x58]
	cmp	ecx, eax
	jne	.label_1157
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1141
.label_1157:
	xor	eax, eax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	ecx, OFFSET FLAT:.str.1_2
	mov	edi, ecx
	mov	dword ptr [rbp - 0x5c], eax
	call	strcmp
	mov	ecx, dword ptr [rbp - 0x5c]
	cmp	ecx, eax
	jne	.label_1147
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1141
.label_1147:
	xor	eax, eax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	ecx, OFFSET FLAT:.str.1_2
	mov	edi, ecx
	mov	dword ptr [rbp - 0x60], eax
	call	strcmp
	mov	ecx, dword ptr [rbp - 0x60]
	cmp	ecx, eax
	jne	.label_1152
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1141
.label_1152:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_1140
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	je	.label_1140
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1141
.label_1140:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	je	.label_1144
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_1144
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1141
.label_1144:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_1149
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_1149
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_1149:
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
	je	.label_1145
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_1148
.label_1145:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
.label_1148:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1150
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1156
.label_1150:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x70], rax
.label_1156:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1154
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1143
.label_1154:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_1143
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	call	strncmp
	xor	ecx, ecx
	cmp	ecx, eax
	jne	.label_1143
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x48], rax
.label_1143:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x48]
	call	verrevcmp
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	jne	.label_1155
	mov	eax, dword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_1139
.label_1155:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x74], eax
.label_1139:
	mov	eax, dword ptr [rbp - 0x74]
	mov	dword ptr [rbp - 4], eax
.label_1141:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410ab0

	.globl match_suffix
	.type match_suffix, @function
match_suffix:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x11], 0
.label_1161:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	cmp	byte ptr [rax], 0
	je	.label_1160
	test	byte ptr [rbp - 0x11], 1
	je	.label_1165
	mov	byte ptr [rbp - 0x11], 0
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	movsx	edi, byte ptr [rax]
	call	c_isalpha
	test	al, 1
	jne	.label_1164
	mov	eax, 0x7e
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	movsx	edx, byte ptr [rcx]
	cmp	eax, edx
	je	.label_1164
	mov	qword ptr [rbp - 0x10], 0
.label_1164:
	jmp	.label_1166
.label_1165:
	mov	eax, 0x2e
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	movsx	edx, byte ptr [rcx]
	cmp	eax, edx
	jne	.label_1158
	mov	byte ptr [rbp - 0x11], 1
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1163
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_1163:
	jmp	.label_1162
.label_1158:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	movsx	edi, byte ptr [rax]
	call	c_isalnum
	test	al, 1
	jne	.label_1159
	mov	eax, 0x7e
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	movsx	edx, byte ptr [rcx]
	cmp	eax, edx
	je	.label_1159
	mov	qword ptr [rbp - 0x10], 0
.label_1159:
	jmp	.label_1162
.label_1162:
	jmp	.label_1166
.label_1166:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax]
	add	rcx, 1
	mov	qword ptr [rax], rcx
	jmp	.label_1161
.label_1160:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410bc0

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
.label_1197:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rbp - 0x45], al
	jb	.label_1193
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x28]
	setb	cl
	mov	byte ptr [rbp - 0x45], cl
.label_1193:
	mov	al, byte ptr [rbp - 0x45]
	test	al, 1
	jne	.label_1169
	jmp	.label_1173
.label_1169:
	mov	dword ptr [rbp - 0x3c], 0
.label_1171:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1183
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	mov	dl, 1
	test	al, 1
	mov	byte ptr [rbp - 0x46], dl
	jne	.label_1183
	jmp	.label_1185
.label_1183:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x38]
	cmp	rdx, qword ptr [rbp - 0x28]
	mov	byte ptr [rbp - 0x47], cl
	jae	.label_1187
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	xor	al, 0xff
	mov	byte ptr [rbp - 0x47], al
.label_1187:
	mov	al, byte ptr [rbp - 0x47]
	mov	byte ptr [rbp - 0x46], al
.label_1185:
	mov	al, byte ptr [rbp - 0x46]
	test	al, 1
	jne	.label_1167
	jmp	.label_1170
.label_1167:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_1172
	xor	eax, eax
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_1175
.label_1172:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rcx + rax]
	call	order
	mov	dword ptr [rbp - 0x4c], eax
.label_1175:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x40], eax
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, qword ptr [rbp - 0x28]
	jne	.label_1182
	xor	eax, eax
	mov	dword ptr [rbp - 0x50], eax
	jmp	.label_1188
.label_1182:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	movzx	edi, byte ptr [rcx + rax]
	call	order
	mov	dword ptr [rbp - 0x50], eax
.label_1188:
	mov	eax, dword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0x44], eax
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x44]
	je	.label_1195
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1178
.label_1195:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1171
.label_1170:
	jmp	.label_1179
.label_1179:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x30
	jne	.label_1181
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1179
.label_1181:
	jmp	.label_1189
.label_1189:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x30
	jne	.label_1191
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1189
.label_1191:
	jmp	.label_1168
.label_1168:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	xor	edi, edi
	mov	dl, dil
	test	al, 1
	mov	byte ptr [rbp - 0x51], dl
	jne	.label_1174
	jmp	.label_1177
.label_1174:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	mov	byte ptr [rbp - 0x51], al
.label_1177:
	mov	al, byte ptr [rbp - 0x51]
	test	al, 1
	jne	.label_1184
	jmp	.label_1186
.label_1184:
	cmp	dword ptr [rbp - 0x3c], 0
	jne	.label_1192
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	esi, byte ptr [rcx + rax]
	sub	edx, esi
	mov	dword ptr [rbp - 0x3c], edx
.label_1192:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1168
.label_1186:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	test	al, 1
	jne	.label_1176
	jmp	.label_1180
.label_1176:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1178
.label_1180:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	test	al, 1
	jne	.label_1196
	jmp	.label_1190
.label_1196:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1178
.label_1190:
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_1194
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1178
.label_1194:
	jmp	.label_1197
.label_1173:
	mov	dword ptr [rbp - 4], 0
.label_1178:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410ea0

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
	jne	.label_1201
	jmp	.label_1203
.label_1201:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1199
.label_1203:
	movzx	edi, byte ptr [rbp - 5]
	call	c_isalpha
	test	al, 1
	jne	.label_1202
	jmp	.label_1198
.label_1202:
	movzx	eax, byte ptr [rbp - 5]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1199
.label_1198:
	movzx	eax, byte ptr [rbp - 5]
	cmp	eax, 0x7e
	jne	.label_1200
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1199
.label_1200:
	movzx	eax, byte ptr [rbp - 5]
	add	eax, 0xff
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
.label_1199:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410f30

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
	je	.label_1204
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str_7
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_1206
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_3
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1205
.label_1206:
	mov	byte ptr [rbp - 5], 0
.label_1205:
	jmp	.label_1204
.label_1204:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410fb0

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
	#Procedure 0x410fd0

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
	#Procedure 0x410ff0

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
	#Procedure 0x411010

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
.label_1207:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1211
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1210
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x28], 1
.label_1208:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1212
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1208
.label_1212:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_1209
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
.label_1209:
	jmp	.label_1210
.label_1210:
	jmp	.label_1213
.label_1213:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1207
.label_1211:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4110c0
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
.label_1221:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1214
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_1217
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_1220:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1219
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1220
.label_1219:
	jmp	.label_1217
.label_1217:
	jmp	.label_1218
.label_1218:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1221
.label_1214:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	jne	.label_1215
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_1215
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1216
.label_1215:
	mov	byte ptr [rbp - 1], 0
.label_1216:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4111b0
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:.str.2_1
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
	mov	ecx, OFFSET FLAT:.str_8
	mov	esi, ecx
	xor	ecx, ecx
	mov	r8b, cl
	mov	al, r8b
	mov	byte ptr [rbp - 0x39], r8b
	call	fprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	ecx, OFFSET FLAT:.str.1_4
	mov	esi, ecx
	mov	r8b, byte ptr [rbp - 0x39]
	mov	dword ptr [rbp - 0x40], eax
	mov	al, r8b
	call	fprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	movq	xmm0, rdx
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_247]]
	punpckldq	xmm0, xmm1
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_248]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	movsd	xmm0,  qword ptr [word ptr [rip + label_258]]
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
	movabs	rsi, OFFSET FLAT:.str.3_1
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
	#Procedure 0x4112d0
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
	jne	.label_1225
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1227
.label_1225:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_1224:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1228
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	je	.label_1223
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_1223
	jmp	.label_1226
.label_1223:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1227
.label_1226:
	jmp	.label_1222
.label_1222:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1224
.label_1228:
	mov	qword ptr [rbp - 8], 0
.label_1227:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411390

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
	jb	.label_1229
	call	abort
.label_1229:
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
	#Procedure 0x411400
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdi + 0x20], 0
	jne	.label_1230
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1231
.label_1230:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
.label_1232:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jb	.label_1233
	call	abort
.label_1233:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_1235
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1231
.label_1235:
	jmp	.label_1234
.label_1234:
	jmp	.label_1236
.label_1236:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1232
.label_1231:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411490
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
.label_1241:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_1240
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], 0
	je	.label_1240
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1242
.label_1240:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1241
	jmp	.label_1237
.label_1237:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1239
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	je	.label_1238
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1242
.label_1238:
	jmp	.label_1237
.label_1239:
	mov	qword ptr [rbp - 8], 0
.label_1242:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411560
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
.label_1246:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1249
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1243
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_1248:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1247
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_1250
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1244
.label_1250:
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
	jmp	.label_1248
.label_1247:
	jmp	.label_1243
.label_1243:
	jmp	.label_1245
.label_1245:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1246
.label_1249:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1244:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411630
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
.label_1255:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1254
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1253
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_1252:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1258
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx]
	mov	rsi, qword ptr [rbp - 0x20]
	call	rax
	test	al, 1
	jne	.label_1257
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1251
.label_1257:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1252
.label_1258:
	jmp	.label_1253
.label_1253:
	jmp	.label_1256
.label_1256:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1255
.label_1254:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1251:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411700
	.globl hash_string
	.type hash_string, @function
hash_string:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
.label_1260:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x19], cl
	cmp	cl, 0
	je	.label_1259
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
	jmp	.label_1260
.label_1259:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411760
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax,  qword ptr [word ptr [default_tuning]]
	mov	qword ptr [rdi], rax
	mov	rax,  qword ptr [word ptr [label_1261]]
	mov	qword ptr [rdi + 8], rax
	mov	ecx,  dword ptr [dword ptr [label_1262]]
	mov	dword ptr [rdi + 0x10], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411790

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
	jne	.label_1268
	movabs	rax, OFFSET FLAT:raw_hasher
	mov	qword ptr [rbp - 0x20], rax
.label_1268:
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1263
	movabs	rax, OFFSET FLAT:raw_comparator
	mov	qword ptr [rbp - 0x28], rax
.label_1263:
	mov	eax, 0x50
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1269
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1267
.label_1269:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1264
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x18], rax
.label_1264:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	mov	rdi, qword ptr [rbp - 0x38]
	call	check_tuning
	test	al, 1
	jne	.label_1270
	jmp	.label_1266
.label_1270:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	compute_bucket_size
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_1265
	jmp	.label_1266
.label_1265:
	mov	eax, 0x10
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx + 0x10]
	call	calloc
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	jne	.label_1271
	jmp	.label_1266
.label_1271:
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
	jmp	.label_1267
.label_1266:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 8], 0
.label_1267:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411930

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
	#Procedure 0x411970

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
	#Procedure 0x411990

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
	jne	.label_1276
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1275
.label_1276:
	movss	xmm0,  dword ptr [dword ptr [label_1272]]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_1273
	movss	xmm0,  dword ptr [dword ptr [label_1274]]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	subss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	jbe	.label_1273
	movss	xmm0,  dword ptr [dword ptr [label_1274]]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 0xc]
	ucomiss	xmm1, xmm0
	jbe	.label_1273
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jb	.label_1273
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 4]
	ucomiss	xmm1, xmm0
	jbe	.label_1273
	movss	xmm0,  dword ptr [dword ptr [label_1274]]
	mov	rax, qword ptr [rbp - 0x18]
	ucomiss	xmm0, dword ptr [rax + 4]
	jb	.label_1273
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_1273
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1275
.label_1273:
	movabs	rax, OFFSET FLAT:default_tuning
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x28], rax
	mov	byte ptr [rbp - 1], 0
.label_1275:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411ac0

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
	jne	.label_1277
	movss	xmm0,  dword ptr [dword ptr [label_1282]]
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
	js	.label_1283
	movss	xmm0, dword ptr [rbp - 0x24]
	movss	dword ptr [rbp - 0x28], xmm0
.label_1283:
	movss	xmm0, dword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x18]
	divss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	xmm1, dword ptr [rbp - 0x20]
	ucomiss	xmm0, xmm1
	jb	.label_1280
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1279
.label_1280:
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1278]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	ucomiss	xmm1, xmm0
	cmova	rax, rcx
	mov	qword ptr [rbp - 0x10], rax
.label_1277:
	mov	rdi, qword ptr [rbp - 0x10]
	call	next_prime
	movabs	rdi, 0xfffffffffffffff
	mov	qword ptr [rbp - 0x10], rax
	cmp	rdi, qword ptr [rbp - 0x10]
	jae	.label_1281
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1279
.label_1281:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_1279:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411be0
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
.label_1287:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1288
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1286
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_1289:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1284
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1291
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	call	rax
.label_1291:
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
	jmp	.label_1289
.label_1284:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1290
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx]
	call	rax
.label_1290:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
.label_1286:
	jmp	.label_1285
.label_1285:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1287
.label_1288:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411d00
	.globl hash_free
	.type hash_free, @function
hash_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x40], 0
	je	.label_1292
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], 0
	je	.label_1292
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_1299:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1293
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1295
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_1305:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1300
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	call	rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1305
.label_1300:
	jmp	.label_1295
.label_1295:
	jmp	.label_1297
.label_1297:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1299
.label_1293:
	jmp	.label_1292
.label_1292:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_1296:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1303
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_1304:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1298
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1304
.label_1298:
	jmp	.label_1294
.label_1294:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1296
.label_1303:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x18], rax
.label_1302:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1301
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1302
.label_1301:
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
	#Procedure 0x411e80

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
	jne	.label_1309
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1306
.label_1309:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_1313
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1306
.label_1313:
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
	jne	.label_1311
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1306
.label_1311:
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
	jne	.label_1310
	jmp	.label_1312
.label_1310:
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
	jmp	.label_1306
.label_1312:
	mov	edx, 1
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x70]
	call	transfer_entries
	test	al, 1
	jne	.label_1314
	jmp	.label_1307
.label_1314:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x70]
	call	transfer_entries
	test	al, 1
	jne	.label_1308
.label_1307:
	call	abort
.label_1308:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	byte ptr [rbp - 1], 0
.label_1306:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412090

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
.label_1318:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1327
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	je	.label_1317
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
.label_1320:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1323
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
	je	.label_1315
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_1324
.label_1315:
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
.label_1324:
	jmp	.label_1325
.label_1325:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1320
.label_1323:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 8], 0
	test	byte ptr [rbp - 0x19], 1
	je	.label_1328
	jmp	.label_1316
.label_1328:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	call	safe_hasher
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax], 0
	je	.label_1326
	mov	rdi, qword ptr [rbp - 0x10]
	call	allocate_entry
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_1319
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1322
.label_1319:
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
	jmp	.label_1321
.label_1326:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
.label_1321:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, -1
	mov	qword ptr [rax + 0x18], rcx
.label_1317:
	jmp	.label_1316
.label_1316:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1318
.label_1327:
	mov	byte ptr [rbp - 1], 1
.label_1322:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412270

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
	jne	.label_1344
	call	abort
.label_1344:
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	je	.label_1347
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1338
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1338:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1330
.label_1347:
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
	js	.label_1337
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_1337:
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
	js	.label_1341
	movss	xmm0, dword ptr [rbp - 0x6c]
	movss	dword ptr [rbp - 0x70], xmm0
.label_1341:
	movss	xmm0, dword ptr [rbp - 0x70]
	movss	xmm1, dword ptr [rbp - 0x68]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm0, xmm1
	jbe	.label_1332
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
	js	.label_1342
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	dword ptr [rbp - 0x90], xmm0
.label_1342:
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
	js	.label_1334
	movss	xmm0, dword ptr [rbp - 0x9c]
	movss	dword ptr [rbp - 0xa0], xmm0
.label_1334:
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x94]
	ucomiss	xmm0, xmm1
	jbe	.label_1331
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x10], 1
	je	.label_1346
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
	js	.label_1329
	movss	xmm0, dword ptr [rbp - 0xa4]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1329:
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 0xc]
	movss	dword ptr [rbp - 0xac], xmm0
	jmp	.label_1336
.label_1346:
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
	js	.label_1345
	movss	xmm0, dword ptr [rbp - 0xb0]
	movss	dword ptr [rbp - 0xb4], xmm0
.label_1345:
	movss	xmm0, dword ptr [rbp - 0xb4]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0xac], xmm0
.label_1336:
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [label_1282]]
	movss	dword ptr [rbp - 0x3c], xmm0
	movss	xmm0, dword ptr [rbp - 0x3c]
	ucomiss	xmm0, xmm1
	jb	.label_1333
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1330
.label_1333:
	mov	rdi, qword ptr [rbp - 0x10]
	movss	xmm0, dword ptr [rbp - 0x3c]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1278]]
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
	jne	.label_1339
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1330
.label_1339:
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	cmp	rax, 0
	je	.label_1343
	call	abort
.label_1343:
	jmp	.label_1331
.label_1331:
	jmp	.label_1332
.label_1332:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1335
	mov	rdi, qword ptr [rbp - 0x10]
	call	allocate_entry
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_1340
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1330
.label_1340:
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
	jmp	.label_1330
.label_1335:
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
.label_1330:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412710

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
	jne	.label_1351
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1353
.label_1351:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx]
	je	.label_1348
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_1348
	jmp	.label_1350
.label_1348:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_1360
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 8], 0
	je	.label_1357
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
	jmp	.label_1356
.label_1357:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
.label_1356:
	jmp	.label_1360
.label_1360:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1353
.label_1350:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_1359:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 8], 0
	je	.label_1352
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx]
	je	.label_1349
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_1349
	jmp	.label_1354
.label_1349:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_1355
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
.label_1355:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1353
.label_1354:
	jmp	.label_1358
.label_1358:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1359
.label_1352:
	mov	qword ptr [rbp - 8], 0
.label_1353:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4128e0

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x48], 0
	je	.label_1361
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x48], rax
	jmp	.label_1362
.label_1361:
	mov	eax, 0x10
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
.label_1362:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412940

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
	jne	.label_1363
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_1366
.label_1363:
	cmp	dword ptr [rbp - 0x1c], 0
	jne	.label_1365
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1364
.label_1365:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_1364:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_1366:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4129b0

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
	jne	.label_1374
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1368
.label_1374:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, -1
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	jne	.label_1369
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
	js	.label_1372
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_1372:
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
	js	.label_1377
	movss	xmm0, dword ptr [rbp - 0x6c]
	movss	dword ptr [rbp - 0x70], xmm0
.label_1377:
	movss	xmm0, dword ptr [rbp - 0x70]
	movss	xmm1, dword ptr [rbp - 0x68]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm1, xmm0
	jbe	.label_1367
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
	js	.label_1380
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	dword ptr [rbp - 0x90], xmm0
.label_1380:
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
	js	.label_1373
	movss	xmm0, dword ptr [rbp - 0x9c]
	movss	dword ptr [rbp - 0xa0], xmm0
.label_1373:
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x94]
	ucomiss	xmm1, xmm0
	jbe	.label_1371
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x10], 1
	je	.label_1379
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
	js	.label_1370
	movss	xmm0, dword ptr [rbp - 0xa4]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1370:
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 4]
	movss	dword ptr [rbp - 0xac], xmm0
	jmp	.label_1375
.label_1379:
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
	js	.label_1381
	movss	xmm0, dword ptr [rbp - 0xb0]
	movss	dword ptr [rbp - 0xb4], xmm0
.label_1381:
	movss	xmm0, dword ptr [rbp - 0xb4]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0xac], xmm0
.label_1375:
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1278]]
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
	jne	.label_1378
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x40], rax
.label_1376:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1382
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1376
.label_1382:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x48], 0
.label_1378:
	jmp	.label_1371
.label_1371:
	jmp	.label_1367
.label_1367:
	jmp	.label_1369
.label_1369:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1368:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412db0

	.globl next_prime
	.type next_prime, @function
next_prime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0xa
	jae	.label_1383
	mov	qword ptr [rbp - 8], 0xa
.label_1383:
	mov	rax, qword ptr [rbp - 8]
	or	rax, 1
	mov	qword ptr [rbp - 8], rax
.label_1385:
	xor	eax, eax
	mov	cl, al
	mov	rdx, -1
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 9], cl
	je	.label_1387
	mov	rdi, qword ptr [rbp - 8]
	call	is_prime
	xor	al, 0xff
	mov	byte ptr [rbp - 9], al
.label_1387:
	mov	al, byte ptr [rbp - 9]
	test	al, 1
	jne	.label_1384
	jmp	.label_1386
.label_1384:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 2
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1385
.label_1386:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412e30

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
.label_1389:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 0x19], cl
	jae	.label_1391
	mov	rax, qword ptr [rbp - 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rdx, 0
	setne	sil
	mov	byte ptr [rbp - 0x19], sil
.label_1391:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_1390
	jmp	.label_1388
.label_1390:
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
	jmp	.label_1389
.label_1388:
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
	#Procedure 0x412ef0

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
	#Procedure 0x412f30

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
	jne	.label_1394
	mov	qword ptr [rbp - 0x10], 1
.label_1394:
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
	je	.label_1392
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1393
.label_1392:
	movabs	rax, OFFSET FLAT:heap_default_compare
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1393
.label_1393:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412ff0

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
	#Procedure 0x413000
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
	#Procedure 0x413030

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
	ja	.label_1395
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
.label_1395:
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
	#Procedure 0x4130d0

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
.label_1398:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x20], 1
	mov	byte ptr [rbp - 0x29], cl
	je	.label_1399
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
.label_1399:
	mov	al, byte ptr [rbp - 0x29]
	test	al, 1
	jne	.label_1396
	jmp	.label_1397
.label_1396:
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
	jmp	.label_1398
.label_1397:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + rcx*8], rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413190

	.globl heap_remove_top
	.type heap_remove_top, @function
heap_remove_top:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdi + 0x10], 0
	jne	.label_1400
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1401
.label_1400:
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
.label_1401:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413230

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
.label_1405:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	shr	rcx, 1
	cmp	rax, rcx
	ja	.label_1402
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1403
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx + rcx*8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rdx + rcx*8 + 8]
	call	rax
	cmp	eax, 0
	jge	.label_1403
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
.label_1403:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx + rcx*8]
	mov	rsi, qword ptr [rbp - 0x28]
	call	rax
	cmp	eax, 0
	jg	.label_1404
	jmp	.label_1402
.label_1404:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1405
.label_1402:
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
	#Procedure 0x413330

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
	jge	.label_1406
	jmp	.label_1408
.label_1408:
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
	jne	.label_1408
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_1409
.label_1406:
	jmp	.label_1407
.label_1407:
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
	jne	.label_1407
	jmp	.label_1409
.label_1409:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413420

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
	jae	.label_1410
	jmp	.label_1413
.label_1413:
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
	jne	.label_1413
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_1411
.label_1410:
	jmp	.label_1412
.label_1412:
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
	jne	.label_1412
	jmp	.label_1411
.label_1411:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413520

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
	jae	.label_1414
	jmp	.label_1417
.label_1417:
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
	jne	.label_1417
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_1416
.label_1414:
	jmp	.label_1415
.label_1415:
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
	jne	.label_1415
	jmp	.label_1416
.label_1416:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413620
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
	#Procedure 0x413660

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
	jbe	.label_1419
	jmp	.label_1427
.label_1427:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1444
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x20
	mov	eax, ecx
	sub	ecx, 0x5e
	mov	qword ptr [rbp - 0x60], rax
	mov	dword ptr [rbp - 0x64], ecx
	ja	.label_1432
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1440]]
	jmp	rcx
.label_2341:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_1443
.label_1432:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	rdi, rcx
	call	memset
.label_1434:
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
	jne	.label_1418
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 1
	cmp	eax, 0
	jne	.label_1425
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_1420
.label_1425:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1426
.label_1418:
	cmp	qword ptr [rbp - 0x50], -2
	jne	.label_1445
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 1
	cmp	eax, 0
	jne	.label_1448
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_1420
.label_1448:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1426
.label_1445:
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_1430
	mov	qword ptr [rbp - 0x50], 1
.label_1430:
	mov	edi, dword ptr [rbp - 0x44]
	call	wcwidth
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 0
	jl	.label_1437
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 0x54]
	sub	eax, dword ptr [rbp - 0x34]
	cmp	ecx, eax
	jle	.label_1446
	jmp	.label_1429
.label_1446:
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_1436
.label_1437:
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 2
	cmp	eax, 0
	jne	.label_1447
	mov	edi, dword ptr [rbp - 0x44]
	call	iswcntrl
	cmp	eax, 0
	jne	.label_1422
	cmp	dword ptr [rbp - 0x34], 0x7fffffff
	jne	.label_1424
	jmp	.label_1429
.label_1424:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
.label_1422:
	jmp	.label_1433
.label_1447:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1426
.label_1433:
	jmp	.label_1436
.label_1436:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rbp - 0x40]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_1434
.label_1420:
	jmp	.label_1443
.label_1443:
	jmp	.label_1427
.label_1444:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1426
.label_1419:
	jmp	.label_1428
.label_1428:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1421
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
	je	.label_1435
	cmp	dword ptr [rbp - 0x34], 0x7fffffff
	jne	.label_1441
	jmp	.label_1429
.label_1441:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_1442
.label_1435:
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 2
	cmp	eax, 0
	jne	.label_1439
	movzx	eax, byte ptr [rbp - 0x55]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 2
	cmp	edx, 0
	jne	.label_1423
	cmp	dword ptr [rbp - 0x34], 0x7fffffff
	jne	.label_1431
	jmp	.label_1429
.label_1431:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
.label_1423:
	jmp	.label_1438
.label_1439:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1426
.label_1438:
	jmp	.label_1442
.label_1442:
	jmp	.label_1428
.label_1421:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1426
.label_1429:
	mov	dword ptr [rbp - 4], 0x7fffffff
.label_1426:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413990

	.globl num_processors
	.type num_processors, @function
num_processors:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], -1
	cmp	dword ptr [rbp - 0xc], 2
	jne	.label_1452
	movabs	rdi, OFFSET FLAT:.str_9
	call	getenv
	mov	rdi, rax
	call	parse_omp_threads
	movabs	rdi, OFFSET FLAT:.str.1_5
	mov	qword ptr [rbp - 0x20], rax
	call	getenv
	mov	rdi, rax
	call	parse_omp_threads
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1456
	mov	qword ptr [rbp - 0x18], -1
.label_1456:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1454
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1450
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1451
.label_1450:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
.label_1451:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1455
.label_1454:
	mov	dword ptr [rbp - 0xc], 1
.label_1452:
	mov	edi, dword ptr [rbp - 0xc]
	call	num_processors_ignoring_omp
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1449
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1453
.label_1449:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rax
.label_1453:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
.label_1455:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413a80

	.globl parse_omp_threads
	.type parse_omp_threads, @function
parse_omp_threads:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], 0
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1457
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1460
.label_1457:
	jmp	.label_1468
.label_1468:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x29], cl
	je	.label_1470
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rax]
	call	c_isspace
	mov	byte ptr [rbp - 0x29], al
.label_1470:
	mov	al, byte ptr [rbp - 0x29]
	test	al, 1
	jne	.label_1463
	jmp	.label_1465
.label_1463:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1468
.label_1465:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rax]
	call	c_isdigit
	test	al, 1
	jne	.label_1459
	jmp	.label_1462
.label_1459:
	lea	rsi, [rbp - 0x20]
	mov	edx, 0xa
	mov	qword ptr [rbp - 0x20], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	strtoul
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1464
	jmp	.label_1471
.label_1471:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x2a], cl
	je	.label_1472
	mov	rax, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rax]
	call	c_isspace
	mov	byte ptr [rbp - 0x2a], al
.label_1472:
	mov	al, byte ptr [rbp - 0x2a]
	test	al, 1
	jne	.label_1467
	jmp	.label_1469
.label_1467:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1471
.label_1469:
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1461
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1460
.label_1461:
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2c
	jne	.label_1466
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1460
.label_1466:
	jmp	.label_1458
.label_1458:
	jmp	.label_1464
.label_1464:
	jmp	.label_1462
.label_1462:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
.label_1460:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413bf0

	.globl num_processors_ignoring_omp
	.type num_processors_ignoring_omp, @function
num_processors_ignoring_omp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], edi
	cmp	dword ptr [rbp - 0xc], 1
	jne	.label_1478
	call	num_processors_via_affinity_mask
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jbe	.label_1475
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1479
.label_1475:
	mov	edi, 0x54
	call	sysconf
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jle	.label_1473
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1479
.label_1473:
	jmp	.label_1474
.label_1478:
	mov	edi, 0x53
	call	sysconf
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 1
	jne	.label_1480
	call	num_processors_via_affinity_mask
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jbe	.label_1477
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_1477:
	jmp	.label_1480
.label_1480:
	cmp	qword ptr [rbp - 0x28], 0
	jle	.label_1476
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1479
.label_1476:
	jmp	.label_1474
.label_1474:
	mov	qword ptr [rbp - 8], 1
.label_1479:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413cc0

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
	jne	.label_1481
	mov	eax, 0x80
	mov	edi, eax
	lea	rsi, [rbp - 0x88]
	call	__sched_cpucount
	movsxd	rsi, eax
	mov	qword ptr [rbp - 0x90], rsi
	cmp	qword ptr [rbp - 0x90], 0
	jbe	.label_1483
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1482
.label_1483:
	jmp	.label_1481
.label_1481:
	mov	qword ptr [rbp - 8], 0
.label_1482:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413d40

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
	jb	.label_1485
	xorps	xmm0, xmm0
	movsd	xmm1, qword ptr [rbp - 0x18]
	ucomisd	xmm1, xmm0
	jb	.label_1485
	movsd	xmm0, qword ptr [rbp - 0x10]
	mulsd	xmm0, qword ptr [rbp - 0x18]
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.label_1484
.label_1485:
	lea	rdi, [rbp - 0x88]
	call	sysinfo
	cmp	eax, 0
	jne	.label_1486
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_247]]
	movq	xmm1, qword ptr [rbp - 0x68]
	punpckldq	xmm1, xmm0
	movapd	xmm0,  xmmword ptr [word ptr [rip + label_248]]
	subpd	xmm1, xmm0
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mov	eax, dword ptr [rbp - 0x20]
	mov	ecx, eax
	cvtsi2sd	xmm1, rcx
	mulsd	xmm0, xmm1
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.label_1484
.label_1486:
	movsd	xmm0,  qword ptr [word ptr [label_1487]]
	movsd	qword ptr [rbp - 8], xmm0
.label_1484:
	movsd	xmm0, qword ptr [rbp - 8]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413e20

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
	jb	.label_1490
	xorps	xmm0, xmm0
	movsd	xmm1, qword ptr [rbp - 0x18]
	ucomisd	xmm1, xmm0
	jb	.label_1490
	movsd	xmm0, qword ptr [rbp - 0x10]
	mulsd	xmm0, qword ptr [rbp - 0x18]
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.label_1488
.label_1490:
	lea	rdi, [rbp - 0x88]
	call	sysinfo
	cmp	eax, 0
	jne	.label_1491
	movq	xmm0, qword ptr [rbp - 0x60]
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_247]]
	punpckldq	xmm0, xmm1
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_248]]
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
	jmp	.label_1488
.label_1491:
	call	physmem_total
	movsd	xmm1,  qword ptr [word ptr [label_1489]]
	divsd	xmm0, xmm1
	movsd	qword ptr [rbp - 8], xmm0
.label_1488:
	movsd	xmm0, qword ptr [rbp - 8]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413f20

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
	jl	.label_1501
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	call	pipe2
	mov	dword ptr [rbp - 0x20], eax
	cmp	dword ptr [rbp - 0x20], 0
	jge	.label_1500
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	je	.label_1498
.label_1500:
	mov	dword ptr [dword ptr [rpl_pipe2.have_pipe2_really]],  1
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1496
.label_1498:
	mov	dword ptr [dword ptr [rpl_pipe2.have_pipe2_really]],  0xffffffff
.label_1501:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0xfff7f7ff
	cmp	eax, 0
	je	.label_1499
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1496
.label_1499:
	mov	rdi, qword ptr [rbp - 0x10]
	call	pipe
	cmp	eax, 0
	jge	.label_1495
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1496
.label_1495:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x800
	cmp	eax, 0
	je	.label_1493
	mov	esi, 3
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 4]
	mov	al, 0
	call	rpl_fcntl
	mov	dword ptr [rbp - 0x24], eax
	cmp	eax, 0
	jl	.label_1494
	mov	esi, 4
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 4]
	mov	ecx, dword ptr [rbp - 0x24]
	or	ecx, 0x800
	mov	edx, ecx
	mov	al, 0
	call	rpl_fcntl
	cmp	eax, -1
	je	.label_1494
	mov	esi, 3
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax]
	mov	al, 0
	call	rpl_fcntl
	mov	dword ptr [rbp - 0x24], eax
	cmp	eax, 0
	jl	.label_1494
	mov	esi, 4
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax]
	mov	ecx, dword ptr [rbp - 0x24]
	or	ecx, 0x800
	mov	edx, ecx
	mov	al, 0
	call	rpl_fcntl
	cmp	eax, -1
	jne	.label_1504
.label_1494:
	jmp	.label_1492
.label_1504:
	jmp	.label_1493
.label_1493:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x80000
	cmp	eax, 0
	je	.label_1502
	mov	esi, 1
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 4]
	mov	al, 0
	call	rpl_fcntl
	mov	dword ptr [rbp - 0x28], eax
	cmp	eax, 0
	jl	.label_1497
	mov	esi, 2
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 4]
	mov	ecx, dword ptr [rbp - 0x28]
	or	ecx, 1
	mov	edx, ecx
	mov	al, 0
	call	rpl_fcntl
	cmp	eax, -1
	je	.label_1497
	mov	esi, 1
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax]
	mov	al, 0
	call	rpl_fcntl
	mov	dword ptr [rbp - 0x28], eax
	cmp	eax, 0
	jl	.label_1497
	mov	esi, 2
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax]
	mov	ecx, dword ptr [rbp - 0x28]
	or	ecx, 1
	mov	edx, ecx
	mov	al, 0
	call	rpl_fcntl
	cmp	eax, -1
	jne	.label_1503
.label_1497:
	jmp	.label_1492
.label_1503:
	jmp	.label_1502
.label_1502:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1496
.label_1492:
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
.label_1496:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414190

	.globl posix2_version
	.type posix2_version, @function
posix2_version:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	movabs	rdi, OFFSET FLAT:.str_10
	mov	qword ptr [rbp - 8], 0x31069
	call	getenv
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1508
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1508
	lea	rsi, [rbp - 0x18]
	mov	edx, 0xa
	mov	rdi, qword ptr [rbp - 0x10]
	call	strtol
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_1505
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1505:
	jmp	.label_1508
.label_1508:
	cmp	qword ptr [rbp - 8], -0x80000000
	jge	.label_1510
	mov	rax, -0x80000000
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1507
.label_1510:
	cmp	qword ptr [rbp - 8], 0x7fffffff
	jge	.label_1509
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1506
.label_1509:
	mov	eax, 0x7fffffff
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_1506
.label_1506:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_1507:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, eax
	mov	eax, ecx
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414260

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1511
	movabs	rdi, OFFSET FLAT:.str_11
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_1511:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1512
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1514
.label_1512:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_1514:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_1513
	movabs	rsi, OFFSET FLAT:.str.1_6
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_1513
	movabs	rsi, OFFSET FLAT:.str.2_2
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_1515
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_1515:
	jmp	.label_1513
.label_1513:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414380
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
	je	.label_1516
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1517
.label_1516:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1517
.label_1517:
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
	#Procedure 0x414400
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_1518
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1519
.label_1518:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1519
.label_1519:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414440
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
	je	.label_1520
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1521
.label_1520:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1521
.label_1521:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414490

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
	je	.label_1522
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1523
.label_1522:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1523
.label_1523:
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
	#Procedure 0x414540
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1524
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_1524:
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
	#Procedure 0x414580

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
	jne	.label_1525
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_1525:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1527
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1526
.label_1527:
	call	abort
.label_1526:
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
	#Procedure 0x4145f0
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
	je	.label_1528
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1529
.label_1528:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1529
.label_1529:
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
	#Procedure 0x4146c0

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
.label_1591:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_1691
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1627]]
	jmp	rcx
.label_2363:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_2362:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1704
	jmp	.label_1707
.label_1707:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1708
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1708:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1704
.label_1704:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_1568
.label_2364:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_1568
.label_2365:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_1714
	movabs	rdi, OFFSET FLAT:.str.11_0
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_1714:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1539
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_1561:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_1544
	jmp	.label_1549
.label_1549:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1634
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_1634:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1555
.label_1555:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1561
.label_1544:
	jmp	.label_1539
.label_1539:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1568
.label_2360:
	mov	byte ptr [rbp - 0x79], 1
.label_2359:
	mov	byte ptr [rbp - 0x7b], 1
.label_2361:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1574
	mov	byte ptr [rbp - 0x79], 1
.label_1574:
	jmp	.label_1633
.label_1633:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1576
	jmp	.label_1579
.label_1579:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1580
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1580:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1576
.label_1576:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_1568
.label_2358:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_1568
.label_1691:
	call	abort
.label_1568:
	mov	qword ptr [rbp - 0x58], 0
.label_1558:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1719
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_1599
.label_1719:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_1599:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_1613
	jmp	.label_1629
.label_1613:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_1622
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_1622
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_1622
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_1632
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_1632
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_1648
.label_1632:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_1648:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_1622
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_1622
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1656
	jmp	.label_1545
.label_1656:
	mov	byte ptr [rbp - 0x81], 1
.label_1622:
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
	ja	.label_1659
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1664]]
	jmp	rcx
.label_2313:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1665
	jmp	.label_1669
.label_1669:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1607
	jmp	.label_1545
.label_1607:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1583
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1583
	jmp	.label_1676
.label_1676:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1626
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1626:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1680
.label_1680:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1530
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1530:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1686
.label_1686:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1690
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1690:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1583:
	jmp	.label_1698
.label_1698:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1700
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1700:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1706
.label_1706:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_1543
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1543
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_1543
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_1543
	jmp	.label_1724
.label_1724:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1726
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_1726:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1533
.label_1533:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1536
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_1536:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1543
.label_1543:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_1550
.label_1665:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_1553
	jmp	.label_1556
.label_1553:
	jmp	.label_1550
.label_1550:
	jmp	.label_1563
.label_2324:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_1557
	jmp	.label_1565
.label_1565:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_1566
	jmp	.label_1723
.label_1557:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1531
	jmp	.label_1545
.label_1531:
	jmp	.label_1573
.label_1566:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_1559
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1559
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_1559
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rax + rcx + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_1582
	jmp	.label_1589
.label_1589:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_1582
	jmp	.label_1594
.label_1594:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_1582
	jmp	.label_1640
.label_1640:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_1582
	jmp	.label_1604
.label_1604:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_1605
	jmp	.label_1582
.label_1582:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1615
	jmp	.label_1545
.label_1615:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1621
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_1621:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1631
.label_1631:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1636
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1636:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1644
.label_1644:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1551
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1551:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1652
.label_1652:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1585
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_1585:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1655
.label_1605:
	jmp	.label_1655
.label_1655:
	jmp	.label_1559
.label_1559:
	jmp	.label_1573
.label_1723:
	jmp	.label_1573
.label_1573:
	jmp	.label_1563
.label_2314:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_1660
.label_2315:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_1660
.label_2319:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_1660
.label_2317:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_1650
.label_2320:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_1650
.label_2316:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_1650
.label_2318:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_1660
.label_2325:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1667
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1671
	jmp	.label_1545
.label_1671:
	jmp	.label_1567
.label_1667:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1673
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1673
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_1673
	jmp	.label_1567
.label_1673:
	jmp	.label_1650
.label_1650:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1679
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1679
	jmp	.label_1545
.label_1679:
	jmp	.label_1660
.label_1660:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1684
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_1670
.label_1684:
	jmp	.label_1563
.label_2326:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1688
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_1548
	jmp	.label_1694
.label_1688:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_1548
.label_1694:
	jmp	.label_1563
.label_1548:
	jmp	.label_1697
.label_1697:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_1699
	jmp	.label_1563
.label_1699:
	jmp	.label_1702
.label_1702:
	mov	byte ptr [rbp - 0x83], 1
.label_2321:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1705
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1705
	jmp	.label_1545
.label_1705:
	jmp	.label_1563
.label_2323:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1711
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1716
	jmp	.label_1545
.label_1716:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1677
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_1677
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_1677:
	jmp	.label_1728
.label_1728:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1730
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1730:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1535
.label_1535:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1538
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1538:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1547
.label_1547:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1554
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1554:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1711:
	jmp	.label_1563
.label_2322:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_1563
.label_1659:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_1696
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
	jmp	.label_1572
.label_1696:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1584
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_1584:
	jmp	.label_1590
.label_1590:
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
	jne	.label_1602
	jmp	.label_1610
.label_1602:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_1611
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_1610
.label_1611:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_1612
	mov	byte ptr [rbp - 0x91], 0
.label_1645:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_1623
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_1623:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_1639
	jmp	.label_1642
.label_1639:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1645
.label_1642:
	jmp	.label_1610
.label_1612:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1651
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1651
	mov	qword ptr [rbp - 0xb8], 1
.label_1675:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_1653
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
	jb	.label_1620
	jmp	.label_1662
.label_1662:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_1620
	jmp	.label_1715
.label_1715:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_1620
	jmp	.label_1666
.label_1666:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_1668
	jmp	.label_1620
.label_1620:
	jmp	.label_1545
.label_1668:
	jmp	.label_1593
.label_1593:
	jmp	.label_1600
.label_1600:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_1675
.label_1653:
	jmp	.label_1651
.label_1651:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_1681
	mov	byte ptr [rbp - 0x91], 0
.label_1681:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1683
.label_1683:
	jmp	.label_1692
.label_1692:
	jmp	.label_1687
.label_1687:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_1590
.label_1610:
	jmp	.label_1572
.label_1572:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_1695
	test	byte ptr [rbp - 0x79], 1
	je	.label_1608
	test	byte ptr [rbp - 0x91], 1
	jne	.label_1608
.label_1695:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_1638:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1712
	test	byte ptr [rbp - 0x91], 1
	jne	.label_1712
	jmp	.label_1717
.label_1717:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1718
	jmp	.label_1545
.label_1718:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1722
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1722
	jmp	.label_1727
.label_1727:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1729
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1729:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1534
.label_1534:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1537
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1537:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1546
.label_1546:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1552
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1552:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1722:
	jmp	.label_1560
.label_1560:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1562
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1562:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1710
.label_1710:
	jmp	.label_1570
.label_1570:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1571
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_1571:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1577
.label_1577:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1581
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_1581:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_1587
.label_1712:
	test	byte ptr [rbp - 0x81], 1
	je	.label_1592
	jmp	.label_1595
.label_1595:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1597
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1597:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_1592:
	jmp	.label_1587
.label_1587:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_1609
	jmp	.label_1614
.label_1609:
	jmp	.label_1617
.label_1617:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_1619
	test	byte ptr [rbp - 0x82], 1
	jne	.label_1619
	jmp	.label_1624
.label_1624:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1625
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1625:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1630
.label_1630:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1635
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1635:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1619:
	jmp	.label_1646
.label_1646:
	jmp	.label_1647
.label_1647:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1649
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_1649:
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
	jmp	.label_1638
.label_1614:
	jmp	.label_1567
.label_1608:
	jmp	.label_1563
.label_1563:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1657
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1658
.label_1657:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1661
.label_1658:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1661
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
	jne	.label_1663
.label_1661:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_1663
	jmp	.label_1567
.label_1663:
	jmp	.label_1670
.label_1670:
	jmp	.label_1578
.label_1578:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1672
	jmp	.label_1545
.label_1672:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1674
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1674
	jmp	.label_1641
.label_1641:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1678
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1678:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1682
.label_1682:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1685
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1685:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1689
.label_1689:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1693
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1693:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1674:
	jmp	.label_1701
.label_1701:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1703
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1703:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1709
.label_1709:
	jmp	.label_1567
.label_1567:
	jmp	.label_1654
.label_1654:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_1713
	test	byte ptr [rbp - 0x82], 1
	jne	.label_1713
	jmp	.label_1720
.label_1720:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1721
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1721:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1725
.label_1725:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1532
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1532:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1713:
	jmp	.label_1540
.label_1540:
	jmp	.label_1541
.label_1541:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1542
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_1542:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_1643
	mov	byte ptr [rbp - 0x7e], 0
.label_1643:
	jmp	.label_1556
.label_1556:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_1558
.label_1629:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_1564
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1564
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1564
	jmp	.label_1545
.label_1564:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1569
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1569
	test	byte ptr [rbp - 0x7d], 1
	je	.label_1569
	test	byte ptr [rbp - 0x7e], 1
	je	.label_1575
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
	jmp	.label_1586
.label_1575:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1588
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_1588
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_1591
.label_1588:
	jmp	.label_1596
.label_1596:
	jmp	.label_1569
.label_1569:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_1598
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1598
	jmp	.label_1601
.label_1601:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_1603
	jmp	.label_1606
.label_1606:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1616
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_1616:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1618
.label_1618:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1601
.label_1603:
	jmp	.label_1598
.label_1598:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1628
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_1628:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1586
.label_1545:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1637
	test	byte ptr [rbp - 0x79], 1
	je	.label_1637
	mov	dword ptr [rbp - 0x34], 4
.label_1637:
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
.label_1586:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415a60
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
	#Procedure 0x415aa0

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
	je	.label_1731
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1732
.label_1731:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1732
.label_1732:
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
	je	.label_1733
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1733:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415c00
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_1737:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_1735
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1737
.label_1735:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_1738
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_1736]],  rax
.label_1738:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_1734
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_1734:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415ce0

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
	#Procedure 0x415d20

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
	jge	.label_1746
	call	abort
.label_1746:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_1744
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_1742
	call	xalloc_die
.label_1742:
	test	byte ptr [rbp - 0x31], 1
	je	.label_1743
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_1745
.label_1743:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_1745:
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
	je	.label_1741
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_1736]]
	mov	qword ptr [rax + 8], rcx
.label_1741:
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
.label_1744:
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
	ja	.label_1739
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_1740
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_1740:
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
.label_1739:
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
	#Procedure 0x415fa0

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
	#Procedure 0x415fe0
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
	#Procedure 0x416000
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
	#Procedure 0x416030

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
	#Procedure 0x416070

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
	jne	.label_1747
	call	abort
.label_1747:
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
	#Procedure 0x4160e0

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
	#Procedure 0x416120

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
	#Procedure 0x416150
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
	#Procedure 0x416180

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
	#Procedure 0x416200

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
	#Procedure 0x416230

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
	#Procedure 0x416250
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
	#Procedure 0x416280

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
	#Procedure 0x416330

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
	#Procedure 0x416370

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
	#Procedure 0x4163f0
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
	#Procedure 0x416420
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
	#Procedure 0x416460

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
	#Procedure 0x4164a0
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
	#Procedure 0x4164d0

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
	#Procedure 0x416500

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
	#Procedure 0x416520

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
	je	.label_1750
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1748
.label_1750:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:.str.13_0
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1749
	movabs	rax, OFFSET FLAT:.str.15_0
	movabs	rcx, OFFSET FLAT:.str.14_0
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1748
.label_1749:
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1751
	movabs	rax, OFFSET FLAT:.str.18_1
	movabs	rcx, OFFSET FLAT:.str.17_1
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1748
.label_1751:
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_1748:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416620

	.globl randread_new
	.type randread_new, @function
randread_new:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1752
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, rcx
	mov	rsi, rcx
	call	simple_new
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1754
.label_1752:
	mov	qword ptr [rbp - 0x20], 0
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1756
	movabs	rsi, OFFSET FLAT:.str_12
	mov	rdi, qword ptr [rbp - 0x10]
	call	fopen_safer
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jne	.label_1758
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1754
.label_1758:
	jmp	.label_1756
.label_1756:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	call	simple_new
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1753
	mov	eax, 0x1000
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	add	rdx, 0x18
	cmp	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rdx
	mov	qword ptr [rbp - 0x38], rdi
	jae	.label_1757
	mov	eax, 0x1000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x40], rcx
	jmp	.label_1759
.label_1757:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
.label_1759:
	mov	rax, qword ptr [rbp - 0x40]
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rcx, rax
	call	setvbuf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1755
.label_1753:
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
.label_1755:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1754:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416770

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
	#Procedure 0x4167d0

	.globl get_nonce
	.type get_nonce, @function
get_nonce:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	movabs	rax, OFFSET FLAT:.str.3_2
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
	jg	.label_1760
	mov	edi, dword ptr [rbp - 0x2c]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x8c], edi
	mov	qword ptr [rbp - 0x98], rsi
	jae	.label_1762
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_1767
.label_1762:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
.label_1767:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	edi, dword ptr [rbp - 0x8c]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdx, rax
	call	read
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jge	.label_1777
	mov	qword ptr [rbp - 0x28], 0
.label_1777:
	mov	edi, dword ptr [rbp - 0x2c]
	call	close
	mov	dword ptr [rbp - 0xa4], eax
.label_1760:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1761
	mov	eax, 0x10
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_1764
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0xb0], rcx
	jmp	.label_1769
.label_1764:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xb0], rax
.label_1769:
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
.label_1761:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1763
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_1765
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0xc0], rcx
	jmp	.label_1771
.label_1765:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xc0], rax
.label_1771:
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
.label_1763:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1766
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_1768
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0xd0], rcx
	jmp	.label_1773
.label_1768:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xd0], rax
.label_1773:
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
.label_1766:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1770
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_1775
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0xe0], rcx
	jmp	.label_1776
.label_1775:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xe0], rax
.label_1776:
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
.label_1770:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1772
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_1774
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0xf0], rcx
	jmp	.label_1778
.label_1774:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xf0], rax
.label_1778:
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
.label_1772:
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416b80
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
	#Procedure 0x416ba0
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
	#Procedure 0x416bc0

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
	je	.label_1779
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	readsource
	jmp	.label_1780
.label_1779:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	readisaac
.label_1780:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416c20

	.globl readsource
	.type readsource, @function
readsource:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_1784:
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
	jne	.label_1783
	jmp	.label_1781
.label_1783:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_1782
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_1785
.label_1782:
	xor	eax, eax
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_1785
.label_1785:
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
	jmp	.label_1784
.label_1781:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416cf0

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
.label_1790:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_1788
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
	jmp	.label_1792
.label_1788:
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
	jne	.label_1791
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_1786:
	mov	eax, 0x800
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x18]
	ja	.label_1787
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
	jne	.label_1789
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], 0
	jmp	.label_1792
.label_1789:
	jmp	.label_1786
.label_1787:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x10], rax
.label_1791:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x820
	mov	rdi, rax
	mov	rsi, rcx
	call	isaac_refill
	mov	qword ptr [rbp - 0x20], 0x800
	jmp	.label_1790
.label_1792:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416e70

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
	je	.label_1793
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1794
.label_1793:
	xor	eax, eax
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1794
.label_1794:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416ee0

	.globl randread_error
	.type randread_error, @function
randread_error:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_1795
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 0xc], edi
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], esi
	call	__errno_location
	cmp	dword ptr [rax], 0
	jne	.label_1796
	movabs	rdi, OFFSET FLAT:.str.1_7
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1797
.label_1796:
	movabs	rdi, OFFSET FLAT:.str.2_3
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
.label_1797:
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
.label_1795:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x416f70

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
.label_1799:
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
	jb	.label_1799
	jmp	.label_1798
.label_1798:
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
	jb	.label_1798
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
	#Procedure 0x4174b0

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
	#Procedure 0x417500

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
	#Procedure 0x417520

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
.label_1803:
	cmp	dword ptr [rbp - 0x4c], 0x100
	jge	.label_1800
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
	jmp	.label_1803
.label_1800:
	mov	dword ptr [rbp - 0x50], 0
.label_1801:
	cmp	dword ptr [rbp - 0x50], 0x100
	jge	.label_1802
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
	jmp	.label_1801
.label_1802:
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
	#Procedure 0x417bc0

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
	#Procedure 0x417cb0
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
	jbe	.label_1804
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jae	.label_1804
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x18], rax
	jmp	.label_1807
.label_1804:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	_obstack_free
.label_1807:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x70
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x28], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, rcx
	jbe	.label_1805
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 0x20]
	jae	.label_1805
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x18], rax
	jmp	.label_1808
.label_1805:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	_obstack_free
.label_1808:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0xc8
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x38], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, rcx
	jbe	.label_1806
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx + 0x20]
	jae	.label_1806
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x18], rax
	jmp	.label_1809
.label_1806:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	call	_obstack_free
.label_1809:
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417df0

	.globl readtokens0
	.type readtokens0, @function
readtokens0:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
.label_1815:
	mov	rdi, qword ptr [rbp - 8]
	call	fgetc
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], -1
	jne	.label_1812
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
	je	.label_1814
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
	jae	.label_1813
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x38]
	call	_obstack_newchunk
.label_1813:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rax + 0x18]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rax + 0x18], rdx
	mov	byte ptr [rcx], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	save_token
.label_1814:
	jmp	.label_1816
.label_1812:
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
	jae	.label_1819
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x50]
	call	_obstack_newchunk
.label_1819:
	mov	eax, dword ptr [rbp - 0x14]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rdx + 0x18]
	mov	rdi, rsi
	add	rdi, 1
	mov	qword ptr [rdx + 0x18], rdi
	mov	byte ptr [rsi], cl
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_1821
	mov	rdi, qword ptr [rbp - 0x10]
	call	save_token
.label_1821:
	jmp	.label_1815
.label_1816:
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
	jae	.label_1820
	mov	eax, 8
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x68]
	call	_obstack_newchunk
.label_1820:
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
	jne	.label_1817
	mov	rax, qword ptr [rbp - 0x90]
	mov	cl, byte ptr [rax + 0x50]
	and	cl, 0xfd
	or	cl, 2
	mov	byte ptr [rax + 0x50], cl
.label_1817:
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
	jbe	.label_1818
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	qword ptr [rcx + 0x18], rax
.label_1818:
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
	jne	.label_1810
	mov	rax, qword ptr [rbp - 0xa8]
	mov	cl, byte ptr [rax + 0x50]
	and	cl, 0xfd
	or	cl, 2
	mov	byte ptr [rax + 0x50], cl
.label_1810:
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
	jbe	.label_1811
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx + 0x18], rax
.label_1811:
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
	#Procedure 0x4181f0

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
	jne	.label_1822
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x50]
	and	cl, 0xfd
	or	cl, 2
	mov	byte ptr [rax + 0x50], cl
.label_1822:
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
	jbe	.label_1823
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x18], rax
.label_1823:
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
	jae	.label_1824
	mov	eax, 8
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x48]
	call	_obstack_newchunk
.label_1824:
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
	jae	.label_1825
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x78]
	call	_obstack_newchunk
.label_1825:
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
	#Procedure 0x418410
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
	#Procedure 0x418440

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
	#Procedure 0x418470

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
	#Procedure 0x4184a0

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
	jne	.label_1881
	jmp	.label_1830
.label_1830:
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
	je	.label_1891
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x39], cl
.label_1891:
	mov	al, byte ptr [rbp - 0x39]
	test	al, 1
	jne	.label_1830
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x2d
	je	.label_1834
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_1835
	jmp	.label_1841
.label_1841:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0x30
	je	.label_1841
	jmp	.label_1835
.label_1835:
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_1844
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1826
.label_1844:
	jmp	.label_1860
.label_1860:
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x22]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x3a], al
	je	.label_1862
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x3a], cl
.label_1862:
	mov	al, byte ptr [rbp - 0x3a]
	test	al, 1
	jne	.label_1871
	jmp	.label_1875
.label_1871:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	jmp	.label_1860
.label_1875:
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_1886
	jmp	.label_1889
.label_1889:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x30
	je	.label_1889
	jmp	.label_1886
.label_1886:
	xor	eax, eax
	movzx	ecx, byte ptr [rbp - 0x22]
	sub	ecx, 0x30
	cmp	ecx, 9
	setbe	dl
	and	dl, 1
	movzx	ecx, dl
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1826
.label_1834:
	jmp	.label_1836
.label_1836:
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
	je	.label_1893
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x3b], cl
.label_1893:
	mov	al, byte ptr [rbp - 0x3b]
	test	al, 1
	jne	.label_1836
	jmp	.label_1855
.label_1855:
	xor	eax, eax
	mov	cl, al
	movzx	eax, byte ptr [rbp - 0x21]
	movzx	edx, byte ptr [rbp - 0x22]
	cmp	eax, edx
	mov	byte ptr [rbp - 0x3c], cl
	jne	.label_1861
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	setbe	cl
	mov	byte ptr [rbp - 0x3c], cl
.label_1861:
	mov	al, byte ptr [rbp - 0x3c]
	test	al, 1
	jne	.label_1867
	jmp	.label_1870
.label_1867:
	jmp	.label_1873
.label_1873:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_1873
	jmp	.label_1885
.label_1885:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_1885
	jmp	.label_1855
.label_1870:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_1897
	movzx	eax, byte ptr [rbp - 0x22]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_1827
.label_1897:
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_1831
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	jbe	.label_1831
.label_1827:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cl, al
	movsx	edx, cl
	call	fraccompare
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1826
.label_1831:
	movzx	eax, byte ptr [rbp - 0x22]
	movzx	ecx, byte ptr [rbp - 0x21]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x28], eax
	mov	qword ptr [rbp - 0x30], 0
.label_1865:
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_1852
	jmp	.label_1858
.label_1858:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_1858
	jmp	.label_1866
.label_1866:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1865
.label_1852:
	mov	qword ptr [rbp - 0x38], 0
.label_1896:
	movzx	eax, byte ptr [rbp - 0x22]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_1877
	jmp	.label_1883
.label_1883:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_1883
	jmp	.label_1864
.label_1864:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1896
.label_1877:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	je	.label_1829
	mov	eax, 0xffffffff
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	rdx, qword ptr [rbp - 0x38]
	cmovb	eax, ecx
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1826
.label_1829:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1840
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1826
.label_1840:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1826
.label_1881:
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x2d
	jne	.label_1847
	jmp	.label_1850
.label_1850:
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
	je	.label_1853
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x3d], cl
.label_1853:
	mov	al, byte ptr [rbp - 0x3d]
	test	al, 1
	jne	.label_1850
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_1872
	jmp	.label_1876
.label_1876:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x30
	je	.label_1876
	jmp	.label_1872
.label_1872:
	movzx	eax, byte ptr [rbp - 0x22]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_1890
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1826
.label_1890:
	jmp	.label_1838
.label_1838:
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x21]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x3e], al
	je	.label_1898
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x3e], cl
.label_1898:
	mov	al, byte ptr [rbp - 0x3e]
	test	al, 1
	jne	.label_1845
	jmp	.label_1837
.label_1845:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	jmp	.label_1838
.label_1837:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_1846
	jmp	.label_1848
.label_1848:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0x30
	je	.label_1848
	jmp	.label_1846
.label_1846:
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	setbe	cl
	and	cl, 1
	movzx	eax, cl
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1826
.label_1847:
	jmp	.label_1869
.label_1869:
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x21]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x3f], al
	je	.label_1874
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x3f], cl
.label_1874:
	mov	al, byte ptr [rbp - 0x3f]
	test	al, 1
	jne	.label_1879
	jmp	.label_1884
.label_1879:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	jmp	.label_1869
.label_1884:
	jmp	.label_1839
.label_1839:
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x22]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x40], al
	je	.label_1895
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x40], cl
.label_1895:
	mov	al, byte ptr [rbp - 0x40]
	test	al, 1
	jne	.label_1828
	jmp	.label_1832
.label_1828:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	jmp	.label_1839
.label_1832:
	jmp	.label_1849
.label_1849:
	xor	eax, eax
	mov	cl, al
	movzx	eax, byte ptr [rbp - 0x21]
	movzx	edx, byte ptr [rbp - 0x22]
	cmp	eax, edx
	mov	byte ptr [rbp - 0x41], cl
	jne	.label_1894
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	setbe	cl
	mov	byte ptr [rbp - 0x41], cl
.label_1894:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_1851
	jmp	.label_1856
.label_1851:
	jmp	.label_1857
.label_1857:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_1857
	jmp	.label_1868
.label_1868:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_1868
	jmp	.label_1849
.label_1856:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_1882
	movzx	eax, byte ptr [rbp - 0x22]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_1887
.label_1882:
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_1892
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	jbe	.label_1892
.label_1887:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cl, al
	movsx	edx, cl
	call	fraccompare
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1826
.label_1892:
	movzx	eax, byte ptr [rbp - 0x21]
	movzx	ecx, byte ptr [rbp - 0x22]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x28], eax
	mov	qword ptr [rbp - 0x30], 0
.label_1854:
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_1833
	jmp	.label_1843
.label_1843:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_1843
	jmp	.label_1842
.label_1842:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1854
.label_1833:
	mov	qword ptr [rbp - 0x38], 0
.label_1880:
	movzx	eax, byte ptr [rbp - 0x22]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_1863
	jmp	.label_1859
.label_1859:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_1859
	jmp	.label_1878
.label_1878:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1880
.label_1863:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	je	.label_1888
	mov	eax, 1
	mov	ecx, 0xffffffff
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	rdx, qword ptr [rbp - 0x38]
	cmovb	eax, ecx
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1826
.label_1888:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1899
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1826
.label_1899:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
.label_1826:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418c30

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
	jne	.label_1908
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	movsx	edx, byte ptr [rbp - 0x19]
	cmp	ecx, edx
	jne	.label_1908
	jmp	.label_1913
.label_1913:
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
	jne	.label_1915
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	jbe	.label_1909
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1900
.label_1909:
	jmp	.label_1913
.label_1915:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_1906
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_1906
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rax]
	sub	ecx, edx
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_1900
.label_1906:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_1917
	jmp	.label_1905
.label_1917:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_1902
	jmp	.label_1914
.label_1902:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1900
.label_1908:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	movsx	edx, byte ptr [rax]
	movsx	esi, byte ptr [rbp - 0x19]
	cmp	edx, esi
	jne	.label_1916
	jmp	.label_1905
.label_1905:
	jmp	.label_1910
.label_1910:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x30
	jne	.label_1912
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1910
.label_1912:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	setbe	dl
	and	dl, 1
	movzx	ecx, dl
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_1900
.label_1916:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	movsx	edx, byte ptr [rax]
	movsx	esi, byte ptr [rbp - 0x19]
	cmp	edx, esi
	jne	.label_1911
	jmp	.label_1914
.label_1914:
	jmp	.label_1901
.label_1901:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x30
	jne	.label_1903
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1901
.label_1903:
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
	jmp	.label_1900
.label_1911:
	jmp	.label_1904
.label_1904:
	jmp	.label_1907
.label_1907:
	mov	dword ptr [rbp - 4], 0
.label_1900:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418e30

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_1918
	cmp	dword ptr [rbp - 4], 2
	jg	.label_1918
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
.label_1918:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418e90

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
	je	.label_1920
	movabs	rsi, OFFSET FLAT:.str_13
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1922
.label_1920:
	movabs	rsi, OFFSET FLAT:.str.1_8
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_1922:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:.str.2_4
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
	mov	ecx, OFFSET FLAT:.str.3_3
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
	ja	.label_1921
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1923]]
	jmp	rcx
.label_2297:
	jmp	.label_1919
.label_2298:
	movabs	rdi, OFFSET FLAT:.str.4_1
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
	jmp	.label_1919
.label_2299:
	movabs	rdi, OFFSET FLAT:.str.5_0
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
	jmp	.label_1919
.label_2300:
	movabs	rdi, OFFSET FLAT:.str.6_0
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
	jmp	.label_1919
.label_2301:
	movabs	rdi, OFFSET FLAT:.str.7_0
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
	jmp	.label_1919
.label_2302:
	movabs	rdi, OFFSET FLAT:.str.8_0
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
	jmp	.label_1919
.label_2303:
	movabs	rdi, OFFSET FLAT:.str.9_0
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
	jmp	.label_1919
.label_2304:
	movabs	rdi, OFFSET FLAT:.str.10_1
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
	jmp	.label_1919
.label_2305:
	movabs	rdi, OFFSET FLAT:.str.11_1
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
	jmp	.label_1919
.label_2306:
	movabs	rdi, OFFSET FLAT:.str.12_1
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
	jmp	.label_1919
.label_1921:
	movabs	rdi, OFFSET FLAT:.str.13_1
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
.label_1919:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419450
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
.label_1926:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1924
	jmp	.label_1925
.label_1925:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1926
.label_1924:
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
	#Procedure 0x4194c0

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
.label_1930:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_1927
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_1932
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_1931
.label_1932:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_1931:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_1927:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_1933
	jmp	.label_1928
.label_1933:
	jmp	.label_1929
.label_1929:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1930
.label_1928:
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
	#Procedure 0x4195d0

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
	je	.label_1934
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
.label_1934:
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
	#Procedure 0x419740
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.14_1
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.15_1
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.16_1
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17_0
	movabs	rdx, OFFSET FLAT:.str.18_0
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.19_0
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
	#Procedure 0x4197d0

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
	jae	.label_1935
	call	xalloc_die
.label_1935:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419820

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
	jne	.label_1936
	cmp	qword ptr [rbp - 8], 0
	je	.label_1936
	call	xalloc_die
.label_1936:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419860
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
	jae	.label_1937
	call	xalloc_die
.label_1937:
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
	#Procedure 0x4198b0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1938
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1938
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1940
.label_1938:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1939
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1939
	call	xalloc_die
.label_1939:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_1940:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419930

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
	jne	.label_1941
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1944
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
.label_1944:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1942
	call	xalloc_die
.label_1942:
	jmp	.label_1943
.label_1941:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_1945
	call	xalloc_die
.label_1945:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_1943:
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
	#Procedure 0x419a20

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
	#Procedure 0x419a40
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
	#Procedure 0x419a70
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
	#Procedure 0x419ab0

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
	jb	.label_1946
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_1947
.label_1946:
	call	xalloc_die
.label_1947:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419b10

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
	#Procedure 0x419b50
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
	#Procedure 0x419b90

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.1_9
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:.str_1
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x419bd0
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
	je	.label_1948
	mov	edi, dword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	call	collate_error
.label_1948:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419c40

	.globl collate_error
	.type collate_error, @function
collate_error:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:.str_14
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
	movabs	rdi, OFFSET FLAT:.str.1_10
	call	gettext
	xor	esi, esi
	mov	edi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
	movabs	rdi, OFFSET FLAT:.str.2_5
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
	#Procedure 0x419d10

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
	je	.label_1949
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
.label_1949:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419d90

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
.label_1954:
	call	__errno_location
	lea	rdi, [rbp - 0x20]
	xor	ecx, ecx
	mov	esi, ecx
	mov	dword ptr [rax], 0
	call	rpl_nanosleep
	cmp	eax, 0
	jne	.label_1951
	jmp	.label_1950
.label_1951:
	call	__errno_location
	cmp	dword ptr [rax], 4
	je	.label_1952
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_1952
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1953
.label_1952:
	jmp	.label_1954
.label_1950:
	mov	dword ptr [rbp - 4], 0
.label_1953:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419e20

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_1964
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_1964
	jmp	.label_1980
.label_1964:
	movabs	rdi, OFFSET FLAT:.str_15
	movabs	rsi, OFFSET FLAT:.str.1_11
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoul
	call	__assert_fail
.label_1980:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1991
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1994
.label_1991:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1994
.label_1994:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_2019:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_2013
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_2019
.label_2013:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_1962
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1965
.label_1962:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoul
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_1970
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1976
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1976
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_1976
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_1993
.label_1976:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1965
.label_1993:
	jmp	.label_1999
.label_1970:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_2002
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_2007
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1965
.label_2007:
	mov	dword ptr [rbp - 0x4c], 1
.label_2002:
	jmp	.label_1999
.label_1999:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_2012
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1965
.label_2012:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1955
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_1968
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1965
.label_1968:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_1960
	jmp	.label_1986
.label_1986:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_1960
	jmp	.label_1992
.label_1992:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_1960
	jmp	.label_1998
.label_1998:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_1960
	jmp	.label_2006
.label_2006:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_1960
	jmp	.label_2011
.label_2011:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_1960
	jmp	.label_2014
.label_2014:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_1960
	jmp	.label_2020
.label_2020:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_1960
	jmp	.label_1990
.label_1990:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_1960
	jmp	.label_1978
.label_1978:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_1960
	jmp	.label_1972
.label_1972:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_1959
	jmp	.label_1960
.label_1960:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_1958
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_1987
	jmp	.label_1997
.label_1997:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_1987
	jmp	.label_2004
.label_2004:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_1979
	jmp	.label_2010
.label_2010:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_1984
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_1984:
	jmp	.label_1979
.label_1987:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_1979:
	jmp	.label_1958
.label_1958:
	jmp	.label_1959
.label_1959:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xbc], ecx
	mov	dword ptr [rbp - 0xc0], edx
	je	.label_1961
	jmp	.label_1967
.label_1967:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x45
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_1971
	jmp	.label_1973
.label_1973:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_1975
	jmp	.label_1981
.label_1981:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_1977
	jmp	.label_1988
.label_1988:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_1983
	jmp	.label_1995
.label_1995:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0xd4], eax
	je	.label_2001
	jmp	.label_2003
.label_2003:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0xd8], eax
	je	.label_1966
	jmp	.label_2009
.label_2009:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x59
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_1982
	jmp	.label_2015
.label_2015:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x5a
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_2017
	jmp	.label_1956
.label_1956:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_2018
	jmp	.label_1963
.label_1963:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xe8], eax
	je	.label_2008
	jmp	.label_1969
.label_1969:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0xec], eax
	je	.label_1975
	jmp	.label_1974
.label_1974:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xf0], eax
	je	.label_1977
	jmp	.label_1985
.label_1985:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xf4], eax
	je	.label_1983
	jmp	.label_1989
.label_1989:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xf8], eax
	je	.label_1966
	jmp	.label_1996
.label_1996:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0xfc], eax
	je	.label_2000
	jmp	.label_2005
.label_2018:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1957
.label_1961:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1957
.label_2008:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_1957
.label_1971:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1957
.label_1975:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1957
.label_1977:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1957
.label_1983:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1957
.label_2001:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1957
.label_1966:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1957
.label_2000:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1957
.label_1982:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1957
.label_2017:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1957
.label_2005:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1965
.label_1957:
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
	je	.label_2016
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_2016:
	jmp	.label_1955
.label_1955:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_1965:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a550

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
	jae	.label_2021
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2022
.label_2021:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_2022:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a5b0

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
.label_2024:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_2023
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2024
.label_2023:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a600

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
	#Procedure 0x41a650

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
	mov	qword ptr [word ptr [rbp - 48]], OFFSET FLAT:.str_16
	mov	edx, dword ptr [rbp - 4]
	mov	esi, edx
	sub	esi, 1
	mov	dword ptr [rbp - 0x48], edx
	mov	dword ptr [rbp - 0x4c], esi
	je	.label_2030
	jmp	.label_2029
.label_2029:
	mov	eax, dword ptr [rbp - 0x48]
	add	eax, -2
	sub	eax, 2
	mov	dword ptr [rbp - 0x50], eax
	jb	.label_2026
	jmp	.label_2027
.label_2027:
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 4
	mov	dword ptr [rbp - 0x54], eax
	je	.label_2028
	jmp	.label_2032
.label_2032:
	call	abort
.label_2028:
	movabs	rax, OFFSET FLAT:.str.1_12
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2025
.label_2026:
	movabs	rax, OFFSET FLAT:.str.2_6
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2025
.label_2030:
	movabs	rax, OFFSET FLAT:.str.3_4
	mov	qword ptr [rbp - 0x38], rax
.label_2025:
	cmp	dword ptr [rbp - 8], 0
	jge	.label_2031
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
	jmp	.label_2033
.label_2031:
	movsxd	rax, dword ptr [rbp - 8]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
.label_2033:
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
	#Procedure 0x41a780

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_2073
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_2073
	jmp	.label_2085
.label_2073:
	movabs	rdi, OFFSET FLAT:.str_15
	movabs	rsi, OFFSET FLAT:.str.1_11
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
.label_2085:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2092
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2049
.label_2092:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2049
.label_2049:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_2061:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_2053
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_2061
.label_2053:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_2069
	mov	dword ptr [rbp - 4], 4
	jmp	.label_2047
.label_2069:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoumax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_2077
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_2083
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_2083
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_2083
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_2094
.label_2083:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_2047
.label_2094:
	jmp	.label_2037
.label_2077:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_2038
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_2045
	mov	dword ptr [rbp - 4], 4
	jmp	.label_2047
.label_2045:
	mov	dword ptr [rbp - 0x4c], 1
.label_2038:
	jmp	.label_2037
.label_2037:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_2052
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_2047
.label_2052:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_2063
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_2075
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_2047
.label_2075:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_2036
	jmp	.label_2088
.label_2088:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_2036
	jmp	.label_2093
.label_2093:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_2036
	jmp	.label_2034
.label_2034:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_2036
	jmp	.label_2043
.label_2043:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_2036
	jmp	.label_2041
.label_2041:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_2036
	jmp	.label_2055
.label_2055:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_2036
	jmp	.label_2062
.label_2062:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_2036
	jmp	.label_2087
.label_2087:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_2036
	jmp	.label_2059
.label_2059:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_2036
	jmp	.label_2078
.label_2078:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_2066
	jmp	.label_2036
.label_2036:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_2064
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_2089
	jmp	.label_2098
.label_2098:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_2089
	jmp	.label_2040
.label_2040:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_2058
	jmp	.label_2050
.label_2050:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_2060
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_2060:
	jmp	.label_2058
.label_2089:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_2058:
	jmp	.label_2064
.label_2064:
	jmp	.label_2066
.label_2066:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xbc], ecx
	mov	dword ptr [rbp - 0xc0], edx
	je	.label_2068
	jmp	.label_2074
.label_2074:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x45
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_2072
	jmp	.label_2080
.label_2080:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_2076
	jmp	.label_2086
.label_2086:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_2084
	jmp	.label_2090
.label_2090:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_2065
	jmp	.label_2097
.label_2097:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0xd4], eax
	je	.label_2099
	jmp	.label_2039
.label_2039:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0xd8], eax
	je	.label_2067
	jmp	.label_2048
.label_2048:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x59
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_2046
	jmp	.label_2056
.label_2056:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x5a
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_2051
	jmp	.label_2054
.label_2054:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_2079
	jmp	.label_2071
.label_2071:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xe8], eax
	je	.label_2095
	jmp	.label_2070
.label_2070:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0xec], eax
	je	.label_2076
	jmp	.label_2081
.label_2081:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xf0], eax
	je	.label_2084
	jmp	.label_2082
.label_2082:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xf4], eax
	je	.label_2065
	jmp	.label_2091
.label_2091:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xf8], eax
	je	.label_2067
	jmp	.label_2096
.label_2096:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0xfc], eax
	je	.label_2035
	jmp	.label_2042
.label_2079:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2044
.label_2068:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2044
.label_2095:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_2044
.label_2072:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2044
.label_2076:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2044
.label_2084:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2044
.label_2065:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2044
.label_2099:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2044
.label_2067:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2044
.label_2035:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2044
.label_2046:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2044
.label_2051:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2044
.label_2042:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_2047
.label_2044:
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
	je	.label_2057
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_2057:
	jmp	.label_2063
.label_2063:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_2047:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41aeb0

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
	jae	.label_2100
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2101
.label_2100:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_2101:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41af10

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
.label_2103:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_2102
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale_0
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2103
.label_2102:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41af60

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
	#Procedure 0x41af90

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
	jge	.label_2107
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2104
.label_2107:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_2108
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_2106
.label_2108:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_2106
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_2106:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_2105
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_2105:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_2104:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b060

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
	je	.label_2131
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
.label_2131:
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
	je	.label_2121
	jmp	.label_2134
.label_2134:
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_2124
	jmp	.label_2128
.label_2121:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_2130
	mov	eax, dword ptr [rbp - 0x1b4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1c0], rcx
	jmp	.label_2139
.label_2130:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_2139:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2125
.label_2124:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1c8], rax
	mov	dword ptr [rbp - 0x1cc], ecx
	ja	.label_2117
	mov	eax, dword ptr [rbp - 0x1cc]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1d8], rcx
	jmp	.label_2138
.label_2117:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_2138:
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x2c]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2125
.label_2128:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	mov	dword ptr [rbp - 0x1dc], eax
	je	.label_2113
	jmp	.label_2135
.label_2135:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	mov	dword ptr [rbp - 0x1e0], eax
	je	.label_2118
	jmp	.label_2111
.label_2111:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_2113
	jmp	.label_2115
.label_2115:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	mov	dword ptr [rbp - 0x1e8], eax
	je	.label_2118
	jmp	.label_2122
.label_2122:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	mov	dword ptr [rbp - 0x1ec], eax
	je	.label_2113
	jmp	.label_2126
.label_2126:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	je	.label_2113
	jmp	.label_2136
.label_2136:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_2118
	jmp	.label_2112
.label_2112:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_2113
	jmp	.label_2116
.label_2116:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xb
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_2118
	jmp	.label_2123
.label_2123:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	dword ptr [rbp - 0x200], eax
	je	.label_2113
	jmp	.label_2127
.label_2127:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_2118
	jmp	.label_2137
.label_2137:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x402
	mov	dword ptr [rbp - 0x208], eax
	je	.label_2113
	jmp	.label_2114
.label_2114:
	mov	eax, dword ptr [rbp - 0x1dc]
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_2113
	jmp	.label_2119
.label_2119:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	jne	.label_2120
	jmp	.label_2118
.label_2118:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2129
.label_2113:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	dword ptr [rbp - 0x21c], ecx
	ja	.label_2132
	mov	eax, dword ptr [rbp - 0x21c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x218]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x228], rcx
	jmp	.label_2109
.label_2132:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x228], rdx
.label_2109:
	mov	rax, qword ptr [rbp - 0x228]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x30]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2129
.label_2120:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x230], rax
	mov	dword ptr [rbp - 0x234], ecx
	ja	.label_2133
	mov	eax, dword ptr [rbp - 0x234]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x230]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x240], rcx
	jmp	.label_2110
.label_2133:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x240], rdx
.label_2110:
	mov	rax, qword ptr [rbp - 0x240]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
.label_2129:
	jmp	.label_2125
.label_2125:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x240
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b580

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
	#Procedure 0x41b5b0

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
	jg	.label_2146
	mov	esi, 0x406
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	xor	edx, edx
	mov	dword ptr [rbp - 0xc], eax
	cmp	edx, dword ptr [rbp - 0xc]
	jle	.label_2144
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_2147
.label_2144:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_2142
.label_2147:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	jl	.label_2143
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_2143:
	jmp	.label_2142
.label_2142:
	jmp	.label_2148
.label_2146:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
.label_2148:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_2140
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_2140
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x10], eax
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_2145
	mov	esi, 2
	mov	edi, dword ptr [rbp - 0xc]
	mov	eax, dword ptr [rbp - 0x10]
	or	eax, 1
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_2141
.label_2145:
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
.label_2141:
	jmp	.label_2140
.label_2140:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b6e0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2149
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_2150
.label_2149:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2151
.label_2150:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_2151:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b740

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
	je	.label_2152
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_2152:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b780

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
	jne	.label_2153
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_2153
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_2153
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_2155
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2154
.label_2155:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2154
.label_2153:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_2154:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b850

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
	jne	.label_2156
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_2156:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_2157
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2157
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_2157
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_2158
.label_2157:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_2158:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b900

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
	jl	.label_2159
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rdx + 8]
	jg	.label_2165
.label_2159:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2161
.label_2165:
	mov	qword ptr [rbp - 0x20], 0x1fa400
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
.label_2160:
	mov	eax, 0x1fa400
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x28]
	jge	.label_2162
	lea	rdi, [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], 0x1fa400
	mov	rsi, qword ptr [rbp - 0x18]
	call	nanosleep
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsi, qword ptr [rbp - 0x28]
	sub	rsi, 0x1fa400
	mov	qword ptr [rbp - 0x28], rsi
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_2164
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2163
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
.label_2163:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2161
.label_2164:
	mov	qword ptr [rbp - 0x30], 0
	jmp	.label_2160
.label_2162:
	lea	rdi, [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsi, qword ptr [rbp - 0x18]
	call	nanosleep
	mov	dword ptr [rbp - 4], eax
.label_2161:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ba00

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
	ja	.label_2166
	jmp	.label_2168
.label_2168:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2167
.label_2166:
	jmp	.label_2167
.label_2167:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ba50

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
	#Procedure 0x41bab0

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
	jne	.label_2169
	mov	qword ptr [rbp - 0x18], 0x10
.label_2169:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2171
	mov	eax, 0x1000
	mov	dword ptr [rbp - 0x24], 0x20
	sub	eax, dword ptr [rbp - 0x24]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x10], rcx
.label_2171:
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
	jne	.label_2170
	call	qword ptr [word ptr [obstack_alloc_failed_handler]]
.label_2170:
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
	#Procedure 0x41bbd0

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
	#Procedure 0x41bc40

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
	jae	.label_2172
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
.label_2172:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx]
	jae	.label_2174
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x48], rax
.label_2174:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	ja	.label_2173
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x40]
	ja	.label_2173
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	call	call_chunkfun
	mov	qword ptr [rbp - 0x20], rax
.label_2173:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_2175
	call	qword ptr [word ptr [obstack_alloc_failed_handler]]
.label_2175:
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
	jne	.label_2176
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
	jne	.label_2176
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	call_freefun
.label_2176:
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
	#Procedure 0x41be40

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
	je	.label_2177
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + 0x48]
	mov	rsi, qword ptr [rbp - 0x18]
	call	rax
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2178
.label_2177:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	call	rax
	mov	qword ptr [rbp - 8], rax
.label_2178:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41bea0

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
	je	.label_2179
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + 0x48]
	mov	rsi, qword ptr [rbp - 0x10]
	call	rax
	jmp	.label_2180
.label_2179:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rdi, qword ptr [rbp - 0x10]
	call	rax
.label_2180:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41bf00

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
.label_2183:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_2182
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x22], al
	jae	.label_2184
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	setb	cl
	mov	byte ptr [rbp - 0x22], cl
.label_2184:
	mov	al, byte ptr [rbp - 0x22]
	mov	byte ptr [rbp - 0x21], al
.label_2182:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_2181
	jmp	.label_2185
.label_2181:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2183
.label_2185:
	cmp	qword ptr [rbp - 0x18], 0
	setne	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41bf90

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
.label_2192:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_2190
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x22], al
	jae	.label_2193
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	setb	cl
	mov	byte ptr [rbp - 0x22], cl
.label_2193:
	mov	al, byte ptr [rbp - 0x22]
	mov	byte ptr [rbp - 0x21], al
.label_2190:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_2189
	jmp	.label_2191
.label_2189:
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
	jmp	.label_2192
.label_2191:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2188
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
	jmp	.label_2186
.label_2188:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2187
	call	abort
.label_2187:
	jmp	.label_2186
.label_2186:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c090

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
.label_2195:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2194
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2195
.label_2194:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c0f0

	.globl print_and_abort
	.type print_and_abort, @function
print_and_abort:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.1_9
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 8], rax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str_2
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 0xc], eax
	call	exit
	.section	.text
	.align	16
	#Procedure 0x41c140
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
	#Procedure 0x41c180
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
	#Procedure 0x41c1c0
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
	#Procedure 0x41c1f0
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
	#Procedure 0x41c220
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
	#Procedure 0x41c270

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
	#Procedure 0x41c2c0
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
	#Procedure 0x41c300
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
	#Procedure 0x41c340
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
	#Procedure 0x41c380
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
	#Procedure 0x41c3c0

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
	jb	.label_2196
	jmp	.label_2198
.label_2198:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_2196
	jmp	.label_2197
.label_2197:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_2199
	jmp	.label_2196
.label_2196:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2200
.label_2199:
	mov	byte ptr [rbp - 1], 0
.label_2200:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c430

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
	jb	.label_2201
	jmp	.label_2204
.label_2204:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_2202
	jmp	.label_2201
.label_2201:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2203
.label_2202:
	mov	byte ptr [rbp - 1], 0
.label_2203:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c480
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2205
	jmp	.label_2207
.label_2207:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2206
.label_2205:
	mov	byte ptr [rbp - 1], 0
.label_2206:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c4b0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_2208
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_2208:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c4e0
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
	jb	.label_2209
	jmp	.label_2211
.label_2211:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_2212
	jmp	.label_2209
.label_2209:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2210
.label_2212:
	mov	byte ptr [rbp - 1], 0
.label_2210:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c530

	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2213
	jmp	.label_2215
.label_2215:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2214
.label_2213:
	mov	byte ptr [rbp - 1], 0
.label_2214:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c570
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2216
	jmp	.label_2218
.label_2218:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2217
.label_2216:
	mov	byte ptr [rbp - 1], 0
.label_2217:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c5b0
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2219
	jmp	.label_2221
.label_2221:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2220
.label_2219:
	mov	byte ptr [rbp - 1], 0
.label_2220:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c5f0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2222
	jmp	.label_2224
.label_2224:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2223
.label_2222:
	mov	byte ptr [rbp - 1], 0
.label_2223:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c630
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
	jb	.label_2225
	jmp	.label_2228
.label_2228:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x3a
	sub	eax, 7
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_2225
	jmp	.label_2229
.label_2229:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x5b
	sub	eax, 6
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_2225
	jmp	.label_2227
.label_2227:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x7b
	sub	eax, 3
	mov	dword ptr [rbp - 0x1c], eax
	ja	.label_2230
	jmp	.label_2225
.label_2225:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2226
.label_2230:
	mov	byte ptr [rbp - 1], 0
.label_2226:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c6b0

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
	jb	.label_2231
	jmp	.label_2233
.label_2233:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_2234
	jmp	.label_2231
.label_2231:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2232
.label_2234:
	mov	byte ptr [rbp - 1], 0
.label_2232:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c700
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2235
	jmp	.label_2237
.label_2237:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2236
.label_2235:
	mov	byte ptr [rbp - 1], 0
.label_2236:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c740
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
	jb	.label_2238
	jmp	.label_2241
.label_2241:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_2238
	jmp	.label_2239
.label_2239:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_2240
	jmp	.label_2238
.label_2238:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2242
.label_2240:
	mov	byte ptr [rbp - 1], 0
.label_2242:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c7b0

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2243
	jmp	.label_2245
.label_2245:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2244
.label_2243:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_2244:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c7f0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2246
	jmp	.label_2248
.label_2248:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2247
.label_2246:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_2247:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c830

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
	jne	.label_2249
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2253
.label_2249:
	jmp	.label_2250
.label_2250:
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
	jne	.label_2252
	jmp	.label_2251
.label_2252:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_2250
.label_2251:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_2253:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c8f0

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
	jne	.label_2254
	test	byte ptr [rbp - 0x13], 1
	je	.label_2255
	test	byte ptr [rbp - 0x11], 1
	jne	.label_2254
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_2255
.label_2254:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_2256
	call	__errno_location
	mov	dword ptr [rax], 0
.label_2256:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2257
.label_2255:
	mov	dword ptr [rbp - 4], 0
.label_2257:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c9a0

	.globl dtotimespec
	.type dtotimespec, @function
dtotimespec:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	movsd	xmm1,  qword ptr [word ptr [label_2258]]
	movsd	qword ptr [rbp - 0x18], xmm0
	movsd	xmm0, qword ptr [rbp - 0x18]
	ucomisd	xmm0, xmm1
	ja	.label_2259
	movabs	rdi, 0x8000000000000000
	xor	eax, eax
	mov	esi, eax
	call	make_timespec
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [rbp - 8], rdx
	jmp	.label_2260
.label_2259:
	movsd	xmm0,  qword ptr [word ptr [label_251]]
	ucomisd	xmm0, qword ptr [rbp - 0x18]
	ja	.label_2263
	movabs	rdi, 0x7fffffffffffffff
	mov	eax, 0x3b9ac9ff
	mov	esi, eax
	call	make_timespec
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [rbp - 8], rdx
	jmp	.label_2260
.label_2263:
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	movsd	xmm0,  qword ptr [word ptr [label_2261]]
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
	jge	.label_2262
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x3b9aca00
	mov	qword ptr [rbp - 0x30], rax
.label_2262:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	call	make_timespec
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [rbp - 8], rdx
.label_2260:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41caf0

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
	jg	.label_2264
	cmp	dword ptr [rbp - 4], 2
	jg	.label_2264
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
.label_2264:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41cb60

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
	#Procedure 0x41cba0

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
	je	.label_2267
	mov	rdi, qword ptr [rbp - 0x20]
	call	fileno
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x24], eax
	cmp	ecx, dword ptr [rbp - 0x24]
	jg	.label_2266
	cmp	dword ptr [rbp - 0x24], 2
	jg	.label_2266
	mov	edi, dword ptr [rbp - 0x24]
	call	dup_safer
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	jge	.label_2268
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
	jmp	.label_2265
.label_2268:
	mov	rdi, qword ptr [rbp - 0x20]
	call	rpl_fclose
	cmp	eax, 0
	jne	.label_2270
	mov	edi, dword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fdopen
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jne	.label_2269
.label_2270:
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
	jmp	.label_2265
.label_2269:
	jmp	.label_2266
.label_2266:
	jmp	.label_2267
.label_2267:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_2265:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ccb0

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
	jne	.label_2271
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 8], rax
.label_2271:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_2272
	movabs	rax, OFFSET FLAT:.str.1_13
	mov	qword ptr [rbp - 8], rax
.label_2272:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41cd10

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
	jne	.label_2273
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	call	memcmp
	cmp	eax, 0
	jne	.label_2273
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	dword ptr [rbp - 0x24], 0
	jmp	.label_2274
.label_2273:
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
.label_2274:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41cdf0

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
.label_2276:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	strcoll
	mov	cl, 1
	mov	dword ptr [rbp - 0x2c], eax
	cmp	eax, 0
	mov	byte ptr [rbp - 0x41], cl
	jne	.label_2275
	call	__errno_location
	cmp	dword ptr [rax], 0
	setne	cl
	mov	byte ptr [rbp - 0x41], cl
.label_2275:
	mov	al, byte ptr [rbp - 0x41]
	xor	al, 0xff
	test	al, 1
	jne	.label_2281
	jmp	.label_2278
.label_2281:
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
	jne	.label_2277
	xor	eax, eax
	cmp	qword ptr [rbp - 0x28], 0
	setne	cl
	and	cl, 1
	movzx	edx, cl
	sub	eax, edx
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2280
.label_2277:
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_2279
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2280
.label_2279:
	jmp	.label_2276
.label_2278:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
.label_2280:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41cf00

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
	jne	.label_2282
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcmp
	cmp	eax, 0
	jne	.label_2282
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2283
.label_2282:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	strcoll_loop
	mov	dword ptr [rbp - 4], eax
.label_2283:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41cf80

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
	#Procedure 0x41cfb0
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
	jge	.label_2287
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2285
.label_2287:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x28]
	jle	.label_2288
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2285
.label_2288:
	mov	rax, -1
	cmp	rax, qword ptr [rbp - 0x10]
	jg	.label_2284
	cmp	qword ptr [rbp - 0x10], 0x77359400
	jg	.label_2284
	jmp	.label_2284
.label_2284:
	mov	rax, -1
	cmp	rax, qword ptr [rbp - 0x20]
	jg	.label_2286
	cmp	qword ptr [rbp - 0x20], 0x77359400
	jg	.label_2286
	jmp	.label_2286
.label_2286:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x20]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
.label_2285:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d060
	.globl timespec_sign
	.type timespec_sign, @function
timespec_sign:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	cmp	qword ptr [rbp - 0x10], 0
	jge	.label_2289
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2291
.label_2289:
	mov	al, 1
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x15], al
	jne	.label_2290
	cmp	qword ptr [rbp - 8], 0
	setne	al
	mov	byte ptr [rbp - 0x15], al
.label_2290:
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0x14], ecx
.label_2291:
	mov	eax, dword ptr [rbp - 0x14]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d0b0
	.globl timespectod
	.type timespectod, @function
timespectod:

	push	rbp
	mov	rbp, rsp
	movsd	xmm0,  qword ptr [word ptr [label_2261]]
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
	#Procedure 0x41d0e0

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
	#Procedure 0x41d1c0

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	16
	#Procedure 0x41d1d0

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat