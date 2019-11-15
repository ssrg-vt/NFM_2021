	.section	.text
	.align	16
	#Procedure 0x4018d0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	lea	rdi, [rdi]
	je	.label_7
	jmp	.label_8
.label_8:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [program_name]]
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rsp, rsp
	mov	al, 0
	nop	
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	jmp	.label_9
.label_7:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.1
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdx,  qword ptr [word ptr [program_name]]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [program_name]]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	mov	al, 0
	lea	rsi, [rsi]
	call	printf
	nop	
	movabs	rdi, OFFSET FLAT:.str.2
	mov	dword ptr [rbp - 0x18], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_stdin_note
	movabs	rdi, OFFSET FLAT:.str.3
	mov	rsp, rsp
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x20], eax
	lea	rdi, [rdi]
	call	emit_mandatory_arg_note
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.4
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.5
	mov	dword ptr [rbp - 0x24], eax
	nop	
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.6
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.8
	mov	dword ptr [rbp - 0x30], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.9
	mov	dword ptr [rbp - 0x34], eax
	mov	rsp, rsp
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.10
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.11
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	nop	
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.12
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.13
	nop	
	mov	dword ptr [rbp - 0x44], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.14
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], eax
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.15
	mov	dword ptr [rbp - 0x4c], eax
	nop	
	call	emit_ancillary_info
.label_9:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x401bd0

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.46
	nop	
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401c10

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.47
	mov	rsp, rsp
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401c50

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rax
.label_10:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_13
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	sete	cl
	lea	rdi, [rdi]
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_13:
	mov	al, byte ptr [rbp - 0x21]
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_15
	jmp	.label_11
.label_15:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_10
.label_11:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_14
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_14:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.56
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str.18
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	rsp, rsp
	mov	edi, 5
	xor	ecx, ecx
	mov	esi, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x28], eax
	lea	rdi, [rdi]
	call	setlocale
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	je	.label_12
	movabs	rsi, OFFSET FLAT:.str.58
	lea	rdi, [rdi]
	mov	eax, 3
	mov	edx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_12
	movabs	rdi, OFFSET FLAT:.str.59
	nop	
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
.label_12:
	movabs	rdi, OFFSET FLAT:.str.60
	lea	rdi, [rdi]
	call	gettext
	nop	
	movabs	rsi, OFFSET FLAT:.str.18
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.61
	mov	dword ptr [rbp - 0x30], eax
	mov	rsp, rsp
	call	gettext
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.62
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 8]
	cmove	rdx, rsi
	nop	
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e60

	.globl main
	.type main, @function
main:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x190
	mov	dword ptr [rbp - 4], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x31], 0
	mov	byte ptr [rbp - 0x32], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x33], 1
	mov	qword ptr [rbp - 0x40], 0
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.17_0
	movabs	rsi, OFFSET FLAT:.str.18_0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.17_0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rax
	nop	
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0xa0], rax
	call	atexit
	nop	
	mov	qword ptr [rbp - 0x20], 0
	nop	
	mov	dword ptr [rbp - 0xa4], eax
.label_98:
	cmp	qword ptr [rbp - 0x20], 8
	ja	.label_93
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [dword ptr [+ (rax * 4) + integral_type_size]],  0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_98
.label_93:
	mov	dword ptr [dword ptr [label_111]],  1
	mov	dword ptr [dword ptr [label_112]],  2
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [label_113]],  3
	mov	dword ptr [dword ptr [label_114]],  4
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [label_114]],  5
	mov	qword ptr [rbp - 0x20], 0
.label_137:
	cmp	qword ptr [rbp - 0x20], 0x10
	lea	rdi, [rdi]
	ja	.label_132
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [+ (rax * 4) + fp_type_size]],  0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	jmp	.label_137
.label_132:
	movabs	rax, OFFSET FLAT:format_address_std
	mov	dword ptr [dword ptr [label_147]],  6
	mov	dword ptr [dword ptr [label_148]],  8
	nop	
	mov	dword ptr [dword ptr [label_149]],  7
	mov	qword ptr [word ptr [n_specs]],  0
	mov	qword ptr [word ptr [n_specs_allocated]],  0
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [spec]],  0
	nop	
	mov	qword ptr [word ptr [format_address]],  rax
	mov	rsp, rsp
	mov	dword ptr [dword ptr [address_base]],  8
	mov	rsp, rsp
	mov	dword ptr [dword ptr [address_pad_len]],  7
	mov	rsp, rsp
	mov	byte ptr [byte ptr [flag_dump_strings]],  0
.label_40:
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:short_options
	movabs	rcx, OFFSET FLAT:long_options
	lea	r8, [rbp - 0x58]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x58], 0xffffffff
	mov	edi, dword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	getopt_long
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x5c], -1
	mov	rbp, rbp
	jne	.label_53
	mov	rbp, rbp
	jmp	.label_58
.label_53:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	nop	
	mov	dword ptr [rbp - 0xa8], eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xac], ecx
	lea	rdi, [rdi]
	je	.label_61
	jmp	.label_92
.label_92:
	mov	eax, dword ptr [rbp - 0xa8]
	nop	
	sub	eax, 0xffffff7e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb0], eax
	lea	rdi, [rdi]
	je	.label_102
	jmp	.label_84
.label_84:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x41
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xb4], eax
	lea	rsi, [rsi]
	je	.label_85
	jmp	.label_91
.label_91:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa8]
	nop	
	sub	eax, 0x42
	mov	dword ptr [rbp - 0xb8], eax
	mov	rsp, rsp
	je	.label_63
	jmp	.label_103
.label_103:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	sub	eax, 0x44
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xbc], eax
	lea	rsi, [rsi]
	je	.label_105
	lea	rdi, [rdi]
	jmp	.label_120
.label_120:
	mov	eax, dword ptr [rbp - 0xa8]
	nop	
	sub	eax, 0x46
	mov	dword ptr [rbp - 0xc0], eax
	mov	rbp, rbp
	je	.label_82
	jmp	.label_128
.label_128:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x48
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_129
	lea	rsi, [rsi]
	jmp	.label_135
.label_135:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x49
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_67
	jmp	.label_141
.label_141:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x4c
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_67
	mov	rsp, rsp
	jmp	.label_151
.label_151:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x4e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd0], eax
	mov	rsp, rsp
	je	.label_154
	jmp	.label_16
.label_16:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x4f
	mov	dword ptr [rbp - 0xd4], eax
	lea	rdi, [rdi]
	je	.label_18
	nop	
	jmp	.label_25
.label_25:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x53
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd8], eax
	mov	rbp, rbp
	je	.label_28
	jmp	.label_131
.label_131:
	nop	
	mov	eax, dword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	sub	eax, 0x58
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xdc], eax
	lea	rsi, [rsi]
	je	.label_129
	jmp	.label_41
.label_41:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x61
	nop	
	mov	dword ptr [rbp - 0xe0], eax
	mov	rbp, rbp
	je	.label_43
	lea	rsi, [rsi]
	jmp	.label_143
.label_143:
	mov	eax, dword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	sub	eax, 0x62
	nop	
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_52
	mov	rsp, rsp
	jmp	.label_59
.label_59:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x63
	nop	
	mov	dword ptr [rbp - 0xe8], eax
	je	.label_62
	mov	rbp, rbp
	jmp	.label_69
.label_69:
	nop	
	mov	eax, dword ptr [rbp - 0xa8]
	mov	rbp, rbp
	sub	eax, 0x64
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xec], eax
	lea	rdi, [rdi]
	je	.label_145
	jmp	.label_79
.label_79:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x65
	mov	dword ptr [rbp - 0xf0], eax
	mov	rsp, rsp
	je	.label_82
	nop	
	jmp	.label_89
.label_89:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x66
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xf4], eax
	nop	
	je	.label_130
	jmp	.label_99
.label_99:
	mov	eax, dword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	sub	eax, 0x68
	mov	dword ptr [rbp - 0xf8], eax
	je	.label_35
	jmp	.label_116
.label_116:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xfc], eax
	lea	rsi, [rsi]
	je	.label_109
	mov	rbp, rbp
	jmp	.label_123
.label_123:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x6a
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x100], eax
	lea	rdi, [rdi]
	je	.label_125
	jmp	.label_126
.label_126:
	mov	eax, dword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	sub	eax, 0x6c
	nop	
	mov	dword ptr [rbp - 0x104], eax
	lea	rsi, [rsi]
	je	.label_67
	jmp	.label_33
.label_33:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x6f
	mov	dword ptr [rbp - 0x108], eax
	je	.label_63
	mov	rsp, rsp
	jmp	.label_142
.label_142:
	nop	
	mov	eax, dword ptr [rbp - 0xa8]
	mov	rsp, rsp
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x10c], eax
	je	.label_146
	jmp	.label_156
.label_156:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x110], eax
	mov	rsp, rsp
	je	.label_159
	jmp	.label_60
.label_60:
	nop	
	mov	eax, dword ptr [rbp - 0xa8]
	nop	
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x114], eax
	je	.label_20
	mov	rsp, rsp
	jmp	.label_144
.label_144:
	mov	eax, dword ptr [rbp - 0xa8]
	mov	rbp, rbp
	sub	eax, 0x77
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x118], eax
	mov	rsp, rsp
	je	.label_110
	jmp	.label_23
.label_23:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x78
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x11c], eax
	lea	rsi, [rsi]
	je	.label_35
	jmp	.label_74
.label_74:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa8]
	mov	rbp, rbp
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x120], eax
	je	.label_140
	jmp	.label_119
.label_119:
	mov	eax, dword ptr [rbp - 0xa8]
	nop	
	sub	eax, 0x81
	mov	dword ptr [rbp - 0x124], eax
	lea	rsi, [rsi]
	je	.label_54
	lea	rsi, [rsi]
	jmp	.label_27
.label_85:
	nop	
	mov	byte ptr [rbp - 0x31], 1
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	mov	edx, ecx
	sub	edx, 0x64
	mov	dword ptr [rbp - 0x128], ecx
	mov	dword ptr [rbp - 0x12c], edx
	mov	rsp, rsp
	je	.label_64
	nop	
	jmp	.label_117
.label_117:
	mov	eax, dword ptr [rbp - 0x128]
	mov	rsp, rsp
	sub	eax, 0x6e
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x130], eax
	je	.label_76
	lea	rdi, [rdi]
	jmp	.label_86
.label_86:
	mov	eax, dword ptr [rbp - 0x128]
	nop	
	sub	eax, 0x6f
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x134], eax
	je	.label_88
	jmp	.label_94
.label_94:
	nop	
	mov	eax, dword ptr [rbp - 0x128]
	nop	
	sub	eax, 0x78
	mov	dword ptr [rbp - 0x138], eax
	mov	rsp, rsp
	je	.label_96
	mov	rsp, rsp
	jmp	.label_104
.label_64:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:format_address_std
	mov	qword ptr [word ptr [format_address]],  rax
	mov	dword ptr [dword ptr [address_base]],  0xa
	mov	rbp, rbp
	mov	dword ptr [dword ptr [address_pad_len]],  7
	jmp	.label_107
.label_88:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:format_address_std
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [format_address]],  rax
	mov	dword ptr [dword ptr [address_base]],  8
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [address_pad_len]],  7
	jmp	.label_107
.label_96:
	movabs	rax, OFFSET FLAT:format_address_std
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [format_address]],  rax
	mov	dword ptr [dword ptr [address_base]],  0x10
	mov	dword ptr [dword ptr [address_pad_len]],  6
	mov	rsp, rsp
	jmp	.label_107
.label_76:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:format_address_none
	nop	
	mov	qword ptr [word ptr [format_address]],  rax
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [address_pad_len]],  0
	lea	rdi, [rdi]
	jmp	.label_107
.label_104:
	movabs	rdi, OFFSET FLAT:.str.19
	mov	rsp, rsp
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rcx,  qword ptr [word ptr [optarg]]
	nop	
	movsx	ecx, byte ptr [rcx]
	mov	rdx, rax
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_107:
	mov	rbp, rbp
	jmp	.label_26
.label_125:
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, eax
	xor	edx, edx
	nop	
	movabs	rcx, OFFSET FLAT:n_bytes_to_skip
	lea	rdi, [rdi]
	movabs	r8, OFFSET FLAT:main.multipliers
	mov	byte ptr [rbp - 0x31], 1
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	xstrtoumax
	mov	dword ptr [rbp - 0x54], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x54], 0
	je	.label_50
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x58]
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dl, al
	lea	rdi, [rdi]
	mov	r8,  qword ptr [word ptr [optarg]]
	movsx	edx, dl
	nop	
	call	xstrtol_fatal
.label_50:
	lea	rsi, [rsi]
	jmp	.label_26
.label_154:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, eax
	mov	rsp, rsp
	xor	edx, edx
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:max_bytes_to_format
	mov	rsp, rsp
	movabs	r8, OFFSET FLAT:main.multipliers
	mov	byte ptr [rbp - 0x31], 1
	mov	byte ptr [byte ptr [limit_bytes_to_format]],  1
	nop	
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	xstrtoumax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 0
	mov	rsp, rsp
	je	.label_87
	movabs	rcx, OFFSET FLAT:long_options
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x54]
	mov	esi, dword ptr [rbp - 0x58]
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dl, al
	mov	r8,  qword ptr [word ptr [optarg]]
	nop	
	movsx	edx, dl
	call	xstrtol_fatal
.label_87:
	lea	rdi, [rdi]
	jmp	.label_26
.label_28:
	nop	
	mov	byte ptr [rbp - 0x31], 1
	cmp	qword ptr [word ptr [optarg]],  0
	mov	rbp, rbp
	jne	.label_153
	mov	rsp, rsp
	mov	qword ptr [word ptr [string_min]],  3
	mov	rbp, rbp
	jmp	.label_46
.label_153:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	esi, eax
	xor	edx, edx
	nop	
	lea	rcx, [rbp - 0x50]
	lea	rsi, [rsi]
	movabs	r8, OFFSET FLAT:main.multipliers
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	xstrtoumax
	nop	
	mov	dword ptr [rbp - 0x54], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x54], 0
	mov	rsp, rsp
	je	.label_136
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:long_options
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x54]
	mov	esi, dword ptr [rbp - 0x58]
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dl, al
	lea	rdi, [rdi]
	mov	r8,  qword ptr [word ptr [optarg]]
	movsx	edx, dl
	call	xstrtol_fatal
.label_136:
	mov	rax, -1
	cmp	rax, qword ptr [rbp - 0x50]
	jae	.label_155
	movabs	rdi, OFFSET FLAT:.str.20
	lea	rdi, [rdi]
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x140], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	nop	
	mov	rdx, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
.label_155:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	qword ptr [word ptr [string_min]],  rax
.label_46:
	mov	byte ptr [byte ptr [flag_dump_strings]],  1
	jmp	.label_26
.label_159:
	nop	
	mov	byte ptr [rbp - 0x31], 1
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	rsp, rsp
	call	decode_format_string
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	lea	rsi, [rsi]
	movzx	edx, al
	and	edx, ecx
	nop	
	cmp	edx, 0
	mov	rsp, rsp
	setne	al
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_26
.label_20:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x31], 1
	mov	rsp, rsp
	mov	byte ptr [byte ptr [abbreviate_duplicate_blocks]],  0
	mov	rbp, rbp
	jmp	.label_26
.label_140:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [traditional]],  1
	lea	rdi, [rdi]
	jmp	.label_26
.label_54:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:.str.21
	mov	rsp, rsp
	mov	edi, eax
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:endian_args
	mov	edx, eax
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:endian_types
	mov	rsp, rsp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	eax, 4
	mov	r8d, eax
	mov	rbp, rbp
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + endian_types]]
	test	r10d, r10d
	mov	dword ptr [rbp - 0x144], r10d
	lea	rdi, [rdi]
	je	.label_32
	lea	rsi, [rsi]
	jmp	.label_100
.label_100:
	nop	
	mov	eax, dword ptr [rbp - 0x144]
	sub	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x148], eax
	jne	.label_31
	lea	rsi, [rsi]
	jmp	.label_161
.label_161:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [input_swap]],  1
	lea	rsi, [rsi]
	jmp	.label_31
.label_32:
	mov	byte ptr [byte ptr [input_swap]],  0
.label_31:
	jmp	.label_26
.label_43:
	movabs	rdi, OFFSET FLAT:.str.22
	call	decode_format_string
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	and	edx, ecx
	lea	rdi, [rdi]
	cmp	edx, 0
	setne	al
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_26
.label_52:
	movabs	rdi, OFFSET FLAT:.str.23
	lea	rdi, [rdi]
	call	decode_format_string
	and	al, 1
	nop	
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	mov	rsp, rsp
	and	al, 1
	nop	
	movzx	edx, al
	nop	
	and	edx, ecx
	lea	rsi, [rsi]
	cmp	edx, 0
	lea	rsi, [rsi]
	setne	al
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_26
.label_62:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.5_0
	lea	rdi, [rdi]
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	nop	
	setne	al
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	mov	rbp, rbp
	jmp	.label_26
.label_105:
	movabs	rdi, OFFSET FLAT:.str.25
	call	decode_format_string
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	and	edx, ecx
	mov	rbp, rbp
	cmp	edx, 0
	setne	al
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x33], al
	lea	rsi, [rsi]
	jmp	.label_26
.label_145:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.26
	call	decode_format_string
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_26
.label_82:
	nop	
	movabs	rdi, OFFSET FLAT:.str.27
	call	decode_format_string
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	nop	
	movzx	edx, al
	mov	rsp, rsp
	and	edx, ecx
	cmp	edx, 0
	mov	rsp, rsp
	setne	al
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x33], al
	lea	rdi, [rdi]
	jmp	.label_26
.label_130:
	movabs	rdi, OFFSET FLAT:.str.28
	lea	rdi, [rdi]
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x33]
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	mov	rsp, rsp
	and	edx, ecx
	cmp	edx, 0
	mov	rbp, rbp
	setne	al
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_26
.label_129:
	movabs	rdi, OFFSET FLAT:.str.29
	nop	
	call	decode_format_string
	lea	rsi, [rsi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	nop	
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	lea	rsi, [rsi]
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_26
.label_109:
	movabs	rdi, OFFSET FLAT:.str.30
	call	decode_format_string
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	and	edx, ecx
	lea	rdi, [rdi]
	cmp	edx, 0
	nop	
	setne	al
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_26
.label_67:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.31
	lea	rsi, [rsi]
	call	decode_format_string
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x33]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	lea	rsi, [rsi]
	and	edx, ecx
	cmp	edx, 0
	lea	rsi, [rsi]
	setne	al
	nop	
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_26
.label_18:
	movabs	rdi, OFFSET FLAT:.str.32
	lea	rdi, [rdi]
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x33]
	mov	rbp, rbp
	and	al, 1
	lea	rsi, [rsi]
	movzx	edx, al
	and	edx, ecx
	nop	
	cmp	edx, 0
	setne	al
	mov	rbp, rbp
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x33], al
	mov	rsp, rsp
	jmp	.label_26
.label_63:
	movabs	rdi, OFFSET FLAT:.str.33
	call	decode_format_string
	lea	rsi, [rsi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	lea	rdi, [rdi]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x33], al
	nop	
	jmp	.label_26
.label_146:
	nop	
	movabs	rdi, OFFSET FLAT:.str.34
	lea	rsi, [rsi]
	call	decode_format_string
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	mov	rbp, rbp
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x33], al
	mov	rsp, rsp
	jmp	.label_26
.label_35:
	movabs	rdi, OFFSET FLAT:.str.35
	lea	rdi, [rdi]
	call	decode_format_string
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x33]
	nop	
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	jmp	.label_26
.label_110:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x31], 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x32], 1
	cmp	qword ptr [word ptr [optarg]],  0
	jne	.label_83
	mov	qword ptr [rbp - 0x30], 0x20
	lea	rdi, [rdi]
	jmp	.label_90
.label_83:
	xor	eax, eax
	mov	esi, eax
	lea	rsi, [rsi]
	mov	edx, 0xa
	mov	rsp, rsp
	lea	rcx, [rbp - 0x68]
	mov	rbp, rbp
	movabs	r8, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	call	xstrtoumax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 0
	je	.label_115
	movabs	rcx, OFFSET FLAT:long_options
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x58]
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	mov	dl, al
	mov	r8,  qword ptr [word ptr [optarg]]
	movsx	edx, dl
	nop	
	call	xstrtol_fatal
.label_115:
	mov	rax, -1
	cmp	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	jae	.label_133
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.20
	call	gettext
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x150], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	nop	
	mov	rdx, qword ptr [rbp - 0x150]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_133:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x30], rax
.label_90:
	nop	
	jmp	.label_26
.label_102:
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	call	usage
.label_61:
	movabs	rsi, OFFSET FLAT:.str.15
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str.17
	movabs	r8, OFFSET FLAT:.str.37
	xor	eax, eax
	mov	r9d, eax
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	al, 0
	call	version_etc
	lea	rsi, [rsi]
	xor	edi, edi
	call	exit
.label_27:
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_26:
	mov	rsp, rsp
	jmp	.label_40
.label_58:
	test	byte ptr [rbp - 0x33], 1
	nop	
	jne	.label_45
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 1
	jmp	.label_48
.label_45:
	nop	
	test	byte ptr [byte ptr [flag_dump_strings]],  1
	lea	rsi, [rsi]
	je	.label_55
	cmp	qword ptr [word ptr [n_specs]],  0
	mov	rbp, rbp
	jbe	.label_55
	movabs	rdi, OFFSET FLAT:.str.38
	lea	rdi, [rdi]
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
.label_55:
	mov	eax, dword ptr [rbp - 8]
	sub	eax,  dword ptr [dword ptr [optind]]
	nop	
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	test	byte ptr [rbp - 0x31], 1
	nop	
	je	.label_80
	mov	rbp, rbp
	test	byte ptr [byte ptr [traditional]],  1
	lea	rdi, [rdi]
	je	.label_78
.label_80:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rbp, rbp
	sub	ecx, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x154], eax
	mov	dword ptr [rbp - 0x158], ecx
	je	.label_21
	jmp	.label_95
.label_95:
	mov	eax, dword ptr [rbp - 0x154]
	sub	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x15c], eax
	lea	rdi, [rdi]
	je	.label_97
	jmp	.label_106
.label_106:
	mov	eax, dword ptr [rbp - 0x154]
	lea	rsi, [rsi]
	sub	eax, 3
	mov	dword ptr [rbp - 0x160], eax
	je	.label_57
	jmp	.label_44
.label_21:
	mov	rsp, rsp
	test	byte ptr [byte ptr [traditional]],  1
	jne	.label_122
	mov	rbp, rbp
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0x2b
	mov	rsp, rsp
	jne	.label_127
.label_122:
	lea	rsi, [rbp - 0x70]
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	parse_old_offset
	test	al, 1
	jne	.label_138
	jmp	.label_127
.label_138:
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [word ptr [n_bytes_to_skip]],  rax
	mov	ecx, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	add	ecx, -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], ecx
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 8
	mov	qword ptr [rbp - 0x10], rax
.label_127:
	mov	rsp, rsp
	jmp	.label_44
.label_97:
	nop	
	test	byte ptr [byte ptr [traditional]],  1
	jne	.label_17
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	rsp, rsp
	add	eax, 1
	movsxd	rcx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rdx + rcx*8]
	movsx	eax, byte ptr [rcx]
	cmp	eax, 0x2b
	mov	rbp, rbp
	je	.label_17
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rdx + rcx*8]
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rcx]
	sub	eax, 0x30
	lea	rdi, [rdi]
	cmp	eax, 9
	ja	.label_30
.label_17:
	mov	rbp, rbp
	lea	rsi, [rbp - 0x78]
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [optind]]
	nop	
	add	eax, 1
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rdx + rcx*8]
	lea	rdi, [rdi]
	call	parse_old_offset
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_51
	jmp	.label_30
.label_51:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [traditional]],  1
	je	.label_56
	lea	rsi, [rbp - 0x70]
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	parse_old_offset
	mov	rsp, rsp
	test	al, 1
	mov	rbp, rbp
	jne	.label_68
	jmp	.label_56
.label_68:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [n_bytes_to_skip]],  rax
	mov	byte ptr [byte ptr [flag_pseudo_start]],  1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	ecx, dword ptr [rbp - 0x14]
	sub	ecx, 2
	mov	dword ptr [rbp - 0x14], ecx
	mov	rsp, rsp
	jmp	.label_73
.label_56:
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	mov	qword ptr [word ptr [n_bytes_to_skip]],  rax
	mov	ecx, dword ptr [rbp - 0x14]
	add	ecx, -1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
	mov	rbp, rbp
	movsxd	rax,  dword ptr [dword ptr [optind]]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdx + rax*8]
	mov	ecx,  dword ptr [dword ptr [optind]]
	mov	rsp, rsp
	add	ecx, 1
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + rdx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 8
	nop	
	mov	qword ptr [rbp - 0x10], rax
.label_73:
	jmp	.label_30
.label_30:
	mov	rbp, rbp
	jmp	.label_44
.label_57:
	test	byte ptr [byte ptr [traditional]],  1
	je	.label_75
	mov	rsp, rsp
	lea	rsi, [rbp - 0x70]
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx + rcx*8]
	call	parse_old_offset
	test	al, 1
	jne	.label_139
	jmp	.label_75
.label_139:
	mov	rsp, rsp
	lea	rsi, [rbp - 0x78]
	mov	eax,  dword ptr [dword ptr [optind]]
	nop	
	add	eax, 2
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdx + rcx*8]
	lea	rdi, [rdi]
	call	parse_old_offset
	test	al, 1
	nop	
	jne	.label_158
	lea	rdi, [rdi]
	jmp	.label_75
.label_158:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [word ptr [n_bytes_to_skip]],  rax
	mov	byte ptr [byte ptr [flag_pseudo_start]],  1
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x48], rax
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	edx,  dword ptr [dword ptr [optind]]
	add	edx, 2
	lea	rsi, [rsi]
	movsxd	rcx, edx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	mov	edx, dword ptr [rbp - 0x14]
	sub	edx, 2
	mov	dword ptr [rbp - 0x14], edx
.label_75:
	jmp	.label_44
.label_44:
	test	byte ptr [byte ptr [traditional]],  1
	nop	
	je	.label_47
	lea	rdi, [rdi]
	mov	eax, 1
	nop	
	cmp	eax, dword ptr [rbp - 0x14]
	jge	.label_47
	movabs	rdi, OFFSET FLAT:.str.39
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [optind]]
	lea	rsi, [rsi]
	add	ecx, 1
	movsxd	rdi, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx + rdi*8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x168], rax
	mov	rbp, rbp
	call	quote
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x168]
	mov	rcx, rax
	nop	
	mov	al, 0
	mov	rsp, rsp
	call	error
	movabs	rdi, OFFSET FLAT:.str.41
	nop	
	call	gettext
	mov	rsp, rsp
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	mov	edi, esi
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_47:
	jmp	.label_78
.label_78:
	test	byte ptr [byte ptr [flag_pseudo_start]],  1
	lea	rdi, [rdi]
	je	.label_101
	movabs	rax, OFFSET FLAT:format_address_none
	nop	
	cmp	qword ptr [word ptr [format_address]],  rax
	jne	.label_108
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:format_address_paren
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [address_base]],  8
	mov	dword ptr [dword ptr [address_pad_len]],  7
	mov	qword ptr [word ptr [format_address]],  rax
	mov	rbp, rbp
	jmp	.label_121
.label_108:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:format_address_label
	mov	qword ptr [word ptr [format_address]],  rax
.label_121:
	nop	
	jmp	.label_101
.label_101:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [limit_bytes_to_format]],  1
	nop	
	je	.label_71
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [n_bytes_to_skip]]
	add	rax,  qword ptr [word ptr [max_bytes_to_format]]
	mov	rbp, rbp
	mov	qword ptr [word ptr [end_offset]],  rax
	mov	rax,  qword ptr [word ptr [end_offset]]
	cmp	rax,  qword ptr [word ptr [n_bytes_to_skip]]
	jae	.label_70
	movabs	rdi, OFFSET FLAT:.str.42
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	nop	
	mov	al, 0
	nop	
	call	error
.label_70:
	lea	rdi, [rdi]
	jmp	.label_71
.label_71:
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [n_specs]],  0
	mov	rbp, rbp
	jne	.label_29
	nop	
	movabs	rdi, OFFSET FLAT:.str.43
	call	decode_format_string
	mov	byte ptr [rbp - 0x169], al
.label_29:
	cmp	dword ptr [rbp - 0x14], 0
	mov	rbp, rbp
	jle	.label_37
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rbp, rbp
	shl	rax, 3
	add	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [word ptr [file_list]],  rax
	lea	rsi, [rsi]
	jmp	.label_39
.label_37:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:default_file_list
	mov	qword ptr [word ptr [file_list]],  rax
.label_39:
	lea	rdi, [rdi]
	call	open_next_file
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [in_stream]],  0
	lea	rsi, [rsi]
	jne	.label_152
	mov	rbp, rbp
	jmp	.label_65
.label_152:
	mov	rdi,  qword ptr [word ptr [n_bytes_to_skip]]
	call	skip
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x33]
	nop	
	and	al, 1
	movzx	edx, al
	mov	rbp, rbp
	and	edx, ecx
	nop	
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x33], al
	cmp	qword ptr [word ptr [in_stream]],  0
	mov	rsp, rsp
	jne	.label_72
	jmp	.label_65
.label_72:
	nop	
	test	byte ptr [byte ptr [flag_pseudo_start]],  1
	lea	rdi, [rdi]
	je	.label_36
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax,  qword ptr [word ptr [n_bytes_to_skip]]
	mov	qword ptr [rbp - 0x178], rax
	mov	rsp, rsp
	jmp	.label_66
.label_36:
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x178], rcx
	jmp	.label_66
.label_66:
	mov	rax, qword ptr [rbp - 0x178]
	mov	qword ptr [word ptr [pseudo_offset]],  rax
	mov	rsp, rsp
	call	get_lcm
	mov	dword ptr [rbp - 0x24], eax
	test	byte ptr [rbp - 0x32], 1
	nop	
	je	.label_118
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], 0
	lea	rsi, [rsi]
	je	.label_124
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	div	rcx
	lea	rsi, [rsi]
	cmp	rdx, 0
	jne	.label_124
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [word ptr [bytes_per_block]],  rax
	jmp	.label_134
.label_124:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.44
	lea	rdi, [rdi]
	call	gettext
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x180], rdi
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x180]
	mov	al, 0
	nop	
	call	error
	nop	
	movsxd	rcx, dword ptr [rbp - 0x24]
	mov	qword ptr [word ptr [bytes_per_block]],  rcx
.label_134:
	jmp	.label_24
.label_118:
	cmp	dword ptr [rbp - 0x24], 0x10
	jge	.label_19
	lea	rdi, [rdi]
	mov	eax, 0x10
	nop	
	mov	ecx, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	cdq	
	nop	
	idiv	dword ptr [rbp - 0x24]
	mov	rsp, rsp
	imul	ecx, eax
	movsxd	rsi, ecx
	mov	qword ptr [word ptr [bytes_per_block]],  rsi
	jmp	.label_22
.label_19:
	movsxd	rax, dword ptr [rbp - 0x24]
	mov	qword ptr [word ptr [bytes_per_block]],  rax
.label_22:
	jmp	.label_24
.label_24:
	mov	qword ptr [rbp - 0x20], 0
.label_81:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax,  qword ptr [word ptr [n_specs]]
	jae	.label_38
	mov	rax,  qword ptr [word ptr [bytes_per_block]]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rcx, rcx, 0x28
	mov	rsp, rsp
	add	rcx,  qword ptr [word ptr [spec]]
	mov	rbp, rbp
	mov	edx, dword ptr [rcx + 4]
	mov	ecx, edx
	lea	rdi, [rdi]
	movsxd	rcx,  dword ptr [dword ptr [+ (rcx * 4) + width_bytes]]
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	div	rcx
	nop	
	mov	esi, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], esi
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	mov	esi, dword ptr [rax + 0x1c]
	add	esi, 1
	nop	
	imul	esi, dword ptr [rbp - 0x7c]
	nop	
	mov	dword ptr [rbp - 0x80], esi
	mov	rax, qword ptr [rbp - 0x40]
	movsxd	rcx, dword ptr [rbp - 0x80]
	cmp	rax, rcx
	jae	.label_42
	movsxd	rax, dword ptr [rbp - 0x80]
	nop	
	mov	qword ptr [rbp - 0x40], rax
.label_42:
	lea	rdi, [rdi]
	jmp	.label_77
.label_77:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_81
.label_38:
	mov	qword ptr [rbp - 0x20], 0
.label_160:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax,  qword ptr [word ptr [n_specs]]
	nop	
	jae	.label_49
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [bytes_per_block]]
	mov	rcx, qword ptr [rbp - 0x20]
	imul	rcx, rcx, 0x28
	add	rcx,  qword ptr [word ptr [spec]]
	nop	
	mov	edx, dword ptr [rcx + 4]
	nop	
	mov	ecx, edx
	movsxd	rcx,  dword ptr [dword ptr [+ (rcx * 4) + width_bytes]]
	xor	edx, edx
	lea	rsi, [rsi]
	div	rcx
	lea	rdi, [rdi]
	mov	esi, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x84], esi
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	mov	esi, dword ptr [rax + 0x1c]
	mov	rsp, rsp
	imul	esi, dword ptr [rbp - 0x84]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], esi
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	sub	rax, rcx
	mov	rbp, rbp
	mov	esi, eax
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	mov	rsp, rsp
	mov	dword ptr [rax + 0x20], esi
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_160
.label_49:
	test	byte ptr [byte ptr [flag_dump_strings]],  1
	je	.label_150
	call	dump_strings
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x184], ecx
	jmp	.label_157
.label_150:
	lea	rdi, [rdi]
	call	dump
	and	al, 1
	movzx	ecx, al
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x184], ecx
.label_157:
	mov	eax, dword ptr [rbp - 0x184]
	mov	cl, byte ptr [rbp - 0x33]
	and	cl, 1
	movzx	edx, cl
	and	edx, eax
	mov	rsp, rsp
	cmp	edx, 0
	nop	
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 0x33], cl
.label_65:
	test	byte ptr [byte ptr [have_read_stdin]],  1
	lea	rsi, [rsi]
	je	.label_34
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [stdin]]
	lea	rsi, [rsi]
	call	rpl_fclose
	cmp	eax, -1
	lea	rdi, [rdi]
	jne	.label_34
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.45
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x188], esi
	call	gettext
	mov	edi, 1
	nop	
	mov	esi, dword ptr [rbp - 0x188]
	mov	rsp, rsp
	mov	rdx, rax
	mov	al, 0
	call	error
.label_34:
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rsp, rsp
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x33]
	lea	rsi, [rsi]
	test	dl, 1
	cmovne	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
.label_48:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x190
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4038f0

	.globl format_address_std
	.type format_address_std, @function
format_address_std:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x60
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	lea	rdi, [rbp - 0x17]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rbp, rbp
	lea	rdi, [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rdi
	mov	byte ptr [rbp - 0x18], 0
	mov	al, byte ptr [rbp - 9]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rcx, rdi
	dec	rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rcx
	mov	byte ptr [rdi - 1], al
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	movsxd	rdi,  dword ptr [dword ptr [rip + address_pad_len]]
	mov	rsp, rsp
	sub	rcx, rdi
	mov	qword ptr [rbp - 0x40], rcx
	mov	esi,  dword ptr [dword ptr [rip + address_base]]
	lea	rsi, [rsi]
	mov	edx, esi
	nop	
	sub	edx, 8
	mov	dword ptr [rbp - 0x44], esi
	nop	
	mov	dword ptr [rbp - 0x48], edx
	je	.label_168
	nop	
	jmp	.label_163
.label_163:
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0xa
	nop	
	mov	dword ptr [rbp - 0x4c], eax
	nop	
	je	.label_170
	mov	rbp, rbp
	jmp	.label_165
.label_165:
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0x10
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x50], eax
	mov	rsp, rsp
	je	.label_167
	jmp	.label_164
.label_168:
	nop	
	jmp	.label_166
.label_166:
	mov	rax, qword ptr [rbp - 8]
	and	rax, 7
	add	rax, 0x30
	nop	
	mov	cl, al
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdx, rax
	mov	rsp, rsp
	add	rdx, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdx
	mov	byte ptr [rax - 1], cl
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	shr	rax, 3
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	cmp	rax, 0
	jne	.label_166
	jmp	.label_164
.label_170:
	jmp	.label_162
.label_162:
	lea	rdi, [rdi]
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	nop	
	xor	edx, edx
	div	rcx
	mov	rsp, rsp
	add	rdx, 0x30
	mov	sil, dl
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdx, rcx
	add	rdx, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rdx
	lea	rdi, [rdi]
	mov	byte ptr [rcx - 1], sil
	mov	rbp, rbp
	mov	eax, 0xa
	mov	rsp, rsp
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rsp, rsp
	div	rcx
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_162
	jmp	.label_164
.label_167:
	mov	rbp, rbp
	jmp	.label_169
.label_169:
	mov	rax, qword ptr [rbp - 8]
	and	rax, 0xf
	mov	cl,  byte ptr [byte ptr [+ (rax * 1) + .str.63]]
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdx, rax
	mov	rsp, rsp
	add	rdx, -1
	nop	
	mov	qword ptr [rbp - 0x38], rdx
	mov	byte ptr [rax - 1], cl
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	shr	rax, 4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_169
	jmp	.label_164
.label_164:
	nop	
	jmp	.label_171
.label_171:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	jae	.label_172
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, -1
	mov	qword ptr [rbp - 0x38], rcx
	nop	
	mov	byte ptr [rax - 1], 0x30
	lea	rdi, [rdi]
	jmp	.label_171
.label_172:
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x54], eax
	nop	
	add	rsp, 0x60
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b30

	.globl format_address_none
	.type format_address_none, @function
format_address_none:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	al, sil
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], al
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b50

	.globl decode_format_string
	.type decode_format_string, @function
decode_format_string:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	je	.label_176
	nop	
	jmp	.label_173
.label_176:
	movabs	rdi, OFFSET FLAT:.str.75
	movabs	rsi, OFFSET FLAT:.str.76
	mov	edx, 0x3d8
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.decode_format_string
	call	__assert_fail
.label_173:
	lea	rdi, [rdi]
	jmp	.label_177
.label_177:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_179
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [n_specs_allocated]]
	nop	
	cmp	rax,  qword ptr [word ptr [n_specs]]
	lea	rdi, [rdi]
	ja	.label_175
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:n_specs_allocated
	mov	eax, 0x28
	mov	edx, eax
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [spec]]
	lea	rdi, [rdi]
	mov	rdi, rcx
	mov	rbp, rbp
	call	x2nrealloc
	mov	qword ptr [word ptr [spec]],  rax
.label_175:
	mov	rbp, rbp
	lea	rdx, [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax,  qword ptr [word ptr [n_specs]]
	imul	rax, rax, 0x28
	lea	rsi, [rsi]
	add	rax,  qword ptr [word ptr [spec]]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	call	decode_one_format
	test	al, 1
	mov	rsp, rsp
	jne	.label_178
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
	jmp	.label_181
.label_178:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	je	.label_174
	mov	rbp, rbp
	jmp	.label_180
.label_174:
	movabs	rdi, OFFSET FLAT:.str.77
	movabs	rsi, OFFSET FLAT:.str.76
	lea	rdi, [rdi]
	mov	edx, 0x3e4
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.decode_format_string
	lea	rdi, [rdi]
	call	__assert_fail
.label_180:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [n_specs]]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [word ptr [n_specs]],  rax
	jmp	.label_177
.label_179:
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 1
.label_181:
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	lea	rsi, [rsi]
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d00

	.globl parse_old_offset
	.type parse_old_offset, @function
parse_old_offset:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rsi]
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_182
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_186
.label_182:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2b
	lea	rdi, [rdi]
	jne	.label_189
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
.label_189:
	mov	esi, 0x2e
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	strchr
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_187
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], 0xa
	jmp	.label_184
.label_187:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x30
	mov	rbp, rbp
	jne	.label_185
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 1]
	lea	rsi, [rsi]
	cmp	ecx, 0x78
	lea	rsi, [rsi]
	je	.label_183
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	cmp	ecx, 0x58
	jne	.label_185
.label_183:
	nop	
	mov	dword ptr [rbp - 0x1c], 0x10
	nop	
	jmp	.label_188
.label_185:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], 8
.label_188:
	mov	rbp, rbp
	jmp	.label_184
.label_184:
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, eax
	mov	rbp, rbp
	movabs	r8, OFFSET FLAT:.str.108
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	xstrtoumax
	lea	rsi, [rsi]
	cmp	eax, 0
	nop	
	sete	r9b
	and	r9b, 1
	mov	byte ptr [rbp - 1], r9b
.label_186:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e40

	.globl format_address_paren
	.type format_address_paren, @function
format_address_paren:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	mov	al, sil
	mov	rbp, rbp
	mov	esi, 0x28
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	edi, esi
	lea	rsi, [rsi]
	call	putchar_unlocked
	mov	esi, 0x29
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x10], eax
	call	format_address_std
	cmp	byte ptr [rbp - 9], 0
	je	.label_190
	movsx	edi, byte ptr [rbp - 9]
	call	putchar_unlocked
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
.label_190:
	nop	
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403eb0

	.globl format_address_label
	.type format_address_label, @function
format_address_label:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	al, sil
	lea	rdi, [rdi]
	mov	esi, 0x20
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	format_address_std
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	add	rdi,  qword ptr [word ptr [pseudo_offset]]
	nop	
	movsx	esi, byte ptr [rbp - 9]
	lea	rdi, [rdi]
	call	format_address_paren
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f10

	.globl open_next_file
	.type open_next_file, @function
open_next_file:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	byte ptr [rbp - 2], 1
.label_194:
	mov	rax,  qword ptr [word ptr [file_list]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	qword ptr [word ptr [input_filename]],  rax
	cmp	qword ptr [word ptr [input_filename]],  0
	mov	rbp, rbp
	jne	.label_198
	mov	al, byte ptr [rbp - 2]
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_193
.label_198:
	mov	rax,  qword ptr [word ptr [file_list]]
	mov	rsp, rsp
	add	rax, 8
	mov	rbp, rbp
	mov	qword ptr [word ptr [file_list]],  rax
	mov	rdi,  qword ptr [word ptr [input_filename]]
	nop	
	mov	ecx, OFFSET FLAT:.str.109
	lea	rdi, [rdi]
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_195
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.45
	mov	rsp, rsp
	call	gettext
	xor	ecx, ecx
	mov	rbp, rbp
	mov	qword ptr [word ptr [input_filename]],  rax
	nop	
	mov	rax,  qword ptr [word ptr [stdin]]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [in_stream]],  rax
	mov	byte ptr [byte ptr [have_read_stdin]],  1
	mov	edi, ecx
	mov	rbp, rbp
	mov	esi, ecx
	mov	rsp, rsp
	call	xset_binary_mode
	mov	rsp, rsp
	jmp	.label_197
.label_195:
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.110
	mov	rdi,  qword ptr [word ptr [input_filename]]
	call	fopen
	mov	rsp, rsp
	mov	qword ptr [word ptr [in_stream]],  rax
	mov	rbp, rbp
	cmp	qword ptr [word ptr [in_stream]],  0
	nop	
	jne	.label_192
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, 3
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [input_filename]]
	mov	dword ptr [rbp - 8], ecx
	call	quotearg_n_style_colon
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 8]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 2], 0
.label_192:
	mov	rsp, rsp
	jmp	.label_197
.label_197:
	mov	rbp, rbp
	jmp	.label_191
.label_191:
	cmp	qword ptr [word ptr [in_stream]],  0
	lea	rdi, [rdi]
	je	.label_194
	nop	
	test	byte ptr [byte ptr [limit_bytes_to_format]],  1
	je	.label_196
	mov	rsp, rsp
	test	byte ptr [byte ptr [flag_dump_strings]],  1
	jne	.label_196
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	nop	
	mov	edx, 2
	mov	rdi,  qword ptr [word ptr [in_stream]]
	mov	rsi, rcx
	mov	rsp, rsp
	call	setvbuf
	nop	
	mov	dword ptr [rbp - 0xc], eax
.label_196:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 2]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], al
.label_193:
	mov	al, byte ptr [rbp - 1]
	nop	
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404100

	.globl skip
	.type skip, @function
skip:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20d0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], 1
	mov	dword ptr [rbp - 0x18], 0
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_199
	nop	
	mov	byte ptr [rbp - 1], 1
	jmp	.label_213
.label_199:
	nop	
	jmp	.label_211
.label_211:
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [in_stream]],  0
	je	.label_207
	mov	rdi,  qword ptr [word ptr [in_stream]]
	call	fileno
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0xa8]
	mov	edi, eax
	nop	
	call	__fstat
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_219
	lea	rdi, [rbp - 0xa8]
	mov	rsp, rsp
	call	usable_st_size
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_205
	jmp	.label_208
.label_205:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x70]
	jge	.label_209
	movabs	rax, 0x2000000000000000
	nop	
	cmp	qword ptr [rbp - 0x70], rax
	lea	rsi, [rsi]
	ja	.label_209
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rbp - 0x20c8], rax
	jmp	.label_214
.label_209:
	mov	eax, 0x200
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20c8], rcx
	jmp	.label_214
.label_214:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20c8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x78]
	jge	.label_208
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rbp - 0x10]
	nop	
	jae	.label_202
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	sub	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_206
.label_202:
	lea	rdi, [rdi]
	mov	edx, 1
	nop	
	mov	rdi,  qword ptr [word ptr [in_stream]]
	mov	rsi, qword ptr [rbp - 0x10]
	call	rpl_fseeko
	cmp	eax, 0
	je	.label_215
	nop	
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x18], ecx
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11], 0
.label_215:
	mov	qword ptr [rbp - 0x10], 0
.label_206:
	jmp	.label_200
.label_208:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20c0], 0x2000
.label_220:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 0x10]
	jae	.label_201
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20c0]
	jae	.label_203
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x20c0], rax
.label_203:
	mov	rsp, rsp
	mov	eax, 1
	mov	esi, eax
	lea	rdi, [rbp - 0x20b0]
	mov	rdx, qword ptr [rbp - 0x20c0]
	mov	rcx,  qword ptr [word ptr [in_stream]]
	call	fread_unlocked
	mov	qword ptr [rbp - 0x20b8], rax
	mov	rax, qword ptr [rbp - 0x20b8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rax, qword ptr [rbp - 0x20b8]
	cmp	rax, qword ptr [rbp - 0x20c0]
	nop	
	je	.label_217
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [in_stream]]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_210
	lea	rdi, [rdi]
	call	__errno_location
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18], ecx
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_201
.label_210:
	mov	rdi,  qword ptr [word ptr [in_stream]]
	call	feof_unlocked
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_218
	mov	rsp, rsp
	jmp	.label_201
.label_218:
	jmp	.label_217
.label_217:
	jmp	.label_220
.label_201:
	lea	rsi, [rsi]
	jmp	.label_200
.label_200:
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	jne	.label_204
	nop	
	jmp	.label_207
.label_204:
	mov	rbp, rbp
	jmp	.label_212
.label_219:
	call	__errno_location
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [input_filename]]
	mov	dword ptr [rbp - 0x20cc], ecx
	call	quotearg_n_style_colon
	nop	
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0x20cc]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], 0
.label_212:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	check_and_close
	and	al, 1
	movzx	edi, al
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x11]
	nop	
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	and	ecx, edi
	lea	rdi, [rdi]
	cmp	ecx, 0
	nop	
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	call	open_next_file
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	edi, al
	and	edi, ecx
	cmp	edi, 0
	lea	rdi, [rdi]
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	jmp	.label_211
.label_207:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_216
	movabs	rdi, OFFSET FLAT:.str.111
	lea	rdi, [rdi]
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_216:
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], al
.label_213:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
	nop	
	and	al, 1
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x20d0
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4044b0

	.globl get_lcm
	.type get_lcm, @function
get_lcm:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], 0
.label_222:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax,  qword ptr [word ptr [n_specs]]
	lea	rdi, [rdi]
	jae	.label_221
	nop	
	movsxd	rdi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 4]
	mov	rbp, rbp
	mov	eax, ecx
	movsxd	rsi,  dword ptr [dword ptr [+ (rax * 4) + width_bytes]]
	call	lcm
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_222
.label_221:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404550

	.globl dump_strings
	.type dump_strings, @function
dump_strings:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	lea	rsi, [rsi]
	mov	eax, 0x64
	nop	
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	rcx,  qword ptr [word ptr [string_min]]
	mov	rsp, rsp
	jbe	.label_242
	mov	eax, 0x64
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x40], rcx
	jmp	.label_248
.label_242:
	nop	
	mov	rax,  qword ptr [word ptr [string_min]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
.label_248:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	xmalloc
	mov	qword ptr [rbp - 0x18], rax
	mov	rax,  qword ptr [word ptr [n_bytes_to_skip]]
	mov	qword ptr [rbp - 0x20], rax
	mov	byte ptr [rbp - 0x21], 1
.label_243:
	jmp	.label_239
.label_239:
	test	byte ptr [byte ptr [limit_bytes_to_format]],  1
	nop	
	je	.label_241
	mov	rax,  qword ptr [word ptr [end_offset]]
	cmp	rax,  qword ptr [word ptr [string_min]]
	mov	rsp, rsp
	jb	.label_245
	mov	rax,  qword ptr [word ptr [end_offset]]
	sub	rax,  qword ptr [word ptr [string_min]]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	ja	.label_241
.label_245:
	mov	rsp, rsp
	jmp	.label_226
.label_241:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], 0
.label_247:
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	cmp	rax,  qword ptr [word ptr [string_min]]
	jae	.label_232
	lea	rdi, [rbp - 0x34]
	mov	rbp, rbp
	call	read_char
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	nop	
	mov	al, byte ptr [rbp - 0x21]
	nop	
	and	al, 1
	nop	
	movzx	edx, al
	and	edx, ecx
	mov	rsp, rsp
	cmp	edx, 0
	mov	rsp, rsp
	setne	al
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x21], al
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rdi, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdi
	cmp	dword ptr [rbp - 0x34], 0
	mov	rsp, rsp
	jge	.label_237
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	call	free
	mov	al, byte ptr [rbp - 0x21]
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 1], al
	nop	
	jmp	.label_231
.label_237:
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	movzx	edx, word ptr [rax + rcx*2]
	mov	rbp, rbp
	and	edx, 0x4000
	cmp	edx, 0
	jne	.label_238
	jmp	.label_239
.label_238:
	mov	eax, dword ptr [rbp - 0x34]
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rsi + rdx], cl
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	nop	
	jmp	.label_247
.label_232:
	jmp	.label_227
.label_227:
	mov	al, 1
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [limit_bytes_to_format]],  1
	mov	byte ptr [rbp - 0x49], al
	mov	rbp, rbp
	je	.label_229
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax,  qword ptr [word ptr [end_offset]]
	setb	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x49], cl
.label_229:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x49]
	test	al, 1
	mov	rbp, rbp
	jne	.label_240
	mov	rbp, rbp
	jmp	.label_225
.label_240:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jne	.label_246
	nop	
	lea	rsi, [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	call	x2realloc
	mov	qword ptr [rbp - 0x18], rax
.label_246:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x34]
	nop	
	call	read_char
	nop	
	and	al, 1
	movzx	ecx, al
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x21]
	nop	
	and	al, 1
	lea	rsi, [rsi]
	movzx	edx, al
	lea	rsi, [rsi]
	and	edx, ecx
	nop	
	cmp	edx, 0
	nop	
	setne	al
	nop	
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x21], al
	mov	rdi, qword ptr [rbp - 0x20]
	add	rdi, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	cmp	dword ptr [rbp - 0x34], 0
	mov	rbp, rbp
	jge	.label_230
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	free
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], al
	nop	
	jmp	.label_231
.label_230:
	cmp	dword ptr [rbp - 0x34], 0
	mov	rsp, rsp
	jne	.label_223
	jmp	.label_225
.label_223:
	movsxd	rax, dword ptr [rbp - 0x34]
	nop	
	mov	qword ptr [rbp - 0x58], rax
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x58]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	lea	rsi, [rsi]
	cmp	edx, 0
	lea	rsi, [rsi]
	jne	.label_233
	mov	rsp, rsp
	jmp	.label_239
.label_233:
	nop	
	mov	eax, dword ptr [rbp - 0x34]
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, rdx
	add	rsi, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
	mov	rsp, rsp
	jmp	.label_227
.label_225:
	mov	rbp, rbp
	mov	esi, 0x20
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
	mov	rax,  qword ptr [word ptr [format_address]]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rbp - 0x30]
	sub	rcx, 1
	mov	rdi, rcx
	call	rax
	mov	qword ptr [rbp - 0x30], 0
.label_235:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x34], edx
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_236
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	add	eax, -7
	lea	rdi, [rdi]
	mov	ecx, eax
	sub	eax, 6
	mov	qword ptr [rbp - 0x60], rcx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x64], eax
	ja	.label_244
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_228]]
	mov	rsp, rsp
	jmp	rcx
.label_953:
	movabs	rdi, OFFSET FLAT:.str.97
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x68], eax
	nop	
	jmp	.label_224
.label_954:
	movabs	rdi, OFFSET FLAT:.str.98
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x6c], eax
	jmp	.label_224
.label_958:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.99
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x70], eax
	lea	rsi, [rsi]
	jmp	.label_224
.label_956:
	movabs	rdi, OFFSET FLAT:.str.100
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x74], eax
	nop	
	jmp	.label_224
.label_959:
	movabs	rdi, OFFSET FLAT:.str.101
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x78], eax
	jmp	.label_224
.label_955:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.102
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x7c], eax
	lea	rdi, [rdi]
	jmp	.label_224
.label_957:
	nop	
	movabs	rdi, OFFSET FLAT:.str.103
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_224
.label_244:
	mov	edi, dword ptr [rbp - 0x34]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x84], eax
.label_224:
	lea	rsi, [rsi]
	jmp	.label_234
.label_234:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_235
.label_236:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x88], eax
	nop	
	jmp	.label_243
.label_226:
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	call	check_and_close
	and	al, 1
	movzx	edi, al
	nop	
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	mov	rsp, rsp
	and	ecx, edi
	cmp	ecx, 0
	setne	al
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x21]
	nop	
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_231:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x90
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ac0

	.globl dump
	.type dump, @function
dump:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x50
	mov	rsp, rsp
	mov	eax, 2
	lea	rsi, [rsi]
	mov	edi, eax
	mov	byte ptr [rbp - 0x19], 0
	nop	
	mov	byte ptr [rbp - 0x1a], 1
	mov	rsi,  qword ptr [word ptr [bytes_per_block]]
	mov	rbp, rbp
	call	xnmalloc
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax,  qword ptr [word ptr [bytes_per_block]]
	mov	qword ptr [rbp - 8], rax
	mov	rax,  qword ptr [word ptr [n_bytes_to_skip]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	test	byte ptr [byte ptr [limit_bytes_to_format]],  1
	je	.label_261
	jmp	.label_257
.label_257:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	cmp	rax,  qword ptr [word ptr [end_offset]]
	mov	rbp, rbp
	jb	.label_259
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jmp	.label_251
.label_259:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [end_offset]]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	rax,  qword ptr [word ptr [bytes_per_block]]
	mov	rsp, rsp
	jae	.label_255
	nop	
	mov	rax,  qword ptr [word ptr [end_offset]]
	sub	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_262
.label_255:
	mov	rax,  qword ptr [word ptr [bytes_per_block]]
	mov	qword ptr [rbp - 0x48], rax
.label_262:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	lea	rdx, [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rbp - 0x19]
	and	cl, 1
	movzx	esi, cl
	mov	eax, esi
	mov	rsi, qword ptr [rbp + rax*8 - 0x10]
	call	read_block
	and	al, 1
	lea	rdi, [rdi]
	movzx	r8d, al
	mov	al, byte ptr [rbp - 0x1a]
	and	al, 1
	movzx	r9d, al
	mov	rsp, rsp
	and	r9d, r8d
	mov	rbp, rbp
	cmp	r9d, 0
	mov	rbp, rbp
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	rdx,  qword ptr [word ptr [bytes_per_block]]
	lea	rdi, [rdi]
	jae	.label_254
	jmp	.label_251
.label_254:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax,  qword ptr [word ptr [bytes_per_block]]
	jne	.label_263
	nop	
	jmp	.label_253
.label_263:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.114
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.76
	lea	rdi, [rdi]
	mov	edx, 0x576
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.dump
	lea	rdi, [rdi]
	call	__assert_fail
.label_253:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	al, byte ptr [rbp - 0x19]
	xor	al, 0xff
	mov	rbp, rbp
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rdx, qword ptr [rbp + rdx*8 - 0x10]
	nop	
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	ecx, al
	mov	r8d, ecx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp + r8*8 - 0x10]
	call	write_block
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rcx
	mov	al, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	xor	al, 0xff
	mov	rbp, rbp
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x19], al
	jmp	.label_257
.label_251:
	jmp	.label_256
.label_261:
	mov	rbp, rbp
	jmp	.label_250
.label_250:
	lea	rdx, [rbp - 0x28]
	nop	
	mov	rdi,  qword ptr [word ptr [bytes_per_block]]
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	nop	
	movzx	ecx, al
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp + rsi*8 - 0x10]
	call	read_block
	nop	
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x1a]
	mov	rsp, rsp
	and	al, 1
	movzx	r8d, al
	and	r8d, ecx
	cmp	r8d, 0
	lea	rsi, [rsi]
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx,  qword ptr [word ptr [bytes_per_block]]
	mov	rbp, rbp
	jae	.label_264
	lea	rdi, [rdi]
	jmp	.label_260
.label_264:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	cmp	rax,  qword ptr [word ptr [bytes_per_block]]
	jne	.label_265
	jmp	.label_252
.label_265:
	movabs	rdi, OFFSET FLAT:.str.114
	movabs	rsi, OFFSET FLAT:.str.76
	nop	
	mov	edx, 0x584
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.dump
	mov	rbp, rbp
	call	__assert_fail
.label_252:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x19]
	xor	al, 0xff
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp + rdx*8 - 0x10]
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	r8d, ecx
	mov	rcx, qword ptr [rbp + r8*8 - 0x10]
	call	write_block
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rcx
	nop	
	mov	al, byte ptr [rbp - 0x19]
	xor	al, 0xff
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], al
	jmp	.label_250
.label_260:
	jmp	.label_256
.label_256:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	jbe	.label_258
	lea	rdi, [rdi]
	call	get_lcm
	xor	esi, esi
	mov	dword ptr [rbp - 0x34], eax
	movsxd	rcx, dword ptr [rbp - 0x34]
	mov	rdx, qword ptr [rbp - 0x28]
	movsxd	rdi, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	add	rdx, rdi
	nop	
	sub	rdx, 1
	mov	rsp, rsp
	movsxd	rdi, dword ptr [rbp - 0x34]
	nop	
	mov	rax, rdx
	lea	rsi, [rsi]
	xor	r8d, r8d
	lea	rdi, [rdi]
	mov	edx, r8d
	lea	rsi, [rsi]
	div	rdi
	nop	
	imul	rcx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rcx
	mov	r9b, byte ptr [rbp - 0x19]
	nop	
	and	r9b, 1
	movzx	r8d, r9b
	mov	eax, r8d
	mov	rax, qword ptr [rbp + rax*8 - 0x10]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	sub	rcx, qword ptr [rbp - 0x28]
	mov	rdi, rax
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	memset
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	mov	r9b, byte ptr [rbp - 0x19]
	nop	
	xor	r9b, 0xff
	lea	rsi, [rsi]
	and	r9b, 1
	mov	rsp, rsp
	movzx	r8d, r9b
	lea	rdi, [rdi]
	movsxd	rax, r8d
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp + rax*8 - 0x10]
	mov	r9b, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	and	r9b, 1
	movzx	r8d, r9b
	mov	rbp, rbp
	mov	eax, r8d
	mov	rcx, qword ptr [rbp + rax*8 - 0x10]
	call	write_block
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
.label_258:
	mov	rbp, rbp
	mov	esi, 0xa
	mov	rax,  qword ptr [word ptr [format_address]]
	mov	rdi, qword ptr [rbp - 0x18]
	call	rax
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [limit_bytes_to_format]],  1
	je	.label_249
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax,  qword ptr [word ptr [end_offset]]
	jb	.label_249
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	call	check_and_close
	and	al, 1
	movzx	edi, al
	mov	al, byte ptr [rbp - 0x1a]
	and	al, 1
	nop	
	movzx	ecx, al
	and	ecx, edi
	mov	rsp, rsp
	cmp	ecx, 0
	lea	rsi, [rsi]
	setne	al
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
.label_249:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	free
	mov	al, byte ptr [rbp - 0x1a]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x404f70

	.globl decode_one_format
	.type decode_one_format, @function
decode_one_format:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x190
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	je	.label_323
	mov	rbp, rbp
	jmp	.label_275
.label_323:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.78
	nop	
	movabs	rsi, OFFSET FLAT:.str.76
	mov	edx, 0x286
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.decode_one_format
	lea	rsi, [rsi]
	call	__assert_fail
.label_275:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	nop	
	sub	edx, 0x61
	mov	dword ptr [rbp - 0x6c], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x70], edx
	nop	
	je	.label_304
	jmp	.label_268
.label_268:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x6c]
	mov	rsp, rsp
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x74], eax
	mov	rsp, rsp
	je	.label_271
	mov	rbp, rbp
	jmp	.label_278
.label_278:
	nop	
	mov	eax, dword ptr [rbp - 0x6c]
	nop	
	sub	eax, 0x64
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x78], eax
	nop	
	je	.label_282
	nop	
	jmp	.label_289
.label_289:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x66
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], eax
	mov	rbp, rbp
	je	.label_291
	jmp	.label_301
.label_301:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x6f
	mov	dword ptr [rbp - 0x80], eax
	je	.label_282
	lea	rdi, [rdi]
	jmp	.label_310
.label_310:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x84], eax
	je	.label_282
	jmp	.label_318
.label_318:
	mov	eax, dword ptr [rbp - 0x6c]
	mov	rsp, rsp
	sub	eax, 0x78
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], eax
	mov	rsp, rsp
	jne	.label_320
	lea	rdi, [rdi]
	jmp	.label_282
.label_282:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x51], cl
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, rax
	nop	
	inc	rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	movsx	esi, byte ptr [rax + 1]
	mov	edi, esi
	sub	edi, 0x43
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x8c], esi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x90], edi
	je	.label_292
	jmp	.label_338
.label_338:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x8c]
	sub	eax, 0x49
	mov	dword ptr [rbp - 0x94], eax
	je	.label_266
	lea	rsi, [rsi]
	jmp	.label_274
.label_274:
	mov	eax, dword ptr [rbp - 0x8c]
	sub	eax, 0x4c
	mov	dword ptr [rbp - 0x98], eax
	lea	rdi, [rdi]
	je	.label_277
	lea	rsi, [rsi]
	jmp	.label_287
.label_287:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x8c]
	lea	rsi, [rsi]
	sub	eax, 0x53
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_288
	jmp	.label_299
.label_292:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x38], 1
	mov	rbp, rbp
	jmp	.label_269
.label_288:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x38], 2
	lea	rsi, [rsi]
	jmp	.label_269
.label_266:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x38], 4
	nop	
	jmp	.label_269
.label_277:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x38], 8
	jmp	.label_269
.label_299:
	nop	
	lea	rsi, [rbp - 0x50]
	nop	
	lea	rdx, [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	call	simple_strtoul
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_336
	movabs	rdi, OFFSET FLAT:.str.79
	lea	rdi, [rdi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], rax
	mov	rsp, rsp
	call	quote
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edi, ecx
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	nop	
	mov	byte ptr [rbp - 1], 0
	mov	rsp, rsp
	jmp	.label_295
.label_336:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_329
	nop	
	mov	qword ptr [rbp - 0x38], 4
	jmp	.label_308
.label_329:
	mov	eax, 8
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 0x38]
	nop	
	jb	.label_315
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [dword ptr [+ (rax * 4) + integral_type_size]],  0
	jne	.label_307
.label_315:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.80
	lea	rsi, [rsi]
	call	gettext
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb0], rax
	call	quote
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	r8, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	edi, ecx
	mov	rsp, rsp
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_295
.label_307:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x18], rax
.label_308:
	jmp	.label_269
.label_269:
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + integral_type_size]]
	mov	dword ptr [rbp - 0x2c], ecx
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rbp - 0x51]
	mov	rsp, rsp
	mov	edx, ecx
	lea	rdi, [rdi]
	sub	edx, 0x64
	mov	dword ptr [rbp - 0xb4], ecx
	mov	dword ptr [rbp - 0xb8], edx
	je	.label_273
	jmp	.label_319
.label_319:
	nop	
	mov	eax, dword ptr [rbp - 0xb4]
	sub	eax, 0x6f
	mov	dword ptr [rbp - 0xbc], eax
	mov	rsp, rsp
	je	.label_290
	mov	rsp, rsp
	jmp	.label_339
.label_339:
	mov	eax, dword ptr [rbp - 0xb4]
	nop	
	sub	eax, 0x75
	mov	dword ptr [rbp - 0xc0], eax
	lea	rdi, [rdi]
	je	.label_305
	nop	
	jmp	.label_316
.label_316:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xb4]
	sub	eax, 0x78
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc4], eax
	lea	rsi, [rsi]
	je	.label_317
	jmp	.label_324
.label_273:
	nop	
	mov	dword ptr [rbp - 0x3c], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + bytes_to_signed_dec_digits]]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x58], ecx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x10
	cmp	dword ptr [rbp - 0x2c], 5
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd0], rax
	jne	.label_325
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.82
	nop	
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_335
.label_325:
	movabs	rax, OFFSET FLAT:.str.83
	movabs	rcx, OFFSET FLAT:.str.82
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2c], 4
	cmove	rax, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
.label_335:
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.81
	nop	
	mov	rdi, qword ptr [rbp - 0xd0]
	nop	
	mov	rdx, rax
	mov	al, 0
	call	sprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_294
.label_290:
	mov	dword ptr [rbp - 0x3c], 2
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rax, 0x10
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	edx,  dword ptr [dword ptr [+ (rcx * 4) + bytes_to_oct_digits]]
	mov	dword ptr [rbp - 0x58], edx
	cmp	dword ptr [rbp - 0x2c], 5
	mov	qword ptr [rbp - 0xe8], rax
	mov	dword ptr [rbp - 0xec], edx
	jne	.label_302
	movabs	rax, OFFSET FLAT:.str.85
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xf8], rax
	mov	rsp, rsp
	jmp	.label_322
.label_302:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.86
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:.str.85
	cmp	dword ptr [rbp - 0x2c], 4
	lea	rsi, [rsi]
	cmove	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xf8], rax
.label_322:
	nop	
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.84
	mov	rdi, qword ptr [rbp - 0xe8]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xec]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	sprintf
	mov	dword ptr [rbp - 0xfc], eax
	lea	rsi, [rsi]
	jmp	.label_294
.label_305:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + bytes_to_unsigned_dec_digits]]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x58], ecx
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x10
	cmp	dword ptr [rbp - 0x2c], 5
	mov	qword ptr [rbp - 0x108], rax
	jne	.label_281
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.87
	mov	qword ptr [rbp - 0x110], rax
	mov	rbp, rbp
	jmp	.label_303
.label_281:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.88
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:.str.87
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 4
	cmove	rax, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x110], rax
.label_303:
	mov	rax, qword ptr [rbp - 0x110]
	movabs	rsi, OFFSET FLAT:.str.81
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x108]
	mov	rdx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	sprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x114], eax
	mov	rsp, rsp
	jmp	.label_294
.label_317:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], 3
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x10
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	edx,  dword ptr [dword ptr [+ (rcx * 4) + bytes_to_hex_digits]]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x58], edx
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 5
	nop	
	mov	qword ptr [rbp - 0x120], rax
	nop	
	mov	dword ptr [rbp - 0x124], edx
	mov	rbp, rbp
	jne	.label_334
	movabs	rax, OFFSET FLAT:.str.89
	mov	qword ptr [rbp - 0x130], rax
	lea	rdi, [rdi]
	jmp	.label_272
.label_334:
	nop	
	movabs	rax, OFFSET FLAT:.str.90
	movabs	rcx, OFFSET FLAT:.str.89
	cmp	dword ptr [rbp - 0x2c], 4
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x130], rax
.label_272:
	mov	rax, qword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.84
	mov	rdi, qword ptr [rbp - 0x120]
	mov	edx, dword ptr [rbp - 0x124]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	sprintf
	mov	dword ptr [rbp - 0x134], eax
	jmp	.label_294
.label_324:
	lea	rdi, [rdi]
	call	abort
.label_294:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x10
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strlen
	cmp	rax, 8
	jae	.label_328
	mov	rsp, rsp
	jmp	.label_330
.label_328:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.91
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.76
	mov	edx, 0x2e9
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.decode_one_format
	mov	rbp, rbp
	call	__assert_fail
.label_330:
	mov	eax, dword ptr [rbp - 0x2c]
	dec	eax
	mov	rbp, rbp
	mov	ecx, eax
	nop	
	sub	eax, 4
	mov	qword ptr [rbp - 0x140], rcx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x144], eax
	ja	.label_297
	mov	rax, qword ptr [rbp - 0x140]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_280]]
	jmp	rcx
.label_976:
	movabs	rax, OFFSET FLAT:print_char
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:print_s_char
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x3c], 0
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x48], rax
	nop	
	jmp	.label_267
.label_977:
	nop	
	movabs	rax, OFFSET FLAT:print_short
	movabs	rcx, OFFSET FLAT:print_s_short
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x3c], 0
	lea	rsi, [rsi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x48], rax
	nop	
	jmp	.label_267
.label_978:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:print_int
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_267
.label_979:
	movabs	rax, OFFSET FLAT:print_long
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_267
.label_980:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:print_long_long
	nop	
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	jmp	.label_267
.label_297:
	call	abort
.label_267:
	jmp	.label_270
.label_291:
	nop	
	mov	dword ptr [rbp - 0x3c], 4
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, rax
	inc	rcx
	mov	qword ptr [rbp - 0x18], rcx
	mov	rbp, rbp
	movsx	edx, byte ptr [rax + 1]
	lea	rdi, [rdi]
	mov	esi, edx
	mov	rbp, rbp
	sub	esi, 0x44
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x148], edx
	mov	dword ptr [rbp - 0x14c], esi
	mov	rsp, rsp
	je	.label_333
	mov	rbp, rbp
	jmp	.label_279
.label_279:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x46
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x150], eax
	lea	rsi, [rsi]
	je	.label_283
	lea	rdi, [rdi]
	jmp	.label_326
.label_326:
	nop	
	mov	eax, dword ptr [rbp - 0x148]
	mov	rbp, rbp
	sub	eax, 0x4c
	mov	dword ptr [rbp - 0x154], eax
	je	.label_296
	jmp	.label_306
.label_283:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x38], 4
	lea	rsi, [rsi]
	jmp	.label_309
.label_333:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x38], 8
	jmp	.label_309
.label_296:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	nop	
	mov	qword ptr [rbp - 0x38], 0x10
	jmp	.label_309
.label_306:
	lea	rsi, [rbp - 0x50]
	lea	rdx, [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	call	simple_strtoul
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_331
	movabs	rdi, OFFSET FLAT:.str.79
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x160], rax
	lea	rdi, [rdi]
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x160]
	nop	
	mov	rcx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0
	lea	rdi, [rdi]
	jmp	.label_295
.label_331:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_285
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], 8
	lea	rsi, [rsi]
	jmp	.label_314
.label_285:
	cmp	qword ptr [rbp - 0x38], 0x10
	lea	rsi, [rsi]
	ja	.label_300
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [dword ptr [+ (rax * 4) + fp_type_size]],  0
	lea	rsi, [rsi]
	jne	.label_298
.label_300:
	movabs	rdi, OFFSET FLAT:.str.92
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x168], rax
	call	quote
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	r8, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	esi, ecx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x168]
	lea	rdi, [rdi]
	mov	rcx, rax
	nop	
	mov	al, 0
	mov	rsp, rsp
	call	error
	mov	byte ptr [rbp - 1], 0
	lea	rsi, [rsi]
	jmp	.label_295
.label_298:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x18], rax
.label_314:
	jmp	.label_309
.label_309:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + fp_type_size]]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], ecx
	call	localeconv
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_276
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax]
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x170], rax
	lea	rsi, [rsi]
	jmp	.label_286
.label_276:
	mov	rsp, rsp
	mov	eax, 1
	mov	ecx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x170], rcx
	jmp	.label_286
.label_286:
	mov	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0x68], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	mov	edx, ecx
	lea	rsi, [rsi]
	sub	edx, 6
	mov	dword ptr [rbp - 0x174], ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x178], edx
	je	.label_311
	lea	rsi, [rsi]
	jmp	.label_313
.label_313:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x174]
	sub	eax, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x17c], eax
	je	.label_321
	lea	rdi, [rdi]
	jmp	.label_293
.label_293:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x174]
	sub	eax, 8
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x180], eax
	mov	rbp, rbp
	je	.label_327
	jmp	.label_332
.label_311:
	movabs	rax, OFFSET FLAT:print_float
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	add	rax, 0xa
	lea	rsi, [rsi]
	add	rax, 1
	add	rax, 3
	mov	rbp, rbp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x58], ecx
	jmp	.label_284
.label_321:
	movabs	rax, OFFSET FLAT:print_double
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	add	rax, 0x12
	add	rax, 1
	add	rax, 4
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x58], ecx
	jmp	.label_284
.label_327:
	nop	
	movabs	rax, OFFSET FLAT:print_long_double
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x68]
	nop	
	add	rax, 0x16
	lea	rdi, [rdi]
	add	rax, 1
	mov	rbp, rbp
	add	rax, 5
	mov	ecx, eax
	mov	dword ptr [rbp - 0x58], ecx
	lea	rsi, [rsi]
	jmp	.label_284
.label_332:
	call	abort
.label_284:
	lea	rsi, [rsi]
	jmp	.label_270
.label_304:
	nop	
	movabs	rax, OFFSET FLAT:print_named_ascii
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 1
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], 5
	nop	
	mov	dword ptr [rbp - 0x2c], 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	mov	dword ptr [rbp - 0x58], 3
	jmp	.label_270
.label_271:
	movabs	rax, OFFSET FLAT:print_ascii
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	nop	
	mov	dword ptr [rbp - 0x3c], 6
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], 1
	mov	qword ptr [rbp - 0x48], rax
	mov	dword ptr [rbp - 0x58], 3
	jmp	.label_270
.label_320:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.93
	nop	
	call	gettext
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rdi]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x188], rax
	mov	dword ptr [rbp - 0x18c], ecx
	lea	rsi, [rsi]
	call	quote
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edi, ecx
	lea	rdi, [rdi]
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x188]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x18c]
	nop	
	mov	r8, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0
	jmp	.label_295
.label_270:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	dword ptr [rcx + 4], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx + 8], rcx
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	dword ptr [rcx + 0x1c], eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	eax, byte ptr [rcx]
	cmp	eax, 0x7a
	mov	rbp, rbp
	sete	sil
	mov	rcx, qword ptr [rbp - 0x28]
	and	sil, 1
	lea	rdi, [rdi]
	mov	byte ptr [rcx + 0x18], sil
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	test	byte ptr [rcx + 0x18], 1
	je	.label_312
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x18], rax
.label_312:
	cmp	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	je	.label_337
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_337:
	mov	byte ptr [rbp - 1], 1
.label_295:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	nop	
	add	rsp, 0x190
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405d30

	.globl simple_strtoul
	.type simple_strtoul, @function
simple_strtoul:
	nop	
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], 0
.label_342:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	sub	ecx, 0x30
	cmp	ecx, 9
	nop	
	ja	.label_343
	lea	rsi, [rsi]
	mov	eax, 0xa
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, -1
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, rsi
	mov	rsp, rsp
	add	rdi, 1
	mov	qword ptr [rbp - 0x10], rdi
	movsx	eax, byte ptr [rsi]
	nop	
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	movsxd	rdi, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	sub	rdx, rdi
	mov	rbp, rbp
	mov	rax, rdx
	xor	r8d, r8d
	mov	edx, r8d
	div	rcx
	cmp	rsi, rax
	nop	
	jbe	.label_341
	mov	byte ptr [rbp - 1], 0
	jmp	.label_340
.label_341:
	nop	
	imul	rax, qword ptr [rbp - 0x28], 0xa
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x2c]
	mov	rsp, rsp
	add	rax, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_342
.label_343:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	byte ptr [rbp - 1], 1
.label_340:
	nop	
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x405e20

	.globl print_s_char
	.type print_s_char, @function
print_s_char:
	nop
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rsp, rsp
	mov	r8d, dword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_346:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	jae	.label_345
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	sub	rcx, 1
	mov	rsp, rsp
	imul	rax, rcx
	xor	edx, edx
	nop	
	div	qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	sub	esi, dword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	esi, dword ptr [rbp - 0x24]
	nop	
	mov	dword ptr [rbp - 0x44], esi
	mov	rsp, rsp
	test	byte ptr [byte ptr [input_swap]],  1
	lea	rdi, [rdi]
	je	.label_344
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_349
	lea	rsi, [rsi]
	jmp	.label_344
.label_349:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], 0
.label_347:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x50], 1
	jae	.label_350
	nop	
	xor	eax, eax
	mov	ecx, eax
	nop	
	sub	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	byte ptr [rbp + rcx - 0x58], sil
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_347
.label_350:
	mov	al, byte ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x45], al
	nop	
	jmp	.label_348
.label_344:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x45], cl
.label_348:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x44]
	movsx	edx, byte ptr [rbp - 0x45]
	mov	rsp, rsp
	mov	al, 0
	call	xprintf
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], edx
	mov	dword ptr [rbp - 0x5c], eax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_346
.label_345:
	mov	rbp, rbp
	add	rsp, 0x60
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x405fc0

	.globl print_char
	.type print_char, @function
print_char:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	nop	
	mov	dword ptr [rbp - 0x28], r9d
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rbp, rbp
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rcx
.label_354:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	jae	.label_355
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 1
	lea	rsi, [rsi]
	imul	rax, rcx
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rsp, rsp
	div	qword ptr [rbp - 8]
	nop	
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x3c]
	sub	esi, dword ptr [rbp - 0x40]
	nop	
	add	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x44], esi
	mov	rbp, rbp
	test	byte ptr [byte ptr [input_swap]],  1
	lea	rdi, [rdi]
	je	.label_356
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_353
	lea	rdi, [rdi]
	jmp	.label_356
.label_353:
	mov	qword ptr [rbp - 0x50], 0
.label_351:
	cmp	qword ptr [rbp - 0x50], 1
	nop	
	jae	.label_357
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rbp + rcx - 0x58], sil
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_351
.label_357:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x58]
	mov	byte ptr [rbp - 0x45], al
	nop	
	jmp	.label_352
.label_356:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x45], cl
.label_352:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x44]
	movzx	edx, byte ptr [rbp - 0x45]
	mov	al, 0
	call	xprintf
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c], edx
	mov	dword ptr [rbp - 0x5c], eax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_354
.label_355:
	add	rsp, 0x60
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x406140

	.globl print_s_short
	.type print_s_short, @function
print_s_short:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rcx
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_360:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_361
	movsxd	rax, dword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	sub	rcx, 1
	imul	rax, rcx
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	div	qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	esi, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x40], esi
	mov	esi, dword ptr [rbp - 0x3c]
	sub	esi, dword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	add	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x44], esi
	test	byte ptr [byte ptr [input_swap]],  1
	je	.label_362
	mov	qword ptr [rbp - 0x50], 0
.label_363:
	cmp	qword ptr [rbp - 0x50], 2
	lea	rsi, [rsi]
	jae	.label_358
	mov	eax, 1
	mov	ecx, eax
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0x50]
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	byte ptr [rbp + rcx - 0x58], sil
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_363
.label_358:
	mov	ax, word ptr [rbp - 0x58]
	mov	word ptr [rbp - 0x46], ax
	lea	rsi, [rsi]
	jmp	.label_359
.label_362:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	cx, word ptr [rax]
	nop	
	mov	word ptr [rbp - 0x46], cx
.label_359:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 2
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x44]
	movsx	edx, word ptr [rbp - 0x46]
	lea	rdi, [rdi]
	mov	al, 0
	call	xprintf
	mov	edx, dword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_360
.label_361:
	add	rsp, 0x60
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4062a0

	.globl print_short
	.type print_short, @function
print_short:
	nop
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], r8d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x28], r9d
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	mov	r8d, dword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_367:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	nop	
	jae	.label_364
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	sub	rcx, 1
	mov	rsp, rsp
	imul	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 8]
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x3c]
	sub	esi, dword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x44], esi
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [input_swap]],  1
	mov	rbp, rbp
	je	.label_369
	mov	qword ptr [rbp - 0x50], 0
.label_365:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x50], 2
	jae	.label_366
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rbp + rcx - 0x58], sil
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	jmp	.label_365
.label_366:
	mov	ax, word ptr [rbp - 0x58]
	mov	word ptr [rbp - 0x46], ax
	mov	rbp, rbp
	jmp	.label_368
.label_369:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	cx, word ptr [rax]
	lea	rsi, [rsi]
	mov	word ptr [rbp - 0x46], cx
.label_368:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rax, 2
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x44]
	movzx	edx, word ptr [rbp - 0x46]
	mov	al, 0
	call	xprintf
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c], edx
	mov	dword ptr [rbp - 0x5c], eax
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_367
.label_364:
	mov	rbp, rbp
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406420

	.globl print_int
	.type print_int, @function
print_int:
	nop
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	mov	dword ptr [rbp - 0x24], r8d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], r9d
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rcx
.label_372:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_374
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 1
	imul	rax, rcx
	nop	
	xor	edx, edx
	div	qword ptr [rbp - 8]
	nop	
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x3c]
	sub	esi, dword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	add	esi, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44], esi
	test	byte ptr [byte ptr [input_swap]],  1
	je	.label_375
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], 0
.label_371:
	cmp	qword ptr [rbp - 0x50], 4
	jae	.label_370
	mov	eax, 3
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	mov	sil, byte ptr [rdx + rcx]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	byte ptr [rbp + rcx - 0x58], sil
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_371
.label_370:
	mov	eax, dword ptr [rbp - 0x58]
	mov	dword ptr [rbp - 0x48], eax
	jmp	.label_373
.label_375:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x48], ecx
.label_373:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	add	rax, 4
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x44]
	mov	edx, dword ptr [rbp - 0x48]
	mov	al, 0
	mov	rsp, rsp
	call	xprintf
	mov	edx, dword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], edx
	mov	dword ptr [rbp - 0x5c], eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	jmp	.label_372
.label_374:
	add	rsp, 0x60
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406580

	.globl print_long
	.type print_long, @function
print_long:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x70
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x28], r9d
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_377:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_379
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	sub	rcx, 1
	lea	rsi, [rsi]
	imul	rax, rcx
	xor	edx, edx
	mov	rsp, rsp
	div	qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x3c]
	sub	esi, dword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	add	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x44], esi
	mov	rsp, rsp
	test	byte ptr [byte ptr [input_swap]],  1
	je	.label_380
	mov	qword ptr [rbp - 0x58], 0
.label_381:
	cmp	qword ptr [rbp - 0x58], 8
	nop	
	jae	.label_376
	mov	eax, 7
	nop	
	mov	ecx, eax
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	byte ptr [rbp + rcx - 0x60], sil
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	jmp	.label_381
.label_376:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_378
.label_380:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
.label_378:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x44]
	mov	rdx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	xprintf
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], esi
	mov	dword ptr [rbp - 0x64], eax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	jmp	.label_377
.label_379:
	lea	rsi, [rsi]
	add	rsp, 0x70
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4066f0

	.globl print_long_long
	.type print_long_long, @function
print_long_long:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x28], r9d
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_385:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	jae	.label_387
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	sub	rcx, 1
	lea	rdi, [rdi]
	imul	rax, rcx
	xor	edx, edx
	nop	
	div	qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	esi, dword ptr [rbp - 0x3c]
	sub	esi, dword ptr [rbp - 0x40]
	add	esi, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44], esi
	test	byte ptr [byte ptr [input_swap]],  1
	nop	
	je	.label_382
	mov	qword ptr [rbp - 0x58], 0
.label_386:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x58], 8
	nop	
	jae	.label_384
	mov	eax, 7
	mov	ecx, eax
	mov	rbp, rbp
	sub	rcx, qword ptr [rbp - 0x58]
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	mov	sil, byte ptr [rdx + rcx]
	nop	
	mov	rcx, qword ptr [rbp - 0x58]
	mov	byte ptr [rbp + rcx - 0x60], sil
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	jmp	.label_386
.label_384:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_383
.label_382:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
.label_383:
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	add	rax, 8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x44]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	xprintf
	mov	esi, dword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], esi
	nop	
	mov	dword ptr [rbp - 0x64], eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	add	rax, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	jmp	.label_385
.label_387:
	add	rsp, 0x70
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406870

	.globl print_float
	.type print_float, @function
print_float:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], r8d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], r9d
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rbp, rbp
	mov	r8d, dword ptr [rbp - 0x28]
	nop	
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_388:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_392
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	sub	rcx, 1
	imul	rax, rcx
	nop	
	xor	edx, edx
	lea	rdi, [rdi]
	div	qword ptr [rbp - 8]
	nop	
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	sub	esi, dword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	add	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x44], esi
	test	byte ptr [byte ptr [input_swap]],  1
	nop	
	je	.label_390
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], 0
.label_391:
	cmp	qword ptr [rbp - 0x50], 4
	mov	rsp, rsp
	jae	.label_393
	mov	eax, 3
	mov	ecx, eax
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	byte ptr [rbp + rcx - 0x58], sil
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_391
.label_393:
	movss	xmm0, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x48], xmm0
	jmp	.label_389
.label_390:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	movss	xmm0, dword ptr [rax]
	movss	dword ptr [rbp - 0x48], xmm0
.label_389:
	mov	eax, 0x1f
	mov	esi, eax
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, 4
	mov	qword ptr [rbp - 0x30], rcx
	movss	xmm0, dword ptr [rbp - 0x48]
	mov	edx, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rbp, rbp
	call	ftoastr
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.94
	lea	rdx, [rbp - 0x80]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x44]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	mov	al, 0
	nop	
	call	xprintf
	mov	ecx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x88], eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	add	rax, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_388
.label_392:
	add	rsp, 0x90
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x406a20

	.globl print_double
	.type print_double, @function
print_double:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0xa0
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x30], rcx
	mov	rbp, rbp
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rcx
.label_398:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_396
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 1
	imul	rax, rcx
	xor	edx, edx
	mov	rbp, rbp
	div	qword ptr [rbp - 8]
	mov	esi, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40], esi
	mov	esi, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	sub	esi, dword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	esi, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44], esi
	nop	
	test	byte ptr [byte ptr [input_swap]],  1
	lea	rdi, [rdi]
	je	.label_399
	mov	qword ptr [rbp - 0x58], 0
.label_395:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x58], 8
	mov	rsp, rsp
	jae	.label_397
	mov	eax, 7
	mov	ecx, eax
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	sil, byte ptr [rdx + rcx]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x58]
	mov	byte ptr [rbp + rcx - 0x60], sil
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_395
.label_397:
	movsd	xmm0, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	movsd	qword ptr [rbp - 0x50], xmm0
	lea	rsi, [rsi]
	jmp	.label_394
.label_399:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	movsd	xmm0, qword ptr [rax]
	movsd	qword ptr [rbp - 0x50], xmm0
.label_394:
	lea	rsi, [rsi]
	mov	eax, 0x28
	lea	rsi, [rsi]
	mov	esi, eax
	mov	rbp, rbp
	xor	eax, eax
	nop	
	lea	rdi, [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rcx, 8
	nop	
	mov	qword ptr [rbp - 0x30], rcx
	lea	rdi, [rdi]
	movsd	xmm0, qword ptr [rbp - 0x50]
	mov	edx, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	call	dtoastr
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.94
	lea	rdx, [rbp - 0x90]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x94], eax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rdi, [rdi]
	call	xprintf
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], ecx
	mov	dword ptr [rbp - 0x98], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_398
.label_396:
	add	rsp, 0xa0
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406be0

	.globl print_long_double
	.type print_long_double, @function
print_long_double:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0xe0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], r8d
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_401:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	jae	.label_402
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 1
	imul	rax, rcx
	lea	rdi, [rdi]
	xor	edx, edx
	div	qword ptr [rbp - 8]
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	sub	esi, dword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	add	esi, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], esi
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [input_swap]],  1
	lea	rdi, [rdi]
	je	.label_405
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], 0
.label_403:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 0x10
	mov	rsp, rsp
	jae	.label_404
	mov	eax, 0xf
	mov	ecx, eax
	mov	rbp, rbp
	sub	rcx, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	sil, byte ptr [rdx + rcx]
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	byte ptr [rbp + rcx - 0x80], sil
	mov	rax, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_403
.label_404:
	mov	rsp, rsp
	fld	xword ptr [rbp - 0x80]
	mov	rbp, rbp
	fstp	xword ptr [rbp - 0x60]
	jmp	.label_400
.label_405:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	fld	xword ptr [rax]
	nop	
	fstp	xword ptr [rbp - 0x60]
.label_400:
	mov	eax, 0x2d
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	add	rdx, 0x10
	mov	qword ptr [rbp - 0x30], rdx
	mov	rsp, rsp
	lea	rdi, [rbp - 0xb0]
	lea	rdi, [rdi]
	fld	xword ptr [rbp - 0x60]
	mov	rdx, rsp
	fstp	xword ptr [rdx]
	mov	esi, 0x2d
	xor	r8d, r8d
	mov	edx, r8d
	mov	qword ptr [rbp - 0xb8], rcx
	mov	rbp, rbp
	mov	ecx, r8d
	mov	dword ptr [rbp - 0xbc], eax
	call	ldtoastr
	movabs	rdi, OFFSET FLAT:.str.94
	lea	rdx, [rbp - 0xb0]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc0], eax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rsi, [rsi]
	call	xprintf
	mov	ecx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], ecx
	mov	dword ptr [rbp - 0xc4], eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_401
.label_402:
	lea	rdi, [rdi]
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406dc0

	.globl print_named_ascii
	.type print_named_ascii, @function
print_named_ascii:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x28]
	nop	
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rcx
.label_411:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_410
	nop	
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	sub	rcx, 1
	imul	rax, rcx
	xor	edx, edx
	nop	
	div	qword ptr [rbp - 8]
	mov	esi, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x40], esi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rsp, rsp
	movzx	esi, byte ptr [rax]
	and	esi, 0x7f
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44], esi
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x44], 0x7f
	lea	rsi, [rsi]
	jne	.label_409
	movabs	rax, OFFSET FLAT:.str.95
	nop	
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_407
.label_409:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x44], 0x20
	jg	.label_406
	movabs	rax, OFFSET FLAT:charname
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x44]
	shl	rcx, 2
	add	rax, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_408
.label_406:
	lea	rax, [rbp - 0x52]
	mov	ecx, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	mov	dl, cl
	mov	byte ptr [rbp - 0x52], dl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x51], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
.label_408:
	jmp	.label_407
.label_407:
	movabs	rdi, OFFSET FLAT:.str.94
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x3c]
	nop	
	sub	eax, dword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x24]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	esi, eax
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	xprintf
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x40]
	nop	
	mov	dword ptr [rbp - 0x3c], esi
	mov	dword ptr [rbp - 0x58], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_411
.label_410:
	nop	
	add	rsp, 0x60
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406f40

	.globl print_ascii
	.type print_ascii, @function
print_ascii:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x80
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	nop	
	mov	dword ptr [rbp - 0x28], r9d
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	mov	r8d, dword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rcx
.label_415:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_416
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	dec	rcx
	imul	rax, rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	xor	edx, edx
	div	rcx
	mov	esi, eax
	mov	dword ptr [rbp - 0x40], esi
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, rax
	inc	rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rcx
	mov	dil, byte ptr [rax]
	mov	byte ptr [rbp - 0x41], dil
	mov	rsp, rsp
	movzx	esi, byte ptr [rbp - 0x41]
	mov	eax, esi
	nop	
	mov	rcx, rax
	lea	rdi, [rdi]
	sub	rcx, 0xd
	nop	
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rcx
	ja	.label_413
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_414]]
	jmp	rcx
.label_1024:
	movabs	rax, OFFSET FLAT:.str.96
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_412
.label_1025:
	movabs	rax, OFFSET FLAT:.str.97
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_412
.label_1026:
	movabs	rax, OFFSET FLAT:.str.98
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_412
.label_1030:
	nop	
	movabs	rax, OFFSET FLAT:.str.99
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_412
.label_1028:
	nop	
	movabs	rax, OFFSET FLAT:.str.100
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_412
.label_1031:
	nop	
	movabs	rax, OFFSET FLAT:.str.101
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_412
.label_1027:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.102
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_412
.label_1029:
	movabs	rax, OFFSET FLAT:.str.103
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_412
.label_413:
	lea	rdi, [rbp - 0x54]
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x41]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x70], rdi
	mov	qword ptr [rbp - 0x78], rcx
	lea	rdi, [rdi]
	call	__ctype_b_loc
	movabs	rcx, OFFSET FLAT:.str.105
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.104
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x78]
	nop	
	movzx	esi, word ptr [rax + rdx*2]
	and	esi, 0x4000
	cmp	esi, 0
	mov	rbp, rbp
	cmovne	rcx, rdi
	movzx	edx, byte ptr [rbp - 0x41]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, rcx
	mov	rsp, rsp
	mov	al, 0
	call	sprintf
	mov	rsp, rsp
	lea	rcx, [rbp - 0x54]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rcx
	mov	dword ptr [rbp - 0x7c], eax
.label_412:
	movabs	rdi, OFFSET FLAT:.str.94
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 0x40]
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x24]
	nop	
	mov	rdx, qword ptr [rbp - 0x50]
	nop	
	mov	esi, eax
	mov	al, 0
	nop	
	call	xprintf
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x3c], esi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x80], eax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_415
.label_416:
	add	rsp, 0x80
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4071b0

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rdi + 0x18]
	lea	rdi, [rdi]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	nop	
	mov	byte ptr [rbp - 9], al
	mov	rbp, rbp
	je	.label_417
	mov	rbp, rbp
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	edx, dword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	and	edx, 0xf000
	cmp	edx, 0xa000
	mov	byte ptr [rbp - 9], al
	je	.label_417
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	sub	edx, dword ptr [rcx + 0x18]
	cmp	edx, 0
	mov	byte ptr [rbp - 9], al
	mov	rsp, rsp
	jne	.label_417
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	byte ptr [rbp - 9], cl
	jmp	.label_417
.label_417:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x407260

	.globl check_and_close
	.type check_and_close, @function
check_and_close:
	mov	rsp, rsp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], 1
	mov	rsp, rsp
	cmp	qword ptr [word ptr [in_stream]],  0
	je	.label_422
	mov	rdi,  qword ptr [word ptr [in_stream]]
	lea	rdi, [rdi]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_421
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.112
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], esi
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	mov	rdx,  qword ptr [word ptr [input_filename]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
	nop	
	mov	rcx,  qword ptr [word ptr [file_list]]
	nop	
	mov	rdi, qword ptr [rcx - 8]
	nop	
	mov	esi, OFFSET FLAT:.str.109
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_419
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [in_stream]]
	call	rpl_fclose
	mov	dword ptr [rbp - 0x1c], eax
.label_419:
	mov	byte ptr [rbp - 5], 0
	lea	rdi, [rdi]
	jmp	.label_420
.label_421:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [file_list]]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax - 8]
	mov	ecx, OFFSET FLAT:.str.109
	mov	rbp, rbp
	mov	esi, ecx
	mov	rsp, rsp
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_418
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [in_stream]]
	call	rpl_fclose
	cmp	eax, 0
	je	.label_418
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, 3
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [input_filename]]
	mov	dword ptr [rbp - 0x20], ecx
	mov	rsp, rsp
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_1
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x20]
	nop	
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 5], 0
.label_418:
	jmp	.label_420
.label_420:
	mov	qword ptr [word ptr [in_stream]],  0
.label_422:
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_423
	movabs	rdi, OFFSET FLAT:.str_2
	nop	
	call	gettext
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 5], 0
.label_423:
	mov	al, byte ptr [rbp - 5]
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	nop	
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x407450

	.globl lcm
	.type lcm, @function
lcm:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	call	gcd
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, rcx
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	div	rsi
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	imul	rdi, rax
	mov	rax, rdi
	mov	rsp, rsp
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4074e0

	.globl gcd
	.type gcd, @function
gcd:
	mov	rsp, rsp
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
.label_424:
	mov	rax, qword ptr [rbp - 8]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	div	qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rdx
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	jne	.label_424
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407540

	.globl read_char
	.type read_char, @function
read_char:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], 1
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dword ptr [rdi], 0xffffffff
.label_426:
	cmp	qword ptr [word ptr [in_stream]],  0
	nop	
	je	.label_425
	mov	rdi,  qword ptr [word ptr [in_stream]]
	lea	rdi, [rdi]
	call	fgetc
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi], eax
	mov	rdi, qword ptr [rbp - 8]
	cmp	dword ptr [rdi], -1
	lea	rsi, [rsi]
	je	.label_427
	lea	rsi, [rsi]
	jmp	.label_425
.label_427:
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	edi, dword ptr [rax]
	mov	rsp, rsp
	call	check_and_close
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	movzx	edi, al
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	and	ecx, edi
	cmp	ecx, 0
	nop	
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 9], al
	call	open_next_file
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	mov	al, byte ptr [rbp - 9]
	nop	
	and	al, 1
	movzx	edi, al
	nop	
	and	edi, ecx
	mov	rbp, rbp
	cmp	edi, 0
	setne	al
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 9], al
	jmp	.label_426
.label_425:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 9]
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407630

	.globl read_block
	.type read_block, @function
read_block:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	byte ptr [rbp - 0x19], 1
	cmp	rcx, qword ptr [rbp - 8]
	jae	.label_430
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	rax,  qword ptr [word ptr [bytes_per_block]]
	ja	.label_430
	mov	rbp, rbp
	jmp	.label_431
.label_430:
	movabs	rdi, OFFSET FLAT:.str.115
	movabs	rsi, OFFSET FLAT:.str.76
	mov	edx, 0x508
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.read_block
	call	__assert_fail
.label_431:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rax], 0
.label_429:
	mov	rbp, rbp
	cmp	qword ptr [word ptr [in_stream]],  0
	je	.label_428
	lea	rsi, [rsi]
	mov	eax, 1
	mov	esi, eax
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	add	rcx, qword ptr [rdx]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdi,  qword ptr [word ptr [in_stream]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	call	fread_unlocked
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_432
	jmp	.label_428
.label_432:
	lea	rdi, [rdi]
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	rbp, rbp
	call	check_and_close
	mov	rbp, rbp
	and	al, 1
	movzx	edi, al
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	lea	rsi, [rsi]
	and	ecx, edi
	cmp	ecx, 0
	setne	al
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], al
	call	open_next_file
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	and	al, 1
	movzx	edi, al
	lea	rsi, [rsi]
	and	edi, ecx
	lea	rsi, [rsi]
	cmp	edi, 0
	mov	rbp, rbp
	setne	al
	nop	
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x19], al
	jmp	.label_429
.label_428:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4077e0

	.globl write_block
	.type write_block, @function
write_block:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	test	byte ptr [byte ptr [abbreviate_duplicate_blocks]],  1
	je	.label_434
	mov	rbp, rbp
	test	byte ptr [byte ptr [write_block.first]],  1
	lea	rsi, [rsi]
	jne	.label_434
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax,  qword ptr [word ptr [bytes_per_block]]
	lea	rsi, [rsi]
	jne	.label_434
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [bytes_per_block]]
	lea	rdi, [rdi]
	call	memcmp
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_434
	test	byte ptr [byte ptr [write_block.prev_pair_equal]],  1
	je	.label_437
	nop	
	jmp	.label_439
.label_437:
	movabs	rdi, OFFSET FLAT:.str.116
	nop	
	mov	al, 0
	call	printf
	mov	byte ptr [byte ptr [write_block.prev_pair_equal]],  1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x40], eax
.label_439:
	jmp	.label_435
.label_434:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [write_block.prev_pair_equal]],  0
	mov	qword ptr [rbp - 0x28], 0
.label_433:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax,  qword ptr [word ptr [n_specs]]
	jae	.label_438
	mov	rax, qword ptr [rbp - 0x28]
	imul	rax, rax, 0x28
	mov	rsp, rsp
	add	rax,  qword ptr [word ptr [spec]]
	mov	ecx, dword ptr [rax + 4]
	mov	rbp, rbp
	mov	eax, ecx
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + width_bytes]]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], ecx
	nop	
	mov	rax,  qword ptr [word ptr [bytes_per_block]]
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x2c]
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x48], rdx
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x48]
	div	rsi
	mov	ecx, eax
	nop	
	mov	dword ptr [rbp - 0x30], ecx
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [bytes_per_block]]
	sub	rax, qword ptr [rbp - 0x10]
	movsxd	rdi, dword ptr [rbp - 0x2c]
	nop	
	xor	ecx, ecx
	mov	edx, ecx
	div	rdi
	mov	rbp, rbp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x34], ecx
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_441
	xor	esi, esi
	mov	rax,  qword ptr [word ptr [format_address]]
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	rax
	jmp	.label_436
.label_441:
	movabs	rdi, OFFSET FLAT:.str.94
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_0
	nop	
	mov	esi,  dword ptr [dword ptr [address_pad_len]]
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	printf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], eax
.label_436:
	mov	rax, qword ptr [rbp - 0x28]
	imul	rax, rax, 0x28
	mov	rbp, rbp
	add	rax,  qword ptr [word ptr [spec]]
	mov	rax, qword ptr [rax + 8]
	movsxd	rdi, dword ptr [rbp - 0x30]
	movsxd	rsi, dword ptr [rbp - 0x34]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	imul	rcx, rcx, 0x28
	add	rcx,  qword ptr [word ptr [spec]]
	mov	rbp, rbp
	add	rcx, 0x10
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x28]
	imul	r8, r8, 0x28
	add	r8,  qword ptr [word ptr [spec]]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [r8 + 0x1c]
	lea	rdi, [rdi]
	mov	r9, qword ptr [rbp - 0x28]
	imul	r9, r9, 0x28
	lea	rsi, [rsi]
	add	r9,  qword ptr [word ptr [spec]]
	nop	
	mov	r9d, dword ptr [r9 + 0x20]
	call	rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	mov	rsp, rsp
	test	byte ptr [rax + 0x18], 1
	mov	rsp, rsp
	je	.label_440
	movabs	rdi, OFFSET FLAT:.str.94
	movabs	rdx, OFFSET FLAT:.str_0
	mov	rax, qword ptr [rbp - 0x28]
	imul	rax, rax, 0x28
	mov	rbp, rbp
	add	rax,  qword ptr [word ptr [spec]]
	mov	ecx, dword ptr [rax + 0x1c]
	mov	dword ptr [rbp - 0x38], ecx
	mov	rax, qword ptr [rbp - 0x28]
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x20]
	imul	ecx, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	eax, ecx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rdx
	mov	rsp, rsp
	cdq	
	idiv	dword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	mov	eax, dword ptr [rbp - 0x34]
	imul	eax, dword ptr [rbp - 0x38]
	add	eax, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	mov	esi, eax
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rdx, r8
	mov	rsp, rsp
	mov	al, 0
	call	printf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	call	dump_hexl_mode_trailer
.label_440:
	mov	rbp, rbp
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x60], eax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_433
.label_438:
	jmp	.label_435
.label_435:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [write_block.first]],  0
	add	rsp, 0x60
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x407b00

	.globl dump_hexl_mode_trailer
	.type dump_hexl_mode_trailer, @function
dump_hexl_mode_trailer:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.117
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x20], eax
.label_442:
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jbe	.label_445
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x19], dl
	movzx	esi, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	movsxd	rax, esi
	mov	qword ptr [rbp - 0x28], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	movzx	esi, word ptr [rax + rcx*2]
	and	esi, 0x4000
	nop	
	cmp	esi, 0
	je	.label_443
	movzx	eax, byte ptr [rbp - 0x19]
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_444
.label_443:
	mov	rbp, rbp
	mov	eax, 0x2e
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_444
.label_444:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	cl, al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1a], cl
	nop	
	movzx	edi, byte ptr [rbp - 0x1a]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x30], eax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_442
.label_445:
	mov	edi, 0x3c
	lea	rsi, [rsi]
	call	putchar_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407c00

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x407c20

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], -1
	mov	byte ptr [rbp - 0x41], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x30], 0
.label_446:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_456
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	call	strncmp
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_453
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	jne	.label_447
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_449
.label_447:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_454
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_452
.label_454:
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_448
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x40]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	imul	rdx, qword ptr [rbp - 0x30]
	add	rcx, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rdi, rax
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	memcmp
	cmp	eax, 0
	je	.label_450
.label_448:
	nop	
	mov	byte ptr [rbp - 0x41], 1
.label_450:
	lea	rsi, [rsi]
	jmp	.label_452
.label_452:
	mov	rbp, rbp
	jmp	.label_455
.label_455:
	mov	rsp, rsp
	jmp	.label_453
.label_453:
	nop	
	jmp	.label_457
.label_457:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_446
.label_456:
	test	byte ptr [rbp - 0x41], 1
	je	.label_451
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], -2
	jmp	.label_449
.label_451:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_449:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x50
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407dd0

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], -1
	jne	.label_458
	movabs	rdi, OFFSET FLAT:.str_3
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	nop	
	jmp	.label_459
.label_458:
	nop	
	movabs	rdi, OFFSET FLAT:.str.1_0
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_459:
	mov	rax, qword ptr [rbp - 0x28]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	call	quotearg_n_style
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	call	quote_n
	xor	edi, edi
	mov	dword ptr [rbp - 0x3c], edi
	nop	
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	r8, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rbp, rbp
	call	error
	lea	rsi, [rsi]
	add	rsp, 0x40
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x407eb0

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	nop	
	movabs	rax, OFFSET FLAT:.str.2_0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	mov	rdi, rax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	qword ptr [rbp - 0x20], 0
	mov	dword ptr [rbp - 0x2c], eax
.label_461:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rax*8], 0
	lea	rsi, [rsi]
	je	.label_463
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_460
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	imul	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	memcmp
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_465
.label_460:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdi
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	quote
	movabs	rsi, OFFSET FLAT:.str.3_0
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	imul	rdx, qword ptr [rbp - 0x20]
	add	rcx, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_462
.label_465:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rdi
	lea	rsi, [rsi]
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:.str.4_0
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], eax
.label_462:
	jmp	.label_464
.label_464:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_461
.label_463:
	mov	rbp, rbp
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x50], eax
	mov	rsp, rsp
	add	rsp, 0x50
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x408060

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], r9
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	call	argmatch
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x40], 0
	jl	.label_466
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_467
.label_466:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	call	argmatch_invalid
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	call	argmatch_valid
	mov	rsp, rsp
	call	qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], -1
.label_467:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408120
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], 0
.label_470:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	je	.label_472
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	imul	rcx, qword ptr [rbp - 0x30]
	nop	
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rsp, rsp
	call	memcmp
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_469
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_468
.label_469:
	lea	rdi, [rdi]
	jmp	.label_471
.label_471:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_470
.label_472:
	nop	
	mov	qword ptr [rbp - 8], 0
.label_468:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4081f0
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
	#Procedure 0x408220
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
	#Procedure 0x408250

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
	je	.label_473
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_477
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_473
.label_477:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_2
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_476
	nop	
	call	__errno_location
	nop	
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str.1_1
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_475
.label_476:
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_475:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_473:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_474
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_474:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x408380

	.globl dtoastr
	.type dtoastr, @function
dtoastr:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	lea	rdi, [rdi]
	xorps	xmm1, xmm1
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], ecx
	movsd	qword ptr [rbp - 0x20], xmm0
	movsd	xmm0, qword ptr [rbp - 0x20]
	nop	
	movsd	qword ptr [rbp - 0x28], xmm0
	ucomisd	xmm1, qword ptr [rbp - 0x20]
	jbe	.label_478
	lea	rsi, [rsi]
	movsd	xmm0, qword ptr [rbp - 0x20]
	movq	rax, xmm0
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	lea	rdi, [rdi]
	movq	xmm0, rax
	movsd	qword ptr [rbp - 0x60], xmm0
	mov	rbp, rbp
	jmp	.label_480
.label_478:
	nop	
	movsd	xmm0, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	movsd	qword ptr [rbp - 0x60], xmm0
.label_480:
	movsd	xmm0, qword ptr [rbp - 0x60]
	movsd	xmm1,  qword ptr [word ptr [label_479]]
	mov	eax, 0xf
	mov	ecx, 1
	mov	edx, 0x67
	mov	rsp, rsp
	mov	esi, 0x47
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x33]
	mov	rbp, rbp
	movsd	qword ptr [rbp - 0x40], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, qword ptr [rbp - 0x50]
	mov	r8, rdi
	add	r8, 1
	nop	
	mov	qword ptr [rbp - 0x50], r8
	nop	
	mov	byte ptr [rdi], 0x25
	nop	
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	byte ptr [rdi], 0x2d
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 1
	cmp	r9d, 0
	setne	r10b
	and	r10b, 1
	mov	rbp, rbp
	movzx	r9d, r10b
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x50]
	movsxd	r8, r9d
	mov	rbp, rbp
	add	rdi, r8
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, qword ptr [rbp - 0x50]
	nop	
	mov	byte ptr [rdi], 0x2b
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 2
	cmp	r9d, 0
	setne	r10b
	lea	rdi, [rdi]
	and	r10b, 1
	movzx	r9d, r10b
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	movsxd	r8, r9d
	add	rdi, r8
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, qword ptr [rbp - 0x50]
	mov	byte ptr [rdi], 0x20
	mov	r9d, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	and	r9d, 4
	cmp	r9d, 0
	lea	rsi, [rsi]
	setne	r10b
	and	r10b, 1
	movzx	r9d, r10b
	mov	rdi, qword ptr [rbp - 0x50]
	movsxd	r8, r9d
	add	rdi, r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x50]
	mov	byte ptr [rdi], 0x30
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 8
	cmp	r9d, 0
	lea	rdi, [rdi]
	setne	r10b
	and	r10b, 1
	movzx	r9d, r10b
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x50]
	movsxd	r8, r9d
	lea	rsi, [rsi]
	add	rdi, r8
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, qword ptr [rbp - 0x50]
	mov	r8, rdi
	add	r8, 1
	mov	qword ptr [rbp - 0x50], r8
	lea	rdi, [rdi]
	mov	byte ptr [rdi], 0x2a
	mov	rdi, qword ptr [rbp - 0x50]
	mov	r8, rdi
	nop	
	add	r8, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], r8
	mov	byte ptr [rdi], 0x2e
	mov	rdi, qword ptr [rbp - 0x50]
	mov	r8, rdi
	add	r8, 1
	mov	qword ptr [rbp - 0x50], r8
	mov	rbp, rbp
	mov	byte ptr [rdi], 0x2a
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	byte ptr [rdi], 0x4c
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x50], rdi
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 0x10
	nop	
	cmp	r9d, 0
	lea	rdi, [rdi]
	cmovne	edx, esi
	mov	r10b, dl
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x50]
	nop	
	mov	r8, rdi
	add	r8, 1
	nop	
	mov	qword ptr [rbp - 0x50], r8
	mov	byte ptr [rdi], r10b
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	byte ptr [rdi], 0
	ucomisd	xmm1, qword ptr [rbp - 0x40]
	cmova	eax, ecx
	mov	dword ptr [rbp - 0x44], eax
.label_484:
	lea	rdx, [rbp - 0x33]
	nop	
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x18]
	nop	
	mov	r8d, dword ptr [rbp - 0x44]
	movsd	xmm0, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	al, 1
	nop	
	call	snprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 0
	jl	.label_482
	mov	eax, 0x11
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x44]
	mov	rbp, rbp
	jle	.label_482
	nop	
	movsxd	rax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	jae	.label_481
	xor	eax, eax
	mov	esi, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	strtod
	lea	rsi, [rsi]
	ucomisd	xmm0, qword ptr [rbp - 0x20]
	jne	.label_481
	jp	.label_481
.label_482:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54]
	add	rsp, 0x60
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
.label_481:
	jmp	.label_483
.label_483:
	mov	eax, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_484
	.section	.text
	.align	16
	#Procedure 0x408680

	.globl ftoastr
	.type ftoastr, @function
ftoastr:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rsp, rsp
	xorps	xmm1, xmm1
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], ecx
	lea	rdi, [rdi]
	movss	dword ptr [rbp - 0x1c], xmm0
	mov	rbp, rbp
	cvtss2sd	xmm0, dword ptr [rbp - 0x1c]
	movsd	qword ptr [rbp - 0x28], xmm0
	ucomiss	xmm1, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	jbe	.label_485
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x1c]
	movd	eax, xmm0
	xor	eax, 0x80000000
	lea	rdi, [rdi]
	movd	xmm0, eax
	movss	dword ptr [rbp - 0x50], xmm0
	jmp	.label_489
.label_485:
	movss	xmm0, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x50], xmm0
.label_489:
	lea	rdi, [rdi]
	movss	xmm0, dword ptr [rbp - 0x50]
	movss	xmm1,  dword ptr [dword ptr [label_486]]
	nop	
	mov	eax, 6
	lea	rsi, [rsi]
	mov	ecx, 1
	mov	edx, 0x67
	mov	esi, 0x47
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x33]
	movss	dword ptr [rbp - 0x38], xmm0
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, qword ptr [rbp - 0x48]
	mov	r8, rdi
	add	r8, 1
	nop	
	mov	qword ptr [rbp - 0x48], r8
	mov	byte ptr [rdi], 0x25
	mov	rdi, qword ptr [rbp - 0x48]
	mov	byte ptr [rdi], 0x2d
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 1
	cmp	r9d, 0
	lea	rsi, [rsi]
	setne	r10b
	mov	rsp, rsp
	and	r10b, 1
	mov	rbp, rbp
	movzx	r9d, r10b
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	movsxd	r8, r9d
	nop	
	add	rdi, r8
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	byte ptr [rdi], 0x2b
	mov	r9d, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	and	r9d, 2
	cmp	r9d, 0
	setne	r10b
	mov	rsp, rsp
	and	r10b, 1
	mov	rsp, rsp
	movzx	r9d, r10b
	mov	rdi, qword ptr [rbp - 0x48]
	movsxd	r8, r9d
	add	rdi, r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	byte ptr [rdi], 0x20
	mov	rsp, rsp
	mov	r9d, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	and	r9d, 4
	nop	
	cmp	r9d, 0
	setne	r10b
	and	r10b, 1
	movzx	r9d, r10b
	mov	rdi, qword ptr [rbp - 0x48]
	movsxd	r8, r9d
	mov	rbp, rbp
	add	rdi, r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	byte ptr [rdi], 0x30
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 8
	cmp	r9d, 0
	lea	rdi, [rdi]
	setne	r10b
	lea	rsi, [rsi]
	and	r10b, 1
	movzx	r9d, r10b
	mov	rdi, qword ptr [rbp - 0x48]
	movsxd	r8, r9d
	add	rdi, r8
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	r8, rdi
	mov	rbp, rbp
	add	r8, 1
	mov	qword ptr [rbp - 0x48], r8
	mov	rbp, rbp
	mov	byte ptr [rdi], 0x2a
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	mov	r8, rdi
	add	r8, 1
	mov	qword ptr [rbp - 0x48], r8
	nop	
	mov	byte ptr [rdi], 0x2e
	mov	rdi, qword ptr [rbp - 0x48]
	mov	r8, rdi
	mov	rsp, rsp
	add	r8, 1
	mov	qword ptr [rbp - 0x48], r8
	mov	byte ptr [rdi], 0x2a
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	byte ptr [rdi], 0x4c
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rdi
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 0x10
	mov	rbp, rbp
	cmp	r9d, 0
	mov	rsp, rsp
	cmovne	edx, esi
	nop	
	mov	r10b, dl
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	r8, rdi
	lea	rdi, [rdi]
	add	r8, 1
	mov	qword ptr [rbp - 0x48], r8
	lea	rdi, [rdi]
	mov	byte ptr [rdi], r10b
	mov	rdi, qword ptr [rbp - 0x48]
	mov	byte ptr [rdi], 0
	ucomiss	xmm1, dword ptr [rbp - 0x38]
	cmova	eax, ecx
	mov	dword ptr [rbp - 0x3c], eax
.label_491:
	lea	rdx, [rbp - 0x33]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	movsd	xmm0, qword ptr [rbp - 0x28]
	mov	al, 1
	lea	rsi, [rsi]
	call	snprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	jl	.label_488
	mov	eax, 9
	cmp	eax, dword ptr [rbp - 0x3c]
	jle	.label_488
	movsxd	rax, dword ptr [rbp - 0x4c]
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	jae	.label_487
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	call	strtof
	ucomiss	xmm0, dword ptr [rbp - 0x1c]
	jne	.label_487
	jp	.label_487
.label_488:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x4c]
	lea	rdi, [rdi]
	add	rsp, 0x50
	pop	rbp
	ret	
.label_487:
	mov	rbp, rbp
	jmp	.label_490
.label_490:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_491
	.section	.text
	.align	16
	#Procedure 0x408990

	.globl ldtoastr
	.type ldtoastr, @function
ldtoastr:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0xb0
	mov	rsp, rsp
	fld	xword ptr [rbp + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], ecx
	fld	st(0)
	mov	rsp, rsp
	fstp	xword ptr [rbp - 0x30]
	mov	rsp, rsp
	fstp	xword ptr [rbp - 0x40]
	nop	
	fld	xword ptr [rbp - 0x30]
	nop	
	fldz	
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_495
	jmp	.label_498
.label_498:
	mov	rsp, rsp
	fld	xword ptr [rbp - 0x30]
	fchs	
	fstp	xword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	jmp	.label_500
.label_495:
	fld	xword ptr [rbp - 0x30]
	mov	rsp, rsp
	fstp	xword ptr [rbp - 0x80]
.label_500:
	fld	xword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	fstp	xword ptr [rbp - 0x60]
	lea	rax, [rbp - 0x4b]
	mov	qword ptr [rbp - 0x70], rax
	lea	rax, [rbp - 0x4a]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rax
	mov	byte ptr [rbp - 0x4b], 0x25
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	byte ptr [rax], 0x2d
	mov	ecx, dword ptr [rbp - 0x14]
	mov	eax, ecx
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	and	ecx, 1
	mov	eax, ecx
	mov	rbp, rbp
	mov	rsi, rdx
	lea	rsi, [rsi]
	add	rsi, rax
	mov	qword ptr [rbp - 0x70], rsi
	mov	byte ptr [rdx + rax], 0x2b
	mov	ecx, dword ptr [rbp - 0x14]
	and	ecx, 2
	mov	rsp, rsp
	shr	ecx, 1
	mov	rax, qword ptr [rbp - 0x70]
	mov	edx, ecx
	mov	rbp, rbp
	mov	rsi, rax
	lea	rdi, [rdi]
	add	rsi, rdx
	mov	qword ptr [rbp - 0x70], rsi
	mov	byte ptr [rax + rdx], 0x20
	mov	ecx, dword ptr [rbp - 0x14]
	and	ecx, 4
	shr	ecx, 2
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rsi, rax
	add	rsi, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rsi
	mov	rsp, rsp
	mov	byte ptr [rax + rdx], 0x30
	mov	ecx, dword ptr [rbp - 0x14]
	nop	
	and	ecx, 8
	nop	
	shr	ecx, 3
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	edx, ecx
	mov	rbp, rbp
	mov	rsi, rax
	add	rsi, rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rsi
	lea	rsi, [rax + rdx + 1]
	mov	qword ptr [rbp - 0x70], rsi
	mov	rsp, rsp
	mov	byte ptr [rax + rdx], 0x2a
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdx, rax
	lea	rsi, [rsi]
	inc	rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rdx
	mov	byte ptr [rax], 0x2e
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdx, rax
	inc	rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rdx
	mov	byte ptr [rax], 0x2a
	mov	rax, qword ptr [rbp - 0x70]
	mov	byte ptr [rax], 0x4c
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdx, rax
	lea	rsi, [rsi]
	inc	rdx
	mov	qword ptr [rbp - 0x70], rdx
	mov	ecx, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	mov	dil, cl
	nop	
	test	dil, 0x10
	mov	dil, 0x47
	nop	
	mov	r8b, 0x67
	mov	qword ptr [rbp - 0x88], rax
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x89], r8b
	mov	byte ptr [rbp - 0x8a], dil
	nop	
	jne	.label_497
	mov	al, byte ptr [rbp - 0x89]
	mov	byte ptr [rbp - 0x8a], al
.label_497:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x8a]
	mov	rcx, qword ptr [rbp - 0x88]
	add	rcx, 2
	mov	qword ptr [rbp - 0x70], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	byte ptr [rcx + 1], al
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	byte ptr [rdx], 0
	nop	
	fld	xword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	fld	xword ptr [word ptr [rip + label_494]]
	fucomip	st(1)
	mov	rsp, rsp
	fstp	st(0)
	mov	esi, 1
	lea	rdi, [rdi]
	mov	edi, 0x12
	lea	rdi, [rdi]
	cmova	edi, esi
	mov	dword ptr [rbp - 0x64], edi
.label_499:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdx, [rbp - 0x4b]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rbp - 0x64]
	fld	xword ptr [rbp - 0x40]
	mov	rax, rsp
	fstp	xword ptr [rax]
	nop	
	xor	r9d, r9d
	mov	rsp, rsp
	mov	r10b, r9b
	nop	
	mov	al, r10b
	lea	rdi, [rdi]
	call	snprintf
	mov	dword ptr [rbp - 0x74], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x74], 0
	mov	rsp, rsp
	jl	.label_492
	nop	
	mov	eax, 0x15
	cmp	eax, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	jle	.label_492
	movsxd	rax, dword ptr [rbp - 0x74]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	jae	.label_493
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, eax
	call	strtold
	nop	
	fld	st(0)
	fld	xword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	fxch	st(2)
	lea	rsi, [rsi]
	fucomip	st(2)
	fstp	st(1)
	mov	rsp, rsp
	fstp	xword ptr [rbp - 0x94]
	jne	.label_493
	lea	rsi, [rsi]
	jnp	.label_492
	jmp	.label_493
.label_492:
	mov	eax, dword ptr [rbp - 0x74]
	mov	rbp, rbp
	add	rsp, 0xb0
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_493:
	mov	rsp, rsp
	jmp	.label_496
.label_496:
	mov	eax, dword ptr [rbp - 0x64]
	nop	
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x64], eax
	jmp	.label_499
	.section	.text
	.align	16
	#Procedure 0x408c90

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	jne	.label_503
	movabs	rdi, OFFSET FLAT:.str_4
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	call	abort
.label_503:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_501
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_505
.label_501:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_505:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	sub	rax, rcx
	nop	
	cmp	rax, 7
	jl	.label_504
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_2
	mov	rsp, rsp
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rcx, -7
	lea	rdi, [rdi]
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_504
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.2_1
	lea	rsi, [rsi]
	mov	eax, 3
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_502
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_502:
	jmp	.label_504
.label_504:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408e10
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	nop
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], ecx
	cmp	qword ptr [rbp - 8], 0
	je	.label_506
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_507
.label_506:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_507
.label_507:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, 0x38
	lea	rsi, [rsi]
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rdi, rax
	call	xmemdup
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], ecx
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	dword ptr [rax], ecx
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408ec0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_508
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_509
.label_508:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_509
.label_509:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408f20
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], esi
	mov	esi, dword ptr [rbp - 0xc]
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], esi
	je	.label_510
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_511
.label_510:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_511
.label_511:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408f80

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	al, sil
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], edx
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 9]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11], al
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	je	.label_512
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_513
.label_512:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_513
.label_513:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rax, 8
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	rbp, rbp
	mov	edx, ecx
	shr	rdx, 5
	mov	rbp, rbp
	shl	rdx, 2
	mov	rsp, rsp
	add	rax, rdx
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	eax, ecx
	lea	rdi, [rdi]
	and	rax, 0x1f
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x34], ecx
	nop	
	mov	ecx, esi
	nop	
	mov	esi, dword ptr [rbp - 0x34]
	shr	esi, cl
	mov	rbp, rbp
	and	esi, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], esi
	mov	esi, dword ptr [rbp - 0x10]
	and	esi, 1
	lea	rsi, [rsi]
	xor	esi, dword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rbp - 0x24]
	nop	
	shl	esi, cl
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	xor	esi, dword ptr [rax]
	mov	dword ptr [rax], esi
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x28]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409080
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	jne	.label_514
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_514:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 4]
	nop	
	mov	dword ptr [rbp - 0x10], ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dword ptr [rax + 4], ecx
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4090e0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 8], 0
	nop	
	jne	.label_515
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_515:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_517
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_516
.label_517:
	call	abort
.label_516:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409180
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], r8
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_518
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_519
.label_518:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_519
.label_519:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	r11, qword ptr [r11 + 0x30]
	nop	
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	r8d, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], r8d
	mov	rbp, rbp
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x4c]
	mov	dword ptr [rax], r8d
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409280

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	mov	rbp, rsp
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x158
	mov	rax, qword ptr [rbp + 0x20]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp + 0x18]
	nop	
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], r8d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x38], r9d
	mov	qword ptr [rbp - 0x40], r11
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], r10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x70], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0x79], 0
	mov	rbp, rbp
	call	__ctype_get_mb_cur_max
	mov	rbp, rbp
	cmp	rax, 1
	nop	
	sete	bl
	and	bl, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7a], bl
	mov	r8d, dword ptr [rbp - 0x38]
	and	r8d, 2
	mov	rsp, rsp
	cmp	r8d, 0
	setne	bl
	and	bl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7b], bl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x7c], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7d], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7e], 1
.label_630:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_688
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_691]]
	jmp	rcx
.label_992:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_991:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_696
	jmp	.label_700
.label_700:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_568
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_568:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_696
.label_696:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_565
.label_993:
	nop	
	mov	byte ptr [rbp - 0x79], 1
	nop	
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_565
.label_994:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_521
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.11_0
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	call	gettext_quote
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_521:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_534
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_553:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_542
	jmp	.label_544
.label_544:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_546
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_546:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_549
.label_549:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_553
.label_542:
	mov	rbp, rbp
	jmp	.label_534
.label_534:
	mov	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x70]
	nop	
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	jmp	.label_565
.label_989:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x79], 1
.label_988:
	mov	byte ptr [rbp - 0x7b], 1
.label_990:
	nop	
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_572
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
.label_572:
	jmp	.label_670
.label_670:
	mov	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_577
	jmp	.label_582
.label_582:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_705
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_705:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_577
.label_577:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	mov	rsp, rsp
	jmp	.label_565
.label_987:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_565
.label_688:
	call	abort
.label_565:
	mov	qword ptr [rbp - 0x58], 0
.label_667:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_606
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	nop	
	movzx	edx, sil
	nop	
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_607
.label_606:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], edx
.label_607:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_622
	mov	rbp, rbp
	jmp	.label_634
.label_622:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x81], 0
	nop	
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_563
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	je	.label_563
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_563
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	lea	rsi, [rsi]
	jne	.label_656
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_656
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_662
.label_656:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_662:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_563
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_563
	nop	
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	je	.label_680
	jmp	.label_532
.label_680:
	nop	
	mov	byte ptr [rbp - 0x81], 1
.label_563:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7f], dl
	movzx	esi, byte ptr [rbp - 0x7f]
	lea	rdi, [rdi]
	mov	eax, esi
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	sub	rcx, 0x7e
	mov	qword ptr [rbp - 0xf0], rax
	mov	qword ptr [rbp - 0xf8], rcx
	ja	.label_683
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_692]]
	nop	
	jmp	rcx
.label_1009:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	je	.label_694
	mov	rsp, rsp
	jmp	.label_698
.label_698:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_703
	jmp	.label_532
.label_703:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x82], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_623
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7c], 1
	mov	rbp, rbp
	jne	.label_623
	nop	
	jmp	.label_710
.label_710:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_711
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_711:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_520
.label_520:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_524
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_524:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_531
.label_531:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_540
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_540:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_623:
	lea	rsi, [rsi]
	jmp	.label_681
.label_681:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_548
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_548:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_551
.label_551:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_556
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_556
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_556
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_556
	nop	
	jmp	.label_575
.label_575:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_576
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_576:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_583
.label_583:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_588
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_588:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_556
.label_556:
	mov	byte ptr [rbp - 0x7f], 0x30
	nop	
	jmp	.label_600
.label_694:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x38]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_602
	mov	rbp, rbp
	jmp	.label_573
.label_602:
	jmp	.label_600
.label_600:
	jmp	.label_539
.label_1020:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	nop	
	mov	dword ptr [rbp - 0x100], ecx
	mov	rsp, rsp
	je	.label_608
	mov	rbp, rbp
	jmp	.label_613
.label_613:
	mov	eax, dword ptr [rbp - 0xfc]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x104], eax
	lea	rsi, [rsi]
	je	.label_663
	jmp	.label_624
.label_608:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_627
	jmp	.label_532
.label_627:
	jmp	.label_537
.label_663:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_533
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jae	.label_533
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_533
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rax + rcx + 2]
	nop	
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	lea	rdi, [rdi]
	je	.label_659
	nop	
	jmp	.label_707
.label_707:
	nop	
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	mov	rsp, rsp
	jb	.label_659
	jmp	.label_665
.label_665:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x108]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	mov	rsp, rsp
	je	.label_659
	jmp	.label_668
.label_668:
	mov	eax, dword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x118], eax
	je	.label_659
	jmp	.label_629
.label_629:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	lea	rdi, [rdi]
	ja	.label_636
	jmp	.label_659
.label_659:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_715
	jmp	.label_532
.label_715:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_686
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_686:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_695
.label_695:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_702
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_702:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_708
.label_708:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_709
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_709:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_719
.label_719:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_628
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_628:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_528
.label_636:
	jmp	.label_528
.label_528:
	jmp	.label_533
.label_533:
	jmp	.label_537
.label_624:
	jmp	.label_537
.label_537:
	jmp	.label_539
.label_1010:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_541
.label_1011:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_541
.label_1015:
	mov	byte ptr [rbp - 0x80], 0x66
	lea	rdi, [rdi]
	jmp	.label_541
.label_1013:
	mov	byte ptr [rbp - 0x80], 0x6e
	mov	rbp, rbp
	jmp	.label_547
.label_1016:
	mov	byte ptr [rbp - 0x80], 0x72
	mov	rbp, rbp
	jmp	.label_547
.label_1012:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_547
.label_1014:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_541
.label_1021:
	mov	al, byte ptr [rbp - 0x7f]
	nop	
	mov	byte ptr [rbp - 0x80], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_718
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_552
	nop	
	jmp	.label_532
.label_552:
	lea	rsi, [rsi]
	jmp	.label_526
.label_718:
	test	byte ptr [rbp - 0x79], 1
	je	.label_560
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_560
	nop	
	cmp	qword ptr [rbp - 0x78], 0
	mov	rbp, rbp
	je	.label_560
	jmp	.label_526
.label_560:
	jmp	.label_547
.label_547:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	jne	.label_570
	test	byte ptr [rbp - 0x7b], 1
	je	.label_570
	jmp	.label_532
.label_570:
	mov	rsp, rsp
	jmp	.label_541
.label_541:
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_579
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_581
.label_579:
	jmp	.label_539
.label_1022:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_585
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_589
	jmp	.label_593
.label_585:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_589
.label_593:
	nop	
	jmp	.label_539
.label_589:
	jmp	.label_599
.label_599:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	je	.label_596
	lea	rsi, [rsi]
	jmp	.label_539
.label_596:
	nop	
	jmp	.label_605
.label_605:
	mov	byte ptr [rbp - 0x83], 1
.label_1017:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_609
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_609
	jmp	.label_532
.label_609:
	lea	rsi, [rsi]
	jmp	.label_539
.label_1019:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_612
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_621
	jmp	.label_532
.label_621:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_626
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jne	.label_626
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_626:
	jmp	.label_639
.label_639:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_641
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_641:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_648
.label_648:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_720
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_720:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_660
.label_660:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_664
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_664:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_612:
	lea	rsi, [rsi]
	jmp	.label_539
.label_1018:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_539
.label_683:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7a], 1
	je	.label_677
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], 1
	movzx	eax, byte ptr [rbp - 0x7f]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x128], rcx
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x128]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	nop	
	cmp	edx, 0
	lea	rdi, [rdi]
	setne	sil
	and	sil, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x91], sil
	lea	rsi, [rsi]
	jmp	.label_653
.label_677:
	xor	esi, esi
	mov	eax, 8
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x90], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	mov	rsp, rsp
	jne	.label_697
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_697:
	jmp	.label_637
.label_637:
	lea	rdi, [rbp - 0xa4]
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0xa0]
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x58]
	add	rsi, qword ptr [rbp - 0x90]
	sub	rdx, rsi
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xb0], 0
	mov	rbp, rbp
	jne	.label_522
	jmp	.label_527
.label_522:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_571
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_527
.label_571:
	nop	
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_535
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_555:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	mov	rsp, rsp
	jae	.label_644
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_644:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_529
	jmp	.label_554
.label_529:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_555
.label_554:
	jmp	.label_527
.label_535:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_562
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_562
	mov	qword ptr [rbp - 0xb8], 1
.label_611:
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	cmp	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	jae	.label_567
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0xb8]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	mov	rsp, rsp
	add	esi, -0x5b
	sub	esi, 2
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x130], edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x134], esi
	jb	.label_574
	jmp	.label_590
.label_590:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x138], eax
	je	.label_574
	jmp	.label_595
.label_595:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x13c], eax
	mov	rsp, rsp
	je	.label_574
	jmp	.label_603
.label_603:
	mov	eax, dword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_604
	mov	rsp, rsp
	jmp	.label_574
.label_574:
	mov	rsp, rsp
	jmp	.label_532
.label_604:
	jmp	.label_669
.label_669:
	mov	rsp, rsp
	jmp	.label_651
.label_651:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_611
.label_567:
	mov	rbp, rbp
	jmp	.label_562
.label_562:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_625
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_625:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_631
.label_631:
	lea	rsi, [rsi]
	jmp	.label_640
.label_640:
	jmp	.label_643
.label_643:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xa0]
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
	jne	.label_637
.label_527:
	jmp	.label_653
.label_653:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	nop	
	jb	.label_654
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_661
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	mov	rsp, rsp
	jne	.label_661
.label_654:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 0xc0], rax
.label_632:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	nop	
	je	.label_587
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	jne	.label_587
	jmp	.label_673
.label_673:
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_675
	jmp	.label_532
.label_675:
	mov	byte ptr [rbp - 0x82], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_679
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_679
	lea	rdi, [rdi]
	jmp	.label_684
.label_684:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_687
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_687:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_690
.label_690:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_693
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_693:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_704
.label_704:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_633
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_633:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_679:
	jmp	.label_713
.label_713:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_716
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_716:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_523
.label_523:
	jmp	.label_525
.label_525:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_564
	nop	
	movzx	eax, byte ptr [rbp - 0x7f]
	nop	
	sar	eax, 6
	mov	rsp, rsp
	add	eax, 0x30
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rdx], cl
.label_564:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_699
.label_699:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_671
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x7f]
	mov	rbp, rbp
	sar	eax, 3
	lea	rsi, [rsi]
	and	eax, 7
	add	eax, 0x30
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_671:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	lea	rsi, [rsi]
	and	eax, 7
	lea	rdi, [rdi]
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_550
.label_587:
	test	byte ptr [rbp - 0x81], 1
	lea	rsi, [rsi]
	je	.label_558
	lea	rdi, [rdi]
	jmp	.label_561
.label_561:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_597
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_597:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x81], 0
.label_558:
	nop	
	jmp	.label_550
.label_550:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_578
	jmp	.label_584
.label_578:
	lea	rsi, [rsi]
	jmp	.label_712
.label_712:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_586
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x82], 1
	jne	.label_586
	lea	rsi, [rsi]
	jmp	.label_592
.label_592:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_594
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_594:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_601
.label_601:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_642
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_642:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_586:
	nop	
	jmp	.label_616
.label_616:
	mov	rsp, rsp
	jmp	.label_618
.label_618:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_620
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_620:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 1]
	nop	
	mov	byte ptr [rbp - 0x7f], dl
	jmp	.label_632
.label_584:
	mov	rsp, rsp
	jmp	.label_526
.label_661:
	lea	rsi, [rsi]
	jmp	.label_539
.label_539:
	test	byte ptr [rbp - 0x79], 1
	mov	rbp, rbp
	je	.label_649
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_652
.label_649:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_655
.label_652:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_655
	movzx	eax, byte ptr [rbp - 0x7f]
	lea	rsi, [rsi]
	mov	ecx, eax
	shr	rcx, 5
	mov	rdx, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rdx + rcx*4]
	nop	
	movzx	esi, byte ptr [rbp - 0x7f]
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
	jne	.label_657
.label_655:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x81], 1
	lea	rdi, [rdi]
	jne	.label_657
	mov	rsp, rsp
	jmp	.label_526
.label_657:
	nop	
	jmp	.label_581
.label_581:
	jmp	.label_615
.label_615:
	test	byte ptr [rbp - 0x7b], 1
	mov	rbp, rbp
	je	.label_672
	jmp	.label_532
.label_672:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_678
	test	byte ptr [rbp - 0x7c], 1
	lea	rdi, [rdi]
	jne	.label_678
	lea	rdi, [rdi]
	jmp	.label_682
.label_682:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_685
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_685:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_689
.label_689:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_559
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_559:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_701
.label_701:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_706
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_706:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_678:
	jmp	.label_714
.label_714:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_717
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_717:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_676
.label_676:
	nop	
	jmp	.label_526
.label_526:
	jmp	.label_569
.label_569:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7c], 1
	je	.label_530
	test	byte ptr [rbp - 0x82], 1
	jne	.label_530
	lea	rdi, [rdi]
	jmp	.label_536
.label_536:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_538
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_538:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_545
.label_545:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_617
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_617:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_530:
	jmp	.label_543
.label_543:
	nop	
	jmp	.label_566
.label_566:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_557
	mov	al, byte ptr [rbp - 0x7f]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_557:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x83], 1
	jne	.label_610
	mov	byte ptr [rbp - 0x7e], 0
.label_610:
	mov	rbp, rbp
	jmp	.label_573
.label_573:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_667
.label_634:
	cmp	qword ptr [rbp - 0x60], 0
	mov	rbp, rbp
	jne	.label_580
	cmp	dword ptr [rbp - 0x34], 2
	nop	
	jne	.label_580
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_580
	nop	
	jmp	.label_532
.label_580:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_591
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_591
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7d], 1
	je	.label_591
	test	byte ptr [rbp - 0x7e], 1
	je	.label_598
	mov	r8d, 5
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r11
	mov	rbp, rbp
	call	quotearg_buffer_restyled
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_614
.label_598:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jne	.label_619
	cmp	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	je	.label_619
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_630
.label_619:
	jmp	.label_635
.label_635:
	mov	rbp, rbp
	jmp	.label_591
.label_591:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_638
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_638
	mov	rbp, rbp
	jmp	.label_645
.label_645:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_646
	lea	rdi, [rdi]
	jmp	.label_647
.label_647:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_650
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_650:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_658
.label_658:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_645
.label_646:
	jmp	.label_638
.label_638:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_666
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_666:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_614
.label_532:
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_674
	mov	rsp, rsp
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_674
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], 4
.label_674:
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	nop	
	mov	r9d, dword ptr [rbp - 0x38]
	and	r9d, 0xfffffffd
	lea	rsi, [rsi]
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x148], rcx
	mov	rcx, r8
	lea	rdi, [rdi]
	mov	r8d, eax
	mov	qword ptr [rsp], 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_614:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aba0
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
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
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
	#Procedure 0x40ac10

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	je	.label_721
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_722
.label_721:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_722
.label_722:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x30], rax
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
	mov	dword ptr [rbp - 0x34], edi
	mov	rax, qword ptr [rbp - 0x30]
	mov	edi, dword ptr [rax + 4]
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	cmovne	ecx, esi
	or	edi, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x38], edi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [r8]
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	r10, 8
	mov	r11, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r11 + 0x28]
	mov	rbx, qword ptr [rbp - 0x30]
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
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	mov	dword ptr [rbp - 0x5c], r8d
	nop	
	call	__errno_location
	nop	
	mov	r8d, dword ptr [rbp - 0x5c]
	nop	
	mov	dword ptr [rax], r8d
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_723
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_723:
	mov	rax, qword ptr [rbp - 0x48]
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
	#Procedure 0x40ade0
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
.label_728:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_727
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
	jmp	.label_728
.label_727:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_726
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_724]],  rax
.label_726:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_725
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_725:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aef0

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
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40af40

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	call	__errno_location
	mov	edi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], edi
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 0x30], rax
	cmp	dword ptr [rbp - 4], 0
	jge	.label_734
	call	abort
.label_734:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_729
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	sete	cl
	mov	rbp, rbp
	and	cl, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x31], cl
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	mov	rsp, rsp
	jge	.label_730
	call	xalloc_die
.label_730:
	test	byte ptr [rbp - 0x31], 1
	je	.label_731
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_735
.label_731:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_735:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	movsxd	rdx, ecx
	shl	rdx, 4
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, rdx
	call	xrealloc
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [word ptr [slotvec]],  rax
	test	byte ptr [rbp - 0x31], 1
	lea	rdi, [rdi]
	je	.label_733
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_724]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_733:
	xor	esi, esi
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	movsxd	rcx,  dword ptr [dword ptr [nslots]]
	mov	rsp, rsp
	shl	rcx, 4
	add	rax, rcx
	mov	edx, dword ptr [rbp - 4]
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
	mov	esi, dword ptr [rbp - 4]
	add	esi, 1
	mov	dword ptr [dword ptr [nslots]],  esi
.label_729:
	movsxd	rax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	movsxd	rax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	ecx, dword ptr [rax + 4]
	lea	rsi, [rsi]
	or	ecx, 1
	mov	dword ptr [rbp - 0x4c], ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rax]
	mov	rbp, rbp
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	nop	
	mov	r10, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	r10, qword ptr [r10 + 0x28]
	lea	rdi, [rdi]
	mov	r11, qword ptr [rbp - 0x20]
	nop	
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	ja	.label_732
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	je	.label_736
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	free
.label_736:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	movsxd	rdi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 8], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	r11, qword ptr [r11 + 0x30]
	nop	
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	mov	rsp, rsp
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x68], rax
.label_732:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x24]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6c], eax
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x90
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b270

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
	#Procedure 0x40b2b0
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
	#Procedure 0x40b2e0
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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
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
	#Procedure 0x40b320

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x50
	lea	rax, [rbp - 0x48]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	nop	
	mov	qword ptr [rbp - 0x10], rdx
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	lea	rdi, [rdi]
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b380

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
	mov	dword ptr [rbp - 4], esi
	mov	qword ptr [rbp - 0x48], rdi
	nop	
	mov	rdi, r8
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	call	memset
	nop	
	cmp	dword ptr [rbp - 4], 0xa
	jne	.label_737
	call	abort
.label_737:
	lea	rsi, [rsi]
	mov	eax, 0x38
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcpy
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b420

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rsp, rsp
	lea	rax, [rbp - 0x50]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	nop	
	mov	dword ptr [rbp - 8], esi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 8]
	nop	
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rcx, [rbp - 0x50]
	nop	
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b490
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	esi, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	mov	rbp, rbp
	call	quotearg_n_style
	nop	
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b4d0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
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
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b510

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	al, dl
	lea	rcx, [rbp - 0x50]
	lea	rdi, [rdi]
	mov	edx, 1
	movabs	r8, OFFSET FLAT:default_quoting_options
	mov	r9d, 0x38
	mov	r10d, r9d
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], al
	lea	rsi, [rsi]
	mov	rsi, rcx
	nop	
	mov	rdi, rsi
	mov	rsi, r8
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], edx
	lea	rsi, [rsi]
	mov	rdx, r10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rcx
	call	memcpy
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rbp - 0x11]
	mov	edx, dword ptr [rbp - 0x54]
	nop	
	call	set_char_quoting
	mov	rsp, rsp
	xor	edi, edi
	lea	rcx, [rbp - 0x50]
	nop	
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rbp - 0x64], eax
	nop	
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b5c0

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
	#Procedure 0x40b600

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
	#Procedure 0x40b630
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
	#Procedure 0x40b670

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rax, [rbp - 0x80]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	quoting_options_from_style
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x48]
	mov	rsp, rsp
	mov	esi, 0x3a
	mov	rbp, rbp
	mov	edx, 1
	mov	ecx, 0x38
	mov	edi, ecx
	lea	rsi, [rsi]
	lea	r8, [rbp - 0x80]
	mov	r9, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], rdi
	mov	rsp, rsp
	mov	rdi, r9
	nop	
	mov	dword ptr [rbp - 0x8c], esi
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x90], edx
	nop	
	mov	rdx, r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x98]
	mov	esi, dword ptr [rbp - 0x8c]
	mov	edx, dword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	call	set_char_quoting
	mov	rdx, -1
	mov	rsp, rsp
	lea	rcx, [rbp - 0x48]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9c], eax
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0xa0
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b760

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
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b7b0

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rax, [rbp - 0x60]
	lea	rsi, [rsi]
	movabs	r9, OFFSET FLAT:default_quoting_options
	nop	
	mov	r10d, 0x38
	mov	rbp, rbp
	mov	r11d, r10d
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, rax
	mov	rdi, rcx
	mov	rbp, rbp
	mov	rsi, r9
	mov	rbp, rbp
	mov	rdx, r11
	mov	qword ptr [rbp - 0x68], rax
	call	memcpy
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	call	set_custom_quoting
	lea	rcx, [rbp - 0x60]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	quotearg_n_options
	add	rsp, 0x70
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b850
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
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
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
	#Procedure 0x40b8a0
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
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x20]
	mov	edi, eax
	call	quotearg_n_custom_mem
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b900

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:quote_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	lea	rdi, [rdi]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b940
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
	#Procedure 0x40b980

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
	#Procedure 0x40b9c0

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
	#Procedure 0x40ba00

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	gettext
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_741
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_739
.label_741:
	call	locale_charset
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.13_0
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_740
	movabs	rax, OFFSET FLAT:.str.15_0
	movabs	rcx, OFFSET FLAT:.str.14_0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_739
.label_740:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_738
	nop	
	movabs	rax, OFFSET FLAT:.str.18_1
	movabs	rcx, OFFSET FLAT:.str.17_1
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_739
.label_738:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_739:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bb40

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	nop	
	push	rbp
	mov	rbp, rsp
	push	r14
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x180
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], r9
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_742
	movabs	rsi, OFFSET FLAT:.str_5
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	lea	rsi, [rsi]
	jmp	.label_745
.label_742:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_3
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_745:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:.str.2_2
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rdi
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
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	al, r8b
	nop	
	call	fprintf
	nop	
	mov	ecx, OFFSET FLAT:.str.3_1
	mov	rbp, rbp
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	nop	
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rsi, rdx
	sub	rsi, 9
	nop	
	mov	dword ptr [rbp - 0x58], eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rdx
	mov	qword ptr [rbp - 0x68], rsi
	mov	rbp, rbp
	ja	.label_744
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_746]]
	jmp	rcx
.label_997:
	jmp	.label_743
.label_998:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.4_1
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	nop	
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_743
.label_999:
	movabs	rdi, OFFSET FLAT:.str.5_1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x80], rax
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rsi, rax
	mov	al, 0
	mov	rsp, rsp
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x84], eax
	lea	rsi, [rsi]
	jmp	.label_743
.label_1000:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6_0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rax
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	rdx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	nop	
	mov	dword ptr [rbp - 0x94], eax
	lea	rsi, [rsi]
	jmp	.label_743
.label_1001:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.7_0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0xa0]
	nop	
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_743
.label_1002:
	nop	
	movabs	rdi, OFFSET FLAT:.str.8_0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rdi
	mov	rdi, rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xbc], eax
	nop	
	jmp	.label_743
.label_1003:
	nop	
	movabs	rdi, OFFSET FLAT:.str.9_0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	r9, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd0], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0xd8], rsi
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rsp + 8], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_743
.label_1004:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.10_1
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], rax
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	r8, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], rdi
	mov	rsp, rsp
	mov	rdi, r11
	mov	qword ptr [rbp - 0xf8], rsi
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	al, 0
	nop	
	call	fprintf
	mov	dword ptr [rbp - 0xfc], eax
	nop	
	jmp	.label_743
.label_1005:
	movabs	rdi, OFFSET FLAT:.str.11_1
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x108], rax
	call	gettext
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r10, qword ptr [r10 + 0x30]
	mov	rsp, rsp
	mov	r11, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rsp, rsp
	mov	rbx, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x110], rdi
	mov	rdi, rbx
	nop	
	mov	qword ptr [rbp - 0x118], rsi
	mov	rsi, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	lea	rsi, [rsi]
	mov	al, 0
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x11c], eax
	jmp	.label_743
.label_1006:
	movabs	rdi, OFFSET FLAT:.str.12_1
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x128], rax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	nop	
	mov	r11, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	rbp, rbp
	mov	r14, qword ptr [rbp - 0x128]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x130], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x138], rsi
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x138]
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
	mov	dword ptr [rbp - 0x13c], eax
	jmp	.label_743
.label_744:
	movabs	rdi, OFFSET FLAT:.str.13_1
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x148], rax
	lea	rdi, [rdi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	nop	
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	rsp, rsp
	mov	r14, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x150], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x158], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x158]
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
	mov	dword ptr [rbp - 0x15c], eax
.label_743:
	lea	rdi, [rdi]
	add	rsp, 0x180
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c2b0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_747:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_748
	mov	rbp, rbp
	jmp	.label_749
.label_749:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_747
.label_748:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	nop	
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c360

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0xa0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], 0
.label_756:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_755
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_751
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x94]
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_752
.label_751:
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_752:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	mov	rbp, rbp
	cmp	rax, 0
	setne	dl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x81], dl
.label_755:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x81]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_754
	mov	rsp, rsp
	jmp	.label_750
.label_754:
	jmp	.label_753
.label_753:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_756
.label_750:
	nop	
	lea	r8, [rbp - 0x80]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x30]
	nop	
	call	version_etc_arn
	add	rsp, 0xa0
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c4c0

	.globl version_etc
	.type version_etc, @function
version_etc:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x1a0
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x100], xmm7
	nop	
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	nop	
	movaps	xmmword ptr [rbp - 0x130], xmm4
	nop	
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	nop	
	mov	qword ptr [rbp - 0x178], rdi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	qword ptr [rbp - 0x1a0], rsi
	lea	rsi, [rsi]
	je	.label_757
	movaps	xmm0, xmmword ptr [rbp - 0x170]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	lea	rdi, [rdi]
	movaps	xmm1, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm1
	lea	rdi, [rdi]
	movaps	xmm2, xmmword ptr [rbp - 0x150]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x130]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x80], xmm4
	lea	rdi, [rdi]
	movaps	xmm5, xmmword ptr [rbp - 0x120]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x70], xmm5
	mov	rbp, rbp
	movaps	xmm6, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm6
	mov	rsp, rsp
	movaps	xmm7, xmmword ptr [rbp - 0x100]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x50], xmm7
.label_757:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rsi, qword ptr [rbp - 0x198]
	mov	rdi, qword ptr [rbp - 0x1a0]
	nop	
	mov	r8, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 8], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdx, [rbp - 0xf0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdx, [rbp + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdx
	mov	dword ptr [rbp - 0x3c], 0x30
	mov	dword ptr [rbp - 0x40], 0x20
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	r8, [rbp - 0x40]
	call	version_etc_va
	add	rsp, 0x1a0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c670
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
	movabs	rdi, OFFSET FLAT:.str.16_0
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
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c720

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
	jae	.label_758
	mov	rbp, rbp
	call	xalloc_die
.label_758:
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
	#Procedure 0x40c780

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jne	.label_759
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_759
	lea	rdi, [rdi]
	call	xalloc_die
.label_759:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c7e0
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
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_760
	mov	rsp, rsp
	call	xalloc_die
.label_760:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	imul	rax, qword ptr [rbp - 0x18]
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
	#Procedure 0x40c860

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	jne	.label_761
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_761
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_763
.label_761:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_762
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_762
	lea	rsi, [rsi]
	call	xalloc_die
.label_762:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_763:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c910

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jne	.label_764
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_766
	mov	eax, 0x80
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	setne	sil
	mov	rsp, rsp
	xor	sil, 0xff
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_766:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_768
	call	xalloc_die
.label_768:
	lea	rsi, [rsi]
	jmp	.label_767
.label_764:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_765
	call	xalloc_die
.label_765:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_767:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	imul	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ca40

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
	#Procedure 0x40ca70

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
	#Procedure 0x40cab0
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
	#Procedure 0x40cb00
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jb	.label_769
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_770
.label_769:
	lea	rsi, [rsi]
	call	xalloc_die
.label_770:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cb70

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	call	xmalloc
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	call	memcpy
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cbc0
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	strlen
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	xmemdup
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cc20

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
	movabs	rdx, OFFSET FLAT:.str_1
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40cc80

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
	.section	.text
	.align	16
	#Procedure 0x40cc90

	.globl xset_binary_mode
	.type xset_binary_mode, @function
xset_binary_mode:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], edi
	nop	
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rbp, rbp
	call	set_binary_mode
	mov	rsp, rsp
	cmp	eax, 0
	nop	
	jge	.label_771
	call	xset_binary_mode_error
.label_771:
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ccd0

	.globl xprintf
	.type xprintf, @function
xprintf:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x190
	test	al, al
	movaps	xmmword ptr [rbp - 0xf0], xmm7
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x100], xmm6
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x110], xmm5
	movaps	xmmword ptr [rbp - 0x120], xmm4
	movaps	xmmword ptr [rbp - 0x130], xmm3
	movaps	xmmword ptr [rbp - 0x140], xmm2
	movaps	xmmword ptr [rbp - 0x150], xmm1
	movaps	xmmword ptr [rbp - 0x160], xmm0
	mov	qword ptr [rbp - 0x168], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x170], r9
	mov	qword ptr [rbp - 0x178], r8
	mov	qword ptr [rbp - 0x180], rcx
	mov	qword ptr [rbp - 0x188], rdx
	nop	
	mov	qword ptr [rbp - 0x190], rsi
	je	.label_772
	mov	rbp, rbp
	movaps	xmm0, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x130]
	nop	
	movaps	xmmword ptr [rbp - 0x80], xmm3
	lea	rdi, [rdi]
	movaps	xmm4, xmmword ptr [rbp - 0x120]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x70], xmm4
	lea	rsi, [rsi]
	movaps	xmm5, xmmword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x60], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x50], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0xf0]
	movaps	xmmword ptr [rbp - 0x40], xmm7
.label_772:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x170]
	nop	
	mov	qword ptr [rbp - 0xb8], rax
	nop	
	mov	rcx, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rdx, qword ptr [rbp - 0x180]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rsi, qword ptr [rbp - 0x188]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd0], rsi
	nop	
	mov	rdi, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0xd8], rdi
	mov	r8, qword ptr [rbp - 0x168]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], r8
	lea	r8, [rbp - 0xe0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], r8
	lea	rdi, [rdi]
	lea	r8, [rbp + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], r8
	mov	dword ptr [rbp - 0x1c], 0x30
	mov	dword ptr [rbp - 0x20], 8
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	lea	rsi, [rbp - 0x20]
	nop	
	call	xvprintf
	mov	dword ptr [rbp - 0x24], eax
	add	rsp, 0x190
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ce80

	.globl xvprintf
	.type xvprintf, @function
xvprintf:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	vprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], 0
	jge	.label_773
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	ferror
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_773
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 0x18], edi
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_6
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], esi
	lea	rdi, [rdi]
	call	gettext
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	mov	rdx, rax
	mov	al, 0
	call	error
.label_773:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cf30
	.globl xfprintf
	.type xfprintf, @function
xfprintf:

	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x1a0
	mov	rsp, rsp
	test	al, al
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x100], xmm7
	nop	
	movaps	xmmword ptr [rbp - 0x110], xmm6
	nop	
	movaps	xmmword ptr [rbp - 0x120], xmm5
	movaps	xmmword ptr [rbp - 0x130], xmm4
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	movaps	xmmword ptr [rbp - 0x160], xmm1
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x170], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x178], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x180], r9
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x188], r8
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	qword ptr [rbp - 0x1a0], rsi
	nop	
	je	.label_774
	mov	rsp, rsp
	movaps	xmm0, xmmword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	lea	rsi, [rsi]
	movaps	xmm1, xmmword ptr [rbp - 0x160]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0xb0], xmm1
	lea	rdi, [rdi]
	movaps	xmm2, xmmword ptr [rbp - 0x150]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x90], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x120]
	nop	
	movaps	xmmword ptr [rbp - 0x70], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm6
	mov	rsp, rsp
	movaps	xmm7, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm7
.label_774:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd0], rcx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x190]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rdx
	mov	rsi, qword ptr [rbp - 0x198]
	mov	qword ptr [rbp - 0xe0], rsi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x1a0]
	mov	r8, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], r8
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	lea	rdi, [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	lea	rdi, [rbp + 0x10]
	mov	qword ptr [rbp - 0x28], rdi
	nop	
	mov	dword ptr [rbp - 0x2c], 0x30
	nop	
	mov	dword ptr [rbp - 0x30], 0x10
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdx, [rbp - 0x30]
	call	xvfprintf
	mov	dword ptr [rbp - 0x34], eax
	nop	
	add	rsp, 0x1a0
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d100

	.globl xvfprintf
	.type xvfprintf, @function
xvfprintf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	call	vfprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_775
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	ferror
	nop	
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_775
	lea	rsi, [rsi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 0x20], edi
	nop	
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str_6
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], esi
	nop	
	call	gettext
	mov	edi, dword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x24]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_775:
	nop	
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x30
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d1b0

	.globl xstrtol_fatal
	.type xstrtol_fatal, @function
xstrtol_fatal:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	al, dl
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], esi
	mov	byte ptr [rbp - 9], al
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], r8
	nop	
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, byte ptr [rbp - 9]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9d,  dword ptr [dword ptr [exit_failure]]
	nop	
	movsx	edx, al
	nop	
	call	xstrtol_error
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40d210

	.globl xstrtol_error
	.type xstrtol_error, @function
xstrtol_error:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, dl
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], esi
	mov	byte ptr [rbp - 9], al
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x20], r8
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], r9d
	mov	qword ptr [word ptr [rbp - 48]], OFFSET FLAT:.str_7
	mov	edx, dword ptr [rbp - 4]
	nop	
	mov	esi, edx
	lea	rsi, [rsi]
	sub	esi, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x48], edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], esi
	lea	rsi, [rsi]
	je	.label_781
	nop	
	jmp	.label_777
.label_777:
	mov	eax, dword ptr [rbp - 0x48]
	add	eax, -2
	nop	
	sub	eax, 2
	mov	dword ptr [rbp - 0x50], eax
	jb	.label_779
	lea	rdi, [rdi]
	jmp	.label_784
.label_784:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], eax
	lea	rsi, [rsi]
	je	.label_778
	lea	rsi, [rsi]
	jmp	.label_782
.label_782:
	call	abort
.label_778:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.1_5
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	jmp	.label_776
.label_779:
	movabs	rax, OFFSET FLAT:.str.2_3
	nop	
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_776
.label_781:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.3_2
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
.label_776:
	cmp	dword ptr [rbp - 8], 0
	mov	rsp, rsp
	jge	.label_780
	lea	rax, [rbp - 0x42]
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	nop	
	mov	ecx, dword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x30]
	movsxd	rdi, ecx
	lea	rdi, [rdi]
	sub	rdx, rdi
	mov	rsp, rsp
	add	rsi, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rsi
	mov	r8b, byte ptr [rbp - 9]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x42], r8b
	mov	byte ptr [rbp - 0x41], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_783
.label_780:
	movsxd	rax, dword ptr [rbp - 8]
	mov	rbp, rbp
	shl	rax, 5
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
.label_783:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x24]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x58], edi
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	gettext
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x40]
	nop	
	mov	r9, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	error
	nop	
	add	rsp, 0x60
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d3c0

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x100
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	mov	qword ptr [rbp - 0x30], r8
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], 0
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_785
	cmp	dword ptr [rbp - 0x1c], 0x24
	lea	rdi, [rdi]
	jg	.label_785
	jmp	.label_790
.label_785:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str_8
	movabs	rsi, OFFSET FLAT:.str.1_6
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
.label_790:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_817
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	jmp	.label_797
.label_817:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	nop	
	jmp	.label_797
.label_797:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_838:
	nop	
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rcx
	nop	
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rsp, rsp
	and	edx, 0x2000
	mov	rsp, rsp
	cmp	edx, 0
	je	.label_830
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	lea	rsi, [rsi]
	jmp	.label_838
.label_830:
	movzx	eax, byte ptr [rbp - 0x59]
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	jne	.label_846
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 4
	lea	rsi, [rsi]
	jmp	.label_787
.label_846:
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	call	strtoumax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	jne	.label_799
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	je	.label_810
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_810
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	nop	
	je	.label_810
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_826
.label_810:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 4
	jmp	.label_787
.label_826:
	lea	rdi, [rdi]
	jmp	.label_832
.label_799:
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0
	je	.label_834
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	lea	rdi, [rdi]
	je	.label_843
	nop	
	mov	dword ptr [rbp - 4], 4
	jmp	.label_787
.label_843:
	mov	dword ptr [rbp - 0x4c], 1
.label_834:
	jmp	.label_832
.label_832:
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_845
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	lea	rdi, [rdi]
	jmp	.label_787
.label_845:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_798
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	nop	
	movsx	esi, byte ptr [rax]
	nop	
	call	strchr
	cmp	rax, 0
	jne	.label_815
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	or	edx, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edx
	mov	rbp, rbp
	jmp	.label_787
.label_815:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x80], edx
	nop	
	je	.label_800
	jmp	.label_833
.label_833:
	nop	
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	je	.label_800
	nop	
	jmp	.label_844
.label_844:
	mov	eax, dword ptr [rbp - 0x7c]
	nop	
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	mov	rsp, rsp
	je	.label_800
	nop	
	jmp	.label_847
.label_847:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	mov	rbp, rbp
	je	.label_800
	lea	rsi, [rsi]
	jmp	.label_816
.label_816:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x90], eax
	lea	rsi, [rsi]
	je	.label_800
	jmp	.label_802
.label_802:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_800
	jmp	.label_808
.label_808:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	add	eax, -0x59
	mov	rbp, rbp
	sub	eax, 2
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], eax
	lea	rdi, [rdi]
	jb	.label_800
	mov	rsp, rsp
	jmp	.label_818
.label_818:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_800
	jmp	.label_825
.label_825:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	lea	rdi, [rdi]
	je	.label_800
	mov	rsp, rsp
	jmp	.label_831
.label_831:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	nop	
	je	.label_800
	jmp	.label_839
.label_839:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_836
	jmp	.label_800
.label_800:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_786
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	rsp, rsp
	mov	edx, ecx
	sub	edx, 0x42
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xac], ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xb0], edx
	mov	rsp, rsp
	je	.label_807
	lea	rsi, [rsi]
	jmp	.label_805
.label_805:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_807
	jmp	.label_812
.label_812:
	mov	eax, dword ptr [rbp - 0xac]
	mov	rbp, rbp
	sub	eax, 0x69
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb8], eax
	lea	rdi, [rdi]
	jne	.label_792
	lea	rsi, [rsi]
	jmp	.label_820
.label_820:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 2]
	lea	rsi, [rsi]
	cmp	ecx, 0x42
	jne	.label_823
	mov	eax, dword ptr [rbp - 0x64]
	nop	
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_823:
	jmp	.label_792
.label_807:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_792:
	jmp	.label_786
.label_786:
	nop	
	jmp	.label_836
.label_836:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	nop	
	movsx	ecx, byte ptr [rax]
	nop	
	mov	edx, ecx
	sub	edx, 0x42
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xbc], ecx
	mov	dword ptr [rbp - 0xc0], edx
	mov	rbp, rbp
	je	.label_837
	jmp	.label_849
.label_849:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x45
	nop	
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_850
	jmp	.label_821
.label_821:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x47
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_794
	jmp	.label_801
.label_801:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rsi, [rsi]
	sub	eax, 0x4b
	nop	
	mov	dword ptr [rbp - 0xcc], eax
	mov	rsp, rsp
	je	.label_803
	nop	
	jmp	.label_811
.label_811:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rdi, [rdi]
	sub	eax, 0x4d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_813
	nop	
	jmp	.label_819
.label_819:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd4], eax
	je	.label_841
	mov	rsp, rsp
	jmp	.label_827
.label_827:
	nop	
	mov	eax, dword ptr [rbp - 0xbc]
	nop	
	sub	eax, 0x54
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd8], eax
	nop	
	je	.label_828
	jmp	.label_814
.label_814:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x59
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_822
	mov	rbp, rbp
	jmp	.label_791
.label_791:
	mov	eax, dword ptr [rbp - 0xbc]
	nop	
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_806
	jmp	.label_788
.label_788:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x62
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_848
	jmp	.label_793
.label_793:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xe8], eax
	je	.label_796
	jmp	.label_840
.label_840:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x67
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xec], eax
	je	.label_794
	jmp	.label_809
.label_809:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xf0], eax
	je	.label_803
	jmp	.label_842
.label_842:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xf4], eax
	je	.label_813
	jmp	.label_824
.label_824:
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rsi, [rsi]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xf8], eax
	je	.label_828
	jmp	.label_829
.label_829:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0xfc], eax
	je	.label_795
	jmp	.label_835
.label_848:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	nop	
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_789
.label_837:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	lea	rdi, [rdi]
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_789
.label_796:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_789
.label_850:
	nop	
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_789
.label_794:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	nop	
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_789
.label_803:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	nop	
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_789
.label_813:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_789
.label_841:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	mov	rsp, rsp
	jmp	.label_789
.label_828:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x48]
	lea	rdi, [rdi]
	mov	edx, 4
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	lea	rdi, [rdi]
	jmp	.label_789
.label_795:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_789
.label_822:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	mov	rsp, rsp
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_789
.label_806:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_789
.label_835:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	or	edx, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edx
	jmp	.label_787
.label_789:
	mov	eax, dword ptr [rbp - 0x68]
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	cmp	byte ptr [rcx], 0
	je	.label_804
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	nop	
	mov	dword ptr [rbp - 0x4c], eax
.label_804:
	jmp	.label_798
.label_798:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	nop	
	mov	dword ptr [rbp - 4], edx
.label_787:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x100
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dcb0

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], esi
	mov	rbp, rbp
	movsxd	rdi, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, esi
	mov	rsp, rsp
	div	rdi
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi]
	jae	.label_851
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 1
	jmp	.label_852
.label_851:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_852:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dd30

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], 0
.label_853:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	add	ecx, -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], ecx
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	je	.label_854
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	bkm_scale
	mov	rsp, rsp
	or	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	nop	
	jmp	.label_853
.label_854:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ddb0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], 0
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	fileno
	mov	dword ptr [rbp - 0x18], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x18], 0
	jge	.label_859
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_857
.label_859:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_856
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
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
	je	.label_855
.label_856:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_855
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_855:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_858
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_858:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_857:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ded0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	je	.label_860
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_861
.label_860:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_862
.label_861:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_862:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40df40

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rdi]
	and	eax, 0x100
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_863
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, eax
	nop	
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	rpl_fseeko
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
.label_863:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dfa0

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_864
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_864
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_864
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	edi, eax
	lea	rdi, [rdi]
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_865
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_866
.label_865:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rdx + 0x90], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_866
.label_864:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
.label_866:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e0b0

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
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	jne	.label_867
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_867:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	call	mbrtowc
	mov	rcx, -2
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_868
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_868
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_868
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	mov	rbp, rbp
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rax], edx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 1
	jmp	.label_869
.label_868:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_869:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e1a0

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
	.section	.text
	.align	16
	#Procedure 0x40e1c0

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
	.section	.text
	.align	16
	#Procedure 0x40e1e0

	.globl set_binary_mode
	.type set_binary_mode, @function
set_binary_mode:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	call	__gl_setmode_check
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	je	.label_870
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_871
.label_870:
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	esi, dword ptr [rbp - 8]
	call	__gl_setmode
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], eax
.label_871:
	mov	eax, dword ptr [rbp - 0x10]
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e240

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jne	.label_872
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_876
.label_872:
	mov	rbp, rbp
	jmp	.label_873
.label_873:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	edi, byte ptr [rax]
	mov	rsp, rsp
	call	c_tolower
	lea	rsi, [rsi]
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	movzx	edi, byte ptr [rdx]
	call	c_tolower
	nop	
	mov	cl, al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x2a], cl
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x29]
	cmp	eax, 0
	jne	.label_874
	jmp	.label_875
.label_874:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	lea	rdi, [rdi]
	je	.label_873
.label_875:
	movzx	eax, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x2a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_876:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e330

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
	mov	byte ptr [rbp - 0x11], cl
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	ferror_unlocked
	nop	
	cmp	eax, 0
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 0x12], cl
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	mov	rsp, rsp
	cmp	eax, 0
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 0x13], cl
	nop	
	test	byte ptr [rbp - 0x12], 1
	lea	rsi, [rsi]
	jne	.label_879
	test	byte ptr [rbp - 0x13], 1
	je	.label_878
	test	byte ptr [rbp - 0x11], 1
	lea	rsi, [rsi]
	jne	.label_879
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_878
.label_879:
	nop	
	test	byte ptr [rbp - 0x13], 1
	mov	rsp, rsp
	jne	.label_877
	call	__errno_location
	mov	dword ptr [rax], 0
.label_877:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_880
.label_878:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
.label_880:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e410

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
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], 1
	mov	edi, dword ptr [rbp - 4]
	call	setlocale
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	je	.label_882
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_9
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_883
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_7
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_881
.label_883:
	mov	byte ptr [rbp - 5], 0
.label_881:
	jmp	.label_882
.label_882:
	mov	al, byte ptr [rbp - 5]
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
	#Procedure 0x40e4b0

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
	jne	.label_885
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_885:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_884
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.1_8
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_884:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e530

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
	ja	.label_886
	jmp	.label_888
.label_888:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_887
.label_886:
	lea	rsi, [rsi]
	jmp	.label_887
.label_887:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e590
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
	jb	.label_889
	jmp	.label_892
.label_892:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_889
	jmp	.label_890
.label_890:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_891
	jmp	.label_889
.label_889:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_893
.label_891:
	mov	byte ptr [rbp - 1], 0
.label_893:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e600
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
	jb	.label_894
	jmp	.label_897
.label_897:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_895
	jmp	.label_894
.label_894:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_896
.label_895:
	mov	byte ptr [rbp - 1], 0
.label_896:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e650
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_898
	jmp	.label_899
.label_899:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_900
.label_898:
	mov	byte ptr [rbp - 1], 0
.label_900:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e680
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_901
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_901:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e6b0
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
	jb	.label_902
	jmp	.label_904
.label_904:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_905
	jmp	.label_902
.label_902:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_903
.label_905:
	mov	byte ptr [rbp - 1], 0
.label_903:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e700
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_906
	jmp	.label_908
.label_908:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_907
.label_906:
	mov	byte ptr [rbp - 1], 0
.label_907:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e740
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_909
	jmp	.label_911
.label_911:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_910
.label_909:
	mov	byte ptr [rbp - 1], 0
.label_910:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e780
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_912
	jmp	.label_914
.label_914:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_913
.label_912:
	mov	byte ptr [rbp - 1], 0
.label_913:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e7c0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_915
	jmp	.label_917
.label_917:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_916
.label_915:
	mov	byte ptr [rbp - 1], 0
.label_916:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e800
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
	jb	.label_918
	jmp	.label_921
.label_921:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x3a
	sub	eax, 7
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_918
	jmp	.label_922
.label_922:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x5b
	sub	eax, 6
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_918
	jmp	.label_920
.label_920:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x7b
	sub	eax, 3
	mov	dword ptr [rbp - 0x1c], eax
	ja	.label_923
	jmp	.label_918
.label_918:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_919
.label_923:
	mov	byte ptr [rbp - 1], 0
.label_919:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e880
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
	jb	.label_924
	jmp	.label_925
.label_925:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_927
	jmp	.label_924
.label_924:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_926
.label_927:
	mov	byte ptr [rbp - 1], 0
.label_926:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e8d0
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_928
	jmp	.label_930
.label_930:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_929
.label_928:
	mov	byte ptr [rbp - 1], 0
.label_929:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e910
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
	jb	.label_931
	jmp	.label_933
.label_933:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_931
	jmp	.label_932
.label_932:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_934
	jmp	.label_931
.label_931:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_935
.label_934:
	mov	byte ptr [rbp - 1], 0
.label_935:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e980

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_936
	jmp	.label_938
.label_938:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_937
.label_936:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_937:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e9c0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_939
	jmp	.label_941
.label_941:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_940
.label_939:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_940:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40eab0

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat