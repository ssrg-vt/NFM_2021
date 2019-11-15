	.section	.text
	.align	16
	#Procedure 0x4018d0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 0x14], edi
	cmp	dword ptr [rbp - 0x14], 0
	lea	rdi, [rdi]
	je	.label_7
	jmp	.label_8
.label_8:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [program_name]]
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rsp, rsp
	mov	al, 0
	nop	
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x30], eax
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
	mov	dword ptr [rbp - 0x20], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x18], eax
	call	emit_stdin_note
	movabs	rdi, OFFSET FLAT:.str.3
	mov	rsp, rsp
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
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
	mov	dword ptr [rbp - 0x1c], eax
	nop	
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.6
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], eax
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.7
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.8
	mov	dword ptr [rbp - 0x40], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.9
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.10
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x48], eax
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
	mov	dword ptr [rbp - 0xc], eax
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
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.15
	mov	dword ptr [rbp - 0x10], eax
	nop	
	call	emit_ancillary_info
.label_9:
	mov	edi, dword ptr [rbp - 0x14]
	call	exit
	nop	word ptr cs:[rax + rax]
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
	nop	dword ptr [rax]
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
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 8], rax
.label_10:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x1d], cl
	je	.label_13
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	sete	cl
	lea	rdi, [rdi]
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x1d], cl
.label_13:
	mov	al, byte ptr [rbp - 0x1d]
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_15
	jmp	.label_11
.label_15:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rax, 0x10
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_10
.label_11:
	nop	
	mov	rax, qword ptr [rbp - 8]
	nop	
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_14
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x40], rax
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
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	call	setlocale
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	je	.label_12
	movabs	rsi, OFFSET FLAT:.str.58
	lea	rdi, [rdi]
	mov	eax, 3
	mov	edx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
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
	mov	dword ptr [rbp - 0x34], eax
.label_12:
	movabs	rdi, OFFSET FLAT:.str.60
	lea	rdi, [rdi]
	call	gettext
	nop	
	movabs	rsi, OFFSET FLAT:.str.18
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.61
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	call	gettext
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.62
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x18]
	cmove	rdx, rsi
	nop	
	mov	qword ptr [rbp - 0x30], rdi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x10], eax
	mov	rsp, rsp
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
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
	sub	rsp, 0x1a0
	mov	dword ptr [rbp - 0xc8], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], edi
	mov	qword ptr [rbp - 0xc0], rsi
	mov	byte ptr [rbp - 0xf1], 0
	mov	byte ptr [rbp - 0x6d], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xcd], 1
	mov	qword ptr [rbp - 0x98], 0
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.17_0
	movabs	rsi, OFFSET FLAT:.str.18_0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.17_0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x118], rax
	nop	
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x68], rax
	call	atexit
	nop	
	mov	qword ptr [rbp - 0x158], 0
	nop	
	mov	dword ptr [rbp - 0x54], eax
.label_124:
	cmp	qword ptr [rbp - 0x158], 8
	ja	.label_107
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x158]
	mov	dword ptr [dword ptr [+ (rax * 4) + integral_type_size]],  0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x158]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x158], rax
	jmp	.label_124
.label_107:
	mov	dword ptr [dword ptr [label_63]],  1
	mov	dword ptr [dword ptr [label_64]],  2
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [label_65]],  3
	mov	dword ptr [dword ptr [label_66]],  4
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [label_66]],  5
	mov	qword ptr [rbp - 0x158], 0
.label_149:
	cmp	qword ptr [rbp - 0x158], 0x10
	lea	rdi, [rdi]
	ja	.label_145
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x158]
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [+ (rax * 4) + fp_type_size]],  0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x158]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x158], rax
	lea	rdi, [rdi]
	jmp	.label_149
.label_145:
	movabs	rax, OFFSET FLAT:format_address_std
	mov	dword ptr [dword ptr [label_17]],  6
	mov	dword ptr [dword ptr [label_18]],  8
	nop	
	mov	dword ptr [dword ptr [label_19]],  7
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
.label_99:
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:short_options
	movabs	rcx, OFFSET FLAT:long_options
	lea	r8, [rbp - 0x4c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], 0xffffffff
	mov	edi, dword ptr [rbp - 0x1c]
	nop	
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	call	getopt_long
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x13c], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x13c], -1
	mov	rbp, rbp
	jne	.label_161
	mov	rbp, rbp
	jmp	.label_81
.label_161:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x13c]
	lea	rsi, [rsi]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	nop	
	mov	dword ptr [rbp - 0xb4], eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x40], ecx
	lea	rdi, [rdi]
	je	.label_82
	jmp	.label_95
.label_95:
	mov	eax, dword ptr [rbp - 0xb4]
	nop	
	sub	eax, 0xffffff7e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x60], eax
	lea	rdi, [rdi]
	je	.label_96
	jmp	.label_103
.label_103:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xb4]
	sub	eax, 0x41
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x58], eax
	lea	rsi, [rsi]
	je	.label_106
	jmp	.label_113
.label_113:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xb4]
	nop	
	sub	eax, 0x42
	mov	dword ptr [rbp - 0xb0], eax
	mov	rsp, rsp
	je	.label_97
	jmp	.label_121
.label_121:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xb4]
	lea	rsi, [rsi]
	sub	eax, 0x44
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x11c], eax
	lea	rsi, [rsi]
	je	.label_122
	lea	rdi, [rdi]
	jmp	.label_132
.label_132:
	mov	eax, dword ptr [rbp - 0xb4]
	nop	
	sub	eax, 0x46
	mov	dword ptr [rbp - 0x170], eax
	mov	rbp, rbp
	je	.label_87
	jmp	.label_141
.label_141:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xb4]
	sub	eax, 0x48
	mov	dword ptr [rbp - 0x17c], eax
	je	.label_51
	lea	rsi, [rsi]
	jmp	.label_152
.label_152:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xb4]
	sub	eax, 0x49
	mov	dword ptr [rbp - 0xac], eax
	je	.label_144
	jmp	.label_158
.label_158:
	mov	eax, dword ptr [rbp - 0xb4]
	sub	eax, 0x4c
	mov	dword ptr [rbp - 0x150], eax
	je	.label_144
	mov	rsp, rsp
	jmp	.label_23
.label_23:
	mov	eax, dword ptr [rbp - 0xb4]
	sub	eax, 0x4e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14c], eax
	mov	rsp, rsp
	je	.label_26
	jmp	.label_33
.label_33:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xb4]
	sub	eax, 0x4f
	mov	dword ptr [rbp - 0xa4], eax
	lea	rdi, [rdi]
	je	.label_34
	nop	
	jmp	.label_39
.label_39:
	mov	eax, dword ptr [rbp - 0xb4]
	sub	eax, 0x53
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	mov	rbp, rbp
	je	.label_41
	jmp	.label_49
.label_49:
	nop	
	mov	eax, dword ptr [rbp - 0xb4]
	lea	rdi, [rdi]
	sub	eax, 0x58
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x50], eax
	lea	rsi, [rsi]
	je	.label_51
	jmp	.label_55
.label_55:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xb4]
	sub	eax, 0x61
	nop	
	mov	dword ptr [rbp - 0x184], eax
	mov	rbp, rbp
	je	.label_56
	lea	rsi, [rsi]
	jmp	.label_70
.label_70:
	mov	eax, dword ptr [rbp - 0xb4]
	lea	rsi, [rsi]
	sub	eax, 0x62
	nop	
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_72
	mov	rsp, rsp
	jmp	.label_79
.label_79:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xb4]
	sub	eax, 0x63
	nop	
	mov	dword ptr [rbp - 0x168], eax
	je	.label_80
	mov	rbp, rbp
	jmp	.label_89
.label_89:
	nop	
	mov	eax, dword ptr [rbp - 0xb4]
	mov	rbp, rbp
	sub	eax, 0x64
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	je	.label_150
	jmp	.label_98
.label_98:
	mov	eax, dword ptr [rbp - 0xb4]
	sub	eax, 0x65
	mov	dword ptr [rbp - 0x6c], eax
	mov	rsp, rsp
	je	.label_87
	nop	
	jmp	.label_104
.label_104:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xb4]
	sub	eax, 0x66
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x120], eax
	nop	
	je	.label_100
	jmp	.label_46
.label_46:
	mov	eax, dword ptr [rbp - 0xb4]
	lea	rsi, [rsi]
	sub	eax, 0x68
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_84
	jmp	.label_148
.label_148:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xb4]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0x124], eax
	lea	rsi, [rsi]
	je	.label_44
	mov	rbp, rbp
	jmp	.label_130
.label_130:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xb4]
	sub	eax, 0x6a
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10c], eax
	lea	rdi, [rdi]
	je	.label_133
	jmp	.label_140
.label_140:
	mov	eax, dword ptr [rbp - 0xb4]
	lea	rdi, [rdi]
	sub	eax, 0x6c
	nop	
	mov	dword ptr [rbp - 0x194], eax
	lea	rsi, [rsi]
	je	.label_144
	jmp	.label_154
.label_154:
	mov	eax, dword ptr [rbp - 0xb4]
	sub	eax, 0x6f
	mov	dword ptr [rbp - 0x134], eax
	je	.label_97
	mov	rsp, rsp
	jmp	.label_131
.label_131:
	nop	
	mov	eax, dword ptr [rbp - 0xb4]
	mov	rsp, rsp
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x180], eax
	je	.label_74
	jmp	.label_160
.label_160:
	mov	eax, dword ptr [rbp - 0xb4]
	sub	eax, 0x74
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	je	.label_52
	jmp	.label_30
.label_30:
	nop	
	mov	eax, dword ptr [rbp - 0xb4]
	nop	
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x164], eax
	je	.label_47
	mov	rsp, rsp
	jmp	.label_36
.label_36:
	mov	eax, dword ptr [rbp - 0xb4]
	mov	rbp, rbp
	sub	eax, 0x77
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x128], eax
	mov	rsp, rsp
	je	.label_25
	jmp	.label_159
.label_159:
	mov	eax, dword ptr [rbp - 0xb4]
	sub	eax, 0x78
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18c], eax
	lea	rsi, [rsi]
	je	.label_84
	jmp	.label_115
.label_115:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xb4]
	mov	rbp, rbp
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x16c], eax
	je	.label_138
	jmp	.label_69
.label_69:
	mov	eax, dword ptr [rbp - 0xb4]
	nop	
	sub	eax, 0x81
	mov	dword ptr [rbp - 0x188], eax
	lea	rsi, [rsi]
	je	.label_71
	lea	rsi, [rsi]
	jmp	.label_78
.label_106:
	nop	
	mov	byte ptr [rbp - 0xf1], 1
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	mov	edx, ecx
	sub	edx, 0x64
	mov	dword ptr [rbp - 0x20], ecx
	mov	dword ptr [rbp - 4], edx
	mov	rsp, rsp
	je	.label_90
	nop	
	jmp	.label_92
.label_92:
	mov	eax, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	sub	eax, 0x6e
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_93
	lea	rdi, [rdi]
	jmp	.label_62
.label_62:
	mov	eax, dword ptr [rbp - 0x20]
	nop	
	sub	eax, 0x6f
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], eax
	je	.label_102
	jmp	.label_111
.label_111:
	nop	
	mov	eax, dword ptr [rbp - 0x20]
	nop	
	sub	eax, 0x78
	mov	dword ptr [rbp - 0xc4], eax
	mov	rsp, rsp
	je	.label_109
	mov	rsp, rsp
	jmp	.label_156
.label_90:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:format_address_std
	mov	qword ptr [word ptr [format_address]],  rax
	mov	dword ptr [dword ptr [address_base]],  0xa
	mov	rbp, rbp
	mov	dword ptr [dword ptr [address_pad_len]],  7
	jmp	.label_117
.label_102:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:format_address_std
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [format_address]],  rax
	mov	dword ptr [dword ptr [address_base]],  8
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [address_pad_len]],  7
	jmp	.label_117
.label_109:
	movabs	rax, OFFSET FLAT:format_address_std
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [format_address]],  rax
	mov	dword ptr [dword ptr [address_base]],  0x10
	mov	dword ptr [dword ptr [address_pad_len]],  6
	mov	rsp, rsp
	jmp	.label_117
.label_93:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:format_address_none
	nop	
	mov	qword ptr [word ptr [format_address]],  rax
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [address_pad_len]],  0
	lea	rdi, [rdi]
	jmp	.label_117
.label_156:
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
.label_117:
	mov	rbp, rbp
	jmp	.label_16
.label_133:
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, eax
	xor	edx, edx
	nop	
	movabs	rcx, OFFSET FLAT:n_bytes_to_skip
	lea	rdi, [rdi]
	movabs	r8, OFFSET FLAT:main.multipliers
	mov	byte ptr [rbp - 0xf1], 1
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	xstrtoumax
	mov	dword ptr [rbp - 0x190], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x190], 0
	je	.label_57
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rbp - 0x190]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x4c]
	mov	eax, dword ptr [rbp - 0x13c]
	mov	dl, al
	lea	rdi, [rdi]
	mov	r8,  qword ptr [word ptr [optarg]]
	movsx	edx, dl
	nop	
	call	xstrtol_fatal
.label_57:
	lea	rsi, [rsi]
	jmp	.label_16
.label_26:
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
	mov	byte ptr [rbp - 0xf1], 1
	mov	byte ptr [byte ptr [limit_bytes_to_format]],  1
	nop	
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	xstrtoumax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x190], eax
	cmp	dword ptr [rbp - 0x190], 0
	mov	rsp, rsp
	je	.label_123
	movabs	rcx, OFFSET FLAT:long_options
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x190]
	mov	esi, dword ptr [rbp - 0x4c]
	mov	eax, dword ptr [rbp - 0x13c]
	mov	dl, al
	mov	r8,  qword ptr [word ptr [optarg]]
	nop	
	movsx	edx, dl
	call	xstrtol_fatal
.label_123:
	lea	rdi, [rdi]
	jmp	.label_16
.label_41:
	nop	
	mov	byte ptr [rbp - 0xf1], 1
	cmp	qword ptr [word ptr [optarg]],  0
	mov	rbp, rbp
	jne	.label_45
	mov	rsp, rsp
	mov	qword ptr [word ptr [string_min]],  3
	mov	rbp, rbp
	jmp	.label_73
.label_45:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	esi, eax
	xor	edx, edx
	nop	
	lea	rcx, [rbp - 0x108]
	lea	rsi, [rsi]
	movabs	r8, OFFSET FLAT:main.multipliers
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	xstrtoumax
	nop	
	mov	dword ptr [rbp - 0x190], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x190], 0
	mov	rsp, rsp
	je	.label_88
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:long_options
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x190]
	mov	esi, dword ptr [rbp - 0x4c]
	mov	eax, dword ptr [rbp - 0x13c]
	mov	dl, al
	lea	rdi, [rdi]
	mov	r8,  qword ptr [word ptr [optarg]]
	movsx	edx, dl
	call	xstrtol_fatal
.label_88:
	mov	rax, -1
	cmp	rax, qword ptr [rbp - 0x108]
	jae	.label_31
	movabs	rdi, OFFSET FLAT:.str.20
	lea	rdi, [rdi]
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x28], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
.label_31:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	nop	
	mov	qword ptr [word ptr [string_min]],  rax
.label_73:
	mov	byte ptr [byte ptr [flag_dump_strings]],  1
	jmp	.label_16
.label_52:
	nop	
	mov	byte ptr [rbp - 0xf1], 1
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	rsp, rsp
	call	decode_format_string
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0xcd]
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
	mov	byte ptr [rbp - 0xcd], al
	jmp	.label_16
.label_47:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xf1], 1
	mov	rsp, rsp
	mov	byte ptr [byte ptr [abbreviate_duplicate_blocks]],  0
	mov	rbp, rbp
	jmp	.label_16
.label_138:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [traditional]],  1
	lea	rdi, [rdi]
	jmp	.label_16
.label_71:
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
	mov	dword ptr [rbp - 0xd4], r10d
	lea	rdi, [rdi]
	je	.label_119
	lea	rsi, [rsi]
	jmp	.label_125
.label_125:
	nop	
	mov	eax, dword ptr [rbp - 0xd4]
	sub	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x7c], eax
	jne	.label_127
	lea	rsi, [rsi]
	jmp	.label_136
.label_136:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [input_swap]],  1
	lea	rsi, [rsi]
	jmp	.label_127
.label_119:
	mov	byte ptr [byte ptr [input_swap]],  0
.label_127:
	jmp	.label_16
.label_56:
	movabs	rdi, OFFSET FLAT:.str.22
	call	decode_format_string
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xcd]
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	and	edx, ecx
	lea	rdi, [rdi]
	cmp	edx, 0
	setne	al
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0xcd], al
	jmp	.label_16
.label_72:
	movabs	rdi, OFFSET FLAT:.str.23
	lea	rdi, [rdi]
	call	decode_format_string
	and	al, 1
	nop	
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0xcd]
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
	mov	byte ptr [rbp - 0xcd], al
	jmp	.label_16
.label_80:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.5_0
	lea	rdi, [rdi]
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0xcd]
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	nop	
	setne	al
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0xcd], al
	mov	rbp, rbp
	jmp	.label_16
.label_122:
	movabs	rdi, OFFSET FLAT:.str.25
	call	decode_format_string
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0xcd]
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
	mov	byte ptr [rbp - 0xcd], al
	lea	rsi, [rsi]
	jmp	.label_16
.label_150:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.26
	call	decode_format_string
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0xcd]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xcd], al
	jmp	.label_16
.label_87:
	nop	
	movabs	rdi, OFFSET FLAT:.str.27
	call	decode_format_string
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xcd]
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
	mov	byte ptr [rbp - 0xcd], al
	lea	rdi, [rdi]
	jmp	.label_16
.label_100:
	movabs	rdi, OFFSET FLAT:.str.28
	lea	rdi, [rdi]
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xcd]
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
	mov	byte ptr [rbp - 0xcd], al
	jmp	.label_16
.label_51:
	movabs	rdi, OFFSET FLAT:.str.29
	nop	
	call	decode_format_string
	lea	rsi, [rsi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	nop	
	mov	al, byte ptr [rbp - 0xcd]
	and	al, 1
	lea	rsi, [rsi]
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xcd], al
	jmp	.label_16
.label_44:
	movabs	rdi, OFFSET FLAT:.str.30
	call	decode_format_string
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0xcd]
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
	mov	byte ptr [rbp - 0xcd], al
	jmp	.label_16
.label_144:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.31
	lea	rsi, [rsi]
	call	decode_format_string
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xcd]
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
	mov	byte ptr [rbp - 0xcd], al
	jmp	.label_16
.label_34:
	movabs	rdi, OFFSET FLAT:.str.32
	lea	rdi, [rdi]
	call	decode_format_string
	and	al, 1
	movzx	ecx, al
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xcd]
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
	mov	byte ptr [rbp - 0xcd], al
	mov	rsp, rsp
	jmp	.label_16
.label_97:
	movabs	rdi, OFFSET FLAT:.str.33
	call	decode_format_string
	lea	rsi, [rsi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0xcd]
	lea	rdi, [rdi]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xcd], al
	nop	
	jmp	.label_16
.label_74:
	nop	
	movabs	rdi, OFFSET FLAT:.str.34
	lea	rsi, [rsi]
	call	decode_format_string
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0xcd]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	mov	rbp, rbp
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0xcd], al
	mov	rsp, rsp
	jmp	.label_16
.label_84:
	movabs	rdi, OFFSET FLAT:.str.35
	lea	rdi, [rdi]
	call	decode_format_string
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0xcd]
	nop	
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0xcd], al
	jmp	.label_16
.label_25:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xf1], 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x6d], 1
	cmp	qword ptr [word ptr [optarg]],  0
	jne	.label_85
	mov	qword ptr [rbp - 0xf0], 0x20
	lea	rdi, [rdi]
	jmp	.label_143
.label_85:
	xor	eax, eax
	mov	esi, eax
	lea	rsi, [rsi]
	mov	edx, 0xa
	mov	rsp, rsp
	lea	rcx, [rbp - 0x148]
	mov	rbp, rbp
	movabs	r8, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	call	xstrtoumax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x190], eax
	cmp	dword ptr [rbp - 0x190], 0
	je	.label_108
	movabs	rcx, OFFSET FLAT:long_options
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x190]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x4c]
	mov	eax, dword ptr [rbp - 0x13c]
	mov	rbp, rbp
	mov	dl, al
	mov	r8,  qword ptr [word ptr [optarg]]
	movsx	edx, dl
	nop	
	call	xstrtol_fatal
.label_108:
	mov	rax, -1
	cmp	rax, qword ptr [rbp - 0x148]
	mov	rbp, rbp
	jae	.label_21
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.20
	call	gettext
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x78], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	nop	
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_21:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0xf0], rax
.label_143:
	nop	
	jmp	.label_16
.label_96:
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	call	usage
.label_82:
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
.label_78:
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_16:
	mov	rsp, rsp
	jmp	.label_99
.label_81:
	test	byte ptr [rbp - 0xcd], 1
	nop	
	jne	.label_101
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc8], 1
	jmp	.label_105
.label_101:
	nop	
	test	byte ptr [byte ptr [flag_dump_strings]],  1
	lea	rsi, [rsi]
	je	.label_110
	cmp	qword ptr [word ptr [n_specs]],  0
	mov	rbp, rbp
	jbe	.label_110
	movabs	rdi, OFFSET FLAT:.str.38
	lea	rdi, [rdi]
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
.label_110:
	mov	eax, dword ptr [rbp - 0x1c]
	sub	eax,  dword ptr [dword ptr [optind]]
	nop	
	mov	dword ptr [rbp - 0x84], eax
	mov	rbp, rbp
	test	byte ptr [rbp - 0xf1], 1
	nop	
	je	.label_129
	mov	rbp, rbp
	test	byte ptr [byte ptr [traditional]],  1
	lea	rdi, [rdi]
	je	.label_48
.label_129:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x84]
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rbp, rbp
	sub	ecx, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x160], eax
	mov	dword ptr [rbp - 0xd8], ecx
	je	.label_20
	jmp	.label_155
.label_155:
	mov	eax, dword ptr [rbp - 0x160]
	sub	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x174], eax
	lea	rdi, [rdi]
	je	.label_157
	jmp	.label_22
.label_22:
	mov	eax, dword ptr [rbp - 0x160]
	lea	rsi, [rsi]
	sub	eax, 3
	mov	dword ptr [rbp - 0x178], eax
	je	.label_24
	jmp	.label_29
.label_20:
	mov	rsp, rsp
	test	byte ptr [byte ptr [traditional]],  1
	jne	.label_32
	mov	rbp, rbp
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0x2b
	mov	rsp, rsp
	jne	.label_35
.label_32:
	lea	rsi, [rbp - 0x38]
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rdi, qword ptr [rcx + rax*8]
	call	parse_old_offset
	test	al, 1
	jne	.label_54
	jmp	.label_35
.label_54:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [word ptr [n_bytes_to_skip]],  rax
	mov	ecx, dword ptr [rbp - 0x84]
	lea	rsi, [rsi]
	add	ecx, -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x84], ecx
	mov	rax, qword ptr [rbp - 0xc0]
	add	rax, 8
	mov	qword ptr [rbp - 0xc0], rax
.label_35:
	mov	rsp, rsp
	jmp	.label_29
.label_157:
	nop	
	test	byte ptr [byte ptr [traditional]],  1
	jne	.label_76
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	rsp, rsp
	add	eax, 1
	movsxd	rcx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rdx + rcx*8]
	movsx	eax, byte ptr [rcx]
	cmp	eax, 0x2b
	mov	rbp, rbp
	je	.label_76
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rdx + rcx*8]
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rcx]
	sub	eax, 0x30
	lea	rdi, [rdi]
	cmp	eax, 9
	ja	.label_27
.label_76:
	mov	rbp, rbp
	lea	rsi, [rbp - 0x90]
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [optind]]
	nop	
	add	eax, 1
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rdx + rcx*8]
	lea	rdi, [rdi]
	call	parse_old_offset
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_120
	jmp	.label_27
.label_120:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [traditional]],  1
	je	.label_126
	lea	rsi, [rbp - 0x38]
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rdi, qword ptr [rcx + rax*8]
	call	parse_old_offset
	mov	rsp, rsp
	test	al, 1
	mov	rbp, rbp
	jne	.label_139
	jmp	.label_126
.label_139:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [n_bytes_to_skip]],  rax
	mov	byte ptr [byte ptr [flag_pseudo_start]],  1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 0x100], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	add	rax, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc0], rax
	mov	ecx, dword ptr [rbp - 0x84]
	sub	ecx, 2
	mov	dword ptr [rbp - 0x84], ecx
	mov	rsp, rsp
	jmp	.label_147
.label_126:
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [word ptr [n_bytes_to_skip]],  rax
	mov	ecx, dword ptr [rbp - 0x84]
	add	ecx, -1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x84], ecx
	mov	rbp, rbp
	movsxd	rax,  dword ptr [dword ptr [optind]]
	nop	
	mov	rdx, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdx + rax*8]
	mov	ecx,  dword ptr [dword ptr [optind]]
	mov	rsp, rsp
	add	ecx, 1
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	qword ptr [rsi + rdx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	add	rax, 8
	nop	
	mov	qword ptr [rbp - 0xc0], rax
.label_147:
	jmp	.label_27
.label_27:
	mov	rbp, rbp
	jmp	.label_29
.label_24:
	test	byte ptr [byte ptr [traditional]],  1
	je	.label_42
	mov	rsp, rsp
	lea	rsi, [rbp - 0x38]
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rdi, qword ptr [rdx + rcx*8]
	call	parse_old_offset
	test	al, 1
	jne	.label_77
	jmp	.label_42
.label_77:
	mov	rsp, rsp
	lea	rsi, [rbp - 0x90]
	mov	eax,  dword ptr [dword ptr [optind]]
	nop	
	add	eax, 2
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdx + rcx*8]
	lea	rdi, [rdi]
	call	parse_old_offset
	test	al, 1
	nop	
	jne	.label_94
	lea	rdi, [rdi]
	jmp	.label_42
.label_94:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [word ptr [n_bytes_to_skip]],  rax
	mov	byte ptr [byte ptr [flag_pseudo_start]],  1
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x100], rax
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rax, qword ptr [rcx + rax*8]
	mov	edx,  dword ptr [dword ptr [optind]]
	add	edx, 2
	lea	rsi, [rsi]
	movsxd	rcx, edx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	add	rax, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], rax
	mov	edx, dword ptr [rbp - 0x84]
	sub	edx, 2
	mov	dword ptr [rbp - 0x84], edx
.label_42:
	jmp	.label_29
.label_29:
	test	byte ptr [byte ptr [traditional]],  1
	nop	
	je	.label_135
	lea	rdi, [rdi]
	mov	eax, 1
	nop	
	cmp	eax, dword ptr [rbp - 0x84]
	jge	.label_135
	movabs	rdi, OFFSET FLAT:.str.39
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [optind]]
	lea	rsi, [rsi]
	add	ecx, 1
	movsxd	rdi, ecx
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rdi, qword ptr [rdx + rdi*8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa0], rax
	mov	rbp, rbp
	call	quote
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa0]
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
.label_135:
	jmp	.label_48
.label_48:
	test	byte ptr [byte ptr [flag_pseudo_start]],  1
	lea	rdi, [rdi]
	je	.label_50
	movabs	rax, OFFSET FLAT:format_address_none
	nop	
	cmp	qword ptr [word ptr [format_address]],  rax
	jne	.label_67
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:format_address_paren
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [address_base]],  8
	mov	dword ptr [dword ptr [address_pad_len]],  7
	mov	qword ptr [word ptr [format_address]],  rax
	mov	rbp, rbp
	jmp	.label_59
.label_67:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:format_address_label
	mov	qword ptr [word ptr [format_address]],  rax
.label_59:
	nop	
	jmp	.label_50
.label_50:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [limit_bytes_to_format]],  1
	nop	
	je	.label_86
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [n_bytes_to_skip]]
	add	rax,  qword ptr [word ptr [max_bytes_to_format]]
	mov	rbp, rbp
	mov	qword ptr [word ptr [end_offset]],  rax
	mov	rax,  qword ptr [word ptr [end_offset]]
	cmp	rax,  qword ptr [word ptr [n_bytes_to_skip]]
	jae	.label_91
	movabs	rdi, OFFSET FLAT:.str.42
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	nop	
	mov	al, 0
	nop	
	call	error
.label_91:
	lea	rdi, [rdi]
	jmp	.label_86
.label_86:
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [n_specs]],  0
	mov	rbp, rbp
	jne	.label_28
	nop	
	movabs	rdi, OFFSET FLAT:.str.43
	call	decode_format_string
	mov	byte ptr [rbp - 0xa5], al
.label_28:
	cmp	dword ptr [rbp - 0x84], 0
	mov	rbp, rbp
	jle	.label_128
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rbp, rbp
	shl	rax, 3
	add	rax, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	mov	qword ptr [word ptr [file_list]],  rax
	lea	rsi, [rsi]
	jmp	.label_134
.label_128:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:default_file_list
	mov	qword ptr [word ptr [file_list]],  rax
.label_134:
	lea	rdi, [rdi]
	call	open_next_file
	and	al, 1
	mov	byte ptr [rbp - 0xcd], al
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [in_stream]],  0
	lea	rsi, [rsi]
	jne	.label_153
	mov	rbp, rbp
	jmp	.label_37
.label_153:
	mov	rdi,  qword ptr [word ptr [n_bytes_to_skip]]
	call	skip
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xcd]
	nop	
	and	al, 1
	movzx	edx, al
	mov	rbp, rbp
	and	edx, ecx
	nop	
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0xcd], al
	cmp	qword ptr [word ptr [in_stream]],  0
	mov	rsp, rsp
	jne	.label_40
	jmp	.label_37
.label_40:
	nop	
	test	byte ptr [byte ptr [flag_pseudo_start]],  1
	lea	rdi, [rdi]
	je	.label_38
	mov	rax, qword ptr [rbp - 0x100]
	sub	rax,  qword ptr [word ptr [n_bytes_to_skip]]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_43
.label_38:
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_43
.label_43:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [pseudo_offset]],  rax
	mov	rsp, rsp
	call	get_lcm
	mov	dword ptr [rbp - 0x5c], eax
	test	byte ptr [rbp - 0x6d], 1
	nop	
	je	.label_61
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xf0], 0
	lea	rsi, [rsi]
	je	.label_68
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	div	rcx
	lea	rsi, [rsi]
	cmp	rdx, 0
	jne	.label_68
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [word ptr [bytes_per_block]],  rax
	jmp	.label_83
.label_68:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.44
	lea	rdi, [rdi]
	call	gettext
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x130], rdi
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x130]
	mov	al, 0
	nop	
	call	error
	nop	
	movsxd	rcx, dword ptr [rbp - 0x5c]
	mov	qword ptr [word ptr [bytes_per_block]],  rcx
.label_83:
	jmp	.label_112
.label_61:
	cmp	dword ptr [rbp - 0x5c], 0x10
	jge	.label_114
	lea	rdi, [rdi]
	mov	eax, 0x10
	nop	
	mov	ecx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	cdq	
	nop	
	idiv	dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	imul	ecx, eax
	movsxd	rsi, ecx
	mov	qword ptr [word ptr [bytes_per_block]],  rsi
	jmp	.label_116
.label_114:
	movsxd	rax, dword ptr [rbp - 0x5c]
	mov	qword ptr [word ptr [bytes_per_block]],  rax
.label_116:
	jmp	.label_112
.label_112:
	mov	qword ptr [rbp - 0x158], 0
.label_75:
	nop	
	mov	rax, qword ptr [rbp - 0x158]
	cmp	rax,  qword ptr [word ptr [n_specs]]
	jae	.label_137
	mov	rax,  qword ptr [word ptr [bytes_per_block]]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x158]
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
	mov	dword ptr [rbp - 0x3c], esi
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x158]
	mov	rbp, rbp
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	mov	esi, dword ptr [rax + 0x1c]
	add	esi, 1
	nop	
	imul	esi, dword ptr [rbp - 0x3c]
	nop	
	mov	dword ptr [rbp - 0x138], esi
	mov	rax, qword ptr [rbp - 0x98]
	movsxd	rcx, dword ptr [rbp - 0x138]
	cmp	rax, rcx
	jae	.label_142
	movsxd	rax, dword ptr [rbp - 0x138]
	nop	
	mov	qword ptr [rbp - 0x98], rax
.label_142:
	lea	rdi, [rdi]
	jmp	.label_151
.label_151:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x158]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x158], rax
	jmp	.label_75
.label_137:
	mov	qword ptr [rbp - 0x158], 0
.label_58:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x158]
	cmp	rax,  qword ptr [word ptr [n_specs]]
	nop	
	jae	.label_53
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [bytes_per_block]]
	mov	rcx, qword ptr [rbp - 0x158]
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
	mov	dword ptr [rbp - 0x15c], esi
	nop	
	mov	rax, qword ptr [rbp - 0x158]
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	mov	esi, dword ptr [rax + 0x1c]
	mov	rsp, rsp
	imul	esi, dword ptr [rbp - 0x15c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xdc], esi
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0xdc]
	mov	rsp, rsp
	sub	rax, rcx
	mov	rbp, rbp
	mov	esi, eax
	mov	rax, qword ptr [rbp - 0x158]
	nop	
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	mov	rsp, rsp
	mov	dword ptr [rax + 0x20], esi
	mov	rax, qword ptr [rbp - 0x158]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x158], rax
	lea	rsi, [rsi]
	jmp	.label_58
.label_53:
	test	byte ptr [byte ptr [flag_dump_strings]],  1
	je	.label_118
	call	dump_strings
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x80], ecx
	jmp	.label_60
.label_118:
	lea	rdi, [rdi]
	call	dump
	and	al, 1
	movzx	ecx, al
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x80], ecx
.label_60:
	mov	eax, dword ptr [rbp - 0x80]
	mov	cl, byte ptr [rbp - 0xcd]
	and	cl, 1
	movzx	edx, cl
	and	edx, eax
	mov	rsp, rsp
	cmp	edx, 0
	nop	
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 0xcd], cl
.label_37:
	test	byte ptr [byte ptr [have_read_stdin]],  1
	lea	rsi, [rsi]
	je	.label_146
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [stdin]]
	lea	rsi, [rsi]
	call	rpl_fclose
	cmp	eax, -1
	lea	rdi, [rdi]
	jne	.label_146
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.45
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x30], esi
	call	gettext
	mov	edi, 1
	nop	
	mov	esi, dword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdx, rax
	mov	al, 0
	call	error
.label_146:
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rsp, rsp
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0xcd]
	lea	rsi, [rsi]
	test	dl, 1
	cmovne	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc8], eax
.label_105:
	mov	eax, dword ptr [rbp - 0xc8]
	add	rsp, 0x1a0
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x403a60

	.globl format_address_std
	.type format_address_std, @function
format_address_std:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x60
	mov	al, sil
	mov	qword ptr [rbp - 0x38], rdi
	mov	byte ptr [rbp - 1], al
	lea	rdi, [rbp - 0x17]
	mov	qword ptr [rbp - 0x50], rdi
	mov	rbp, rbp
	lea	rdi, [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rdi
	mov	byte ptr [rbp - 0x18], 0
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, rdi
	dec	rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rcx
	mov	byte ptr [rdi - 1], al
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	movsxd	rdi,  dword ptr [dword ptr [rip + address_pad_len]]
	mov	rsp, rsp
	sub	rcx, rdi
	mov	qword ptr [rbp - 0x48], rcx
	mov	esi,  dword ptr [dword ptr [rip + address_base]]
	lea	rsi, [rsi]
	mov	edx, esi
	nop	
	sub	edx, 8
	mov	dword ptr [rbp - 0x54], esi
	nop	
	mov	dword ptr [rbp - 0x10], edx
	je	.label_162
	nop	
	jmp	.label_163
.label_163:
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0xa
	nop	
	mov	dword ptr [rbp - 0x3c], eax
	nop	
	je	.label_165
	mov	rbp, rbp
	jmp	.label_171
.label_171:
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x10
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	je	.label_172
	jmp	.label_168
.label_162:
	nop	
	jmp	.label_169
.label_169:
	mov	rax, qword ptr [rbp - 0x38]
	and	rax, 7
	add	rax, 0x30
	nop	
	mov	cl, al
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, rax
	mov	rsp, rsp
	add	rdx, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rdx
	mov	byte ptr [rax - 1], cl
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	shr	rax, 3
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	cmp	rax, 0
	jne	.label_169
	jmp	.label_168
.label_165:
	jmp	.label_170
.label_170:
	lea	rdi, [rdi]
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	xor	edx, edx
	div	rcx
	mov	rsp, rsp
	add	rdx, 0x30
	mov	sil, dl
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, rcx
	add	rdx, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rdx
	lea	rdi, [rdi]
	mov	byte ptr [rcx - 1], sil
	mov	rbp, rbp
	mov	eax, 0xa
	mov	rsp, rsp
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rsp, rsp
	div	rcx
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_170
	jmp	.label_168
.label_172:
	mov	rbp, rbp
	jmp	.label_164
.label_164:
	mov	rax, qword ptr [rbp - 0x38]
	and	rax, 0xf
	mov	cl,  byte ptr [byte ptr [+ (rax * 1) + .str.63]]
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdx, rax
	mov	rsp, rsp
	add	rdx, -1
	nop	
	mov	qword ptr [rbp - 0x50], rdx
	mov	byte ptr [rax - 1], cl
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	shr	rax, 4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_164
	jmp	.label_168
.label_168:
	nop	
	jmp	.label_166
.label_166:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	jae	.label_167
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, -1
	mov	qword ptr [rbp - 0x50], rcx
	nop	
	mov	byte ptr [rax - 1], 0x30
	lea	rdi, [rdi]
	jmp	.label_166
.label_167:
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 8], eax
	nop	
	add	rsp, 0x60
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ca0

	.globl format_address_none
	.type format_address_none, @function
format_address_none:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	al, sil
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], al
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403cc0

	.globl decode_format_string
	.type decode_format_string, @function
decode_format_string:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	je	.label_173
	nop	
	jmp	.label_178
.label_173:
	movabs	rdi, OFFSET FLAT:.str.75
	movabs	rsi, OFFSET FLAT:.str.76
	mov	edx, 0x3d8
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.decode_format_string
	call	__assert_fail
.label_178:
	lea	rdi, [rdi]
	jmp	.label_174
.label_174:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_180
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [n_specs_allocated]]
	nop	
	cmp	rax,  qword ptr [word ptr [n_specs]]
	lea	rdi, [rdi]
	ja	.label_181
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
.label_181:
	mov	rbp, rbp
	lea	rdx, [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 8]
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
	jne	.label_175
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_179
.label_175:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_176
	mov	rbp, rbp
	jmp	.label_177
.label_176:
	movabs	rdi, OFFSET FLAT:.str.77
	movabs	rsi, OFFSET FLAT:.str.76
	lea	rdi, [rdi]
	mov	edx, 0x3e4
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.decode_format_string
	lea	rdi, [rdi]
	call	__assert_fail
.label_177:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [n_specs]]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [word ptr [n_specs]],  rax
	jmp	.label_174
.label_180:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11], 1
.label_179:
	mov	al, byte ptr [rbp - 0x11]
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	lea	rsi, [rsi]
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403e70

	.globl parse_old_offset
	.type parse_old_offset, @function
parse_old_offset:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rsi]
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_186
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_182
.label_186:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2b
	lea	rdi, [rdi]
	jne	.label_185
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
.label_185:
	mov	esi, 0x2e
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	call	strchr
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_183
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], 0xa
	jmp	.label_184
.label_183:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x30
	mov	rbp, rbp
	jne	.label_189
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax + 1]
	lea	rsi, [rsi]
	cmp	ecx, 0x78
	lea	rsi, [rsi]
	je	.label_188
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	cmp	ecx, 0x58
	jne	.label_189
.label_188:
	nop	
	mov	dword ptr [rbp - 8], 0x10
	nop	
	jmp	.label_187
.label_189:
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], 8
.label_187:
	mov	rbp, rbp
	jmp	.label_184
.label_184:
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, eax
	mov	rbp, rbp
	movabs	r8, OFFSET FLAT:.str.108
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	xstrtoumax
	lea	rsi, [rsi]
	cmp	eax, 0
	nop	
	sete	r9b
	and	r9b, 1
	mov	byte ptr [rbp - 1], r9b
.label_182:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x403fb0

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
	mov	byte ptr [rbp - 0xd], al
	mov	edi, esi
	lea	rsi, [rsi]
	call	putchar_unlocked
	mov	esi, 0x29
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0xc], eax
	call	format_address_std
	cmp	byte ptr [rbp - 0xd], 0
	je	.label_190
	movsx	edi, byte ptr [rbp - 0xd]
	call	putchar_unlocked
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
.label_190:
	nop	
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404020

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
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], al
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	format_address_std
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	add	rdi,  qword ptr [word ptr [pseudo_offset]]
	nop	
	movsx	esi, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	call	format_address_paren
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404080

	.globl open_next_file
	.type open_next_file, @function
open_next_file:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	byte ptr [rbp - 9], 1
.label_197:
	mov	rax,  qword ptr [word ptr [file_list]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	qword ptr [word ptr [input_filename]],  rax
	cmp	qword ptr [word ptr [input_filename]],  0
	mov	rbp, rbp
	jne	.label_192
	mov	al, byte ptr [rbp - 9]
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0xa], al
	jmp	.label_196
.label_192:
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
	jne	.label_198
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
	jmp	.label_193
.label_198:
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.110
	mov	rdi,  qword ptr [word ptr [input_filename]]
	call	fopen
	mov	rsp, rsp
	mov	qword ptr [word ptr [in_stream]],  rax
	mov	rbp, rbp
	cmp	qword ptr [word ptr [in_stream]],  0
	nop	
	jne	.label_195
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, 3
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [input_filename]]
	mov	dword ptr [rbp - 4], ecx
	call	quotearg_n_style_colon
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], 0
.label_195:
	mov	rsp, rsp
	jmp	.label_193
.label_193:
	mov	rbp, rbp
	jmp	.label_194
.label_194:
	cmp	qword ptr [word ptr [in_stream]],  0
	lea	rdi, [rdi]
	je	.label_197
	nop	
	test	byte ptr [byte ptr [limit_bytes_to_format]],  1
	je	.label_191
	mov	rsp, rsp
	test	byte ptr [byte ptr [flag_dump_strings]],  1
	jne	.label_191
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
	mov	dword ptr [rbp - 8], eax
.label_191:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa], al
.label_196:
	mov	al, byte ptr [rbp - 0xa]
	nop	
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404270

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
	mov	dword ptr [rbp - 0x20c4], 0
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_219
	nop	
	mov	byte ptr [rbp - 0x202d], 1
	jmp	.label_213
.label_219:
	nop	
	jmp	.label_210
.label_210:
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [in_stream]],  0
	je	.label_207
	mov	rdi,  qword ptr [word ptr [in_stream]]
	call	fileno
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x20c0]
	mov	edi, eax
	nop	
	call	__fstat
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_217
	lea	rdi, [rbp - 0x20c0]
	mov	rsp, rsp
	call	usable_st_size
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_200
	jmp	.label_203
.label_200:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x2088]
	jge	.label_205
	movabs	rax, 0x2000000000000000
	nop	
	cmp	qword ptr [rbp - 0x2088], rax
	lea	rsi, [rsi]
	ja	.label_205
	mov	rax, qword ptr [rbp - 0x2088]
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_215
.label_205:
	mov	eax, 0x200
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_215
.label_215:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x2090]
	jge	.label_203
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x2090]
	cmp	rax, qword ptr [rbp - 0x10]
	nop	
	jae	.label_220
	mov	rax, qword ptr [rbp - 0x2090]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	sub	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_204
.label_220:
	lea	rdi, [rdi]
	mov	edx, 1
	nop	
	mov	rdi,  qword ptr [word ptr [in_stream]]
	mov	rsi, qword ptr [rbp - 0x10]
	call	rpl_fseeko
	cmp	eax, 0
	je	.label_211
	nop	
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x20c4], ecx
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11], 0
.label_211:
	mov	qword ptr [rbp - 0x10], 0
.label_204:
	jmp	.label_202
.label_203:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20d0], 0x2000
.label_199:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 0x10]
	jae	.label_201
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20d0]
	jae	.label_206
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x20d0], rax
.label_206:
	mov	rsp, rsp
	mov	eax, 1
	mov	esi, eax
	lea	rdi, [rbp - 0x2020]
	mov	rdx, qword ptr [rbp - 0x20d0]
	mov	rcx,  qword ptr [word ptr [in_stream]]
	call	fread_unlocked
	mov	qword ptr [rbp - 0x2028], rax
	mov	rax, qword ptr [rbp - 0x2028]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rax, qword ptr [rbp - 0x2028]
	cmp	rax, qword ptr [rbp - 0x20d0]
	nop	
	je	.label_216
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [in_stream]]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_209
	lea	rdi, [rdi]
	call	__errno_location
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x20c4], ecx
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_201
.label_209:
	mov	rdi,  qword ptr [word ptr [in_stream]]
	call	feof_unlocked
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_218
	mov	rsp, rsp
	jmp	.label_201
.label_218:
	jmp	.label_216
.label_216:
	jmp	.label_199
.label_201:
	lea	rsi, [rsi]
	jmp	.label_202
.label_202:
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	jne	.label_212
	nop	
	jmp	.label_207
.label_212:
	mov	rbp, rbp
	jmp	.label_208
.label_217:
	call	__errno_location
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [input_filename]]
	mov	dword ptr [rbp - 0x202c], ecx
	call	quotearg_n_style_colon
	nop	
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0x202c]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], 0
.label_208:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x20c4]
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
	jmp	.label_210
.label_207:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_214
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
.label_214:
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x202d], al
.label_213:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x202d]
	nop	
	and	al, 1
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x20d0
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404640

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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046e0

	.globl dump_strings
	.type dump_strings, @function
dump_strings:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
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
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_226
.label_242:
	nop	
	mov	rax,  qword ptr [word ptr [string_min]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_226:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	call	xmalloc
	mov	qword ptr [rbp - 0x18], rax
	mov	rax,  qword ptr [word ptr [n_bytes_to_skip]]
	mov	qword ptr [rbp - 0x78], rax
	mov	byte ptr [rbp - 9], 1
.label_230:
	jmp	.label_240
.label_240:
	test	byte ptr [byte ptr [limit_bytes_to_format]],  1
	nop	
	je	.label_224
	mov	rax,  qword ptr [word ptr [end_offset]]
	cmp	rax,  qword ptr [word ptr [string_min]]
	mov	rsp, rsp
	jb	.label_245
	mov	rax,  qword ptr [word ptr [end_offset]]
	sub	rax,  qword ptr [word ptr [string_min]]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x78]
	nop	
	ja	.label_224
.label_245:
	mov	rsp, rsp
	jmp	.label_237
.label_224:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], 0
.label_248:
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	cmp	rax,  qword ptr [word ptr [string_min]]
	jae	.label_233
	lea	rdi, [rbp - 0x38]
	mov	rbp, rbp
	call	read_char
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	nop	
	mov	al, byte ptr [rbp - 9]
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
	mov	byte ptr [rbp - 9], al
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	add	rdi, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rdi
	cmp	dword ptr [rbp - 0x38], 0
	mov	rsp, rsp
	jge	.label_238
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	call	free
	mov	al, byte ptr [rbp - 9]
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	nop	
	jmp	.label_227
.label_238:
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	movzx	edx, word ptr [rax + rcx*2]
	mov	rbp, rbp
	and	edx, 0x4000
	cmp	edx, 0
	jne	.label_239
	jmp	.label_240
.label_239:
	mov	eax, dword ptr [rbp - 0x38]
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rsi + rdx], cl
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	nop	
	jmp	.label_248
.label_233:
	jmp	.label_243
.label_243:
	mov	al, 1
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [limit_bytes_to_format]],  1
	mov	byte ptr [rbp - 0x4d], al
	mov	rbp, rbp
	je	.label_231
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	cmp	rax,  qword ptr [word ptr [end_offset]]
	setb	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x4d], cl
.label_231:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x4d]
	test	al, 1
	mov	rbp, rbp
	jne	.label_241
	mov	rbp, rbp
	jmp	.label_229
.label_241:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	cmp	rax, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	jne	.label_246
	nop	
	lea	rsi, [rbp - 0x68]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	call	x2realloc
	mov	qword ptr [rbp - 0x18], rax
.label_246:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x38]
	nop	
	call	read_char
	nop	
	and	al, 1
	movzx	ecx, al
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 9]
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
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 0x78]
	add	rdi, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rdi
	nop	
	cmp	dword ptr [rbp - 0x38], 0
	mov	rbp, rbp
	jge	.label_232
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	free
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x31], al
	nop	
	jmp	.label_227
.label_232:
	cmp	dword ptr [rbp - 0x38], 0
	mov	rsp, rsp
	jne	.label_228
	jmp	.label_229
.label_228:
	movsxd	rax, dword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x70]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	lea	rsi, [rsi]
	cmp	edx, 0
	lea	rsi, [rsi]
	jne	.label_234
	mov	rsp, rsp
	jmp	.label_240
.label_234:
	nop	
	mov	eax, dword ptr [rbp - 0x38]
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsi, rdx
	add	rsi, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
	mov	rsp, rsp
	jmp	.label_243
.label_229:
	mov	rbp, rbp
	mov	esi, 0x20
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
	mov	rax,  qword ptr [word ptr [format_address]]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rbp - 0x48]
	sub	rcx, 1
	mov	rdi, rcx
	call	rax
	mov	qword ptr [rbp - 0x48], 0
.label_247:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x38], edx
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_236
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x38]
	mov	rsp, rsp
	add	eax, -7
	lea	rdi, [rdi]
	mov	ecx, eax
	sub	eax, 6
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], eax
	ja	.label_244
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_225]]
	mov	rsp, rsp
	jmp	rcx
.label_1029:
	movabs	rdi, OFFSET FLAT:.str.97
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x60], eax
	nop	
	jmp	.label_223
.label_1030:
	movabs	rdi, OFFSET FLAT:.str.98
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_223
.label_1034:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.99
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x5c], eax
	lea	rsi, [rsi]
	jmp	.label_223
.label_1032:
	movabs	rdi, OFFSET FLAT:.str.100
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], eax
	nop	
	jmp	.label_223
.label_1035:
	movabs	rdi, OFFSET FLAT:.str.101
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_223
.label_1031:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.102
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x30], eax
	lea	rdi, [rdi]
	jmp	.label_223
.label_1033:
	nop	
	movabs	rdi, OFFSET FLAT:.str.103
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_223
.label_244:
	mov	edi, dword ptr [rbp - 0x38]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x4c], eax
.label_223:
	lea	rsi, [rsi]
	jmp	.label_235
.label_235:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_247
.label_236:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], eax
	nop	
	jmp	.label_230
.label_237:
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
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	mov	rsp, rsp
	and	ecx, edi
	cmp	ecx, 0
	setne	al
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 9], al
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 9]
	nop	
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
.label_227:
	mov	al, byte ptr [rbp - 0x31]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x80
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c50

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
	mov	byte ptr [rbp - 5], 0
	nop	
	mov	byte ptr [rbp - 0x29], 1
	mov	rsi,  qword ptr [word ptr [bytes_per_block]]
	mov	rbp, rbp
	call	xnmalloc
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax,  qword ptr [word ptr [bytes_per_block]]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax,  qword ptr [word ptr [n_bytes_to_skip]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	test	byte ptr [byte ptr [limit_bytes_to_format]],  1
	je	.label_251
	jmp	.label_257
.label_257:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	cmp	rax,  qword ptr [word ptr [end_offset]]
	mov	rbp, rbp
	jb	.label_265
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	jmp	.label_254
.label_265:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [end_offset]]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	cmp	rax,  qword ptr [word ptr [bytes_per_block]]
	mov	rsp, rsp
	jae	.label_260
	nop	
	mov	rax,  qword ptr [word ptr [end_offset]]
	sub	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_256
.label_260:
	mov	rax,  qword ptr [word ptr [bytes_per_block]]
	mov	qword ptr [rbp - 0x40], rax
.label_256:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	lea	rdx, [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rbp - 5]
	and	cl, 1
	movzx	esi, cl
	mov	eax, esi
	mov	rsi, qword ptr [rbp + rax*8 - 0x20]
	call	read_block
	and	al, 1
	lea	rdi, [rdi]
	movzx	r8d, al
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	movzx	r9d, al
	mov	rsp, rsp
	and	r9d, r8d
	mov	rbp, rbp
	cmp	r9d, 0
	mov	rbp, rbp
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rdx,  qword ptr [word ptr [bytes_per_block]]
	lea	rdi, [rdi]
	jae	.label_259
	jmp	.label_254
.label_259:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax,  qword ptr [word ptr [bytes_per_block]]
	jne	.label_263
	nop	
	jmp	.label_262
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
.label_262:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rbp - 5]
	xor	al, 0xff
	mov	rbp, rbp
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rdx, qword ptr [rbp + rdx*8 - 0x20]
	nop	
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	ecx, al
	mov	r8d, ecx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp + r8*8 - 0x20]
	call	write_block
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rcx
	mov	al, byte ptr [rbp - 5]
	mov	rbp, rbp
	xor	al, 0xff
	mov	rbp, rbp
	and	al, 1
	nop	
	mov	byte ptr [rbp - 5], al
	jmp	.label_257
.label_254:
	jmp	.label_261
.label_251:
	mov	rbp, rbp
	jmp	.label_255
.label_255:
	lea	rdx, [rbp - 0x10]
	nop	
	mov	rdi,  qword ptr [word ptr [bytes_per_block]]
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	nop	
	movzx	ecx, al
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp + rsi*8 - 0x20]
	call	read_block
	nop	
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	and	al, 1
	movzx	r8d, al
	and	r8d, ecx
	cmp	r8d, 0
	lea	rsi, [rsi]
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rdx,  qword ptr [word ptr [bytes_per_block]]
	mov	rbp, rbp
	jae	.label_252
	lea	rdi, [rdi]
	jmp	.label_250
.label_252:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	rax,  qword ptr [word ptr [bytes_per_block]]
	jne	.label_253
	jmp	.label_258
.label_253:
	movabs	rdi, OFFSET FLAT:.str.114
	movabs	rsi, OFFSET FLAT:.str.76
	nop	
	mov	edx, 0x584
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.dump
	mov	rbp, rbp
	call	__assert_fail
.label_258:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 5]
	xor	al, 0xff
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp + rdx*8 - 0x20]
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	r8d, ecx
	mov	rcx, qword ptr [rbp + r8*8 - 0x20]
	call	write_block
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rcx
	nop	
	mov	al, byte ptr [rbp - 5]
	xor	al, 0xff
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], al
	jmp	.label_255
.label_250:
	jmp	.label_261
.label_261:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	jbe	.label_264
	lea	rdi, [rdi]
	call	get_lcm
	xor	esi, esi
	mov	dword ptr [rbp - 4], eax
	movsxd	rcx, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	movsxd	rdi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	add	rdx, rdi
	nop	
	sub	rdx, 1
	mov	rsp, rsp
	movsxd	rdi, dword ptr [rbp - 4]
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
	mov	qword ptr [rbp - 0x28], rcx
	mov	r9b, byte ptr [rbp - 5]
	nop	
	and	r9b, 1
	movzx	r8d, r9b
	mov	eax, r8d
	mov	rax, qword ptr [rbp + rax*8 - 0x20]
	add	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	sub	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	memset
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	r9b, byte ptr [rbp - 5]
	nop	
	xor	r9b, 0xff
	lea	rsi, [rsi]
	and	r9b, 1
	mov	rsp, rsp
	movzx	r8d, r9b
	lea	rdi, [rdi]
	movsxd	rax, r8d
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp + rax*8 - 0x20]
	mov	r9b, byte ptr [rbp - 5]
	mov	rbp, rbp
	and	r9b, 1
	movzx	r8d, r9b
	mov	rbp, rbp
	mov	eax, r8d
	mov	rcx, qword ptr [rbp + rax*8 - 0x20]
	call	write_block
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
.label_264:
	mov	rbp, rbp
	mov	esi, 0xa
	mov	rax,  qword ptr [word ptr [format_address]]
	mov	rdi, qword ptr [rbp - 0x38]
	call	rax
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [limit_bytes_to_format]],  1
	je	.label_249
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax,  qword ptr [word ptr [end_offset]]
	jb	.label_249
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	call	check_and_close
	and	al, 1
	movzx	edi, al
	mov	al, byte ptr [rbp - 0x29]
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
	mov	byte ptr [rbp - 0x29], al
.label_249:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	free
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405100

	.globl decode_one_format
	.type decode_one_format, @function
decode_one_format:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x180
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc0], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x108], rdx
	nop	
	mov	qword ptr [rbp - 0xb8], rcx
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xb8], 0
	mov	rbp, rbp
	je	.label_266
	mov	rbp, rbp
	jmp	.label_291
.label_266:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.78
	nop	
	movabs	rsi, OFFSET FLAT:.str.76
	mov	edx, 0x286
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.decode_one_format
	lea	rsi, [rsi]
	call	__assert_fail
.label_291:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	nop	
	sub	edx, 0x61
	mov	dword ptr [rbp - 0x13c], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edx
	nop	
	je	.label_309
	jmp	.label_319
.label_319:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x13c]
	mov	rsp, rsp
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xac], eax
	mov	rsp, rsp
	je	.label_320
	mov	rbp, rbp
	jmp	.label_326
.label_326:
	nop	
	mov	eax, dword ptr [rbp - 0x13c]
	nop	
	sub	eax, 0x64
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], eax
	nop	
	je	.label_275
	nop	
	jmp	.label_331
.label_331:
	mov	eax, dword ptr [rbp - 0x13c]
	sub	eax, 0x66
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x154], eax
	mov	rbp, rbp
	je	.label_334
	jmp	.label_273
.label_273:
	mov	eax, dword ptr [rbp - 0x13c]
	sub	eax, 0x6f
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_275
	lea	rdi, [rdi]
	jmp	.label_283
.label_283:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x13c]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x100], eax
	je	.label_275
	jmp	.label_289
.label_289:
	mov	eax, dword ptr [rbp - 0x13c]
	mov	rsp, rsp
	sub	eax, 0x78
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x110], eax
	mov	rsp, rsp
	jne	.label_292
	lea	rdi, [rdi]
	jmp	.label_275
.label_275:
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x81], cl
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	mov	rdx, rax
	nop	
	inc	rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc0], rdx
	movsx	esi, byte ptr [rax + 1]
	mov	edi, esi
	sub	edi, 0x43
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], esi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x70], edi
	je	.label_303
	jmp	.label_338
.label_338:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x49
	mov	dword ptr [rbp - 0x38], eax
	je	.label_325
	lea	rsi, [rsi]
	jmp	.label_268
.label_268:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x4c
	mov	dword ptr [rbp - 0x148], eax
	lea	rdi, [rdi]
	je	.label_329
	lea	rsi, [rsi]
	jmp	.label_333
.label_333:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	sub	eax, 0x53
	mov	dword ptr [rbp - 0x15c], eax
	je	.label_336
	jmp	.label_274
.label_303:
	nop	
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0xc0], rax
	mov	qword ptr [rbp - 0x90], 1
	mov	rbp, rbp
	jmp	.label_277
.label_336:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc0], rax
	mov	qword ptr [rbp - 0x90], 2
	lea	rsi, [rsi]
	jmp	.label_277
.label_325:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0xc0], rax
	mov	qword ptr [rbp - 0x90], 4
	nop	
	jmp	.label_277
.label_329:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0xc0], rax
	mov	qword ptr [rbp - 0x90], 8
	jmp	.label_277
.label_274:
	nop	
	lea	rsi, [rbp - 0x78]
	nop	
	lea	rdx, [rbp - 0x90]
	mov	rdi, qword ptr [rbp - 0xc0]
	nop	
	call	simple_strtoul
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_328
	movabs	rdi, OFFSET FLAT:.str.79
	lea	rdi, [rdi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x128], rax
	mov	rsp, rsp
	call	quote
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edi, ecx
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x128]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	nop	
	mov	byte ptr [rbp - 0x25], 0
	mov	rsp, rsp
	jmp	.label_280
.label_328:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rbp - 0xc0]
	jne	.label_270
	nop	
	mov	qword ptr [rbp - 0x90], 4
	jmp	.label_310
.label_270:
	mov	eax, 8
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 0x90]
	nop	
	jb	.label_299
	mov	rax, qword ptr [rbp - 0x90]
	cmp	dword ptr [dword ptr [+ (rax * 4) + integral_type_size]],  0
	jne	.label_307
.label_299:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.80
	lea	rsi, [rsi]
	call	gettext
	nop	
	mov	rdi, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x170], rax
	call	quote
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	r8, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	edi, ecx
	mov	rsp, rsp
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x170]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	error
	mov	byte ptr [rbp - 0x25], 0
	jmp	.label_280
.label_307:
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xc0], rax
.label_310:
	jmp	.label_277
.label_277:
	mov	rax, qword ptr [rbp - 0x90]
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + integral_type_size]]
	mov	dword ptr [rbp - 0x160], ecx
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rbp - 0x81]
	mov	rsp, rsp
	mov	edx, ecx
	lea	rdi, [rdi]
	sub	edx, 0x64
	mov	dword ptr [rbp - 0x11c], ecx
	mov	dword ptr [rbp - 0x10c], edx
	je	.label_267
	jmp	.label_287
.label_287:
	nop	
	mov	eax, dword ptr [rbp - 0x11c]
	sub	eax, 0x6f
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	je	.label_288
	mov	rsp, rsp
	jmp	.label_295
.label_295:
	mov	eax, dword ptr [rbp - 0x11c]
	nop	
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x98], eax
	lea	rdi, [rdi]
	je	.label_298
	nop	
	jmp	.label_306
.label_306:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x11c]
	sub	eax, 0x78
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x12c], eax
	lea	rsi, [rsi]
	je	.label_327
	jmp	.label_316
.label_267:
	nop	
	mov	dword ptr [rbp - 0x140], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + bytes_to_signed_dec_digits]]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x164], ecx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 0x10
	cmp	dword ptr [rbp - 0x160], 5
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x178], rax
	jne	.label_317
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.82
	nop	
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_332
.label_317:
	movabs	rax, OFFSET FLAT:.str.83
	movabs	rcx, OFFSET FLAT:.str.82
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x160], 4
	cmove	rax, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe8], rax
.label_332:
	mov	rax, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.81
	nop	
	mov	rdi, qword ptr [rbp - 0x178]
	nop	
	mov	rdx, rax
	mov	al, 0
	call	sprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc4], eax
	jmp	.label_284
.label_288:
	mov	dword ptr [rbp - 0x140], 2
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	add	rax, 0x10
	nop	
	mov	rcx, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	mov	edx,  dword ptr [dword ptr [+ (rcx * 4) + bytes_to_oct_digits]]
	mov	dword ptr [rbp - 0x164], edx
	cmp	dword ptr [rbp - 0x160], 5
	mov	qword ptr [rbp - 0x118], rax
	mov	dword ptr [rbp - 0x6c], edx
	jne	.label_301
	movabs	rax, OFFSET FLAT:.str.85
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	jmp	.label_321
.label_301:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.86
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:.str.85
	cmp	dword ptr [rbp - 0x160], 4
	lea	rsi, [rsi]
	cmove	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
.label_321:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.84
	mov	rdi, qword ptr [rbp - 0x118]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x6c]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	sprintf
	mov	dword ptr [rbp - 0x34], eax
	lea	rsi, [rsi]
	jmp	.label_284
.label_298:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x140], 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x90]
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + bytes_to_unsigned_dec_digits]]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x164], ecx
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 0x10
	cmp	dword ptr [rbp - 0x160], 5
	mov	qword ptr [rbp - 0xa8], rax
	jne	.label_285
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.87
	mov	qword ptr [rbp - 0x80], rax
	mov	rbp, rbp
	jmp	.label_308
.label_285:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.88
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:.str.87
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x160], 4
	cmove	rax, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rax
.label_308:
	mov	rax, qword ptr [rbp - 0x80]
	movabs	rsi, OFFSET FLAT:.str.81
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rdx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	sprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x158], eax
	mov	rsp, rsp
	jmp	.label_284
.label_327:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x140], 3
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 0x10
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	edx,  dword ptr [dword ptr [+ (rcx * 4) + bytes_to_hex_digits]]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x164], edx
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x160], 5
	nop	
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	dword ptr [rbp - 8], edx
	mov	rbp, rbp
	jne	.label_337
	movabs	rax, OFFSET FLAT:.str.89
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	jmp	.label_290
.label_337:
	nop	
	movabs	rax, OFFSET FLAT:.str.90
	movabs	rcx, OFFSET FLAT:.str.89
	cmp	dword ptr [rbp - 0x160], 4
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x48], rax
.label_290:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.84
	mov	rdi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 8]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	sprintf
	mov	dword ptr [rbp - 0x120], eax
	jmp	.label_284
.label_316:
	lea	rdi, [rdi]
	call	abort
.label_284:
	nop	
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 0x10
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strlen
	cmp	rax, 8
	jae	.label_330
	mov	rsp, rsp
	jmp	.label_272
.label_330:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.91
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.76
	mov	edx, 0x2e9
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.decode_one_format
	mov	rbp, rbp
	call	__assert_fail
.label_272:
	mov	eax, dword ptr [rbp - 0x160]
	dec	eax
	mov	rbp, rbp
	mov	ecx, eax
	nop	
	sub	eax, 4
	mov	qword ptr [rbp - 0x30], rcx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x17c], eax
	ja	.label_324
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_286]]
	jmp	rcx
.label_979:
	movabs	rax, OFFSET FLAT:print_char
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:print_s_char
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x140], 0
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x150], rax
	nop	
	jmp	.label_297
.label_980:
	nop	
	movabs	rax, OFFSET FLAT:print_short
	movabs	rcx, OFFSET FLAT:print_s_short
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x140], 0
	lea	rsi, [rsi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x150], rax
	nop	
	jmp	.label_297
.label_981:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:print_int
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x150], rax
	jmp	.label_297
.label_982:
	movabs	rax, OFFSET FLAT:print_long
	mov	qword ptr [rbp - 0x150], rax
	mov	rbp, rbp
	jmp	.label_297
.label_983:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:print_long_long
	nop	
	mov	qword ptr [rbp - 0x150], rax
	lea	rsi, [rsi]
	jmp	.label_297
.label_324:
	call	abort
.label_297:
	jmp	.label_269
.label_334:
	nop	
	mov	dword ptr [rbp - 0x140], 4
	mov	rax, qword ptr [rbp - 0xc0]
	nop	
	mov	rcx, rax
	inc	rcx
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rbp, rbp
	movsx	edx, byte ptr [rax + 1]
	lea	rdi, [rdi]
	mov	esi, edx
	mov	rbp, rbp
	sub	esi, 0x44
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x20], edx
	mov	dword ptr [rbp - 0xfc], esi
	mov	rsp, rsp
	je	.label_271
	mov	rbp, rbp
	jmp	.label_313
.label_313:
	mov	eax, dword ptr [rbp - 0x20]
	sub	eax, 0x46
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], eax
	lea	rsi, [rsi]
	je	.label_282
	lea	rdi, [rdi]
	jmp	.label_302
.label_302:
	nop	
	mov	eax, dword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	eax, 0x4c
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_304
	jmp	.label_311
.label_282:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0xc0], rax
	mov	qword ptr [rbp - 0x90], 4
	lea	rsi, [rsi]
	jmp	.label_294
.label_271:
	mov	rax, qword ptr [rbp - 0xc0]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], rax
	mov	qword ptr [rbp - 0x90], 8
	jmp	.label_294
.label_304:
	mov	rax, qword ptr [rbp - 0xc0]
	add	rax, 1
	mov	qword ptr [rbp - 0xc0], rax
	nop	
	mov	qword ptr [rbp - 0x90], 0x10
	jmp	.label_294
.label_311:
	lea	rsi, [rbp - 0x78]
	lea	rdx, [rbp - 0x90]
	mov	rdi, qword ptr [rbp - 0xc0]
	call	simple_strtoul
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_279
	movabs	rdi, OFFSET FLAT:.str.79
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xa0], rax
	lea	rdi, [rdi]
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0xa0]
	nop	
	mov	rcx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x25], 0
	lea	rdi, [rdi]
	jmp	.label_280
.label_279:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0xc0]
	jne	.label_305
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], 8
	lea	rsi, [rsi]
	jmp	.label_312
.label_305:
	cmp	qword ptr [rbp - 0x90], 0x10
	lea	rsi, [rsi]
	ja	.label_318
	mov	rax, qword ptr [rbp - 0x90]
	cmp	dword ptr [dword ptr [+ (rax * 4) + fp_type_size]],  0
	lea	rsi, [rsi]
	jne	.label_322
.label_318:
	movabs	rdi, OFFSET FLAT:.str.92
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	call	quote
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	r8, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	esi, ecx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, rax
	nop	
	mov	al, 0
	mov	rsp, rsp
	call	error
	mov	byte ptr [rbp - 0x25], 0
	lea	rsi, [rsi]
	jmp	.label_280
.label_322:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xc0], rax
.label_312:
	jmp	.label_294
.label_294:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x90]
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + fp_type_size]]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x160], ecx
	call	localeconv
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xf8], rax
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_296
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax]
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rax
	lea	rsi, [rsi]
	jmp	.label_314
.label_296:
	mov	rsp, rsp
	mov	eax, 1
	mov	ecx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd8], rcx
	jmp	.label_314
.label_314:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x138], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x160]
	lea	rdi, [rdi]
	mov	edx, ecx
	lea	rsi, [rsi]
	sub	edx, 6
	mov	dword ptr [rbp - 0x94], ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], edx
	je	.label_323
	lea	rsi, [rsi]
	jmp	.label_335
.label_335:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_339
	lea	rdi, [rdi]
	jmp	.label_278
.label_278:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 8
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x144], eax
	mov	rbp, rbp
	je	.label_281
	jmp	.label_293
.label_323:
	movabs	rax, OFFSET FLAT:print_float
	mov	qword ptr [rbp - 0x150], rax
	mov	rax, qword ptr [rbp - 0x138]
	lea	rdi, [rdi]
	add	rax, 0xa
	lea	rsi, [rsi]
	add	rax, 1
	add	rax, 3
	mov	rbp, rbp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x164], ecx
	jmp	.label_315
.label_339:
	movabs	rax, OFFSET FLAT:print_double
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x150], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x138]
	lea	rdi, [rdi]
	add	rax, 0x12
	add	rax, 1
	add	rax, 4
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x164], ecx
	jmp	.label_315
.label_281:
	nop	
	movabs	rax, OFFSET FLAT:print_long_double
	mov	qword ptr [rbp - 0x150], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x138]
	nop	
	add	rax, 0x16
	lea	rdi, [rdi]
	add	rax, 1
	mov	rbp, rbp
	add	rax, 5
	mov	ecx, eax
	mov	dword ptr [rbp - 0x164], ecx
	lea	rsi, [rsi]
	jmp	.label_315
.label_293:
	call	abort
.label_315:
	lea	rsi, [rsi]
	jmp	.label_269
.label_309:
	nop	
	movabs	rax, OFFSET FLAT:print_named_ascii
	mov	rcx, qword ptr [rbp - 0xc0]
	add	rcx, 1
	nop	
	mov	qword ptr [rbp - 0xc0], rcx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x140], 5
	nop	
	mov	dword ptr [rbp - 0x160], 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x150], rax
	mov	dword ptr [rbp - 0x164], 3
	jmp	.label_269
.label_320:
	movabs	rax, OFFSET FLAT:print_ascii
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc0], rcx
	nop	
	mov	dword ptr [rbp - 0x140], 6
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x160], 1
	mov	qword ptr [rbp - 0x150], rax
	mov	dword ptr [rbp - 0x164], 3
	jmp	.label_269
.label_292:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.93
	nop	
	call	gettext
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xc0]
	movsx	ecx, byte ptr [rdi]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xf0], rax
	mov	dword ptr [rbp - 0x1c], ecx
	lea	rsi, [rsi]
	call	quote
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edi, ecx
	lea	rdi, [rdi]
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x1c]
	nop	
	mov	r8, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x25], 0
	jmp	.label_280
.label_269:
	mov	eax, dword ptr [rbp - 0x160]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	dword ptr [rcx + 4], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x140]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rbp - 0x150]
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	qword ptr [rdx + 8], rcx
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x164]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xb8]
	nop	
	mov	dword ptr [rcx + 0x1c], eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xc0]
	movsx	eax, byte ptr [rcx]
	cmp	eax, 0x7a
	mov	rbp, rbp
	sete	sil
	mov	rcx, qword ptr [rbp - 0xb8]
	and	sil, 1
	lea	rdi, [rdi]
	mov	byte ptr [rcx + 0x18], sil
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xb8]
	test	byte ptr [rcx + 0x18], 1
	je	.label_276
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0xc0], rax
.label_276:
	cmp	qword ptr [rbp - 0x108], 0
	mov	rsp, rsp
	je	.label_300
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x108]
	mov	qword ptr [rcx], rax
.label_300:
	mov	byte ptr [rbp - 0x25], 1
.label_280:
	mov	al, byte ptr [rbp - 0x25]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	nop	
	add	rsp, 0x180
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406000

	.globl simple_strtoul
	.type simple_strtoul, @function
simple_strtoul:
	nop	
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x28], 0
.label_342:
	mov	rax, qword ptr [rbp - 8]
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
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, rsi
	mov	rsp, rsp
	add	rdi, 1
	mov	qword ptr [rbp - 8], rdi
	movsx	eax, byte ptr [rsi]
	nop	
	sub	eax, 0x30
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	movsxd	rdi, dword ptr [rbp - 0xc]
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
	mov	byte ptr [rbp - 0xd], 0
	jmp	.label_340
.label_341:
	nop	
	imul	rax, qword ptr [rbp - 0x28], 0xa
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	add	rax, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_342
.label_343:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	byte ptr [rbp - 0xd], 1
.label_340:
	nop	
	mov	al, byte ptr [rbp - 0xd]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060f0

	.globl print_s_char
	.type print_s_char, @function
print_s_char:
	nop
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x48], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x38], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x54], r8d
	mov	dword ptr [rbp - 0x64], r9d
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rcx
	mov	rsp, rsp
	mov	r8d, dword ptr [rbp - 0x64]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], r8d
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x50], rcx
.label_348:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	jae	.label_349
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x50]
	nop	
	sub	rcx, 1
	mov	rsp, rsp
	imul	rax, rcx
	xor	edx, edx
	nop	
	div	qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	esi, eax
	mov	dword ptr [rbp - 0x28], esi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	sub	esi, dword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	esi, dword ptr [rbp - 0x54]
	nop	
	mov	dword ptr [rbp - 0x3c], esi
	mov	rsp, rsp
	test	byte ptr [byte ptr [input_swap]],  1
	lea	rdi, [rdi]
	je	.label_346
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_344
	lea	rsi, [rsi]
	jmp	.label_346
.label_344:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], 0
.label_350:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 1
	jae	.label_345
	nop	
	xor	eax, eax
	mov	ecx, eax
	nop	
	sub	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rbp + rcx - 0x20], sil
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	jmp	.label_350
.label_345:
	mov	al, byte ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], al
	nop	
	jmp	.label_347
.label_346:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 1], cl
.label_347:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rbp - 0x3c]
	movsx	edx, byte ptr [rbp - 1]
	mov	rsp, rsp
	mov	al, 0
	call	xprintf
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], edx
	mov	dword ptr [rbp - 0x24], eax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, -1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_348
.label_349:
	mov	rbp, rbp
	add	rsp, 0x70
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406290

	.globl print_char
	.type print_char, @function
print_char:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x38], rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 0x60], rcx
	mov	dword ptr [rbp - 0x58], r8d
	nop	
	mov	dword ptr [rbp - 0x2c], r9d
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rbp, rbp
	mov	r8d, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x44], r8d
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rcx
.label_356:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	jae	.label_353
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	sub	rcx, 1
	lea	rsi, [rsi]
	imul	rax, rcx
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rsp, rsp
	div	qword ptr [rbp - 0x38]
	nop	
	mov	esi, eax
	mov	dword ptr [rbp - 0x3c], esi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x44]
	sub	esi, dword ptr [rbp - 0x3c]
	nop	
	add	esi, dword ptr [rbp - 0x58]
	mov	dword ptr [rbp - 0x54], esi
	mov	rbp, rbp
	test	byte ptr [byte ptr [input_swap]],  1
	lea	rdi, [rdi]
	je	.label_352
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_355
	lea	rdi, [rdi]
	jmp	.label_352
.label_355:
	mov	qword ptr [rbp - 0x50], 0
.label_351:
	cmp	qword ptr [rbp - 0x50], 1
	nop	
	jae	.label_357
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rbp + rcx - 0x20], sil
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_351
.label_357:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x2d], al
	nop	
	jmp	.label_354
.label_352:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x2d], cl
.label_354:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	esi, dword ptr [rbp - 0x54]
	movzx	edx, byte ptr [rbp - 0x2d]
	mov	al, 0
	call	xprintf
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44], edx
	mov	dword ptr [rbp - 0x40], eax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rax, -1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_356
.label_353:
	add	rsp, 0x60
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406410

	.globl print_s_short
	.type print_s_short, @function
print_s_short:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x50], rdi
	mov	qword ptr [rbp - 0x40], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x38], r8d
	mov	dword ptr [rbp - 8], r9d
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rcx
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x54], r8d
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x18], rcx
.label_358:
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_360
	movsxd	rax, dword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	sub	rcx, 1
	imul	rax, rcx
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	div	qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	esi, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], esi
	mov	esi, dword ptr [rbp - 0x54]
	sub	esi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	add	esi, dword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x44], esi
	test	byte ptr [byte ptr [input_swap]],  1
	je	.label_362
	mov	qword ptr [rbp - 0x60], 0
.label_363:
	cmp	qword ptr [rbp - 0x60], 2
	lea	rsi, [rsi]
	jae	.label_359
	mov	eax, 1
	mov	ecx, eax
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0x60]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	byte ptr [rbp + rcx - 0x30], sil
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_363
.label_359:
	mov	ax, word ptr [rbp - 0x30]
	mov	word ptr [rbp - 0x32], ax
	lea	rsi, [rsi]
	jmp	.label_361
.label_362:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	cx, word ptr [rax]
	nop	
	mov	word ptr [rbp - 0x32], cx
.label_361:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 2
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x44]
	movsx	edx, word ptr [rbp - 0x32]
	lea	rdi, [rdi]
	mov	al, 0
	call	xprintf
	mov	edx, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x54], edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x48], eax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_358
.label_360:
	add	rsp, 0x60
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406570

	.globl print_short
	.type print_short, @function
print_short:
	nop
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x50], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x30], rdx
	mov	qword ptr [rbp - 8], rcx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], r8d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], r9d
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	mov	r8d, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x40], r8d
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x60], rcx
.label_368:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x60]
	nop	
	jae	.label_364
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	sub	rcx, 1
	mov	rsp, rsp
	imul	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 0x50]
	mov	esi, eax
	mov	dword ptr [rbp - 0x34], esi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x40]
	sub	esi, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	add	esi, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x3c], esi
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [input_swap]],  1
	mov	rbp, rbp
	je	.label_369
	mov	qword ptr [rbp - 0x48], 0
.label_365:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x48], 2
	jae	.label_366
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	byte ptr [rbp + rcx - 0x58], sil
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_365
.label_366:
	mov	ax, word ptr [rbp - 0x58]
	mov	word ptr [rbp - 0x22], ax
	mov	rbp, rbp
	jmp	.label_367
.label_369:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	cx, word ptr [rax]
	lea	rsi, [rsi]
	mov	word ptr [rbp - 0x22], cx
.label_367:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rax, 2
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x3c]
	movzx	edx, word ptr [rbp - 0x22]
	mov	al, 0
	call	xprintf
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x40], edx
	mov	dword ptr [rbp - 0x38], eax
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	add	rax, -1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_368
.label_364:
	mov	rbp, rbp
	add	rsp, 0x60
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4066f0

	.globl print_int
	.type print_int, @function
print_int:
	nop
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x50], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rsi
	mov	qword ptr [rbp - 8], rdx
	nop	
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	mov	dword ptr [rbp - 0x60], r8d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44], r9d
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rcx
	mov	r8d, dword ptr [rbp - 0x44]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], r8d
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rcx
.label_372:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_374
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x44]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, 1
	imul	rax, rcx
	nop	
	xor	edx, edx
	div	qword ptr [rbp - 0x50]
	nop	
	mov	esi, eax
	mov	dword ptr [rbp - 0x18], esi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x34]
	sub	esi, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	esi, dword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], esi
	test	byte ptr [byte ptr [input_swap]],  1
	je	.label_375
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], 0
.label_371:
	cmp	qword ptr [rbp - 0x58], 4
	jae	.label_370
	mov	eax, 3
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	sil, byte ptr [rdx + rcx]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	byte ptr [rbp + rcx - 0x10], sil
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_371
.label_370:
	mov	eax, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_373
.label_375:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], ecx
.label_373:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rax, 4
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x5c]
	mov	edx, dword ptr [rbp - 0x14]
	mov	al, 0
	mov	rsp, rsp
	call	xprintf
	mov	edx, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], edx
	mov	dword ptr [rbp - 0x38], eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_372
.label_374:
	add	rsp, 0x60
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406850

	.globl print_long
	.type print_long, @function
print_long:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x70
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x40], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x4c], r8d
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x64], r9d
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x58], r8d
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x60], rcx
.label_377:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x60]
	jae	.label_379
	movsxd	rax, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	sub	rcx, 1
	lea	rsi, [rsi]
	imul	rax, rcx
	xor	edx, edx
	mov	rsp, rsp
	div	qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	esi, eax
	mov	dword ptr [rbp - 0x50], esi
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x58]
	sub	esi, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	esi, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x24], esi
	mov	rsp, rsp
	test	byte ptr [byte ptr [input_swap]],  1
	je	.label_380
	mov	qword ptr [rbp - 0x38], 0
.label_378:
	cmp	qword ptr [rbp - 0x38], 8
	nop	
	jae	.label_376
	mov	eax, 7
	nop	
	mov	ecx, eax
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	byte ptr [rbp + rcx - 8], sil
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	jmp	.label_378
.label_376:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_381
.label_380:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x48], rax
.label_381:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x24]
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	xprintf
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0x58], esi
	mov	dword ptr [rbp - 0x54], eax
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
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
	#Procedure 0x4069c0

	.globl print_long_long
	.type print_long_long, @function
print_long_long:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x28], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rdx
	mov	qword ptr [rbp - 0x10], rcx
	mov	dword ptr [rbp - 0x20], r8d
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], r9d
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rcx
	mov	r8d, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x3c], r8d
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rcx
.label_385:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	jae	.label_387
	movsxd	rax, dword ptr [rbp - 0x4c]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	sub	rcx, 1
	lea	rdi, [rdi]
	imul	rax, rcx
	xor	edx, edx
	nop	
	div	qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	esi, eax
	mov	dword ptr [rbp - 0x1c], esi
	mov	esi, dword ptr [rbp - 0x3c]
	sub	esi, dword ptr [rbp - 0x1c]
	add	esi, dword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], esi
	test	byte ptr [byte ptr [input_swap]],  1
	nop	
	je	.label_382
	mov	qword ptr [rbp - 0x68], 0
.label_386:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], 8
	nop	
	jae	.label_384
	mov	eax, 7
	mov	ecx, eax
	mov	rbp, rbp
	sub	rcx, qword ptr [rbp - 0x68]
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	mov	sil, byte ptr [rdx + rcx]
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	mov	byte ptr [rbp + rcx - 0x60], sil
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rax
	mov	rsp, rsp
	jmp	.label_386
.label_384:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_383
.label_382:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
.label_383:
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	add	rax, 8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	xprintf
	mov	esi, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], esi
	nop	
	mov	dword ptr [rbp - 0x38], eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	add	rax, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	nop	
	jmp	.label_385
.label_387:
	add	rsp, 0x70
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b40

	.globl print_float
	.type print_float, @function
print_float:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	qword ptr [rbp - 0x60], rdi
	mov	qword ptr [rbp - 0x48], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rdx
	mov	qword ptr [rbp - 0x68], rcx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], r8d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], r9d
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rbp, rbp
	mov	r8d, dword ptr [rbp - 0xc]
	nop	
	mov	dword ptr [rbp - 0x54], r8d
	mov	rcx, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x40], rcx
.label_391:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x40]
	jae	.label_392
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	sub	rcx, 1
	imul	rax, rcx
	nop	
	xor	edx, edx
	lea	rdi, [rdi]
	div	qword ptr [rbp - 0x60]
	nop	
	mov	esi, eax
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	sub	esi, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	esi, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x24], esi
	test	byte ptr [byte ptr [input_swap]],  1
	nop	
	je	.label_393
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], 0
.label_388:
	cmp	qword ptr [rbp - 0x18], 4
	mov	rsp, rsp
	jae	.label_389
	mov	eax, 3
	mov	ecx, eax
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	sil, byte ptr [rdx + rcx]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rbp + rcx - 0x38], sil
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_388
.label_389:
	movss	xmm0, dword ptr [rbp - 0x38]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x4c], xmm0
	jmp	.label_390
.label_393:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	movss	xmm0, dword ptr [rax]
	movss	dword ptr [rbp - 0x4c], xmm0
.label_390:
	mov	eax, 0x1f
	mov	esi, eax
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, 4
	mov	qword ptr [rbp - 0x20], rcx
	movss	xmm0, dword ptr [rbp - 0x4c]
	mov	edx, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rbp, rbp
	call	ftoastr
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.94
	lea	rdx, [rbp - 0x90]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x50], eax
	lea	rdi, [rdi]
	mov	al, 0
	nop	
	call	xprintf
	mov	ecx, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x54], ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	add	rax, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_391
.label_392:
	add	rsp, 0x90
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406cf0

	.globl print_double
	.type print_double, @function
print_double:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0xa0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x98], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rcx
	mov	dword ptr [rbp - 0x4c], r8d
	mov	dword ptr [rbp - 0x40], r9d
	mov	rcx, qword ptr [rbp - 0x98]
	nop	
	mov	qword ptr [rbp - 0x38], rcx
	mov	rbp, rbp
	mov	r8d, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x9c], r8d
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
.label_395:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_396
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, 1
	imul	rax, rcx
	xor	edx, edx
	mov	rbp, rbp
	div	qword ptr [rbp - 0x48]
	mov	esi, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x50], esi
	mov	esi, dword ptr [rbp - 0x9c]
	lea	rsi, [rsi]
	sub	esi, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	esi, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], esi
	nop	
	test	byte ptr [byte ptr [input_swap]],  1
	lea	rdi, [rdi]
	je	.label_398
	mov	qword ptr [rbp - 0x60], 0
.label_394:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x60], 8
	mov	rsp, rsp
	jae	.label_397
	mov	eax, 7
	mov	ecx, eax
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x38]
	mov	sil, byte ptr [rdx + rcx]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	byte ptr [rbp + rcx - 0x30], sil
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_394
.label_397:
	movsd	xmm0, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	movsd	qword ptr [rbp - 0x10], xmm0
	lea	rsi, [rsi]
	jmp	.label_399
.label_398:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	movsd	xmm0, qword ptr [rax]
	movsd	qword ptr [rbp - 0x10], xmm0
.label_399:
	lea	rsi, [rsi]
	mov	eax, 0x28
	lea	rsi, [rsi]
	mov	esi, eax
	mov	rbp, rbp
	xor	eax, eax
	nop	
	lea	rdi, [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rcx, 8
	nop	
	mov	qword ptr [rbp - 0x38], rcx
	lea	rdi, [rdi]
	movsd	xmm0, qword ptr [rbp - 0x10]
	mov	edx, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	call	dtoastr
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.94
	lea	rdx, [rbp - 0x90]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rdi, [rdi]
	call	xprintf
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0x9c], ecx
	mov	dword ptr [rbp - 0x54], eax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_395
.label_396:
	add	rsp, 0xa0
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ec0

	.globl print_long_double
	.type print_long_double, @function
print_long_double:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0xd0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rdi
	mov	qword ptr [rbp - 8], rsi
	nop	
	mov	qword ptr [rbp - 0x50], rdx
	mov	qword ptr [rbp - 0x90], rcx
	mov	dword ptr [rbp - 0xc], r8d
	mov	dword ptr [rbp - 0x48], r9d
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb8], rcx
	mov	r8d, dword ptr [rbp - 0x48]
	mov	dword ptr [rbp - 0x58], r8d
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x68], rcx
.label_402:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	jae	.label_405
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x68]
	sub	rcx, 1
	imul	rax, rcx
	lea	rdi, [rdi]
	xor	edx, edx
	div	qword ptr [rbp - 0xa0]
	mov	esi, eax
	mov	dword ptr [rbp - 0x44], esi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	sub	esi, dword ptr [rbp - 0x44]
	lea	rdi, [rdi]
	add	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], esi
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [input_swap]],  1
	lea	rdi, [rdi]
	je	.label_403
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], 0
.label_400:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x98], 0x10
	mov	rsp, rsp
	jae	.label_404
	mov	eax, 0xf
	mov	ecx, eax
	mov	rbp, rbp
	sub	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	sil, byte ptr [rdx + rcx]
	nop	
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	byte ptr [rbp + rcx - 0x80], sil
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_400
.label_404:
	mov	rsp, rsp
	fld	xword ptr [rbp - 0x80]
	mov	rbp, rbp
	fstp	xword ptr [rbp - 0xb0]
	jmp	.label_401
.label_403:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	fld	xword ptr [rax]
	nop	
	fstp	xword ptr [rbp - 0xb0]
.label_401:
	mov	eax, 0x2d
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xb8]
	add	rdx, 0x10
	mov	qword ptr [rbp - 0xb8], rdx
	mov	rsp, rsp
	lea	rdi, [rbp - 0x40]
	lea	rdi, [rdi]
	fld	xword ptr [rbp - 0xb0]
	mov	rdx, rsp
	fstp	xword ptr [rdx]
	mov	esi, 0x2d
	xor	r8d, r8d
	mov	edx, r8d
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rbp, rbp
	mov	ecx, r8d
	mov	dword ptr [rbp - 0x84], eax
	call	ldtoastr
	movabs	rdi, OFFSET FLAT:.str.94
	lea	rdx, [rbp - 0x40]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x60], eax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rsi, [rsi]
	call	xprintf
	mov	ecx, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x58], ecx
	mov	dword ptr [rbp - 0x5c], eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	add	rax, -1
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_402
.label_405:
	lea	rdi, [rdi]
	add	rsp, 0xd0
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4070c0

	.globl print_named_ascii
	.type print_named_ascii, @function
print_named_ascii:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x28], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rdx
	mov	qword ptr [rbp - 0x10], rcx
	mov	dword ptr [rbp - 0x44], r8d
	mov	dword ptr [rbp - 0x48], r9d
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rcx
	mov	r8d, dword ptr [rbp - 0x48]
	nop	
	mov	dword ptr [rbp - 0x60], r8d
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rcx
.label_411:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	cmp	rax, qword ptr [rbp - 0x58]
	jae	.label_410
	nop	
	movsxd	rax, dword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	sub	rcx, 1
	imul	rax, rcx
	xor	edx, edx
	nop	
	div	qword ptr [rbp - 0x28]
	mov	esi, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], esi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rcx
	mov	rsp, rsp
	movzx	esi, byte ptr [rax]
	and	esi, 0x7f
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], esi
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x14], 0x7f
	lea	rsi, [rsi]
	jne	.label_409
	movabs	rax, OFFSET FLAT:.str.95
	nop	
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_407
.label_409:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14], 0x20
	jg	.label_406
	movabs	rax, OFFSET FLAT:charname
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x14]
	shl	rcx, 2
	add	rax, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	nop	
	jmp	.label_408
.label_406:
	lea	rax, [rbp - 0x2a]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	dl, cl
	mov	byte ptr [rbp - 0x2a], dl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x29], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
.label_408:
	jmp	.label_407
.label_407:
	movabs	rdi, OFFSET FLAT:.str.94
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x60]
	nop	
	sub	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x44]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	esi, eax
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	xprintf
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 4]
	nop	
	mov	dword ptr [rbp - 0x60], esi
	mov	dword ptr [rbp - 0x5c], eax
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, -1
	mov	qword ptr [rbp - 0x58], rax
	lea	rsi, [rsi]
	jmp	.label_411
.label_410:
	nop	
	add	rsp, 0x60
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407240

	.globl print_ascii
	.type print_ascii, @function
print_ascii:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x80
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rdx
	mov	qword ptr [rbp - 0x70], rcx
	mov	dword ptr [rbp - 0x3c], r8d
	nop	
	mov	dword ptr [rbp - 0x38], r9d
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	mov	r8d, dword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], r8d
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x10], rcx
.label_415:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_416
	movsxd	rax, dword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	dec	rcx
	imul	rax, rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	xor	edx, edx
	div	rcx
	mov	esi, eax
	mov	dword ptr [rbp - 0x14], esi
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, rax
	inc	rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	dil, byte ptr [rax]
	mov	byte ptr [rbp - 0x55], dil
	mov	rsp, rsp
	movzx	esi, byte ptr [rbp - 0x55]
	mov	eax, esi
	nop	
	mov	rcx, rax
	lea	rdi, [rdi]
	sub	rcx, 0xd
	nop	
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rcx
	ja	.label_414
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_413]]
	jmp	rcx
.label_945:
	movabs	rax, OFFSET FLAT:.str.96
	mov	qword ptr [rbp - 0x28], rax
	nop	
	jmp	.label_412
.label_946:
	movabs	rax, OFFSET FLAT:.str.97
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_412
.label_947:
	movabs	rax, OFFSET FLAT:.str.98
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_412
.label_951:
	nop	
	movabs	rax, OFFSET FLAT:.str.99
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_412
.label_949:
	nop	
	movabs	rax, OFFSET FLAT:.str.100
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_412
.label_952:
	nop	
	movabs	rax, OFFSET FLAT:.str.101
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_412
.label_948:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.102
	mov	qword ptr [rbp - 0x28], rax
	nop	
	jmp	.label_412
.label_950:
	movabs	rax, OFFSET FLAT:.str.103
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_412
.label_414:
	lea	rdi, [rbp - 0x34]
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x55]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x60], rcx
	lea	rdi, [rdi]
	call	__ctype_b_loc
	movabs	rcx, OFFSET FLAT:.str.105
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.104
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x60]
	nop	
	movzx	esi, word ptr [rax + rdx*2]
	and	esi, 0x4000
	cmp	esi, 0
	mov	rbp, rbp
	cmovne	rcx, rdi
	movzx	edx, byte ptr [rbp - 0x55]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rcx
	mov	rsp, rsp
	mov	al, 0
	call	sprintf
	mov	rsp, rsp
	lea	rcx, [rbp - 0x34]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x54], eax
.label_412:
	movabs	rdi, OFFSET FLAT:.str.94
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x3c]
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	esi, eax
	mov	al, 0
	nop	
	call	xprintf
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x18], esi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_415
.label_416:
	add	rsp, 0x80
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4074b0

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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407560

	.globl check_and_close
	.type check_and_close, @function
check_and_close:
	mov	rsp, rsp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 0x14], edi
	mov	byte ptr [rbp - 9], 1
	mov	rsp, rsp
	cmp	qword ptr [word ptr [in_stream]],  0
	je	.label_421
	mov	rdi,  qword ptr [word ptr [in_stream]]
	lea	rdi, [rdi]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_420
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.112
	mov	esi, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], esi
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	mov	rdx,  qword ptr [word ptr [input_filename]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	esi, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
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
	je	.label_418
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [in_stream]]
	call	rpl_fclose
	mov	dword ptr [rbp - 0x10], eax
.label_418:
	mov	byte ptr [rbp - 9], 0
	lea	rdi, [rdi]
	jmp	.label_419
.label_420:
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
	je	.label_423
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [in_stream]]
	call	rpl_fclose
	cmp	eax, 0
	je	.label_423
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, 3
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [input_filename]]
	mov	dword ptr [rbp - 4], ecx
	mov	rsp, rsp
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_1
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 4]
	nop	
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 9], 0
.label_423:
	jmp	.label_419
.label_419:
	mov	qword ptr [word ptr [in_stream]],  0
.label_421:
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_422
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
	mov	byte ptr [rbp - 9], 0
.label_422:
	mov	al, byte ptr [rbp - 9]
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407750

	.globl lcm
	.type lcm, @function
lcm:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	call	gcd
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	mov	rax, rcx
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	div	rsi
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	imul	rdi, rax
	mov	rax, rdi
	mov	rsp, rsp
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4077e0

	.globl gcd
	.type gcd, @function
gcd:
	mov	rsp, rsp
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rsi
.label_424:
	mov	rax, qword ptr [rbp - 0x10]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	div	qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rdx
	cmp	qword ptr [rbp - 8], 0
	nop	
	jne	.label_424
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407840

	.globl read_char
	.type read_char, @function
read_char:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	dword ptr [rdi], 0xffffffff
.label_427:
	cmp	qword ptr [word ptr [in_stream]],  0
	nop	
	je	.label_425
	mov	rdi,  qword ptr [word ptr [in_stream]]
	lea	rdi, [rdi]
	call	fgetc
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rdi], eax
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rdi], -1
	lea	rsi, [rsi]
	je	.label_426
	lea	rsi, [rsi]
	jmp	.label_425
.label_426:
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
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	and	ecx, edi
	cmp	ecx, 0
	nop	
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 1], al
	call	open_next_file
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	mov	al, byte ptr [rbp - 1]
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
	mov	byte ptr [rbp - 1], al
	jmp	.label_427
.label_425:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407930

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
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 8], rdx
	nop	
	mov	byte ptr [rbp - 0x19], 1
	cmp	rcx, qword ptr [rbp - 0x28]
	jae	.label_430
	nop	
	mov	rax, qword ptr [rbp - 0x28]
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
	mov	rax, qword ptr [rbp - 8]
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
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 8]
	add	rcx, qword ptr [rdx]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi,  qword ptr [word ptr [in_stream]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rdi
	mov	rdi, rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	call	fread_unlocked
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x10]
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ae0

	.globl write_block
	.type write_block, @function
write_block:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x48], rsi
	mov	qword ptr [rbp - 0x58], rdx
	mov	qword ptr [rbp - 0x40], rcx
	test	byte ptr [byte ptr [abbreviate_duplicate_blocks]],  1
	je	.label_434
	mov	rbp, rbp
	test	byte ptr [byte ptr [write_block.first]],  1
	lea	rsi, [rsi]
	jne	.label_434
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax,  qword ptr [word ptr [bytes_per_block]]
	lea	rsi, [rsi]
	jne	.label_434
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x40]
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
	mov	dword ptr [rbp - 0x30], eax
.label_439:
	jmp	.label_436
.label_434:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [write_block.prev_pair_equal]],  0
	mov	qword ptr [rbp - 0x20], 0
.label_433:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax,  qword ptr [word ptr [n_specs]]
	jae	.label_438
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x28
	mov	rsp, rsp
	add	rax,  qword ptr [word ptr [spec]]
	mov	ecx, dword ptr [rax + 4]
	mov	rbp, rbp
	mov	eax, ecx
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + width_bytes]]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], ecx
	nop	
	mov	rax,  qword ptr [word ptr [bytes_per_block]]
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x38], rdx
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x38]
	div	rsi
	mov	ecx, eax
	nop	
	mov	dword ptr [rbp - 0x28], ecx
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [bytes_per_block]]
	sub	rax, qword ptr [rbp - 0x48]
	movsxd	rdi, dword ptr [rbp - 0x5c]
	nop	
	xor	ecx, ecx
	mov	edx, ecx
	div	rdi
	mov	rbp, rbp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x2c], ecx
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_441
	xor	esi, esi
	mov	rax,  qword ptr [word ptr [format_address]]
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	rax
	jmp	.label_435
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
	mov	dword ptr [rbp - 0x24], eax
.label_435:
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x28
	mov	rbp, rbp
	add	rax,  qword ptr [word ptr [spec]]
	mov	rax, qword ptr [rax + 8]
	movsxd	rdi, dword ptr [rbp - 0x28]
	movsxd	rsi, dword ptr [rbp - 0x2c]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	imul	rcx, rcx, 0x28
	add	rcx,  qword ptr [word ptr [spec]]
	mov	rbp, rbp
	add	rcx, 0x10
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x20]
	imul	r8, r8, 0x28
	add	r8,  qword ptr [word ptr [spec]]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [r8 + 0x1c]
	lea	rdi, [rdi]
	mov	r9, qword ptr [rbp - 0x20]
	imul	r9, r9, 0x28
	lea	rsi, [rsi]
	add	r9,  qword ptr [word ptr [spec]]
	nop	
	mov	r9d, dword ptr [r9 + 0x20]
	call	rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	mov	rsp, rsp
	test	byte ptr [rax + 0x18], 1
	mov	rsp, rsp
	je	.label_440
	movabs	rdi, OFFSET FLAT:.str.94
	movabs	rdx, OFFSET FLAT:.str_0
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x28
	mov	rbp, rbp
	add	rax,  qword ptr [word ptr [spec]]
	mov	ecx, dword ptr [rax + 0x1c]
	mov	dword ptr [rbp - 0x50], ecx
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 0x28
	add	rax,  qword ptr [word ptr [spec]]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x20]
	imul	ecx, dword ptr [rbp - 0x2c]
	mov	rbp, rbp
	mov	eax, ecx
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdx
	mov	rsp, rsp
	cdq	
	idiv	dword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], eax
	mov	eax, dword ptr [rbp - 0x2c]
	imul	eax, dword ptr [rbp - 0x50]
	add	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	esi, eax
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, r8
	mov	rsp, rsp
	mov	al, 0
	call	printf
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x4c], eax
	mov	rsp, rsp
	call	dump_hexl_mode_trailer
.label_440:
	mov	rbp, rbp
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	jmp	.label_433
.label_438:
	jmp	.label_436
.label_436:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [write_block.first]],  0
	add	rsp, 0x60
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407e00

	.globl dump_hexl_mode_trailer
	.type dump_hexl_mode_trailer, @function
dump_hexl_mode_trailer:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.117
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rsi
	mov	dword ptr [rbp - 0x3c], eax
.label_443:
	cmp	qword ptr [rbp - 0x38], 0
	mov	rbp, rbp
	jbe	.label_445
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x21], dl
	movzx	esi, byte ptr [rbp - 0x21]
	mov	rbp, rbp
	movsxd	rax, esi
	mov	qword ptr [rbp - 0x20], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	movzx	esi, word ptr [rax + rcx*2]
	and	esi, 0x4000
	nop	
	cmp	esi, 0
	je	.label_442
	movzx	eax, byte ptr [rbp - 0x21]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_444
.label_442:
	mov	rbp, rbp
	mov	eax, 0x2e
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_444
.label_444:
	mov	eax, dword ptr [rbp - 0x14]
	mov	cl, al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x3d], cl
	nop	
	movzx	edi, byte ptr [rbp - 0x3d]
	call	putchar_unlocked
	mov	dword ptr [rbp - 4], eax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rax, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_443
.label_445:
	mov	edi, 0x3c
	lea	rsi, [rsi]
	call	putchar_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	add	rsp, 0x40
	pop	rbp
	ret	
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407f00

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	edi, 1
	call	usage
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407f20

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
	mov	qword ptr [rbp - 0x38], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], -1
	mov	byte ptr [rbp - 0x21], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x48], 0
.label_446:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_456
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	call	strncmp
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_453
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	jne	.label_447
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_449
.label_447:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_454
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_452
.label_454:
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_448
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x30]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	imul	rdx, qword ptr [rbp - 0x48]
	add	rcx, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, rax
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	memcmp
	cmp	eax, 0
	je	.label_450
.label_448:
	nop	
	mov	byte ptr [rbp - 0x21], 1
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
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	jmp	.label_446
.label_456:
	test	byte ptr [rbp - 0x21], 1
	je	.label_451
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], -2
	jmp	.label_449
.label_451:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_449:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsp, 0x50
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4080d0

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_458
	movabs	rdi, OFFSET FLAT:.str_3
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
	nop	
	jmp	.label_459
.label_458:
	nop	
	movabs	rdi, OFFSET FLAT:.str.1_0
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
.label_459:
	mov	rax, qword ptr [rbp - 0x38]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	call	quotearg_n_style
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	call	quote_n
	xor	edi, edi
	mov	dword ptr [rbp - 0xc], edi
	nop	
	mov	esi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x20]
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4081b0

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
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x28], rsi
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x48], 0
	mov	rsp, rsp
	mov	rdi, rax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	qword ptr [rbp - 0x30], 0
	mov	dword ptr [rbp - 8], eax
.label_463:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rax*8], 0
	lea	rsi, [rsi]
	je	.label_462
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_460
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	imul	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	memcmp
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_465
.label_460:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
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
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	imul	rdx, qword ptr [rbp - 0x30]
	add	rcx, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rcx
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_461
.label_465:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x50], rdi
	lea	rsi, [rsi]
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:.str.4_0
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
.label_461:
	jmp	.label_464
.label_464:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_463
.label_462:
	mov	rbp, rbp
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	add	rsp, 0x50
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408360

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 8], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], r9
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	argmatch
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	jl	.label_466
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_467
.label_466:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	call	argmatch_invalid
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	call	argmatch_valid
	mov	rsp, rsp
	call	qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], -1
.label_467:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408420
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rsi
	nop	
	mov	qword ptr [rbp - 0x30], rdx
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], 0
.label_470:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	je	.label_472
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	imul	rcx, qword ptr [rbp - 0x10]
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
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_468
.label_469:
	lea	rdi, [rdi]
	jmp	.label_471
.label_471:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_470
.label_472:
	nop	
	mov	qword ptr [rbp - 8], 0
.label_468:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4084f0
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
	#Procedure 0x408520
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
	#Procedure 0x408550

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
	je	.label_475
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_477
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_475
.label_477:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_2
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_474
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
	jmp	.label_476
.label_474:
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_476:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_475:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_473
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_473:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408680

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
	mov	qword ptr [rbp - 0x28], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	dword ptr [rbp - 0x3c], edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], ecx
	movsd	qword ptr [rbp - 0x50], xmm0
	movsd	xmm0, qword ptr [rbp - 0x50]
	nop	
	movsd	qword ptr [rbp - 0x30], xmm0
	ucomisd	xmm1, qword ptr [rbp - 0x50]
	jbe	.label_478
	lea	rsi, [rsi]
	movsd	xmm0, qword ptr [rbp - 0x50]
	movq	rax, xmm0
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	lea	rdi, [rdi]
	movq	xmm0, rax
	movsd	qword ptr [rbp - 0x48], xmm0
	mov	rbp, rbp
	jmp	.label_480
.label_478:
	nop	
	movsd	xmm0, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	movsd	qword ptr [rbp - 0x48], xmm0
.label_480:
	movsd	xmm0, qword ptr [rbp - 0x48]
	movsd	xmm1,  qword ptr [word ptr [label_479]]
	mov	eax, 0xf
	mov	ecx, 1
	mov	edx, 0x67
	mov	rsp, rsp
	mov	esi, 0x47
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x5b]
	mov	rbp, rbp
	movsd	qword ptr [rbp - 0x18], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	r8, rdi
	add	r8, 1
	nop	
	mov	qword ptr [rbp - 8], r8
	nop	
	mov	byte ptr [rdi], 0x25
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	byte ptr [rdi], 0x2d
	mov	r9d, dword ptr [rbp - 0x3c]
	and	r9d, 1
	cmp	r9d, 0
	setne	r10b
	and	r10b, 1
	mov	rbp, rbp
	movzx	r9d, r10b
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	movsxd	r8, r9d
	mov	rbp, rbp
	add	rdi, r8
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	byte ptr [rdi], 0x2b
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rbp - 0x3c]
	and	r9d, 2
	cmp	r9d, 0
	setne	r10b
	lea	rdi, [rdi]
	and	r10b, 1
	movzx	r9d, r10b
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	movsxd	r8, r9d
	add	rdi, r8
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi], 0x20
	mov	r9d, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	and	r9d, 4
	cmp	r9d, 0
	lea	rsi, [rsi]
	setne	r10b
	and	r10b, 1
	movzx	r9d, r10b
	mov	rdi, qword ptr [rbp - 8]
	movsxd	r8, r9d
	add	rdi, r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi], 0x30
	mov	r9d, dword ptr [rbp - 0x3c]
	and	r9d, 8
	cmp	r9d, 0
	lea	rdi, [rdi]
	setne	r10b
	and	r10b, 1
	movzx	r9d, r10b
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	movsxd	r8, r9d
	lea	rsi, [rsi]
	add	rdi, r8
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	r8, rdi
	add	r8, 1
	mov	qword ptr [rbp - 8], r8
	lea	rdi, [rdi]
	mov	byte ptr [rdi], 0x2a
	mov	rdi, qword ptr [rbp - 8]
	mov	r8, rdi
	nop	
	add	r8, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], r8
	mov	byte ptr [rdi], 0x2e
	mov	rdi, qword ptr [rbp - 8]
	mov	r8, rdi
	add	r8, 1
	mov	qword ptr [rbp - 8], r8
	mov	rbp, rbp
	mov	byte ptr [rdi], 0x2a
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi], 0x4c
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 8], rdi
	mov	r9d, dword ptr [rbp - 0x3c]
	and	r9d, 0x10
	nop	
	cmp	r9d, 0
	lea	rdi, [rdi]
	cmovne	edx, esi
	mov	r10b, dl
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	r8, rdi
	add	r8, 1
	nop	
	mov	qword ptr [rbp - 8], r8
	mov	byte ptr [rdi], r10b
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi], 0
	ucomisd	xmm1, qword ptr [rbp - 0x18]
	cmova	eax, ecx
	mov	dword ptr [rbp - 0x34], eax
.label_481:
	lea	rdx, [rbp - 0x5b]
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0xc]
	nop	
	mov	r8d, dword ptr [rbp - 0x34]
	movsd	xmm0, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	al, 1
	nop	
	call	snprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x38], eax
	cmp	dword ptr [rbp - 0x38], 0
	jl	.label_483
	mov	eax, 0x11
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	jle	.label_483
	nop	
	movsxd	rax, dword ptr [rbp - 0x38]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_484
	xor	eax, eax
	mov	esi, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	strtod
	lea	rsi, [rsi]
	ucomisd	xmm0, qword ptr [rbp - 0x50]
	jne	.label_484
	jp	.label_484
.label_483:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x38]
	add	rsp, 0x60
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
.label_484:
	jmp	.label_482
.label_482:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_481
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408980

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
	mov	qword ptr [rbp - 0x48], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], ecx
	lea	rdi, [rdi]
	movss	dword ptr [rbp - 0x1c], xmm0
	mov	rbp, rbp
	cvtss2sd	xmm0, dword ptr [rbp - 0x1c]
	movsd	qword ptr [rbp - 0x50], xmm0
	ucomiss	xmm1, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	jbe	.label_485
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x1c]
	movd	eax, xmm0
	xor	eax, 0x80000000
	lea	rdi, [rdi]
	movd	xmm0, eax
	movss	dword ptr [rbp - 0x14], xmm0
	jmp	.label_490
.label_485:
	movss	xmm0, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x14], xmm0
.label_490:
	lea	rdi, [rdi]
	movss	xmm0, dword ptr [rbp - 0x14]
	movss	xmm1,  dword ptr [dword ptr [label_487]]
	nop	
	mov	eax, 6
	lea	rsi, [rsi]
	mov	ecx, 1
	mov	edx, 0x67
	mov	esi, 0x47
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x3b]
	movss	dword ptr [rbp - 0x30], xmm0
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	r8, rdi
	add	r8, 1
	nop	
	mov	qword ptr [rbp - 0x10], r8
	mov	byte ptr [rdi], 0x25
	mov	rdi, qword ptr [rbp - 0x10]
	mov	byte ptr [rdi], 0x2d
	mov	r9d, dword ptr [rbp - 4]
	and	r9d, 1
	cmp	r9d, 0
	lea	rsi, [rsi]
	setne	r10b
	mov	rsp, rsp
	and	r10b, 1
	mov	rbp, rbp
	movzx	r9d, r10b
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movsxd	r8, r9d
	nop	
	add	rdi, r8
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	byte ptr [rdi], 0x2b
	mov	r9d, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	and	r9d, 2
	cmp	r9d, 0
	setne	r10b
	mov	rsp, rsp
	and	r10b, 1
	mov	rsp, rsp
	movzx	r9d, r10b
	mov	rdi, qword ptr [rbp - 0x10]
	movsxd	r8, r9d
	add	rdi, r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	byte ptr [rdi], 0x20
	mov	rsp, rsp
	mov	r9d, dword ptr [rbp - 4]
	mov	rbp, rbp
	and	r9d, 4
	nop	
	cmp	r9d, 0
	setne	r10b
	and	r10b, 1
	movzx	r9d, r10b
	mov	rdi, qword ptr [rbp - 0x10]
	movsxd	r8, r9d
	mov	rbp, rbp
	add	rdi, r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	byte ptr [rdi], 0x30
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rbp - 4]
	and	r9d, 8
	cmp	r9d, 0
	lea	rdi, [rdi]
	setne	r10b
	lea	rsi, [rsi]
	and	r10b, 1
	movzx	r9d, r10b
	mov	rdi, qword ptr [rbp - 0x10]
	movsxd	r8, r9d
	add	rdi, r8
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	r8, rdi
	mov	rbp, rbp
	add	r8, 1
	mov	qword ptr [rbp - 0x10], r8
	mov	rbp, rbp
	mov	byte ptr [rdi], 0x2a
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	r8, rdi
	add	r8, 1
	mov	qword ptr [rbp - 0x10], r8
	nop	
	mov	byte ptr [rdi], 0x2e
	mov	rdi, qword ptr [rbp - 0x10]
	mov	r8, rdi
	mov	rsp, rsp
	add	r8, 1
	mov	qword ptr [rbp - 0x10], r8
	mov	byte ptr [rdi], 0x2a
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	byte ptr [rdi], 0x4c
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rbp - 4]
	and	r9d, 0x10
	mov	rbp, rbp
	cmp	r9d, 0
	mov	rsp, rsp
	cmovne	edx, esi
	nop	
	mov	r10b, dl
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	r8, rdi
	lea	rdi, [rdi]
	add	r8, 1
	mov	qword ptr [rbp - 0x10], r8
	lea	rdi, [rdi]
	mov	byte ptr [rdi], r10b
	mov	rdi, qword ptr [rbp - 0x10]
	mov	byte ptr [rdi], 0
	ucomiss	xmm1, dword ptr [rbp - 0x30]
	cmova	eax, ecx
	mov	dword ptr [rbp - 0x18], eax
.label_491:
	lea	rdx, [rbp - 0x3b]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	movsd	xmm0, qword ptr [rbp - 0x50]
	mov	al, 1
	lea	rsi, [rsi]
	call	snprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	cmp	dword ptr [rbp - 8], 0
	jl	.label_489
	mov	eax, 9
	cmp	eax, dword ptr [rbp - 0x18]
	jle	.label_489
	movsxd	rax, dword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_488
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	call	strtof
	ucomiss	xmm0, dword ptr [rbp - 0x1c]
	jne	.label_488
	jp	.label_488
.label_489:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rsp, 0x50
	pop	rbp
	ret	
.label_488:
	mov	rbp, rbp
	jmp	.label_486
.label_486:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x18]
	add	eax, 1
	mov	dword ptr [rbp - 0x18], eax
	jmp	.label_491
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408c90

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
	mov	qword ptr [rbp - 0x98], rdi
	mov	qword ptr [rbp - 0x30], rsi
	mov	dword ptr [rbp - 0x74], edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], ecx
	fld	st(0)
	mov	rsp, rsp
	fstp	xword ptr [rbp - 0x70]
	mov	rsp, rsp
	fstp	xword ptr [rbp - 0x50]
	nop	
	fld	xword ptr [rbp - 0x70]
	nop	
	fldz	
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_498
	jmp	.label_499
.label_499:
	mov	rsp, rsp
	fld	xword ptr [rbp - 0x70]
	fchs	
	fstp	xword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	jmp	.label_500
.label_498:
	fld	xword ptr [rbp - 0x70]
	mov	rsp, rsp
	fstp	xword ptr [rbp - 0x3c]
.label_500:
	fld	xword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	fstp	xword ptr [rbp - 0x60]
	lea	rax, [rbp - 0x23]
	mov	qword ptr [rbp - 0x18], rax
	lea	rax, [rbp - 0x22]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	byte ptr [rbp - 0x23], 0x25
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rax], 0x2d
	mov	ecx, dword ptr [rbp - 0x74]
	mov	eax, ecx
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	and	ecx, 1
	mov	eax, ecx
	mov	rbp, rbp
	mov	rsi, rdx
	lea	rsi, [rsi]
	add	rsi, rax
	mov	qword ptr [rbp - 0x18], rsi
	mov	byte ptr [rdx + rax], 0x2b
	mov	ecx, dword ptr [rbp - 0x74]
	and	ecx, 2
	mov	rsp, rsp
	shr	ecx, 1
	mov	rax, qword ptr [rbp - 0x18]
	mov	edx, ecx
	mov	rbp, rbp
	mov	rsi, rax
	lea	rdi, [rdi]
	add	rsi, rdx
	mov	qword ptr [rbp - 0x18], rsi
	mov	byte ptr [rax + rdx], 0x20
	mov	ecx, dword ptr [rbp - 0x74]
	and	ecx, 4
	shr	ecx, 2
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rsi, rax
	add	rsi, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	byte ptr [rax + rdx], 0x30
	mov	ecx, dword ptr [rbp - 0x74]
	nop	
	and	ecx, 8
	nop	
	shr	ecx, 3
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, ecx
	mov	rbp, rbp
	mov	rsi, rax
	add	rsi, rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rax + rdx + 1]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	byte ptr [rax + rdx], 0x2a
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdx, rax
	lea	rsi, [rsi]
	inc	rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rax], 0x2e
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdx, rax
	inc	rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rax], 0x2a
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax], 0x4c
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdx, rax
	lea	rsi, [rsi]
	inc	rdx
	mov	qword ptr [rbp - 0x18], rdx
	mov	ecx, dword ptr [rbp - 0x74]
	lea	rsi, [rsi]
	mov	dil, cl
	nop	
	test	dil, 0x10
	mov	dil, 0x47
	nop	
	mov	r8b, 0x67
	mov	qword ptr [rbp - 0x80], rax
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 6], r8b
	mov	byte ptr [rbp - 5], dil
	nop	
	jne	.label_497
	mov	al, byte ptr [rbp - 6]
	mov	byte ptr [rbp - 5], al
.label_497:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 5]
	mov	rcx, qword ptr [rbp - 0x80]
	add	rcx, 2
	mov	qword ptr [rbp - 0x18], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	byte ptr [rcx + 1], al
	mov	rdx, qword ptr [rbp - 0x18]
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
	mov	dword ptr [rbp - 4], edi
.label_495:
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rdx, [rbp - 0x23]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rbp - 4]
	fld	xword ptr [rbp - 0x50]
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
	mov	dword ptr [rbp - 0x40], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x40], 0
	mov	rsp, rsp
	jl	.label_492
	nop	
	mov	eax, 0x15
	cmp	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	jle	.label_492
	movsxd	rax, dword ptr [rbp - 0x40]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	jae	.label_493
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, eax
	call	strtold
	nop	
	fld	st(0)
	fld	xword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	fxch	st(2)
	lea	rsi, [rsi]
	fucomip	st(2)
	fstp	st(1)
	mov	rsp, rsp
	fstp	xword ptr [rbp - 0x8c]
	jne	.label_493
	lea	rsi, [rsi]
	jnp	.label_492
	jmp	.label_493
.label_492:
	mov	eax, dword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rsp, 0xb0
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_493:
	mov	rsp, rsp
	jmp	.label_496
.label_496:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_495
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408f80

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
	jne	.label_501
	movabs	rdi, OFFSET FLAT:.str_4
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	call	abort
.label_501:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_503
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_504
.label_503:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_504:
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
	jl	.label_502
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
	jne	.label_502
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
	jne	.label_505
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_505:
	jmp	.label_502
.label_502:
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
	#Procedure 0x409100
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
	je	.label_506
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_507
.label_506:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_507
.label_507:
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
	#Procedure 0x4091b0
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
	je	.label_508
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_509
.label_508:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_509
.label_509:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409210
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
	je	.label_510
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_511
.label_510:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_511
.label_511:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409270

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
	je	.label_512
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jmp	.label_513
.label_512:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_513
.label_513:
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
	#Procedure 0x409370
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
	jne	.label_514
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
.label_514:
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
	#Procedure 0x4093d0

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
	jne	.label_515
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
.label_515:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 8], 0
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
	#Procedure 0x409470
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
	je	.label_518
	mov	rax, qword ptr [rbp - 0x50]
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
	#Procedure 0x409570

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
.label_638:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0x88], rcx
	mov	qword ptr [rbp - 0x130], rdx
	ja	.label_704
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_650]]
	jmp	rcx
.label_1020:
	mov	dword ptr [rbp - 0x58], 5
	mov	byte ptr [rbp - 0x3e], 1
.label_1019:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_658
	jmp	.label_607
.label_607:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_664
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x22
.label_664:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_658
.label_658:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	jmp	.label_537
.label_1021:
	nop	
	mov	byte ptr [rbp - 0x89], 1
	nop	
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_537
.label_1022:
	cmp	dword ptr [rbp - 0x58], 0xa
	je	.label_685
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
.label_685:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_527
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x108], rax
.label_719:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_703
	jmp	.label_705
.label_705:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_706
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rdx + rax], cl
.label_706:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_561
.label_561:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_719
.label_703:
	mov	rbp, rbp
	jmp	.label_527
.label_527:
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
	jmp	.label_537
.label_1017:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x89], 1
.label_1016:
	mov	byte ptr [rbp - 0x3e], 1
.label_1018:
	nop	
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_542
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
.label_542:
	jmp	.label_546
.label_546:
	mov	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_547
	jmp	.label_552
.label_552:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_553
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_553:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_547
.label_547:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	mov	rsp, rsp
	jmp	.label_537
.label_1015:
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_537
.label_704:
	call	abort
.label_537:
	mov	qword ptr [rbp - 0xd8], 0
.label_580:
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_574
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
	jmp	.label_577
.label_574:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], edx
.label_577:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_594
	mov	rbp, rbp
	jmp	.label_603
.label_594:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa6], 0
	nop	
	mov	byte ptr [rbp - 0x3f], 0
	mov	byte ptr [rbp - 0x91], 0
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_605
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	je	.label_605
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_605
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], -1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jne	.label_625
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xd0]
	jae	.label_625
	mov	rdi, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_635
.label_625:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xc8], rax
.label_635:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_605
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
	jne	.label_605
	nop	
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	je	.label_655
	jmp	.label_548
.label_655:
	nop	
	mov	byte ptr [rbp - 0xa6], 1
.label_605:
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
	ja	.label_662
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_672]]
	nop	
	jmp	rcx
.label_985:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	je	.label_675
	mov	rsp, rsp
	jmp	.label_679
.label_679:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_681
	jmp	.label_548
.label_681:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3f], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_611
	mov	rbp, rbp
	test	byte ptr [rbp - 0x42], 1
	mov	rbp, rbp
	jne	.label_611
	nop	
	jmp	.label_688
.label_688:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_691
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_691:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_698
.label_698:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_702
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_702:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_708
.label_708:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_712
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_712:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_611:
	lea	rsi, [rsi]
	jmp	.label_522
.label_522:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_524
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_524:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_623
.label_623:
	cmp	dword ptr [rbp - 0x58], 2
	je	.label_541
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_541
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x150]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_541
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_541
	nop	
	jmp	.label_557
.label_557:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_558
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x30
.label_558:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_566
.label_566:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_613
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_613:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_541
.label_541:
	mov	byte ptr [rbp - 0x3d], 0x30
	nop	
	jmp	.label_581
.label_675:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_583
	mov	rbp, rbp
	jmp	.label_578
.label_583:
	jmp	.label_581
.label_581:
	jmp	.label_523
.label_996:
	mov	eax, dword ptr [rbp - 0x58]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0x78], eax
	nop	
	mov	dword ptr [rbp - 0x90], ecx
	mov	rsp, rsp
	je	.label_592
	mov	rbp, rbp
	jmp	.label_599
.label_599:
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb4], eax
	lea	rsi, [rsi]
	je	.label_601
	jmp	.label_609
.label_592:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_610
	jmp	.label_548
.label_610:
	jmp	.label_520
.label_601:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 4
	cmp	eax, 0
	je	.label_568
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	jae	.label_568
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_568
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
	je	.label_544
	nop	
	jmp	.label_608
.label_608:
	nop	
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	jb	.label_544
	jmp	.label_643
.label_643:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x144]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_544
	jmp	.label_651
.label_651:
	mov	eax, dword ptr [rbp - 0x144]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x128], eax
	je	.label_544
	jmp	.label_657
.label_657:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0xf4], eax
	lea	rdi, [rdi]
	ja	.label_569
	jmp	.label_544
.label_544:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_666
	jmp	.label_548
.label_666:
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
	jae	.label_669
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_669:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_687
.label_687:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_689
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_689:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_695
.label_695:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_700
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_700:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_628
.label_628:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_600
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_600:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_714
.label_569:
	jmp	.label_714
.label_714:
	jmp	.label_568
.label_568:
	jmp	.label_520
.label_609:
	jmp	.label_520
.label_520:
	jmp	.label_523
.label_986:
	mov	byte ptr [rbp - 0xb6], 0x61
	jmp	.label_526
.label_987:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb6], 0x62
	jmp	.label_526
.label_991:
	mov	byte ptr [rbp - 0xb6], 0x66
	lea	rdi, [rdi]
	jmp	.label_526
.label_989:
	mov	byte ptr [rbp - 0xb6], 0x6e
	mov	rbp, rbp
	jmp	.label_535
.label_992:
	mov	byte ptr [rbp - 0xb6], 0x72
	mov	rbp, rbp
	jmp	.label_535
.label_988:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb6], 0x74
	jmp	.label_535
.label_990:
	mov	byte ptr [rbp - 0xb6], 0x76
	jmp	.label_526
.label_997:
	mov	al, byte ptr [rbp - 0x3d]
	nop	
	mov	byte ptr [rbp - 0xb6], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_665
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_550
	nop	
	jmp	.label_548
.label_550:
	lea	rsi, [rsi]
	jmp	.label_529
.label_665:
	test	byte ptr [rbp - 0x89], 1
	je	.label_536
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_536
	nop	
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rbp, rbp
	je	.label_536
	jmp	.label_529
.label_536:
	jmp	.label_535
.label_535:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	jne	.label_567
	test	byte ptr [rbp - 0x3e], 1
	je	.label_567
	jmp	.label_548
.label_567:
	mov	rsp, rsp
	jmp	.label_526
.label_526:
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_572
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb6]
	mov	byte ptr [rbp - 0x3d], al
	jmp	.label_575
.label_572:
	jmp	.label_523
.label_998:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_682
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x150]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_584
	jmp	.label_591
.label_682:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 1
	je	.label_584
.label_591:
	nop	
	jmp	.label_523
.label_584:
	jmp	.label_595
.label_595:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rbp, rbp
	je	.label_596
	lea	rsi, [rsi]
	jmp	.label_523
.label_596:
	nop	
	jmp	.label_604
.label_604:
	mov	byte ptr [rbp - 0x91], 1
.label_993:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_612
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_612
	jmp	.label_548
.label_612:
	lea	rsi, [rsi]
	jmp	.label_523
.label_995:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa5], 1
	mov	byte ptr [rbp - 0x91], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_615
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_693
	jmp	.label_548
.label_693:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_626
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x140], 0
	lea	rdi, [rdi]
	jne	.label_626
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x140], rax
	mov	qword ptr [rbp - 0x28], 0
.label_626:
	jmp	.label_636
.label_636:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_637
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_637:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_640
.label_640:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	jae	.label_646
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_646:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_656
.label_656:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_661
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_661:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_615:
	lea	rsi, [rsi]
	jmp	.label_523
.label_994:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 1
	jmp	.label_523
.label_662:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xb5], 1
	je	.label_676
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
	jmp	.label_545
.label_676:
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
	jne	.label_699
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x150]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
.label_699:
	jmp	.label_576
.label_576:
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
	jne	.label_521
	jmp	.label_531
.label_521:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], -1
	jne	.label_528
	mov	byte ptr [rbp - 0x40], 0
	jmp	.label_531
.label_528:
	nop	
	cmp	qword ptr [rbp - 0x10], -2
	jne	.label_534
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_555:
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
	jae	.label_616
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0x110]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x41], sil
.label_616:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_707
	jmp	.label_717
.label_707:
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_555
.label_717:
	jmp	.label_531
.label_534:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_559
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_559
	mov	qword ptr [rbp - 0xe8], 1
.label_614:
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_570
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
	jb	.label_571
	jmp	.label_588
.label_588:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x148], eax
	je	.label_571
	jmp	.label_593
.label_593:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	je	.label_571
	jmp	.label_659
.label_659:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x48], eax
	jne	.label_602
	mov	rsp, rsp
	jmp	.label_571
.label_571:
	mov	rsp, rsp
	jmp	.label_548
.label_602:
	jmp	.label_627
.label_627:
	mov	rsp, rsp
	jmp	.label_633
.label_633:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe8]
	add	rax, 1
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_614
.label_570:
	mov	rbp, rbp
	jmp	.label_559
.label_559:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x74]
	call	iswprint
	cmp	eax, 0
	jne	.label_621
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_621:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_622
.label_622:
	lea	rsi, [rsi]
	jmp	.label_630
.label_630:
	jmp	.label_632
.label_632:
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
	jne	.label_576
.label_531:
	jmp	.label_545
.label_545:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x40]
	and	dl, 1
	mov	byte ptr [rbp - 0x91], dl
	cmp	rcx, qword ptr [rbp - 0x110]
	nop	
	jb	.label_639
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_648
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	mov	rsp, rsp
	jne	.label_648
.label_639:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x110]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_629:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	nop	
	je	.label_663
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	jne	.label_663
	jmp	.label_667
.label_667:
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_668
	jmp	.label_548
.label_668:
	mov	byte ptr [rbp - 0x3f], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_619
	test	byte ptr [rbp - 0x42], 1
	jne	.label_619
	lea	rdi, [rdi]
	jmp	.label_677
.label_677:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_678
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_678:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_686
.label_686:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_711
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x24
.label_711:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_696
.label_696:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_649
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_649:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_619:
	jmp	.label_709
.label_709:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_710
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_710:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_715
.label_715:
	jmp	.label_718
.label_718:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_720
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
.label_720:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_533
.label_533:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_539
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
.label_539:
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
	jmp	.label_549
.label_663:
	test	byte ptr [rbp - 0xa6], 1
	lea	rsi, [rsi]
	je	.label_556
	lea	rdi, [rdi]
	jmp	.label_560
.label_560:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_563
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x5c
.label_563:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa6], 0
.label_556:
	nop	
	jmp	.label_549
.label_549:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xd8]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_573
	jmp	.label_579
.label_573:
	lea	rsi, [rsi]
	jmp	.label_582
.label_582:
	test	byte ptr [rbp - 0x42], 1
	je	.label_585
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_585
	lea	rsi, [rsi]
	jmp	.label_589
.label_589:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_590
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_590:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_598
.label_598:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_606
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_606:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_585:
	nop	
	jmp	.label_670
.label_670:
	mov	rsp, rsp
	jmp	.label_618
.label_618:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_620
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x3d]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_620:
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
	jmp	.label_629
.label_579:
	mov	rsp, rsp
	jmp	.label_529
.label_648:
	lea	rsi, [rsi]
	jmp	.label_523
.label_523:
	test	byte ptr [rbp - 0x89], 1
	mov	rbp, rbp
	je	.label_641
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_644
.label_641:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_647
.label_644:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x100], 0
	nop	
	je	.label_647
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
	jne	.label_653
.label_647:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xa6], 1
	lea	rdi, [rdi]
	jne	.label_653
	mov	rsp, rsp
	jmp	.label_529
.label_653:
	nop	
	jmp	.label_575
.label_575:
	jmp	.label_673
.label_673:
	test	byte ptr [rbp - 0x3e], 1
	mov	rbp, rbp
	je	.label_674
	jmp	.label_548
.label_674:
	mov	byte ptr [rbp - 0x3f], 1
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_554
	test	byte ptr [rbp - 0x42], 1
	lea	rdi, [rdi]
	jne	.label_554
	lea	rdi, [rdi]
	jmp	.label_684
.label_684:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_683
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_683:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_692
.label_692:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_697
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_697:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_597
.label_597:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_701
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_701:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_554:
	jmp	.label_694
.label_694:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_716
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_716:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_525
.label_525:
	nop	
	jmp	.label_529
.label_529:
	jmp	.label_530
.label_530:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x42], 1
	je	.label_532
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_532
	lea	rdi, [rdi]
	jmp	.label_538
.label_538:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_540
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_540:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_543
.label_543:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_551
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_551:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_532:
	jmp	.label_562
.label_562:
	nop	
	jmp	.label_564
.label_564:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_565
	mov	al, byte ptr [rbp - 0x3d]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_565:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x91], 1
	jne	.label_624
	mov	byte ptr [rbp - 0xb7], 0
.label_624:
	mov	rbp, rbp
	jmp	.label_578
.label_578:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_580
.label_603:
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_587
	cmp	dword ptr [rbp - 0x58], 2
	nop	
	jne	.label_587
	mov	rbp, rbp
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_587
	nop	
	jmp	.label_548
.label_587:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_586
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_586
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa5], 1
	je	.label_586
	test	byte ptr [rbp - 0xb7], 1
	je	.label_617
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
	jmp	.label_631
.label_617:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jne	.label_634
	cmp	qword ptr [rbp - 0x140], 0
	lea	rsi, [rsi]
	je	.label_634
	nop	
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_638
.label_634:
	jmp	.label_642
.label_642:
	mov	rbp, rbp
	jmp	.label_586
.label_586:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x108], 0
	je	.label_645
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_645
	mov	rbp, rbp
	jmp	.label_652
.label_652:
	mov	rax, qword ptr [rbp - 0x108]
	cmp	byte ptr [rax], 0
	je	.label_654
	lea	rdi, [rdi]
	jmp	.label_713
.label_713:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_660
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_660:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_671
.label_671:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_652
.label_654:
	jmp	.label_645
.label_645:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_680
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0
.label_680:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_631
.label_548:
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_690
	mov	rsp, rsp
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_690
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], 4
.label_690:
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
.label_631:
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
	#Procedure 0x40b010
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
	#Procedure 0x40b080

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
	je	.label_721
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_722
.label_721:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_722
.label_722:
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
	je	.label_723
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
.label_723:
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
	#Procedure 0x40b250
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b360

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
	#Procedure 0x40b3b0

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
	jge	.label_733
	call	abort
.label_733:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 0x64]
	jg	.label_736
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
	jge	.label_729
	call	xalloc_die
.label_729:
	test	byte ptr [rbp - 0x51], 1
	je	.label_730
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_734
.label_730:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_734:
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
	je	.label_732
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_724]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_732:
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
.label_736:
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
	ja	.label_731
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
	je	.label_735
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	free
.label_735:
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
.label_731:
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
	#Procedure 0x40b6e0

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
	#Procedure 0x40b720
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
	#Procedure 0x40b750
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
	#Procedure 0x40b790

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
	#Procedure 0x40b7f0

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
	jne	.label_737
	call	abort
.label_737:
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
	#Procedure 0x40b890

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
	#Procedure 0x40b900
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
	#Procedure 0x40b940
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
	#Procedure 0x40b980

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
	#Procedure 0x40ba30

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
	#Procedure 0x40ba70

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
	#Procedure 0x40baa0
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
	#Procedure 0x40bae0

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
	#Procedure 0x40bbc0

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
	#Procedure 0x40bc10

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
	#Procedure 0x40bcb0
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
	#Procedure 0x40bd00
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
	#Procedure 0x40bd60

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
	#Procedure 0x40bda0
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
	#Procedure 0x40bde0

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
	#Procedure 0x40be20

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
	#Procedure 0x40be60

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
	je	.label_741
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_739
.label_741:
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
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_739
.label_740:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16
	mov	rdi, qword ptr [rbp - 0x20]
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
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_739
.label_738:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
.label_739:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bfa0

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
	je	.label_746
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
	jmp	.label_744
.label_746:
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
.label_744:
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
	mov	ecx, OFFSET FLAT:.str.3_1
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
	ja	.label_745
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_742]]
	jmp	rcx
.label_1004:
	jmp	.label_743
.label_1005:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.4_1
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
	jmp	.label_743
.label_1006:
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
	jmp	.label_743
.label_1007:
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
	jmp	.label_743
.label_1008:
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
	jmp	.label_743
.label_1009:
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
	jmp	.label_743
.label_1010:
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
	jmp	.label_743
.label_1011:
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
	jmp	.label_743
.label_1012:
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
	jmp	.label_743
.label_1013:
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
	jmp	.label_743
.label_745:
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
.label_743:
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
	#Procedure 0x40c7e0
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
.label_747:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_748
	mov	rbp, rbp
	jmp	.label_749
.label_749:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_747
.label_748:
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
	#Procedure 0x40c890

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
.label_754:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x40], 0xa
	mov	byte ptr [rbp - 0x11], cl
	jae	.label_750
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], ecx
	ja	.label_756
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
	jmp	.label_755
.label_756:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x30], rdx
.label_755:
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
.label_750:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_753
	mov	rsp, rsp
	jmp	.label_751
.label_753:
	jmp	.label_752
.label_752:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_754
.label_751:
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
	#Procedure 0x40c9f0

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
	je	.label_757
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
.label_757:
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
	#Procedure 0x40cbb0
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
	#Procedure 0x40cc60

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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ccc0

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
	jne	.label_759
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_759
	lea	rdi, [rdi]
	call	xalloc_die
.label_759:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cd20
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
	jae	.label_760
	mov	rsp, rsp
	call	xalloc_die
.label_760:
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
	#Procedure 0x40cda0

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
	jne	.label_761
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_761
	mov	rdi, qword ptr [rbp - 8]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_763
.label_761:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	realloc
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_762
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_762
	lea	rsi, [rsi]
	call	xalloc_die
.label_762:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
.label_763:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ce50

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
	jne	.label_764
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_766
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
.label_766:
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
	div	qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_765
	call	xalloc_die
.label_765:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_767:
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
	#Procedure 0x40cf80

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
	#Procedure 0x40cfb0

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
	#Procedure 0x40cff0
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
	#Procedure 0x40d040
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
	jb	.label_769
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	calloc
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_770
.label_769:
	lea	rsi, [rsi]
	call	xalloc_die
.label_770:
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
	#Procedure 0x40d0b0

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
	#Procedure 0x40d100
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
	#Procedure 0x40d160

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
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d1c0

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
	#Procedure 0x40d1d0

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
	jge	.label_771
	call	xset_binary_mode_error
.label_771:
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d210

	.globl xprintf
	.type xprintf, @function
xprintf:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x1b0
	test	al, al
	movaps	xmmword ptr [rbp - 0x20], xmm7
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xc0], xmm6
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x80], xmm5
	movaps	xmmword ptr [rbp - 0x1b0], xmm4
	movaps	xmmword ptr [rbp - 0xa0], xmm3
	movaps	xmmword ptr [rbp - 0x50], xmm2
	movaps	xmmword ptr [rbp - 0x90], xmm1
	movaps	xmmword ptr [rbp - 0x60], xmm0
	mov	qword ptr [rbp - 0x68], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x198], r9
	mov	qword ptr [rbp - 0x1a0], r8
	mov	qword ptr [rbp - 0xa8], rcx
	mov	qword ptr [rbp - 0x28], rdx
	nop	
	mov	qword ptr [rbp - 0x30], rsi
	je	.label_772
	mov	rbp, rbp
	movaps	xmm0, xmmword ptr [rbp - 0x60]
	movaps	xmmword ptr [rbp - 0x160], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x90]
	movaps	xmmword ptr [rbp - 0x150], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x50]
	movaps	xmmword ptr [rbp - 0x140], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0xa0]
	nop	
	movaps	xmmword ptr [rbp - 0x130], xmm3
	lea	rdi, [rdi]
	movaps	xmm4, xmmword ptr [rbp - 0x1b0]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x120], xmm4
	lea	rsi, [rsi]
	movaps	xmm5, xmmword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x110], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x100], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x20]
	movaps	xmmword ptr [rbp - 0xf0], xmm7
.label_772:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x198]
	nop	
	mov	qword ptr [rbp - 0x168], rax
	nop	
	mov	rcx, qword ptr [rbp - 0x1a0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x170], rcx
	mov	rdx, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x178], rdx
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x180], rsi
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x188], rdi
	mov	r8, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], r8
	lea	r8, [rbp - 0x190]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd0], r8
	lea	rdi, [rdi]
	lea	r8, [rbp + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], r8
	mov	dword ptr [rbp - 0xdc], 0x30
	mov	dword ptr [rbp - 0xe0], 8
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	lea	rsi, [rbp - 0xe0]
	nop	
	call	xvprintf
	mov	dword ptr [rbp - 0x34], eax
	add	rsp, 0x1b0
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d3b0

	.globl xvprintf
	.type xvprintf, @function
xvprintf:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	vprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	cmp	dword ptr [rbp - 4], 0
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
	mov	dword ptr [rbp - 0x14], edi
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_6
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], esi
	lea	rdi, [rdi]
	call	gettext
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x14]
	mov	esi, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, rax
	mov	al, 0
	call	error
.label_773:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d460
	.globl xfprintf
	.type xfprintf, @function
xfprintf:

	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x1b0
	mov	rsp, rsp
	test	al, al
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x120], xmm7
	nop	
	movaps	xmmword ptr [rbp - 0x180], xmm6
	nop	
	movaps	xmmword ptr [rbp - 0x10], xmm5
	movaps	xmmword ptr [rbp - 0x170], xmm4
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x160], xmm3
	movaps	xmmword ptr [rbp - 0x40], xmm2
	movaps	xmmword ptr [rbp - 0x50], xmm1
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x20], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x190], r9
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x130], r8
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x128], rcx
	mov	qword ptr [rbp - 0x138], rdx
	mov	qword ptr [rbp - 0x140], rsi
	nop	
	je	.label_774
	mov	rsp, rsp
	movaps	xmm0, xmmword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0xd0], xmm0
	lea	rsi, [rsi]
	movaps	xmm1, xmmword ptr [rbp - 0x50]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0xc0], xmm1
	lea	rdi, [rdi]
	movaps	xmm2, xmmword ptr [rbp - 0x40]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xb0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x160]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0xa0], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0x90], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x10]
	nop	
	movaps	xmmword ptr [rbp - 0x80], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x180]
	movaps	xmmword ptr [rbp - 0x70], xmm6
	mov	rsp, rsp
	movaps	xmm7, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x60], xmm7
.label_774:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0xd8], rax
	mov	rcx, qword ptr [rbp - 0x130]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe0], rcx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x128]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe8], rdx
	mov	rsi, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0xf0], rsi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x140]
	mov	r8, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x188], r8
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x108], rdi
	nop	
	lea	rdi, [rbp - 0x100]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1a0], rdi
	mov	rbp, rbp
	lea	rdi, [rbp + 0x10]
	mov	qword ptr [rbp - 0x1a8], rdi
	nop	
	mov	dword ptr [rbp - 0x1ac], 0x30
	nop	
	mov	dword ptr [rbp - 0x1b0], 0x10
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x188]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x108]
	lea	rdx, [rbp - 0x1b0]
	call	xvfprintf
	mov	dword ptr [rbp - 0x144], eax
	nop	
	add	rsp, 0x1b0
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d630

	.globl xvfprintf
	.type xvfprintf, @function
xvfprintf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x28], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	call	vfprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_775
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	ferror
	nop	
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_775
	lea	rsi, [rsi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 0x14], edi
	nop	
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str_6
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 4], esi
	nop	
	call	gettext
	mov	edi, dword ptr [rbp - 0x14]
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_775:
	nop	
	mov	eax, dword ptr [rbp - 0x2c]
	add	rsp, 0x30
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d6e0

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
	mov	dword ptr [rbp - 0x10], edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], esi
	mov	byte ptr [rbp - 9], al
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], r8
	nop	
	mov	edi, dword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x1c]
	mov	al, byte ptr [rbp - 9]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 8]
	mov	r9d,  dword ptr [dword ptr [exit_failure]]
	nop	
	movsx	edx, al
	nop	
	call	xstrtol_error
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d740

	.globl xstrtol_error
	.type xstrtol_error, @function
xstrtol_error:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, dl
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x50], edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], esi
	mov	byte ptr [rbp - 0x29], al
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x28], r8
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], r9d
	mov	qword ptr [word ptr [rbp - 64]], OFFSET FLAT:.str_7
	mov	edx, dword ptr [rbp - 0x50]
	nop	
	mov	esi, edx
	lea	rsi, [rsi]
	sub	esi, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], esi
	lea	rsi, [rsi]
	je	.label_776
	nop	
	jmp	.label_780
.label_780:
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, -2
	nop	
	sub	eax, 2
	mov	dword ptr [rbp - 0x48], eax
	jb	.label_782
	lea	rdi, [rdi]
	jmp	.label_779
.label_779:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20], eax
	lea	rsi, [rsi]
	je	.label_781
	lea	rsi, [rsi]
	jmp	.label_784
.label_784:
	call	abort
.label_781:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.1_5
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	jmp	.label_777
.label_782:
	movabs	rax, OFFSET FLAT:.str.2_3
	nop	
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_777
.label_776:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.3_2
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
.label_777:
	cmp	dword ptr [rbp - 0x1c], 0
	mov	rsp, rsp
	jge	.label_783
	lea	rax, [rbp - 2]
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	nop	
	mov	ecx, dword ptr [rbp - 0x1c]
	nop	
	mov	rsi, qword ptr [rbp - 0x40]
	movsxd	rdi, ecx
	lea	rdi, [rdi]
	sub	rdx, rdi
	mov	rsp, rsp
	add	rsi, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rsi
	mov	r8b, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	mov	byte ptr [rbp - 2], r8b
	mov	byte ptr [rbp - 1], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_778
.label_783:
	movsxd	rax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	shl	rax, 5
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_778:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], edi
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	gettext
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x10]
	nop	
	mov	r9, qword ptr [rbp - 0x28]
	mov	edi, dword ptr [rbp - 0x44]
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
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d8f0

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
	jg	.label_803
	cmp	dword ptr [rbp - 0x54], 0x24
	lea	rdi, [rdi]
	jg	.label_803
	jmp	.label_829
.label_803:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str_8
	movabs	rsi, OFFSET FLAT:.str.1_6
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
.label_829:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_836
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	jmp	.label_823
.label_836:
	lea	rax, [rbp - 0x80]
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_823
.label_823:
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
.label_792:
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
	je	.label_849
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x91], dl
	lea	rsi, [rsi]
	jmp	.label_792
.label_849:
	movzx	eax, byte ptr [rbp - 0x91]
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	jne	.label_805
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xf4], 4
	lea	rsi, [rsi]
	jmp	.label_788
.label_805:
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
	jne	.label_821
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rsp, rsp
	je	.label_830
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_830
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	nop	
	je	.label_830
	mov	qword ptr [rbp - 0xc8], 1
	jmp	.label_799
.label_830:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xf4], 4
	jmp	.label_788
.label_799:
	lea	rdi, [rdi]
	jmp	.label_797
.label_821:
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0
	je	.label_802
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	lea	rdi, [rdi]
	je	.label_824
	nop	
	mov	dword ptr [rbp - 0xf4], 4
	jmp	.label_788
.label_824:
	mov	dword ptr [rbp - 0x60], 1
.label_802:
	jmp	.label_797
.label_797:
	nop	
	cmp	qword ptr [rbp - 0xd8], 0
	jne	.label_812
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x60]
	mov	dword ptr [rbp - 0xf4], edx
	lea	rdi, [rdi]
	jmp	.label_788
.label_812:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_806
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
	jne	.label_847
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
	jmp	.label_788
.label_847:
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
	je	.label_794
	jmp	.label_842
.label_842:
	nop	
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0xdc], eax
	lea	rdi, [rdi]
	je	.label_794
	nop	
	jmp	.label_804
.label_804:
	mov	eax, dword ptr [rbp - 0x9c]
	nop	
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_794
	nop	
	jmp	.label_827
.label_827:
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rsi, [rsi]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x34], eax
	mov	rbp, rbp
	je	.label_794
	lea	rsi, [rsi]
	jmp	.label_833
.label_833:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	je	.label_794
	jmp	.label_840
.label_840:
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_794
	jmp	.label_846
.label_846:
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	add	eax, -0x59
	mov	rbp, rbp
	sub	eax, 2
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], eax
	lea	rdi, [rdi]
	jb	.label_794
	mov	rsp, rsp
	jmp	.label_790
.label_790:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_794
	jmp	.label_793
.label_793:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xf8], eax
	lea	rdi, [rdi]
	je	.label_794
	mov	rsp, rsp
	jmp	.label_808
.label_808:
	mov	eax, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x44], eax
	nop	
	je	.label_794
	jmp	.label_817
.label_817:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 0x74
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	jne	.label_819
	jmp	.label_794
.label_794:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0xd8]
	call	strchr
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_816
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
	je	.label_834
	lea	rsi, [rsi]
	jmp	.label_844
.label_844:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x88], eax
	je	.label_834
	jmp	.label_850
.label_850:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	sub	eax, 0x69
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xbc], eax
	lea	rdi, [rdi]
	jne	.label_809
	lea	rsi, [rsi]
	jmp	.label_795
.label_795:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 2]
	lea	rsi, [rsi]
	cmp	ecx, 0x42
	jne	.label_798
	mov	eax, dword ptr [rbp - 0xd0]
	nop	
	add	eax, 2
	mov	dword ptr [rbp - 0xd0], eax
.label_798:
	jmp	.label_809
.label_834:
	mov	dword ptr [rbp - 0x64], 0x3e8
	mov	eax, dword ptr [rbp - 0xd0]
	add	eax, 1
	mov	dword ptr [rbp - 0xd0], eax
.label_809:
	jmp	.label_816
.label_816:
	nop	
	jmp	.label_819
.label_819:
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
	je	.label_820
	jmp	.label_838
.label_838:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x45
	nop	
	mov	dword ptr [rbp - 0x98], eax
	je	.label_832
	jmp	.label_837
.label_837:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x47
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	je	.label_807
	jmp	.label_843
.label_843:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	sub	eax, 0x4b
	nop	
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	je	.label_811
	nop	
	jmp	.label_848
.label_848:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rdi, [rdi]
	sub	eax, 0x4d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xfc], eax
	je	.label_815
	nop	
	jmp	.label_791
.label_791:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_826
	mov	rsp, rsp
	jmp	.label_801
.label_801:
	nop	
	mov	eax, dword ptr [rbp - 0x6c]
	nop	
	sub	eax, 0x54
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	nop	
	je	.label_785
	jmp	.label_835
.label_835:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x59
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x20], eax
	je	.label_786
	mov	rbp, rbp
	jmp	.label_810
.label_810:
	mov	eax, dword ptr [rbp - 0x6c]
	nop	
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb0], eax
	je	.label_813
	jmp	.label_822
.label_822:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x62
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_825
	jmp	.label_831
.label_831:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x58], eax
	je	.label_814
	jmp	.label_841
.label_841:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x67
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_807
	jmp	.label_839
.label_839:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x6b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_811
	jmp	.label_818
.label_818:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xac], eax
	je	.label_815
	jmp	.label_845
.label_845:
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x30], eax
	je	.label_785
	jmp	.label_787
.label_787:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0x24], eax
	je	.label_796
	jmp	.label_800
.label_825:
	lea	rdi, [rbp - 0xc8]
	mov	esi, 0x200
	call	bkm_scale
	nop	
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_789
.label_820:
	lea	rdi, [rbp - 0xc8]
	mov	esi, 0x400
	lea	rdi, [rdi]
	call	bkm_scale
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_789
.label_814:
	mov	dword ptr [rbp - 0x84], 0
	jmp	.label_789
.label_832:
	nop	
	lea	rdi, [rbp - 0xc8]
	mov	edx, 6
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_789
.label_807:
	lea	rdi, [rbp - 0xc8]
	mov	edx, 3
	nop	
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_789
.label_811:
	lea	rdi, [rbp - 0xc8]
	mov	edx, 1
	nop	
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_789
.label_815:
	mov	rbp, rbp
	lea	rdi, [rbp - 0xc8]
	mov	edx, 2
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x64]
	mov	rbp, rbp
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_789
.label_826:
	lea	rdi, [rbp - 0xc8]
	mov	edx, 5
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x64]
	lea	rsi, [rsi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	mov	rsp, rsp
	jmp	.label_789
.label_785:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	edx, 4
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	jmp	.label_789
.label_796:
	lea	rdi, [rbp - 0xc8]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_789
.label_786:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xc8]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_789
.label_813:
	mov	rsp, rsp
	lea	rdi, [rbp - 0xc8]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_789
.label_800:
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
	jmp	.label_788
.label_789:
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
	je	.label_828
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x60]
	or	eax, 2
	nop	
	mov	dword ptr [rbp - 0x60], eax
.label_828:
	jmp	.label_806
.label_806:
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x60]
	nop	
	mov	dword ptr [rbp - 0xf4], edx
.label_788:
	mov	eax, dword ptr [rbp - 0xf4]
	add	rsp, 0x100
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e280

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
	jae	.label_851
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], 1
	jmp	.label_852
.label_851:
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 8]
	imul	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 0x10], 0
.label_852:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x10]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e300

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
.label_853:
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
	je	.label_854
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
	jmp	.label_853
.label_854:
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
	#Procedure 0x40e380

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
	jge	.label_858
	mov	rdi, qword ptr [rbp - 8]
	call	fclose
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	jmp	.label_856
.label_858:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_855
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
	je	.label_857
.label_855:
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_857
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_857:
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_859
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
.label_859:
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x10], eax
.label_856:
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
	#Procedure 0x40e4a0

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
	je	.label_860
	mov	rdi, qword ptr [rbp - 8]
	call	__freading
	cmp	eax, 0
	jne	.label_861
.label_860:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_862
.label_861:
	mov	rdi, qword ptr [rbp - 8]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
.label_862:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e510

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
	je	.label_863
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
.label_863:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e570

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
	jne	.label_864
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_864
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_864
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
	jne	.label_866
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	jmp	.label_865
.label_866:
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
	jmp	.label_865
.label_864:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
.label_865:
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
	#Procedure 0x40e680

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
	jne	.label_867
	lea	rax, [rbp - 0x14]
	mov	qword ptr [rbp - 0x10], rax
.label_867:
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
	ja	.label_868
	nop	
	cmp	qword ptr [rbp - 0x28], 0
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
	jmp	.label_869
.label_868:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_869:
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
	#Procedure 0x40e770

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
	#Procedure 0x40e790

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
	#Procedure 0x40e7b0

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
	je	.label_871
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_870
.label_871:
	mov	edi, dword ptr [rbp - 0xc]
	nop	
	mov	esi, dword ptr [rbp - 0x10]
	call	__gl_setmode
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_870:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e810

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
	jne	.label_872
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_876
.label_872:
	mov	rbp, rbp
	jmp	.label_873
.label_873:
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
	jne	.label_874
	jmp	.label_875
.label_874:
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
	je	.label_873
.label_875:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x1a]
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
	#Procedure 0x40e900

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
	jne	.label_879
	test	byte ptr [rbp - 0x15], 1
	je	.label_878
	test	byte ptr [rbp - 0x16], 1
	lea	rsi, [rsi]
	jne	.label_879
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_878
.label_879:
	nop	
	test	byte ptr [rbp - 0x15], 1
	mov	rsp, rsp
	jne	.label_877
	call	__errno_location
	mov	dword ptr [rax], 0
.label_877:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0xffffffff
	jmp	.label_880
.label_878:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], 0
.label_880:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40e9e0

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
	je	.label_882
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_9
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_883
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:.str.1_7
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_881
.label_883:
	mov	byte ptr [rbp - 0xd], 0
.label_881:
	jmp	.label_882
.label_882:
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
	#Procedure 0x40ea80

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
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40eb00

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
	jmp	.label_887
.label_887:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_888
.label_886:
	lea	rsi, [rsi]
	jmp	.label_888
.label_888:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40eb60
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
	jb	.label_889
	jmp	.label_890
.label_890:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, -0x41
	lea	rdi, [rdi]
	sub	eax, 0x1a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	jb	.label_889
	nop	
	jmp	.label_893
.label_893:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, -0x61
	sub	eax, 0x19
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], eax
	mov	rbp, rbp
	ja	.label_892
	jmp	.label_889
.label_889:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x15], 1
	lea	rsi, [rsi]
	jmp	.label_891
.label_892:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x15], 0
.label_891:
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
	#Procedure 0x40ebf0
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
	jb	.label_894
	nop	
	jmp	.label_895
.label_895:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	add	eax, -0x61
	nop	
	sub	eax, 0x19
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	mov	rsp, rsp
	ja	.label_896
	lea	rdi, [rdi]
	jmp	.label_894
.label_894:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	jmp	.label_897
.label_896:
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
.label_897:
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
	#Procedure 0x40ec70
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
	ja	.label_898
	mov	rsp, rsp
	jmp	.label_900
.label_900:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_899
.label_898:
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 0
.label_899:
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
	#Procedure 0x40ecc0
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
	je	.label_901
	cmp	dword ptr [rbp - 4], 9
	lea	rsi, [rsi]
	sete	al
	mov	byte ptr [rbp - 5], al
.label_901:
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
	#Procedure 0x40ed10
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
	jb	.label_902
	nop	
	jmp	.label_903
.label_903:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0xc], eax
	jne	.label_904
	lea	rsi, [rsi]
	jmp	.label_902
.label_902:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_905
.label_904:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 5], 0
.label_905:
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
	#Procedure 0x40ed80
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
	ja	.label_907
	jmp	.label_908
.label_908:
	mov	byte ptr [rbp - 5], 1
	lea	rdi, [rdi]
	jmp	.label_906
.label_907:
	mov	byte ptr [rbp - 5], 0
.label_906:
	mov	al, byte ptr [rbp - 5]
	mov	rsp, rsp
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40edd0
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
	ja	.label_909
	lea	rsi, [rsi]
	jmp	.label_910
.label_910:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_911
.label_909:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], 0
.label_911:
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
	#Procedure 0x40ee20
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
	ja	.label_912
	jmp	.label_913
.label_913:
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_914
.label_912:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
.label_914:
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
	#Procedure 0x40ee70
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
	ja	.label_915
	jmp	.label_917
.label_917:
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 1
	jmp	.label_916
.label_915:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], 0
.label_916:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40eec0
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
	jb	.label_918
	jmp	.label_920
.label_920:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	eax, -0x3a
	sub	eax, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	jb	.label_918
	nop	
	jmp	.label_923
.label_923:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	eax, -0x5b
	mov	rsp, rsp
	sub	eax, 6
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_918
	jmp	.label_921
.label_921:
	mov	eax, dword ptr [rbp - 4]
	add	eax, -0x7b
	mov	rsp, rsp
	sub	eax, 3
	mov	dword ptr [rbp - 0xc], eax
	ja	.label_919
	mov	rsp, rsp
	jmp	.label_918
.label_918:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_922
.label_919:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], 0
.label_922:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ef70
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
	jb	.label_924
	mov	rbp, rbp
	jmp	.label_925
.label_925:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	jne	.label_927
	mov	rsp, rsp
	jmp	.label_924
.label_924:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_926
.label_927:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
.label_926:
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
	#Procedure 0x40efe0
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
	ja	.label_928
	jmp	.label_930
.label_930:
	mov	byte ptr [rbp - 5], 1
	nop	
	jmp	.label_929
.label_928:
	mov	byte ptr [rbp - 5], 0
.label_929:
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
	#Procedure 0x40f030
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
	jb	.label_931
	lea	rdi, [rdi]
	jmp	.label_935
.label_935:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	eax, -0x41
	mov	rbp, rbp
	sub	eax, 6
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jb	.label_931
	jmp	.label_932
.label_932:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	add	eax, -0x61
	sub	eax, 5
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_934
	jmp	.label_931
.label_931:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_933
.label_934:
	nop	
	mov	byte ptr [rbp - 9], 0
.label_933:
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
	#Procedure 0x40f0c0

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
	ja	.label_936
	jmp	.label_937
.label_937:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x41
	nop	
	add	eax, 0x61
	nop	
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	jmp	.label_938
.label_936:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
.label_938:
	nop	
	mov	eax, dword ptr [rbp - 8]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f110
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
	ja	.label_939
	mov	rbp, rbp
	jmp	.label_940
.label_940:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	sub	eax, 0x61
	mov	rsp, rsp
	add	eax, 0x41
	nop	
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_941
.label_939:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_941:
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
	nop	dword ptr [rax]
	.section .text
	.align	16
	#Procedure 0x40f220

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
