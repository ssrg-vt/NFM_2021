	.section	.text
	.align	32
	#Procedure 0x402760

	.globl usage
	.type usage, @function
usage:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x60
	mov	dword ptr [rbp - 0x50], edi
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x50], 0
	lea	rsi, [rsi]
	je	.label_8
	nop	
	jmp	.label_9
.label_9:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x20], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, rax
	nop	
	mov	al, 0
	nop	
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	jmp	.label_7
.label_8:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.1
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	nop	
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [program_name]]
	nop	
	mov	rdi, rax
	nop	
	mov	al, 0
	mov	rsp, rsp
	call	printf
	movabs	rdi, OFFSET FLAT:.str.2
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	nop	
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	call	emit_mandatory_arg_note
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.3
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.4
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.5
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.6
	nop	
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.7
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.8
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.9
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x48], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.10
	mov	dword ptr [rbp - 0x58], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.11
	nop	
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.12
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.13
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.14
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.15
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.16
	nop	
	mov	dword ptr [rbp - 0x44], eax
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.17
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], eax
	call	emit_backup_suffix_note
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.18
	nop	
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.19
	mov	dword ptr [rbp - 0xc], eax
	lea	rsi, [rsi]
	call	emit_ancillary_info
.label_7:
	mov	edi, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	call	exit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b00

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.42
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x402b40

	.globl emit_backup_suffix_note
	.type emit_backup_suffix_note, @function
emit_backup_suffix_note:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.43
	nop	
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.44
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402bb0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rdi
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
.label_15:
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdx], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x29], cl
	je	.label_13
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	lea	rdi, [rdi]
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x29], cl
.label_13:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x29]
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_14
	mov	rbp, rbp
	jmp	.label_11
.label_14:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	jmp	.label_15
.label_11:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_12
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x38], rax
.label_12:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.53
	lea	rdi, [rdi]
	call	gettext
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.17_0
	movabs	rdx, OFFSET FLAT:.str.18_0
	mov	rdi, rax
	mov	al, 0
	mov	rsp, rsp
	call	printf
	mov	edi, 5
	xor	ecx, ecx
	nop	
	mov	esi, ecx
	mov	dword ptr [rbp - 0x14], eax
	nop	
	call	setlocale
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	je	.label_10
	nop	
	movabs	rsi, OFFSET FLAT:.str.55
	mov	eax, 3
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	strncmp
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_10
	movabs	rdi, OFFSET FLAT:.str.56
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	mov	dword ptr [rbp - 0x3c], eax
.label_10:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.57
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.18_0
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rdi, rax
	mov	al, 0
	mov	rbp, rbp
	call	printf
	movabs	rdi, OFFSET FLAT:.str.58
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	nop	
	movabs	rsi, OFFSET FLAT:.str.59
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmove	rdx, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	printf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402dd0

	.globl main
	.type main, @function
main:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x220
	mov	dword ptr [rbp - 0x1ec], 0
	mov	dword ptr [rbp - 0x1f8], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xf0], rsi
	mov	byte ptr [rbp - 0xcd], 0
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x130], 0
	mov	byte ptr [rbp - 0x109], 0
	mov	qword ptr [rbp - 0x120], 0
	mov	byte ptr [rbp - 0x15], 0
	mov	qword ptr [rbp - 0x1e8], 0
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:.str_0
	mov	rbp, rbp
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.21
	movabs	rsi, OFFSET FLAT:.str.22
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	call	bindtextdomain
	nop	
	movabs	rdi, OFFSET FLAT:.str.21
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x118], rax
	mov	rbp, rbp
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdin
	nop	
	mov	qword ptr [rbp - 0x10], rax
	call	atexit
	lea	rdi, [rbp - 0xc8]
	mov	rsp, rsp
	mov	byte ptr [byte ptr [selinux_enabled]],  0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x64], eax
	lea	rsi, [rsi]
	call	cp_option_init
.label_74:
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str.23
	nop	
	movabs	rcx, OFFSET FLAT:long_opts
	lea	rsi, [rsi]
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 0x1f8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xf0]
	nop	
	call	getopt_long
	nop	
	mov	dword ptr [rbp - 0x1e0], eax
	cmp	eax, -1
	je	.label_59
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1e0]
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rbp, rbp
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x48], eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], ecx
	je	.label_64
	jmp	.label_69
.label_69:
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 0xffffff7e
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	je	.label_71
	jmp	.label_77
.label_77:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	sub	eax, 0x48
	mov	dword ptr [rbp - 4], eax
	je	.label_78
	mov	rbp, rbp
	jmp	.label_82
.label_82:
	mov	eax, dword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	sub	eax, 0x4c
	mov	dword ptr [rbp - 0x68], eax
	je	.label_85
	jmp	.label_90
.label_90:
	mov	eax, dword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x1f0], eax
	je	.label_92
	jmp	.label_95
.label_95:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 0x52
	mov	dword ptr [rbp - 0x208], eax
	nop	
	je	.label_23
	jmp	.label_101
.label_101:
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 0x53
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1d4], eax
	je	.label_112
	mov	rsp, rsp
	jmp	.label_107
.label_107:
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x70], eax
	nop	
	je	.label_108
	nop	
	jmp	.label_111
.label_111:
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 0x5a
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xfc], eax
	je	.label_113
	jmp	.label_19
.label_19:
	nop	
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 0x61
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_22
	jmp	.label_26
.label_26:
	mov	eax, dword ptr [rbp - 0x48]
	mov	rsp, rsp
	sub	eax, 0x62
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x200], eax
	lea	rsi, [rsi]
	je	.label_27
	jmp	.label_103
.label_103:
	nop	
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_65
	jmp	.label_32
.label_32:
	nop	
	mov	eax, dword ptr [rbp - 0x48]
	mov	rbp, rbp
	sub	eax, 0x66
	nop	
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_34
	jmp	.label_37
.label_37:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x48]
	nop	
	sub	eax, 0x69
	mov	dword ptr [rbp - 0x204], eax
	lea	rsi, [rsi]
	je	.label_39
	jmp	.label_99
.label_99:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	sub	eax, 0x6c
	mov	dword ptr [rbp - 0x1d8], eax
	je	.label_106
	lea	rsi, [rsi]
	jmp	.label_45
.label_45:
	nop	
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x104], eax
	lea	rdi, [rdi]
	je	.label_47
	jmp	.label_49
.label_49:
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 0x70
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_51
	lea	rsi, [rsi]
	jmp	.label_54
.label_54:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 0x72
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x50], eax
	mov	rbp, rbp
	je	.label_23
	jmp	.label_60
.label_60:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x1cc], eax
	mov	rbp, rbp
	je	.label_62
	jmp	.label_66
.label_66:
	mov	eax, dword ptr [rbp - 0x48]
	mov	rbp, rbp
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x3c], eax
	lea	rsi, [rsi]
	je	.label_67
	mov	rsp, rsp
	jmp	.label_94
.label_94:
	nop	
	mov	eax, dword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x124], eax
	je	.label_72
	jmp	.label_79
.label_79:
	mov	eax, dword ptr [rbp - 0x48]
	mov	rbp, rbp
	sub	eax, 0x76
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_80
	jmp	.label_84
.label_84:
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 0x78
	mov	dword ptr [rbp - 0x54], eax
	mov	rbp, rbp
	je	.label_86
	jmp	.label_91
.label_91:
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x1d0], eax
	je	.label_93
	jmp	.label_96
.label_96:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x48]
	nop	
	sub	eax, 0x81
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4c], eax
	je	.label_98
	lea	rdi, [rdi]
	jmp	.label_102
.label_102:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 0x82
	nop	
	mov	dword ptr [rbp - 0x1fc], eax
	lea	rsi, [rsi]
	je	.label_105
	jmp	.label_89
.label_89:
	mov	eax, dword ptr [rbp - 0x48]
	mov	rsp, rsp
	sub	eax, 0x83
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40], eax
	je	.label_109
	mov	rsp, rsp
	jmp	.label_17
.label_17:
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 0x84
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44], eax
	mov	rbp, rbp
	je	.label_18
	jmp	.label_25
.label_25:
	mov	eax, dword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	sub	eax, 0x85
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xe0], eax
	mov	rsp, rsp
	je	.label_50
	lea	rdi, [rdi]
	jmp	.label_30
.label_30:
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 0x86
	mov	dword ptr [rbp - 0x1dc], eax
	mov	rsp, rsp
	je	.label_68
	jmp	.label_33
.label_33:
	mov	eax, dword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	sub	eax, 0x87
	nop	
	mov	dword ptr [rbp - 0x38], eax
	je	.label_35
	jmp	.label_38
.label_38:
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 0x88
	mov	dword ptr [rbp - 0x100], eax
	mov	rbp, rbp
	je	.label_40
	jmp	.label_29
.label_68:
	movabs	rdi, OFFSET FLAT:.str.24
	movabs	rdx, OFFSET FLAT:sparse_type_string
	movabs	rax, OFFSET FLAT:sparse_type
	lea	rdi, [rdi]
	mov	ecx, 4
	mov	rsp, rsp
	mov	r8d, ecx
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	nop	
	call	__xargmatch_internal
	mov	rsp, rsp
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + sparse_type]]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xbc], r10d
	jmp	.label_24
.label_50:
	nop	
	cmp	qword ptr [word ptr [optarg]],  0
	nop	
	jne	.label_58
	mov	dword ptr [rbp - 0x90], 2
	jmp	.label_63
.label_58:
	movabs	rdi, OFFSET FLAT:.str.25
	movabs	rdx, OFFSET FLAT:reflink_type_string
	movabs	rax, OFFSET FLAT:reflink_type
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	lea	rdi, [rdi]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + reflink_type]]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x90], r10d
.label_63:
	jmp	.label_24
.label_22:
	mov	dword ptr [rbp - 0xc4], 2
	mov	byte ptr [rbp - 0xa6], 1
	mov	byte ptr [rbp - 0xab], 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xaa], 1
	nop	
	mov	byte ptr [rbp - 0xa9], 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa4], 1
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [selinux_enabled]],  1
	je	.label_87
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa3], 1
.label_87:
	mov	byte ptr [rbp - 0xa1], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x9f], 1
	mov	byte ptr [rbp - 0x9e], 1
	lea	rdi, [rdi]
	jmp	.label_24
.label_27:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xcd], 1
	nop	
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_110
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x130], rax
.label_110:
	jmp	.label_24
.label_93:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa5], 0
	lea	rsi, [rsi]
	jmp	.label_24
.label_98:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x109], 1
	nop	
	jmp	.label_24
.label_65:
	mov	byte ptr [rbp - 0xa6], 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc4], 2
	jmp	.label_24
.label_34:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb2], 1
	jmp	.label_24
.label_78:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc4], 3
	mov	rbp, rbp
	jmp	.label_24
.label_39:
	mov	dword ptr [rbp - 0xc0], 3
	jmp	.label_24
.label_106:
	mov	byte ptr [rbp - 0xb1], 1
	jmp	.label_24
.label_85:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc4], 4
	mov	rsp, rsp
	jmp	.label_24
.label_47:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc0], 2
	nop	
	jmp	.label_24
.label_92:
	mov	dword ptr [rbp - 0xc4], 2
	lea	rdi, [rdi]
	jmp	.label_24
.label_105:
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0xc8]
	mov	rbp, rbp
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	decode_preserve_arg
	nop	
	jmp	.label_24
.label_18:
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [optarg]],  0
	mov	rsp, rsp
	jne	.label_55
	nop	
	jmp	.label_61
.label_55:
	lea	rsi, [rbp - 0xc8]
	mov	rsp, rsp
	mov	edx, 1
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	decode_preserve_arg
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa4], 1
	jmp	.label_24
.label_61:
	jmp	.label_51
.label_51:
	mov	byte ptr [rbp - 0xab], 1
	mov	byte ptr [rbp - 0xaa], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa9], 1
	mov	byte ptr [rbp - 0xa4], 1
	jmp	.label_24
.label_109:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [parents_option]],  1
	mov	rbp, rbp
	jmp	.label_24
.label_23:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x9e], 1
	jmp	.label_24
.label_40:
	mov	byte ptr [rbp - 0xb3], 1
	mov	rbp, rbp
	jmp	.label_24
.label_35:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [remove_trailing_slashes]],  1
	nop	
	jmp	.label_24
.label_62:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x9c], 1
	mov	rbp, rbp
	jmp	.label_24
.label_67:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x120], 0
	mov	rbp, rbp
	je	.label_100
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.26
	call	gettext
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	mov	rbp, rbp
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	nop	
	call	error
.label_100:
	lea	rsi, [rbp - 0x1c8]
	mov	rdi,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	call	stat
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_20
	lea	rdi, [rdi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.27
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], esi
	mov	rbp, rbp
	call	gettext
	nop	
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x24]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
.label_20:
	nop	
	mov	eax, dword ptr [rbp - 0x1b0]
	nop	
	and	eax, 0xf000
	cmp	eax, 0x4000
	lea	rdi, [rdi]
	je	.label_48
	movabs	rdi, OFFSET FLAT:.str.28
	call	gettext
	mov	rbp, rbp
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [optarg]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xf8], rax
	nop	
	call	quotearg_style
	lea	rsi, [rsi]
	mov	edi, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_48:
	jmp	.label_53
.label_53:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x120], rax
	mov	rsp, rsp
	jmp	.label_24
.label_108:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x15], 1
	jmp	.label_24
.label_72:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x9b], 1
	mov	rbp, rbp
	jmp	.label_24
.label_80:
	mov	byte ptr [rbp - 0x9a], 1
	jmp	.label_24
.label_86:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xac], 1
	jmp	.label_24
.label_113:
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [selinux_enabled]],  1
	mov	rbp, rbp
	je	.label_83
	nop	
	cmp	qword ptr [word ptr [optarg]],  0
	lea	rdi, [rdi]
	je	.label_75
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x1e8], rax
	nop	
	jmp	.label_81
.label_75:
	mov	byte ptr [rbp - 0xa7], 1
.label_81:
	jmp	.label_46
.label_83:
	mov	rsp, rsp
	cmp	qword ptr [word ptr [optarg]],  0
	mov	rbp, rbp
	je	.label_88
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.29
	mov	rsp, rsp
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_88:
	jmp	.label_46
.label_46:
	jmp	.label_24
.label_112:
	mov	byte ptr [rbp - 0xcd], 1
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x60], rax
	mov	rbp, rbp
	jmp	.label_24
.label_71:
	xor	edi, edi
	lea	rdi, [rdi]
	call	usage
.label_64:
	movabs	rsi, OFFSET FLAT:.str.19
	movabs	rdx, OFFSET FLAT:.str.17_0
	movabs	r8, OFFSET FLAT:.str.31
	lea	rdi, [rdi]
	movabs	r9, OFFSET FLAT:.str.32
	movabs	rax, OFFSET FLAT:.str.33
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edi, ecx
	mov	r10,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [Version]]
	nop	
	mov	qword ptr [rbp - 0x138], rdi
	mov	rdi, r10
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 0
	lea	rdi, [rdi]
	mov	al, 0
	mov	rbp, rbp
	call	version_etc
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	call	exit
.label_29:
	mov	edi, 1
	mov	rbp, rbp
	call	usage
.label_24:
	jmp	.label_74
.label_59:
	mov	rsp, rsp
	test	byte ptr [rbp - 0xb1], 1
	nop	
	je	.label_42
	test	byte ptr [rbp - 0x9c], 1
	nop	
	je	.label_42
	movabs	rdi, OFFSET FLAT:.str.34
	lea	rsi, [rsi]
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	nop	
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
	mov	rbp, rbp
	mov	edi, 1
	call	usage
.label_42:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xc0], 2
	jne	.label_52
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x9b], 0
.label_52:
	nop	
	test	byte ptr [rbp - 0xcd], 1
	mov	rbp, rbp
	je	.label_57
	nop	
	cmp	dword ptr [rbp - 0xc0], 2
	jne	.label_57
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.35
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	rsp, rsp
	mov	esi, ecx
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	mov	rsp, rsp
	call	error
	mov	edi, 1
	lea	rdi, [rdi]
	call	usage
.label_57:
	cmp	dword ptr [rbp - 0x90], 2
	jne	.label_76
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xbc], 2
	mov	rsp, rsp
	je	.label_76
	movabs	rdi, OFFSET FLAT:.str.36
	mov	rsp, rsp
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	rsp, rsp
	mov	esi, ecx
	mov	rbp, rbp
	mov	rdx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	edi, 1
	lea	rdi, [rdi]
	call	usage
.label_76:
	test	byte ptr [rbp - 0xcd], 1
	je	.label_97
	movabs	rdi, OFFSET FLAT:.str.37
	call	gettext
	mov	rsi, qword ptr [rbp - 0x130]
	mov	rdi, rax
	call	xget_version
	nop	
	mov	dword ptr [rbp - 0x20], eax
	jmp	.label_73
.label_97:
	xor	eax, eax
	mov	dword ptr [rbp - 0x20], eax
	lea	rdi, [rdi]
	jmp	.label_73
.label_73:
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0xc8], eax
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	call	set_simple_backup_suffix
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xc4], 1
	nop	
	jne	.label_16
	mov	rbp, rbp
	test	byte ptr [rbp - 0x9e], 1
	nop	
	je	.label_21
	test	byte ptr [rbp - 0xb1], 1
	jne	.label_21
	mov	dword ptr [rbp - 0xc4], 2
	jmp	.label_28
.label_21:
	mov	dword ptr [rbp - 0xc4], 4
.label_28:
	jmp	.label_16
.label_16:
	test	byte ptr [rbp - 0x9e], 1
	nop	
	je	.label_31
	nop	
	mov	al, byte ptr [rbp - 0x109]
	nop	
	and	al, 1
	mov	byte ptr [rbp - 0xb4], al
.label_31:
	test	byte ptr [rbp - 0xa7], 1
	mov	rbp, rbp
	jne	.label_36
	cmp	qword ptr [rbp - 0x1e8], 0
	je	.label_41
.label_36:
	mov	rsp, rsp
	test	byte ptr [rbp - 0xa2], 1
	lea	rdi, [rdi]
	jne	.label_41
	mov	byte ptr [rbp - 0xa3], 0
.label_41:
	mov	rbp, rbp
	test	byte ptr [rbp - 0xa3], 1
	je	.label_43
	test	byte ptr [rbp - 0xa7], 1
	jne	.label_44
	nop	
	cmp	qword ptr [rbp - 0x1e8], 0
	mov	rsp, rsp
	je	.label_43
.label_44:
	movabs	rdi, OFFSET FLAT:.str.38
	call	gettext
	nop	
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_43:
	nop	
	test	byte ptr [rbp - 0xa2], 1
	je	.label_56
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [selinux_enabled]],  1
	jne	.label_56
	movabs	rdi, OFFSET FLAT:.str.39
	nop	
	call	gettext
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	mov	rdx, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_56:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x1e8], 0
	je	.label_70
	nop	
	mov	rdi, qword ptr [rbp - 0x1e8]
	call	se_const
	mov	rdi, rax
	call	setfscreatecon
	cmp	eax, 0
	jge	.label_70
	mov	rsp, rsp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x108], esi
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x1e8]
	mov	qword ptr [rbp - 0xd8], rax
	mov	rbp, rbp
	call	quote
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x108]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_70:
	mov	rbp, rbp
	test	byte ptr [rbp - 0xa0], 1
	je	.label_104
	movabs	rdi, OFFSET FLAT:.str.41
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_104:
	mov	rbp, rbp
	call	hash_init
	lea	r8, [rbp - 0xc8]
	mov	eax, dword ptr [rbp - 0x1f8]
	lea	rsi, [rsi]
	sub	eax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	movsxd	rdx,  dword ptr [dword ptr [optind]]
	shl	rdx, 3
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x120]
	mov	sil, byte ptr [rbp - 0x15]
	nop	
	and	sil, 1
	mov	edi, eax
	mov	byte ptr [rbp - 0xce], sil
	lea	rsi, [rsi]
	mov	rsi, rcx
	mov	r9b, byte ptr [rbp - 0xce]
	movzx	ecx, r9b
	lea	rdi, [rdi]
	call	do_copy
	mov	ecx, 1
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x31], al
	nop	
	mov	al, byte ptr [rbp - 0x31]
	test	al, 1
	nop	
	cmovne	ecx, edi
	mov	rbp, rbp
	mov	eax, ecx
	add	rsp, 0x220
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403ca0

	.globl cp_option_init
	.type cp_option_init, @function
cp_option_init:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	cp_options_default
	nop	
	movabs	rdi, OFFSET FLAT:.str.60
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x14], 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	dword ptr [rax + 4], 1
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x15], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x16], 0
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	byte ptr [rax + 0x17], 0
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rax + 8], 4
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	byte ptr [rax + 0x18], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	byte ptr [rax + 0x19], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	byte ptr [rax + 0x1c], 0
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dword ptr [rax + 0x38], 0
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	byte ptr [rax + 0x1d], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x22], 0
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x1e], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	byte ptr [rax + 0x1f], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	byte ptr [rax + 0x20], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	byte ptr [rax + 0x25], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x26], 0
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x21], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x27], 0
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	byte ptr [rax + 0x29], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x28], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	byte ptr [rax + 0x23], 1
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x24], 0
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x2a], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0xc], 2
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	byte ptr [rax + 0x2c], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	byte ptr [rax + 0x2b], 0
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x10], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x2f], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x2d], 0
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	byte ptr [rax + 0x2e], 0
	call	getenv
	mov	rbp, rbp
	cmp	rax, 0
	mov	rbp, rbp
	setne	cl
	mov	rax, qword ptr [rbp - 8]
	and	cl, 1
	mov	rsp, rsp
	mov	byte ptr [rax + 0x30], cl
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x40], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x48], 0
	lea	rdi, [rdi]
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e80

	.globl decode_preserve_arg
	.type decode_preserve_arg, @function
decode_preserve_arg:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x50
	mov	rsp, rsp
	mov	al, dl
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x28], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	call	xstrdup
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_116:
	lea	rsi, [rsi]
	mov	esi, 0x2c
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	strchr
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_118
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x38], rcx
	mov	byte ptr [rax], 0
.label_118:
	mov	al, byte ptr [rbp - 0x41]
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.99
	lea	rsi, [rsi]
	mov	edx, ecx
	nop	
	mov	ecx, OFFSET FLAT:.str.100
	mov	esi, ecx
	lea	rsi, [rsi]
	test	al, 1
	cmovne	rsi, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:decode_preserve_arg.preserve_args
	mov	edi, ecx
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:decode_preserve_arg.preserve_vals
	mov	rbp, rbp
	mov	r8d, 4
	mov	qword ptr [rbp - 0x30], rdi
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, rdx
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	call	__xargmatch_internal
	lea	rsi, [rsi]
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + decode_preserve_arg.preserve_vals]]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x48], r10d
	mov	rbp, rbp
	mov	r10d, dword ptr [rbp - 0x48]
	mov	eax, r10d
	mov	rcx, rax
	sub	rcx, 6
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rbp, rbp
	ja	.label_115
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_119]]
	jmp	rcx
.label_1995:
	mov	al, byte ptr [rbp - 0x41]
	mov	rcx, qword ptr [rbp - 0x28]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rcx + 0x1e], al
	nop	
	mov	al, byte ptr [rbp - 0x41]
	xor	al, 0xff
	mov	rcx, qword ptr [rbp - 0x28]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rcx + 0x20], al
	jmp	.label_114
.label_1996:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x41]
	mov	rcx, qword ptr [rbp - 0x28]
	and	al, 1
	mov	byte ptr [rcx + 0x1f], al
	jmp	.label_114
.label_1997:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x41]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rcx + 0x1d], al
	jmp	.label_114
.label_1998:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x41]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	and	al, 1
	mov	byte ptr [rcx + 0x22], al
	jmp	.label_114
.label_1999:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x41]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rcx + 0x26], al
	nop	
	mov	al, byte ptr [rbp - 0x41]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rcx + 0x25], al
	nop	
	jmp	.label_114
.label_2000:
	mov	al, byte ptr [rbp - 0x41]
	mov	rcx, qword ptr [rbp - 0x28]
	and	al, 1
	mov	byte ptr [rcx + 0x27], al
	mov	al, byte ptr [rbp - 0x41]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rcx + 0x28], al
	lea	rsi, [rsi]
	jmp	.label_114
.label_2001:
	mov	al, byte ptr [rbp - 0x41]
	mov	rcx, qword ptr [rbp - 0x28]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rcx + 0x1e], al
	mov	al, byte ptr [rbp - 0x41]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rcx + 0x1f], al
	mov	al, byte ptr [rbp - 0x41]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rcx + 0x1d], al
	mov	al, byte ptr [rbp - 0x41]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rcx + 0x22], al
	mov	al, byte ptr [rbp - 0x41]
	mov	rbp, rbp
	xor	al, 0xff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rcx + 0x20], al
	test	byte ptr [byte ptr [selinux_enabled]],  1
	je	.label_117
	nop	
	mov	al, byte ptr [rbp - 0x41]
	mov	rcx, qword ptr [rbp - 0x28]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rcx + 0x25], al
.label_117:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x41]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rcx + 0x27], al
	nop	
	jmp	.label_114
.label_115:
	nop	
	call	abort
.label_114:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	jne	.label_116
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404140

	.globl se_const
	.type se_const, @function
se_const:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404160

	.globl do_copy
	.type do_copy, @function
do_copy:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x1e0
	mov	al, cl
	nop	
	mov	r9b, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x174], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1b0], rsi
	mov	qword ptr [rbp - 0xc8], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x2a], al
	mov	qword ptr [rbp - 0x1d0], r8
	mov	byte ptr [rbp - 0xd9], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x1b1], 1
	mov	rdx, qword ptr [rbp - 0x1d0]
	mov	rsp, rsp
	test	byte ptr [rdx + 0x15], 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x161], r9b
	jne	.label_135
	mov	rax, qword ptr [rbp - 0x1d0]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0x16]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x161], cl
.label_135:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x161]
	and	al, 1
	mov	byte ptr [rbp - 0xea], al
	mov	ecx, dword ptr [rbp - 0x174]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xc8], 0
	nop	
	setne	al
	xor	al, 0xff
	nop	
	and	al, 1
	lea	rsi, [rsi]
	movzx	edx, al
	cmp	ecx, edx
	jg	.label_147
	cmp	dword ptr [rbp - 0x174], 0
	jg	.label_125
	movabs	rdi, OFFSET FLAT:.str.101
	nop	
	call	gettext
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edi, ecx
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	jmp	.label_133
.label_125:
	movabs	rdi, OFFSET FLAT:.str.102
	call	gettext
	nop	
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0x1b0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0xf0], edi
	mov	esi, dword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_133:
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_147:
	test	byte ptr [rbp - 0x2a], 1
	lea	rdi, [rdi]
	je	.label_142
	cmp	qword ptr [rbp - 0xc8], 0
	mov	rbp, rbp
	je	.label_139
	movabs	rdi, OFFSET FLAT:.str.103
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_139:
	mov	eax, 2
	cmp	eax, dword ptr [rbp - 0x174]
	mov	rbp, rbp
	jge	.label_152
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.104
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0x1b0]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0xd8], rax
	call	quotearg_style
	lea	rdi, [rdi]
	xor	edi, edi
	mov	dword ptr [rbp - 0x11c], edi
	mov	esi, dword ptr [rbp - 0x11c]
	mov	rdx, qword ptr [rbp - 0xd8]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	nop	
	mov	edi, 1
	call	usage
.label_152:
	lea	rsi, [rbp - 0xc0]
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0xd9]
	mov	eax, dword ptr [rbp - 0x174]
	lea	rsi, [rsi]
	sub	eax, 1
	movsxd	rcx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x1b0]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + rcx*8]
	mov	r8b, byte ptr [rbp - 0xea]
	and	r8b, 1
	movzx	ecx, r8b
	call	target_directory_operand
	nop	
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xd], al
	lea	rdi, [rdi]
	jmp	.label_120
.label_142:
	cmp	qword ptr [rbp - 0xc8], 0
	jne	.label_144
	mov	eax, 2
	cmp	eax, dword ptr [rbp - 0x174]
	nop	
	jg	.label_128
	mov	rbp, rbp
	lea	rsi, [rbp - 0xc0]
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0xd9]
	nop	
	mov	eax, dword ptr [rbp - 0x174]
	sub	eax, 1
	mov	rsp, rsp
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x1b0]
	mov	rdi, qword ptr [rdi + rcx*8]
	mov	r8b, byte ptr [rbp - 0xea]
	and	r8b, 1
	mov	rbp, rbp
	movzx	ecx, r8b
	mov	rbp, rbp
	call	target_directory_operand
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_126
	jmp	.label_128
.label_126:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x174]
	mov	rsp, rsp
	add	eax, -1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x174], eax
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1b0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rdx + rcx*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc8], rcx
	mov	rbp, rbp
	jmp	.label_130
.label_128:
	mov	eax, 2
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x174]
	lea	rsi, [rsi]
	jge	.label_138
	movabs	rdi, OFFSET FLAT:.str.28
	lea	rsi, [rsi]
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x174]
	mov	rbp, rbp
	sub	ecx, 1
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x1b0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + rdx*8]
	mov	qword ptr [rbp - 0x1a8], rax
	call	quotearg_style
	mov	edi, 1
	xor	esi, esi
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x1a8]
	nop	
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_138:
	jmp	.label_130
.label_130:
	nop	
	jmp	.label_144
.label_144:
	jmp	.label_120
.label_120:
	cmp	qword ptr [rbp - 0xc8], 0
	je	.label_122
	mov	rbp, rbp
	mov	eax, 2
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x174]
	jg	.label_124
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x1d0]
	call	dest_info_init
	nop	
	mov	rdi, qword ptr [rbp - 0x1d0]
	nop	
	call	src_info_init
.label_124:
	nop	
	mov	dword ptr [rbp - 0xc], 0
.label_146:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 0x174]
	jge	.label_151
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x101], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x148], 0
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 0x1b0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	test	byte ptr [byte ptr [remove_trailing_slashes]],  1
	nop	
	je	.label_136
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	call	strip_trailing_slashes
	nop	
	mov	byte ptr [rbp - 0x139], al
.label_136:
	mov	rsp, rsp
	test	byte ptr [byte ptr [parents_option]],  1
	je	.label_143
	jmp	.label_145
.label_145:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x110], rax
	mov	rdi, rax
	call	strlen
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	inc	rdi
	mov	qword ptr [rbp - 0x190], rdi
	lea	rdi, [rdi]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	lea	rdi, [rdi]
	mov	rdi, rsp
	sub	rdi, rax
	mov	rsp, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x138], rdi
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x138]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x110]
	mov	rdx, qword ptr [rbp - 0x190]
	nop	
	mov	rdi, rax
	mov	qword ptr [rbp - 0x1c0], rax
	nop	
	call	memcpy
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	qword ptr [rbp - 0x150], rax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x150]
	mov	qword ptr [rbp - 0x118], rdx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x118]
	call	strip_trailing_slashes
	lea	rdx, [rbp - 0x148]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rsi, qword ptr [rbp - 0x118]
	mov	byte ptr [rbp - 0x151], al
	call	file_name_concat
	lea	rcx, [rbp - 0x160]
	lea	r8, [rbp - 0xd9]
	xor	r9d, r9d
	mov	rbp, rbp
	mov	edx, r9d
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.105
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1a0], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x1a0]
	mov	rax, qword ptr [rbp - 0x148]
	mov	r10, qword ptr [rbp - 0x1a0]
	mov	rbp, rbp
	sub	rax, r10
	mov	r10, qword ptr [rbp - 0x1d0]
	mov	r11b, byte ptr [r10 + 0x2e]
	mov	rbp, rbp
	test	r11b, 1
	cmovne	rdx, rsi
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x1d0]
	mov	rsi, rax
	call	make_dir_parents_private
	and	al, 1
	mov	byte ptr [rbp - 0x101], al
	jmp	.label_121
.label_143:
	jmp	.label_123
.label_123:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	last_component
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x170], rax
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strlen
	mov	rsp, rsp
	mov	rdi, rax
	inc	rdi
	mov	qword ptr [rbp - 0x128], rdi
	lea	rdi, [rdi]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	mov	rbp, rbp
	mov	rdi, rsp
	mov	rbp, rbp
	sub	rdi, rax
	lea	rdi, [rdi]
	mov	rsp, rdi
	mov	qword ptr [rbp - 0x188], rdi
	mov	rax, qword ptr [rbp - 0x188]
	mov	rsi, qword ptr [rbp - 0x170]
	mov	rdx, qword ptr [rbp - 0x128]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x180], rax
	mov	rbp, rbp
	call	memcpy
	mov	rax, qword ptr [rbp - 0x180]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xd0], rdx
	mov	rdi, qword ptr [rbp - 0xd0]
	mov	rsp, rsp
	call	strip_trailing_slashes
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xd0]
	mov	ecx, OFFSET FLAT:.str.106
	mov	rsp, rsp
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x29], al
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_148
	mov	rdi, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	call	xstrdup
	mov	qword ptr [rbp - 0x100], rax
	jmp	.label_153
.label_148:
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	rsp, rsp
	call	file_name_concat
	mov	qword ptr [rbp - 0x100], rax
.label_153:
	mov	rax, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0x1a0], rax
.label_121:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x101], 1
	mov	rsp, rsp
	jne	.label_129
	mov	byte ptr [rbp - 0x1b1], 0
	jmp	.label_132
.label_129:
	lea	r8, [rbp - 0xe9]
	xor	eax, eax
	mov	r9d, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x1a0]
	mov	cl, byte ptr [rbp - 0xd9]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x1d0]
	and	cl, 1
	mov	rbp, rbp
	movzx	eax, cl
	mov	qword ptr [rbp - 0xf8], rdx
	mov	rsp, rsp
	mov	edx, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xf8]
	call	copy
	mov	rsp, rsp
	and	al, 1
	movzx	edx, al
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x1b1]
	and	al, 1
	movzx	r10d, al
	lea	rdi, [rdi]
	and	r10d, edx
	mov	rsp, rsp
	cmp	r10d, 0
	setne	al
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x1b1], al
	test	byte ptr [byte ptr [parents_option]],  1
	je	.label_141
	mov	rdi, qword ptr [rbp - 0x1a0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x1a0]
	sub	rax, rcx
	mov	rdx, qword ptr [rbp - 0x160]
	mov	rcx, qword ptr [rbp - 0x1d0]
	mov	rsp, rsp
	mov	rsi, rax
	call	re_protect
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	r8d, al
	mov	al, byte ptr [rbp - 0x1b1]
	and	al, 1
	movzx	r9d, al
	mov	rsp, rsp
	and	r9d, r8d
	cmp	r9d, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x1b1], al
.label_141:
	mov	rsp, rsp
	jmp	.label_132
.label_132:
	mov	rbp, rbp
	test	byte ptr [byte ptr [parents_option]],  1
	mov	rsp, rsp
	je	.label_134
	jmp	.label_137
.label_137:
	cmp	qword ptr [rbp - 0x160], 0
	je	.label_140
	nop	
	mov	rax, qword ptr [rbp - 0x160]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x130], rax
	mov	rax, qword ptr [rbp - 0x160]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0xa0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x160], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x130]
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	call	free
	nop	
	jmp	.label_137
.label_140:
	jmp	.label_134
.label_134:
	nop	
	mov	rdi, qword ptr [rbp - 0x1a0]
	call	free
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_146
.label_151:
	nop	
	jmp	.label_149
.label_122:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1b0]
	nop	
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1c8], rax
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0xe8], rax
	test	byte ptr [byte ptr [parents_option]],  1
	je	.label_150
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.107
	lea	rsi, [rsi]
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	rbp, rbp
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
	lea	rdi, [rdi]
	mov	edi, 1
	call	usage
.label_150:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1d0]
	test	byte ptr [rax + 0x16], 1
	nop	
	je	.label_127
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1d0]
	cmp	dword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_127
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x1c8]
	mov	rsi, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	jne	.label_127
	mov	rsp, rsp
	test	byte ptr [rbp - 0xd9], 1
	mov	rsp, rsp
	jne	.label_127
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa8]
	and	eax, 0xf000
	mov	rsp, rsp
	cmp	eax, 0x8000
	jne	.label_127
	lea	rsi, [rsi]
	mov	edi, 0xffffff9c
	mov	rsi, qword ptr [rbp - 0xe8]
	mov	rax, qword ptr [rbp - 0x1d0]
	mov	edx, dword ptr [rax]
	lea	rsi, [rsi]
	call	find_backup_file_name
	nop	
	movabs	rsi, OFFSET FLAT:do_copy.x_tmp
	mov	rcx, rsi
	lea	rsi, [rsi]
	mov	edx, 0x50
	mov	qword ptr [rbp - 0x198], rax
	mov	rax, qword ptr [rbp - 0x1d0]
	mov	rdi, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, rax
	call	memcpy
	mov	rsp, rsp
	mov	dword ptr [dword ptr [do_copy.x_tmp]],  0
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1d0], rax
	jmp	.label_131
.label_127:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0x198], rax
.label_131:
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	lea	r8, [rbp - 0x1d1]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	r9d, eax
	mov	rdi, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x198]
	mov	rcx, qword ptr [rbp - 0x1d0]
	nop	
	call	copy
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0x1b1], al
.label_149:
	mov	al, byte ptr [rbp - 0x1b1]
	and	al, 1
	movzx	eax, al
	mov	rsp, rbp
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404bc0

	.globl target_directory_operand
	.type target_directory_operand, @function
target_directory_operand:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, cl
	mov	qword ptr [rbp - 0x38], rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	stat
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	jne	.label_159
	xor	eax, eax
	nop	
	mov	dword ptr [rbp - 0x40], eax
	nop	
	jmp	.label_155
.label_159:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40], ecx
.label_155:
	mov	eax, dword ptr [rbp - 0x40]
	xor	ecx, ecx
	mov	dl, cl
	mov	dword ptr [rbp - 8], eax
	cmp	dword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x39], dl
	jne	.label_161
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x18]
	nop	
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	mov	rsp, rsp
	sete	dl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x39], dl
.label_161:
	mov	al, byte ptr [rbp - 0x39]
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	mov	rsp, rsp
	cmp	dword ptr [rbp - 8], 0
	je	.label_160
	nop	
	cmp	dword ptr [rbp - 8], 2
	jne	.label_157
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax], 1
	jmp	.label_156
.label_157:
	test	byte ptr [rbp - 9], 1
	je	.label_154
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	dword ptr [rax + 0x18], 0
	jmp	.label_158
.label_154:
	movabs	rdi, OFFSET FLAT:.str.27
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], esi
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x20], rax
	call	quotearg_style
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, rax
	nop	
	mov	al, 0
	call	error
.label_158:
	mov	rbp, rbp
	jmp	.label_156
.label_156:
	jmp	.label_160
.label_160:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x29]
	lea	rsi, [rsi]
	and	al, 1
	movzx	eax, al
	lea	rsi, [rsi]
	add	rsp, 0x40
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d20

	.globl make_dir_parents_private
	.type make_dir_parents_private, @function
make_dir_parents_private:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x260
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x240], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x228], rcx
	nop	
	mov	qword ptr [rbp - 0x140], r8
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x138], r9
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x218], rax
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	rdi, rax
	inc	rdi
	mov	qword ptr [rbp - 0x1f8], rdi
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	mov	rsp, rsp
	mov	rdi, rsp
	lea	rsi, [rsi]
	sub	rdi, rax
	lea	rdi, [rdi]
	mov	rsp, rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x218]
	mov	rdx, qword ptr [rbp - 0x1f8]
	mov	rdi, rax
	nop	
	mov	qword ptr [rbp - 0x88], rax
	nop	
	call	memcpy
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x78], rax
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rdx
	lea	rsi, [rbp - 0x1e0]
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x240]
	add	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x128], rax
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x210], rsi
	nop	
	call	dir_len
	mov	qword ptr [rbp - 0x70], rax
	add	rax, 0x10
	nop	
	and	rax, 0xfffffffffffffff0
	mov	rsp, rsp
	mov	rcx, rsp
	lea	rsi, [rsi]
	sub	rcx, rax
	nop	
	mov	rsp, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x70]
	call	memcpy
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x228]
	mov	qword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x210]
	call	stat
	mov	rbp, rbp
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_183
	mov	rax, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x208], rax
.label_192:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x208]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_187
	mov	rax, qword ptr [rbp - 0x208]
	add	rax, 1
	mov	qword ptr [rbp - 0x208], rax
	lea	rsi, [rsi]
	jmp	.label_192
.label_187:
	jmp	.label_182
.label_182:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 0x208]
	call	strchr
	mov	qword ptr [rbp - 0x208], rax
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_198
	mov	rbp, rbp
	lea	rsi, [rbp - 0x1e0]
	mov	rax, qword ptr [rbp - 0x208]
	mov	byte ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x60]
	call	stat
	mov	rbp, rbp
	cmp	eax, 0
	mov	rbp, rbp
	setne	cl
	and	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x2d], cl
	test	byte ptr [rbp - 0x2d], 1
	mov	rsp, rsp
	jne	.label_164
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x138]
	mov	rsp, rsp
	test	byte ptr [rax + 0x1d], 1
	lea	rdi, [rdi]
	jne	.label_164
	mov	rax, qword ptr [rbp - 0x138]
	test	byte ptr [rax + 0x1e], 1
	jne	.label_164
	nop	
	mov	rax, qword ptr [rbp - 0x138]
	mov	rsp, rsp
	test	byte ptr [rax + 0x1f], 1
	mov	rsp, rsp
	je	.label_180
.label_164:
	mov	rsp, rsp
	lea	rsi, [rbp - 0x120]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x128]
	call	stat
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_185
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1ec], ecx
	nop	
	jmp	.label_191
.label_185:
	mov	eax, 0x14
	xor	ecx, ecx
	mov	edx, dword ptr [rbp - 0x108]
	and	edx, 0xf000
	cmp	edx, 0x4000
	mov	rsp, rsp
	cmove	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1ec], eax
.label_191:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1ec]
	nop	
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	nop	
	je	.label_195
	movabs	rdi, OFFSET FLAT:.str.108
	nop	
	mov	esi, dword ptr [rbp - 0xc]
	nop	
	mov	dword ptr [rbp - 0x7c], esi
	call	gettext
	mov	rbp, rbp
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x12d], 0
	mov	rsp, rsp
	jmp	.label_168
.label_195:
	mov	eax, 0xa8
	mov	rbp, rbp
	mov	edi, eax
	mov	rbp, rbp
	call	xmalloc
	lea	rsi, [rsi]
	mov	ecx, 0x90
	mov	edx, ecx
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x120]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x248], rdi
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x248]
	mov	rsp, rsp
	call	memcpy
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x208]
	mov	rdx, qword ptr [rbp - 0x60]
	sub	rax, rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x48]
	mov	qword ptr [rdx + 0x98], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	byte ptr [rax + 0x90], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x228]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	qword ptr [rdx + 0xa0], rax
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x228]
	mov	qword ptr [rdx], rax
.label_180:
	mov	rdi, qword ptr [rbp - 0x128]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x60]
	test	byte ptr [rbp - 0x2d], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x220], rdi
	mov	qword ptr [rbp - 0x258], rsi
	je	.label_167
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x90], ecx
	jmp	.label_169
.label_167:
	mov	rbp, rbp
	xor	eax, eax
	mov	dword ptr [rbp - 0x90], eax
	mov	rsp, rsp
	jmp	.label_169
.label_169:
	mov	eax, dword ptr [rbp - 0x90]
	mov	cl, byte ptr [rbp - 0x2d]
	nop	
	mov	r8, qword ptr [rbp - 0x138]
	nop	
	and	cl, 1
	mov	rdi, qword ptr [rbp - 0x220]
	mov	rsi, qword ptr [rbp - 0x258]
	mov	edx, eax
	lea	rsi, [rsi]
	movzx	ecx, cl
	call	set_process_security_ctx
	test	al, 1
	mov	rsp, rsp
	jne	.label_181
	mov	byte ptr [rbp - 0x12d], 0
	jmp	.label_168
.label_181:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x2d], 1
	je	.label_186
	mov	rax, qword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	mov	byte ptr [rax], 1
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x234], ecx
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x234]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x138]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x1d], 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], ecx
	je	.label_188
	nop	
	mov	eax, 0x3f
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14c], eax
	nop	
	jmp	.label_197
.label_188:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, 0x12
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x138]
	mov	rsp, rsp
	mov	sil, byte ptr [rdx + 0x1e]
	mov	rsp, rsp
	test	sil, 1
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x14c], eax
.label_197:
	nop	
	mov	eax, dword ptr [rbp - 0x14c]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	and	ecx, eax
	mov	dword ptr [rbp - 0x54], ecx
	mov	rdx, qword ptr [rbp - 0x138]
	mov	rbp, rbp
	test	byte ptr [rdx + 0x20], 1
	je	.label_170
	lea	rdi, [rdi]
	mov	eax, 0x1ff
	mov	dword ptr [rbp - 0x1fc], eax
	mov	rbp, rbp
	jmp	.label_176
.label_170:
	mov	eax, dword ptr [rbp - 0x234]
	mov	dword ptr [rbp - 0x1fc], eax
.label_176:
	mov	eax, dword ptr [rbp - 0x1fc]
	mov	dword ptr [rbp - 0x10], eax
	mov	eax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	xor	eax, 0xffffffff
	and	eax, 0xfff
	lea	rsi, [rsi]
	and	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], eax
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	mkdir
	cmp	eax, 0
	je	.label_190
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.109
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x12c], esi
	lea	rdi, [rdi]
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x250], rax
	lea	rsi, [rsi]
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x12c]
	mov	rdx, qword ptr [rbp - 0x250]
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x12d], 0
	jmp	.label_168
.label_190:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_193
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x128]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x60]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x64], eax
.label_193:
	jmp	.label_194
.label_194:
	lea	rsi, [rbp - 0x1e0]
	mov	rdi, qword ptr [rbp - 0x60]
	nop	
	call	__lstat
	cmp	eax, 0
	je	.label_178
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.108
	nop	
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x68], esi
	call	gettext
	nop	
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x230], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x230]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x12d], 0
	nop	
	jmp	.label_168
.label_178:
	mov	rax, qword ptr [rbp - 0x138]
	mov	rsp, rsp
	test	byte ptr [rax + 0x1e], 1
	jne	.label_179
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x1c8]
	xor	ecx, 0xffffffff
	and	eax, ecx
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_196
	call	cached_umask
	xor	eax, 0xffffffff
	nop	
	and	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
.label_196:
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	mov	ecx, dword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	xor	ecx, 0xffffffff
	and	eax, ecx
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_166
	mov	eax, dword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	and	eax, 0x1c0
	cmp	eax, 0x1c0
	je	.label_172
.label_166:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1c8]
	or	eax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	dword ptr [rcx + 0x18], eax
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + 0x90], 1
.label_172:
	jmp	.label_179
.label_179:
	mov	eax, dword ptr [rbp - 0x1c8]
	lea	rdi, [rdi]
	and	eax, 0x1c0
	cmp	eax, 0x1c0
	je	.label_173
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	eax, dword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	or	eax, 0x1c0
	mov	esi, eax
	call	chmod
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_189
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x80], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x60]
	nop	
	mov	qword ptr [rbp - 0x38], rax
	nop	
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x12d], 0
	jmp	.label_168
.label_189:
	jmp	.label_173
.label_173:
	mov	rbp, rbp
	jmp	.label_163
.label_186:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1c8]
	lea	rdi, [rdi]
	and	eax, 0xf000
	cmp	eax, 0x4000
	mov	rbp, rbp
	je	.label_174
	movabs	rdi, OFFSET FLAT:.str.111
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x1e8], rax
	call	quotearg_style
	lea	rsi, [rsi]
	xor	edi, edi
	mov	dword ptr [rbp - 0x8c], edi
	mov	esi, dword ptr [rbp - 0x8c]
	mov	rdx, qword ptr [rbp - 0x1e8]
	nop	
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x12d], 0
	mov	rbp, rbp
	jmp	.label_168
.label_174:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x140]
	mov	byte ptr [rax], 0
	nop	
	jmp	.label_163
.label_163:
	mov	rax, qword ptr [rbp - 0x140]
	nop	
	test	byte ptr [rax], 1
	nop	
	jne	.label_171
	mov	rax, qword ptr [rbp - 0x138]
	test	byte ptr [rax + 0x21], 1
	nop	
	jne	.label_199
	mov	rax, qword ptr [rbp - 0x138]
	test	byte ptr [rax + 0x25], 1
	je	.label_171
.label_199:
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x138]
	mov	cl, byte ptr [rax + 0x25]
	mov	rax, qword ptr [rbp - 0x138]
	mov	rbp, rbp
	and	cl, 1
	movzx	esi, cl
	mov	rcx, rax
	nop	
	call	set_file_security_ctx
	test	al, 1
	jne	.label_162
	nop	
	mov	rax, qword ptr [rbp - 0x138]
	test	byte ptr [rax + 0x26], 1
	lea	rdi, [rdi]
	je	.label_162
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x12d], 0
	mov	rsp, rsp
	jmp	.label_168
.label_162:
	jmp	.label_171
.label_171:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x208]
	mov	rbp, rbp
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x208], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x2f
.label_177:
	mov	rax, qword ptr [rbp - 0x208]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	jne	.label_175
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x208]
	add	rax, 1
	mov	qword ptr [rbp - 0x208], rax
	lea	rdi, [rdi]
	jmp	.label_177
.label_175:
	jmp	.label_182
.label_198:
	mov	rbp, rbp
	jmp	.label_165
.label_183:
	mov	eax, dword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0x4000
	je	.label_184
	movabs	rdi, OFFSET FLAT:.str.111
	nop	
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x148], rax
	nop	
	call	quotearg_style
	xor	edi, edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], edi
	mov	esi, dword ptr [rbp - 0x2c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rcx, rax
	mov	al, 0
	call	error
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x12d], 0
	lea	rsi, [rsi]
	jmp	.label_168
.label_184:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x140]
	mov	byte ptr [rax], 0
	mov	rsp, rsp
	jmp	.label_165
.label_165:
	mov	byte ptr [rbp - 0x12d], 1
.label_168:
	mov	al, byte ptr [rbp - 0x12d]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	mov	rbp, rbp
	mov	rsp, rbp
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405750

	.globl re_protect
	.type re_protect, @function
re_protect:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0xf0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x40], rcx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, rax
	call	strlen
	mov	rdi, rax
	lea	rdi, [rdi]
	inc	rdi
	mov	qword ptr [rbp - 0xb0], rdi
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	nop	
	mov	rdi, rsp
	lea	rsi, [rsi]
	sub	rdi, rax
	mov	rsp, rdi
	nop	
	mov	qword ptr [rbp - 0x28], rdi
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0xb0]
	nop	
	mov	rdi, rax
	mov	qword ptr [rbp - 0x10], rax
	call	memcpy
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rdx
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x50], rax
.label_205:
	cmp	qword ptr [rbp - 0x50], 0
	mov	rsp, rsp
	je	.label_202
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax + 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x40]
	test	byte ptr [rax + 0x1f], 1
	je	.label_204
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x50]
	call	get_stat_atime
	mov	qword ptr [rbp - 0x90], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rdx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 0xe0], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	call	get_stat_mtime
	lea	rsi, [rbp - 0xe0]
	mov	qword ptr [rbp - 0x70], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rdx
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd0], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	nop	
	call	utimens
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_209
	lea	rsi, [rsi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.112
	nop	
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], esi
	nop	
	call	gettext
	nop	
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe8], rax
	nop	
	call	quotearg_style
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x54]
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xb1], 0
	jmp	.label_200
.label_209:
	lea	rdi, [rdi]
	jmp	.label_204
.label_204:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	test	byte ptr [rax + 0x1d], 1
	je	.label_208
	mov	rdi, qword ptr [rbp - 0x80]
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	esi, dword ptr [rax + 0x1c]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	edx, dword ptr [rax + 0x20]
	call	lchown
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_211
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	nop	
	call	chown_failure_ok
	test	al, 1
	jne	.label_201
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.46
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x9c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	nop	
	call	quotearg_style
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0xb1], 0
	mov	rbp, rbp
	jmp	.label_200
.label_201:
	lea	rdi, [rdi]
	mov	esi, 0xffffffff
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x80]
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	edx, dword ptr [rax + 0x20]
	call	lchown
	mov	dword ptr [rbp - 0x34], eax
.label_211:
	lea	rdi, [rdi]
	jmp	.label_208
.label_208:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	test	byte ptr [rax + 0x1e], 1
	je	.label_206
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	mov	rdi, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	r8d, dword ptr [rcx + 0x18]
	nop	
	mov	esi, eax
	mov	ecx, eax
	call	copy_acl
	mov	rsp, rsp
	cmp	eax, 0
	nop	
	je	.label_210
	mov	byte ptr [rbp - 0xb1], 0
	lea	rdi, [rdi]
	jmp	.label_200
.label_210:
	mov	rbp, rbp
	jmp	.label_203
.label_206:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x90], 1
	je	.label_212
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	esi, dword ptr [rax + 0x18]
	lea	rsi, [rsi]
	call	chmod
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_207
	mov	rbp, rbp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.114
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], esi
	nop	
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x60], rax
	call	quotearg_style
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
	nop	
	mov	byte ptr [rbp - 0xb1], 0
	jmp	.label_200
.label_207:
	jmp	.label_212
.label_212:
	mov	rsp, rsp
	jmp	.label_203
.label_203:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax + 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x2f
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax + 0xa0]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	jmp	.label_205
.label_202:
	mov	byte ptr [rbp - 0xb1], 1
.label_200:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xb1]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	movzx	eax, al
	mov	rsp, rbp
	pop	rbp
	nop	
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405b70

	.globl set_process_security_ctx
	.type set_process_security_ctx, @function
set_process_security_ctx:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x60
	nop	
	mov	al, cl
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x5c], edx
	and	al, 1
	mov	byte ptr [rbp - 0xd], al
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], r8
	mov	rsi, qword ptr [rbp - 0x50]
	test	byte ptr [rsi + 0x25], 1
	lea	rsi, [rsi]
	je	.label_228
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	test	byte ptr [rcx + 0x23], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x41], al
	je	.label_219
	mov	rax, qword ptr [rbp - 0x50]
	mov	cl, byte ptr [rax + 0x26]
	mov	byte ptr [rbp - 0x41], cl
.label_219:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x41]
	xor	ecx, ecx
	mov	dl, cl
	and	al, 1
	mov	byte ptr [rbp - 0x2a], al
	mov	rbp, rbp
	test	byte ptr [rbp - 0x2a], 1
	mov	byte ptr [rbp - 0x29], dl
	jne	.label_225
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x29]
	xor	cl, 0xff
	nop	
	mov	byte ptr [rbp - 0x29], cl
.label_225:
	mov	al, byte ptr [rbp - 0x29]
	lea	rsi, [rbp - 0x40]
	mov	rbp, rbp
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x31], al
	mov	rdi, qword ptr [rbp - 0x28]
	call	lgetfilecon
	lea	rdi, [rdi]
	xor	ecx, ecx
	cmp	ecx, eax
	lea	rsi, [rsi]
	jg	.label_217
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x40]
	call	setfscreatecon
	nop	
	cmp	eax, 0
	mov	rsp, rsp
	jge	.label_221
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x2a], 1
	nop	
	jne	.label_224
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x31], 1
	mov	rbp, rbp
	je	.label_226
	call	__errno_location
	mov	rbp, rbp
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_226
.label_224:
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], esi
	lea	rdi, [rdi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	call	quote
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_226:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0x26], 1
	mov	rsp, rsp
	je	.label_213
	mov	rdi, qword ptr [rbp - 0x40]
	nop	
	call	freecon
	mov	byte ptr [rbp - 0xe], 0
	jmp	.label_220
.label_213:
	jmp	.label_221
.label_221:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	call	freecon
	jmp	.label_214
.label_217:
	nop	
	test	byte ptr [rbp - 0x2a], 1
	lea	rdi, [rdi]
	jne	.label_215
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x31], 1
	nop	
	je	.label_222
	mov	rbp, rbp
	call	__errno_location
	nop	
	mov	edi, dword ptr [rax]
	mov	rsp, rsp
	call	errno_unsupported
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_222
.label_215:
	lea	rsi, [rsi]
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.1_0
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], esi
	mov	rsp, rsp
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
.label_222:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	test	byte ptr [rax + 0x26], 1
	lea	rdi, [rdi]
	je	.label_218
	nop	
	mov	byte ptr [rbp - 0xe], 0
	mov	rbp, rbp
	jmp	.label_220
.label_218:
	jmp	.label_214
.label_214:
	jmp	.label_223
.label_228:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	test	byte ptr [rax + 0x21], 1
	mov	rbp, rbp
	je	.label_227
	nop	
	test	byte ptr [rbp - 0xd], 1
	nop	
	je	.label_216
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x5c]
	call	defaultcon
	lea	rsi, [rsi]
	cmp	eax, 0
	jge	.label_216
	call	__errno_location
	lea	rsi, [rsi]
	mov	edi, dword ptr [rax]
	mov	rbp, rbp
	call	ignorable_ctx_err
	nop	
	test	al, 1
	nop	
	jne	.label_216
	lea	rdi, [rdi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.2_0
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x60], esi
	call	gettext
	nop	
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	call	quotearg_style
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
.label_216:
	jmp	.label_227
.label_227:
	nop	
	jmp	.label_223
.label_223:
	mov	byte ptr [rbp - 0xe], 1
.label_220:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xe]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x60
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405eb0

	.globl errno_unsupported
	.type errno_unsupported, @function
errno_unsupported:
	push	rbp
	mov	rbp, rsp
	nop	
	mov	al, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], edi
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 8], 0x5f
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], al
	je	.label_229
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 8], 0x3d
	sete	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], al
.label_229:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405ef0

	.globl defaultcon
	.type defaultcon, @function
defaultcon:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], esi
	mov	rbp, rbp
	call	__errno_location
	mov	esi, 0xffffffff
	mov	rsp, rsp
	mov	dword ptr [rax], 0x5f
	mov	eax, esi
	lea	rsi, [rsi]
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405f30

	.globl ignorable_ctx_err
	.type ignorable_ctx_err, @function
ignorable_ctx_err:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	al, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 0x5f
	mov	byte ptr [rbp - 5], al
	je	.label_230
	cmp	dword ptr [rbp - 4], 0x3d
	sete	al
	mov	byte ptr [rbp - 5], al
.label_230:
	mov	al, byte ptr [rbp - 5]
	nop	
	and	al, 1
	movzx	eax, al
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f70

	.globl set_file_security_ctx
	.type set_file_security_ctx, @function
set_file_security_ctx:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	mov	al, dl
	mov	r8b, sil
	lea	rsi, [rsi]
	mov	r9b, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rdi
	mov	rsp, rsp
	and	r8b, 1
	mov	byte ptr [rbp - 0x33], r8b
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0x12], al
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	test	byte ptr [rcx + 0x23], 1
	mov	byte ptr [rbp - 0x32], r9b
	mov	rbp, rbp
	je	.label_233
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 0x26]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x32], cl
.label_233:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x32]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	dl, cl
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], al
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x11], 1
	mov	byte ptr [rbp - 0x21], dl
	mov	rsp, rsp
	jne	.label_231
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax + 0x29]
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_231:
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	mov	byte ptr [rbp - 0x22], al
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x12]
	mov	cl, byte ptr [rbp - 0x33]
	nop	
	and	al, 1
	mov	rsp, rsp
	and	cl, 1
	movzx	esi, al
	lea	rsi, [rsi]
	movzx	edx, cl
	lea	rdi, [rdi]
	call	restorecon
	test	al, 1
	jne	.label_234
	test	byte ptr [rbp - 0x11], 1
	jne	.label_236
	test	byte ptr [rbp - 0x22], 1
	lea	rsi, [rsi]
	je	.label_232
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	mov	rbp, rbp
	test	al, 1
	mov	rbp, rbp
	jne	.label_232
.label_236:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.3_0
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], esi
	nop	
	call	gettext
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	call	quotearg_n_style
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
.label_232:
	mov	byte ptr [rbp - 0x31], 0
	jmp	.label_235
.label_234:
	nop	
	mov	byte ptr [rbp - 0x31], 1
.label_235:
	mov	al, byte ptr [rbp - 0x31]
	mov	rbp, rbp
	and	al, 1
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406100

	.globl restorecon
	.type restorecon, @function
restorecon:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	mov	al, dl
	mov	rbp, rbp
	mov	cl, sil
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	and	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], cl
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 1], al
	lea	rsi, [rsi]
	call	__errno_location
	xor	edx, edx
	mov	rbp, rbp
	mov	cl, dl
	mov	dword ptr [rax], 0x5f
	lea	rdi, [rdi]
	and	cl, 1
	movzx	eax, cl
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406160

	.globl dest_info_init
	.type dest_info_init, @function
dest_info_init:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	eax, 0x3d
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:triple_hash
	nop	
	movabs	r8, OFFSET FLAT:triple_compare
	movabs	r9, OFFSET FLAT:triple_free
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rcx
	mov	rcx, r8
	mov	rbp, rbp
	mov	r8, r9
	lea	rdi, [rdi]
	call	hash_initialize
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x40], rax
	nop	
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061e0

	.globl src_info_init
	.type src_info_init, @function
src_info_init:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0x3d
	nop	
	mov	ecx, eax
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, eax
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:triple_hash_no_name
	movabs	r8, OFFSET FLAT:triple_compare
	movabs	r9, OFFSET FLAT:triple_free
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rcx
	mov	rcx, r8
	mov	r8, r9
	nop	
	call	hash_initialize
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x48], rax
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406240

	.globl copy
	.type copy, @function
copy:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	push	r14
	push	rbx
	sub	rsp, 0x70
	lea	rdi, [rdi]
	mov	al, dl
	nop	
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	mov	qword ptr [rbp - 0x58], rcx
	nop	
	mov	qword ptr [rbp - 0x48], r8
	mov	qword ptr [rbp - 0x28], r9
	mov	rdi, qword ptr [rbp - 0x58]
	call	valid_options
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_238
	jmp	.label_237
.label_238:
	jmp	.label_239
.label_237:
	movabs	rdi, OFFSET FLAT:.str.4_0
	movabs	rsi, OFFSET FLAT:.str.5_0
	mov	edx, 0xb9f
	nop	
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.copy
	call	__assert_fail
.label_239:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	eax, 1
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x49]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [top_level_src_name]],  rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [top_level_dst_name]],  rsi
	mov	byte ptr [rbp - 0x49], 0
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	r8b, byte ptr [rbp - 0x31]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rbp - 0x58]
	mov	r10, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	r11, qword ptr [rbp - 0x28]
	and	r8b, 1
	movzx	ebx, r8b
	mov	qword ptr [rbp - 0x40], rdx
	mov	edx, ebx
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 1
	mov	r14, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], r10
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r11
	mov	dword ptr [rbp - 0x38], eax
	lea	rdi, [rdi]
	call	copy_internal
	and	al, 1
	movzx	eax, al
	add	rsp, 0x70
	pop	rbx
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406370

	.globl valid_options
	.type valid_options, @function
valid_options:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_252
	lea	rdi, [rdi]
	jmp	.label_245
.label_252:
	movabs	rdi, OFFSET FLAT:.str.6_0
	movabs	rsi, OFFSET FLAT:.str.5_0
	mov	edx, 0xb86
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	call	__assert_fail
.label_245:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax], 3
	ja	.label_251
	nop	
	jmp	.label_244
.label_251:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.7_0
	nop	
	movabs	rsi, OFFSET FLAT:.str.5_0
	mov	rsp, rsp
	mov	edx, 0xb87
	nop	
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	call	__assert_fail
.label_244:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0xc], 1
	mov	rbp, rbp
	je	.label_240
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0xc], 2
	mov	rbp, rbp
	je	.label_240
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0xc], 3
	jne	.label_241
.label_240:
	jmp	.label_254
.label_241:
	movabs	rdi, OFFSET FLAT:.str.8_0
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.5_0
	nop	
	mov	edx, 0xb88
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	mov	rsp, rsp
	call	__assert_fail
.label_254:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x38], 0
	je	.label_242
	mov	rax, qword ptr [rbp - 8]
	nop	
	cmp	dword ptr [rax + 0x38], 1
	je	.label_242
	nop	
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x38], 2
	mov	rsp, rsp
	jne	.label_246
.label_242:
	jmp	.label_249
.label_246:
	movabs	rdi, OFFSET FLAT:.str.9_0
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.5_0
	mov	edx, 0xb89
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	nop	
	call	__assert_fail
.label_249:
	mov	rax, qword ptr [rbp - 8]
	nop	
	test	byte ptr [rax + 0x17], 1
	lea	rdi, [rdi]
	je	.label_247
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x2c], 1
	nop	
	jne	.label_250
.label_247:
	lea	rsi, [rsi]
	jmp	.label_255
.label_250:
	movabs	rdi, OFFSET FLAT:.str.10_0
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.5_0
	mov	rbp, rbp
	mov	edx, 0xb8a
	nop	
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	nop	
	call	__assert_fail
.label_255:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x38], 2
	nop	
	jne	.label_253
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0xc], 2
	mov	rsp, rsp
	jne	.label_243
.label_253:
	jmp	.label_248
.label_243:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.11_0
	movabs	rsi, OFFSET FLAT:.str.5_0
	mov	edx, 0xb8d
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	call	__assert_fail
.label_248:
	mov	al, 1
	nop	
	and	al, 1
	movzx	eax, al
	lea	rdi, [rdi]
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4065b0

	.globl copy_internal
	.type copy_internal, @function
copy_internal:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	push	r14
	push	rbx
	sub	rsp, 0x7b0
	mov	al, dl
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp + 0x28]
	mov	r11, qword ptr [rbp + 0x20]
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp + 0x18]
	mov	r14b, byte ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x6b8], rdi
	mov	qword ptr [rbp - 0x218], rsi
	nop	
	and	al, 1
	mov	byte ptr [rbp - 0x4c9], al
	nop	
	mov	qword ptr [rbp - 0x648], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x258], r8
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x688], r9
	and	r14b, 1
	mov	byte ptr [rbp - 0x11a], r14b
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rbx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x268], r11
	mov	qword ptr [rbp - 0x6c8], r10
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x62d], 0
	mov	qword ptr [rbp - 0x1d0], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x250], 0
	mov	byte ptr [rbp - 0x19], 0
	mov	byte ptr [rbp - 0x221], 0
	mov	byte ptr [rbp - 0x66a], 0
	mov	rcx, qword ptr [rbp - 0x268]
	nop	
	mov	byte ptr [rcx], 0
	nop	
	mov	rcx, qword ptr [rbp - 0x688]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rcx + 0x34]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5bc], edx
	mov	rcx, qword ptr [rbp - 0x688]
	test	byte ptr [rcx + 0x18], 1
	je	.label_430
	nop	
	cmp	dword ptr [rbp - 0x5bc], 0
	nop	
	jge	.label_477
	mov	rbp, rbp
	mov	eax, 0xffffff9c
	mov	rsp, rsp
	mov	r8d, 1
	nop	
	mov	rsi, qword ptr [rbp - 0x6b8]
	mov	rcx, qword ptr [rbp - 0x218]
	mov	rsp, rsp
	mov	edi, eax
	lea	rsi, [rsi]
	mov	edx, eax
	lea	rsi, [rsi]
	call	renameatu
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_458
	mov	rsp, rsp
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x634], ecx
	jmp	.label_459
.label_458:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x634], eax
	jmp	.label_459
.label_459:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x634]
	mov	dword ptr [rbp - 0x5bc], eax
.label_477:
	cmp	dword ptr [rbp - 0x5bc], 0
	sete	al
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x4c9], al
	cmp	qword ptr [rbp - 0x6c8], 0
	je	.label_465
	mov	al, byte ptr [rbp - 0x4c9]
	mov	rcx, qword ptr [rbp - 0x6c8]
	and	al, 1
	mov	byte ptr [rcx], al
.label_465:
	jmp	.label_430
.label_430:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x5bc], 0
	jne	.label_467
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x688]
	mov	rbp, rbp
	test	byte ptr [rax + 0x31], 1
	mov	rsp, rsp
	jne	.label_321
	nop	
	jmp	.label_416
.label_467:
	cmp	dword ptr [rbp - 0x5bc], 0x11
	jne	.label_416
	mov	rax, qword ptr [rbp - 0x688]
	mov	rbp, rbp
	cmp	dword ptr [rax + 8], 2
	lea	rsi, [rsi]
	je	.label_321
.label_416:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x5bc], 0
	nop	
	jne	.label_478
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x218]
	mov	qword ptr [rbp - 0x1f8], rax
	jmp	.label_447
.label_478:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x6b8]
	nop	
	mov	qword ptr [rbp - 0x1f8], rax
.label_447:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1f8]
	nop	
	mov	qword ptr [rbp - 0x208], rax
	mov	rax, qword ptr [rbp - 0x688]
	nop	
	cmp	dword ptr [rax + 4], 2
	jne	.label_484
	lea	rsi, [rbp - 0x3c0]
	mov	rdi, qword ptr [rbp - 0x208]
	call	__lstat
	mov	dword ptr [rbp - 0x6bc], eax
	jmp	.label_259
.label_484:
	lea	rsi, [rbp - 0x3c0]
	nop	
	mov	rdi, qword ptr [rbp - 0x208]
	mov	rbp, rbp
	call	stat
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x6bc], eax
.label_259:
	mov	eax, dword ptr [rbp - 0x6bc]
	cmp	eax, 0
	je	.label_266
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.12_0
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5f4], esi
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x208]
	mov	qword ptr [rbp - 0x5f0], rax
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x5f4]
	mov	rdx, qword ptr [rbp - 0x5f0]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x625], 0
	lea	rsi, [rsi]
	jmp	.label_258
.label_266:
	mov	eax, dword ptr [rbp - 0x3a8]
	nop	
	mov	dword ptr [rbp - 0xfc], eax
	mov	eax, dword ptr [rbp - 0xfc]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_287
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x688]
	mov	rsp, rsp
	test	byte ptr [rax + 0x2a], 1
	jne	.label_287
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x19], 1
	nop	
	jne	.label_295
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.13_0
	call	gettext
	mov	qword ptr [rbp - 0x4e0], rax
	nop	
	jmp	.label_301
.label_295:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.14_0
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x4e0], rax
.label_301:
	mov	rax, qword ptr [rbp - 0x4e0]
	mov	rsp, rsp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x6b8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x598], rax
	call	quotearg_style
	xor	edi, edi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x55c], edi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x55c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x598]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	nop	
	mov	byte ptr [rbp - 0x625], 0
	jmp	.label_258
.label_287:
	jmp	.label_321
.label_321:
	test	byte ptr [rbp - 0x11a], 1
	je	.label_323
	nop	
	mov	rax, qword ptr [rbp - 0x688]
	cmp	qword ptr [rax + 0x48], 0
	je	.label_323
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xfc]
	nop	
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_326
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x688]
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0
	jne	.label_326
	lea	rdx, [rbp - 0x3c0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x688]
	mov	rdi, qword ptr [rax + 0x48]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x6b8]
	lea	rdi, [rdi]
	call	seen_file
	mov	rbp, rbp
	test	al, 1
	mov	rbp, rbp
	jne	.label_338
	lea	rsi, [rsi]
	jmp	.label_326
.label_338:
	movabs	rdi, OFFSET FLAT:.str.15_0
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x6b8]
	mov	qword ptr [rbp - 0x210], rax
	nop	
	call	quotearg_style
	xor	edi, edi
	nop	
	mov	dword ptr [rbp - 0x1d4], edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x1d4]
	nop	
	mov	rdx, qword ptr [rbp - 0x210]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x625], 1
	jmp	.label_258
.label_326:
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x3c0]
	nop	
	mov	rax, qword ptr [rbp - 0x688]
	mov	rdi, qword ptr [rax + 0x48]
	nop	
	mov	rsi, qword ptr [rbp - 0x6b8]
	call	record_file
.label_323:
	mov	rdi, qword ptr [rbp - 0x688]
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11a]
	and	al, 1
	lea	rdi, [rdi]
	movzx	esi, al
	lea	rsi, [rsi]
	call	should_dereference
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x69b], al
	test	byte ptr [rbp - 0x4c9], 1
	jne	.label_333
	cmp	dword ptr [rbp - 0x5bc], 0x11
	nop	
	jne	.label_355
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x688]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 8], 2
	je	.label_288
.label_355:
	nop	
	mov	eax, dword ptr [rbp - 0xfc]
	lea	rsi, [rsi]
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_360
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x688]
	mov	rsp, rsp
	test	byte ptr [rcx + 0x14], 1
	mov	byte ptr [rbp - 0x501], al
	je	.label_362
	mov	rbp, rbp
	mov	al, 1
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0xfc]
	and	ecx, 0xf000
	nop	
	cmp	ecx, 0x4000
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x501], al
	lea	rsi, [rsi]
	je	.label_362
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0xfc]
	nop	
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x501], al
	je	.label_362
.label_360:
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x688]
	test	byte ptr [rcx + 0x18], 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x501], al
	mov	rbp, rbp
	jne	.label_362
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x688]
	nop	
	test	byte ptr [rcx + 0x2c], 1
	mov	byte ptr [rbp - 0x501], al
	jne	.label_362
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x688]
	test	byte ptr [rcx + 0x17], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x501], al
	mov	rbp, rbp
	jne	.label_362
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x688]
	mov	rbp, rbp
	cmp	dword ptr [rcx], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x501], al
	jne	.label_362
	nop	
	mov	rax, qword ptr [rbp - 0x688]
	nop	
	mov	cl, byte ptr [rax + 0x15]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x501], cl
.label_362:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x501]
	mov	edi, 0xffffff9c
	lea	rdx, [rbp - 0x798]
	nop	
	xor	ecx, ecx
	mov	esi, 0x100
	nop	
	and	al, 1
	mov	byte ptr [rbp - 0x119], al
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x119]
	test	al, 1
	mov	rbp, rbp
	cmovne	ecx, esi
	mov	dword ptr [rbp - 0x4ac], ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x218]
	mov	ecx, dword ptr [rbp - 0x4ac]
	call	fstatat
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_399
	mov	al, byte ptr [rbp - 0x119]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x66a], al
	mov	dword ptr [rbp - 0x5bc], 0x11
	mov	rsp, rsp
	jmp	.label_401
.label_399:
	mov	rbp, rbp
	call	__errno_location
	cmp	dword ptr [rax], 0x28
	jne	.label_403
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x16], 1
	lea	rdi, [rdi]
	je	.label_403
	nop	
	jmp	.label_407
.label_403:
	lea	rsi, [rsi]
	call	__errno_location
	cmp	dword ptr [rax], 2
	je	.label_408
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.12_0
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x638], esi
	lea	rsi, [rsi]
	call	gettext
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x218]
	mov	qword ptr [rbp - 0x678], rax
	nop	
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x638]
	mov	rdx, qword ptr [rbp - 0x678]
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x625], 0
	jmp	.label_258
.label_408:
	mov	byte ptr [rbp - 0x4c9], 1
	lea	rdi, [rdi]
	jmp	.label_407
.label_407:
	lea	rsi, [rsi]
	jmp	.label_401
.label_401:
	mov	rbp, rbp
	jmp	.label_288
.label_288:
	cmp	dword ptr [rbp - 0x5bc], 0x11
	jne	.label_332
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x639], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x688]
	cmp	dword ptr [rax + 8], 2
	je	.label_426
	lea	rsi, [rbp - 0x3c0]
	mov	rbp, rbp
	lea	rcx, [rbp - 0x798]
	lea	r9, [rbp - 0x639]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x6b8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x218]
	nop	
	mov	r8, qword ptr [rbp - 0x688]
	call	same_file_ok
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_426
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.16_0
	mov	rsp, rsp
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x6b8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x3f0], rax
	lea	rsi, [rsi]
	call	quotearg_n_style
	mov	rbp, rbp
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x218]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x220], rax
	call	quotearg_n_style
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edi, esi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x3f0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x220]
	mov	rbp, rbp
	mov	r8, rax
	nop	
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x625], 0
	jmp	.label_258
.label_426:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x688]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0x2d], 1
	je	.label_263
	mov	eax, dword ptr [rbp - 0xfc]
	and	eax, 0xf000
	cmp	eax, 0x4000
	mov	rbp, rbp
	je	.label_263
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x688]
	test	byte ptr [rdx + 0x1f], 1
	nop	
	mov	byte ptr [rbp - 0x1e9], cl
	je	.label_451
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x688]
	lea	rdi, [rdi]
	test	byte ptr [rdx + 0x18], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x32a], cl
	je	.label_454
	nop	
	mov	rax, qword ptr [rbp - 0x798]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x3c0]
	sete	cl
	mov	byte ptr [rbp - 0x32a], cl
.label_454:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x32a]
	xor	al, 0xff
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1e9], al
.label_451:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x1e9]
	nop	
	lea	rsi, [rbp - 0x798]
	mov	rsp, rsp
	lea	rdx, [rbp - 0x3c0]
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	edi, 1
	test	al, 1
	nop	
	cmovne	ecx, edi
	nop	
	mov	dword ptr [rbp - 0x514], ecx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x218]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x514]
	nop	
	call	utimecmp
	nop	
	xor	ecx, ecx
	lea	rsi, [rsi]
	cmp	ecx, eax
	jg	.label_468
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x6c8], 0
	je	.label_472
	mov	rax, qword ptr [rbp - 0x6c8]
	mov	byte ptr [rax], 1
.label_472:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x218]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x3b8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x3c0]
	call	remember_copied
	nop	
	mov	qword ptr [rbp - 0x1d0], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x1d0], 0
	nop	
	je	.label_261
	nop	
	mov	edx, 1
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x1d0]
	mov	rsi, qword ptr [rbp - 0x218]
	mov	rax, qword ptr [rbp - 0x688]
	mov	cl, byte ptr [rax + 0x2e]
	mov	r8b, byte ptr [rbp - 0x69b]
	nop	
	and	cl, 1
	nop	
	and	r8b, 1
	nop	
	movzx	ecx, cl
	movzx	r8d, r8b
	call	create_hard_link
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_257
	jmp	.label_260
.label_257:
	jmp	.label_261
.label_261:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x625], 1
	mov	rbp, rbp
	jmp	.label_258
.label_468:
	jmp	.label_263
.label_263:
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x18], 1
	je	.label_265
	lea	rdx, [rbp - 0x798]
	mov	rdi, qword ptr [rbp - 0x688]
	nop	
	mov	rsi, qword ptr [rbp - 0x218]
	lea	rdi, [rdi]
	call	abandon_move
	nop	
	test	al, 1
	jne	.label_350
	nop	
	jmp	.label_277
.label_350:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x6c8], 0
	lea	rdi, [rdi]
	je	.label_278
	mov	rax, qword ptr [rbp - 0x6c8]
	lea	rsi, [rsi]
	mov	byte ptr [rax], 1
.label_278:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x625], 1
	lea	rdi, [rdi]
	jmp	.label_258
.label_277:
	jmp	.label_283
.label_265:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xfc]
	lea	rdi, [rdi]
	and	eax, 0xf000
	mov	rsp, rsp
	cmp	eax, 0x4000
	lea	rdi, [rdi]
	je	.label_284
	nop	
	mov	rax, qword ptr [rbp - 0x688]
	mov	rbp, rbp
	cmp	dword ptr [rax + 8], 2
	mov	rsp, rsp
	je	.label_291
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x688]
	cmp	dword ptr [rax + 8], 3
	mov	rsp, rsp
	jne	.label_284
	lea	rdx, [rbp - 0x798]
	mov	rdi, qword ptr [rbp - 0x688]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x218]
	mov	rbp, rbp
	call	overwrite_ok
	mov	rsp, rsp
	test	al, 1
	jne	.label_284
.label_291:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x625], 1
	jmp	.label_258
.label_284:
	lea	rsi, [rsi]
	jmp	.label_283
.label_283:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x639], 1
	lea	rsi, [rsi]
	je	.label_308
	mov	byte ptr [rbp - 0x625], 1
	jmp	.label_258
.label_308:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x780]
	and	eax, 0xf000
	lea	rdi, [rdi]
	cmp	eax, 0x4000
	je	.label_313
	mov	eax, dword ptr [rbp - 0xfc]
	and	eax, 0xf000
	mov	rbp, rbp
	cmp	eax, 0x4000
	jne	.label_314
	mov	rax, qword ptr [rbp - 0x688]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x18], 1
	je	.label_319
	mov	rax, qword ptr [rbp - 0x688]
	nop	
	cmp	dword ptr [rax], 0
	je	.label_319
	lea	rdi, [rdi]
	jmp	.label_324
.label_319:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.17_1
	call	gettext
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 4
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x218]
	mov	qword ptr [rbp - 0x4f0], rax
	call	quotearg_n_style
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x6b8]
	mov	qword ptr [rbp - 0x548], rax
	lea	rsi, [rsi]
	call	quotearg_n_style
	nop	
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x4f0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x548]
	lea	rdi, [rdi]
	mov	r8, rax
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x625], 0
	jmp	.label_258
.label_324:
	jmp	.label_314
.label_314:
	nop	
	test	byte ptr [rbp - 0x11a], 1
	je	.label_340
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x688]
	cmp	dword ptr [rax], 3
	je	.label_340
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0x798]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x688]
	mov	rdi, qword ptr [rax + 0x40]
	mov	rsi, qword ptr [rbp - 0x218]
	lea	rdi, [rdi]
	call	seen_file
	lea	rdi, [rdi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_346
	lea	rdi, [rdi]
	jmp	.label_340
.label_346:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.18_1
	mov	rsp, rsp
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x218]
	mov	qword ptr [rbp - 0x538], rax
	call	quotearg_n_style
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x6b8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x500], rax
	call	quotearg_n_style
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edi, esi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x538]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	r8, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x625], 0
	jmp	.label_258
.label_340:
	jmp	.label_313
.label_313:
	mov	eax, dword ptr [rbp - 0xfc]
	nop	
	and	eax, 0xf000
	lea	rdi, [rdi]
	cmp	eax, 0x4000
	je	.label_390
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x780]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_365
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x18], 1
	je	.label_369
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x688]
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0
	mov	rsp, rsp
	je	.label_369
	jmp	.label_373
.label_369:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.19_0
	call	gettext
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x218]
	mov	qword ptr [rbp - 0x4a8], rax
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x23c], edi
	mov	esi, dword ptr [rbp - 0x23c]
	mov	rdx, qword ptr [rbp - 0x4a8]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	byte ptr [rbp - 0x625], 0
	lea	rsi, [rsi]
	jmp	.label_258
.label_373:
	lea	rsi, [rsi]
	jmp	.label_365
.label_365:
	lea	rsi, [rsi]
	jmp	.label_390
.label_390:
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x18], 1
	je	.label_393
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x3a8]
	mov	rsp, rsp
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_394
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x780]
	mov	rbp, rbp
	and	eax, 0xf000
	nop	
	cmp	eax, 0x4000
	je	.label_394
	nop	
	mov	rax, qword ptr [rbp - 0x688]
	cmp	dword ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_394
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.20
	call	gettext
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x6b8]
	mov	qword ptr [rbp - 0x610], rax
	mov	rsp, rsp
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	nop	
	mov	rdx, qword ptr [rbp - 0x218]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x260], rax
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rsp, rsp
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x610]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x260]
	mov	r8, rax
	nop	
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x625], 0
	lea	rdi, [rdi]
	jmp	.label_258
.label_394:
	jmp	.label_393
.label_393:
	nop	
	mov	rax, qword ptr [rbp - 0x688]
	cmp	dword ptr [rax], 0
	je	.label_415
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x6b8]
	call	last_component
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, rax
	call	dot_or_dotdot
	test	al, 1
	jne	.label_415
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x18], 1
	mov	rbp, rbp
	jne	.label_486
	mov	eax, dword ptr [rbp - 0x780]
	mov	rbp, rbp
	and	eax, 0xf000
	nop	
	cmp	eax, 0x4000
	je	.label_415
.label_486:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x688]
	cmp	dword ptr [rax], 3
	lea	rsi, [rsi]
	je	.label_425
	lea	rsi, [rbp - 0x3c0]
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x218]
	lea	rsi, [rsi]
	call	source_is_dst_backup
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_470
	jmp	.label_425
.label_470:
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x18], 1
	lea	rdi, [rdi]
	je	.label_433
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.21_0
	call	gettext
	mov	qword ptr [rbp - 0x1e0], rax
	mov	rbp, rbp
	jmp	.label_375
.label_433:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.22_0
	lea	rsi, [rsi]
	call	gettext
	mov	qword ptr [rbp - 0x1e0], rax
.label_375:
	mov	rax, qword ptr [rbp - 0x1e0]
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, 4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x408], rax
	nop	
	mov	rdx, qword ptr [rbp - 0x408]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x218]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4a0], rdx
	nop	
	mov	rdx, rax
	mov	rsp, rsp
	call	quotearg_n_style
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x6b8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x200], rax
	mov	rbp, rbp
	call	quotearg_n_style
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edi, esi
	nop	
	mov	rdx, qword ptr [rbp - 0x4a0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x200]
	mov	rsp, rsp
	mov	r8, rax
	nop	
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x625], 0
	jmp	.label_258
.label_425:
	lea	rdi, [rdi]
	mov	edi, 0xffffff9c
	nop	
	mov	rsi, qword ptr [rbp - 0x218]
	mov	rax, qword ptr [rbp - 0x688]
	mov	edx, dword ptr [rax]
	nop	
	call	backup_file_rename
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x248], rax
	nop	
	cmp	qword ptr [rbp - 0x248], 0
	mov	rsp, rsp
	je	.label_456
	jmp	.label_460
.label_460:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x248]
	nop	
	mov	qword ptr [rbp - 0x668], rax
	mov	rdi, rax
	call	strlen
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	inc	rdi
	mov	qword ptr [rbp - 0x3d0], rdi
	add	rax, 0x10
	nop	
	and	rax, 0xfffffffffffffff0
	mov	rdi, rsp
	mov	rsp, rsp
	sub	rdi, rax
	mov	rsp, rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x4c8], rdi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x4c8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x668]
	mov	rdx, qword ptr [rbp - 0x3d0]
	nop	
	mov	rdi, rax
	mov	qword ptr [rbp - 0x570], rax
	mov	rsp, rsp
	call	memcpy
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x570]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x3c8], rax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x3c8]
	mov	qword ptr [rbp - 0x250], rdx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x248]
	call	free
	jmp	.label_297
.label_456:
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 2
	lea	rsi, [rsi]
	je	.label_479
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.23_0
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x38], esi
	call	gettext
	nop	
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x218]
	mov	qword ptr [rbp - 0x320], rax
	nop	
	call	quotearg_style
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, dword ptr [rbp - 0x38]
	nop	
	mov	rdx, qword ptr [rbp - 0x320]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	byte ptr [rbp - 0x625], 0
	lea	rsi, [rsi]
	jmp	.label_258
.label_479:
	jmp	.label_297
.label_297:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x4c9], 1
	jmp	.label_305
.label_415:
	mov	eax, dword ptr [rbp - 0x780]
	lea	rdi, [rdi]
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0x4000
	lea	rdi, [rdi]
	je	.label_268
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x18], 1
	jne	.label_268
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x688]
	mov	rsp, rsp
	test	byte ptr [rax + 0x15], 1
	mov	rsp, rsp
	jne	.label_273
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x22], 1
	lea	rdi, [rdi]
	je	.label_280
	mov	rsp, rsp
	mov	eax, 1
	nop	
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x788]
	jb	.label_273
.label_280:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x688]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 4], 2
	mov	rsp, rsp
	jne	.label_268
	mov	eax, dword ptr [rbp - 0x3a8]
	and	eax, 0xf000
	lea	rdi, [rdi]
	cmp	eax, 0x8000
	mov	rbp, rbp
	je	.label_268
.label_273:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x218]
	nop	
	call	unlink
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_293
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 2
	lea	rsi, [rsi]
	je	.label_293
	lea	rsi, [rsi]
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.24_0
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x10c], esi
	nop	
	call	gettext
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x218]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x6a8], rax
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x10c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x6a8]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x625], 0
	nop	
	jmp	.label_258
.label_293:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x4c9], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x2e], 1
	mov	rsp, rsp
	je	.label_315
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.25_0
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x218]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x580], rax
	mov	rsp, rsp
	call	quotearg_style
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x580]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rsp, rsp
	mov	al, 0
	nop	
	call	printf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x58c], eax
.label_315:
	lea	rdi, [rdi]
	jmp	.label_268
.label_268:
	jmp	.label_305
.label_305:
	mov	rsp, rsp
	jmp	.label_332
.label_332:
	jmp	.label_333
.label_333:
	test	byte ptr [rbp - 0x11a], 1
	nop	
	je	.label_335
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x688]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x40], 0
	je	.label_335
	nop	
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x18], 1
	jne	.label_335
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x688]
	nop	
	cmp	dword ptr [rax], 0
	nop	
	jne	.label_335
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x679], 1
	test	byte ptr [rbp - 0x66a], 1
	mov	rbp, rbp
	je	.label_342
	lea	rax, [rbp - 0x798]
	nop	
	mov	qword ptr [rbp - 0x520], rax
	jmp	.label_352
.label_342:
	mov	rbp, rbp
	lea	rsi, [rbp - 0x300]
	mov	rdi, qword ptr [rbp - 0x218]
	call	__lstat
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_348
	lea	rax, [rbp - 0x300]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x520], rax
	lea	rsi, [rsi]
	jmp	.label_349
.label_348:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x679], 0
.label_349:
	lea	rdi, [rdi]
	jmp	.label_352
.label_352:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x679], 1
	je	.label_353
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x520]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	lea	rsi, [rsi]
	jne	.label_353
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x688]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 0x40]
	mov	rsi, qword ptr [rbp - 0x218]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x520]
	lea	rsi, [rsi]
	call	seen_file
	test	al, 1
	jne	.label_364
	jmp	.label_353
.label_364:
	movabs	rdi, OFFSET FLAT:.str.26_0
	call	gettext
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x6b8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x5a8], rax
	call	quotearg_n_style
	mov	edi, 1
	nop	
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x218]
	nop	
	mov	qword ptr [rbp - 0x7a8], rax
	call	quotearg_n_style
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x5a8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x7a8]
	mov	r8, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x625], 0
	jmp	.label_258
.label_353:
	jmp	.label_335
.label_335:
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x2e], 1
	je	.label_384
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x18], 1
	jne	.label_384
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xfc]
	lea	rsi, [rsi]
	and	eax, 0xf000
	cmp	eax, 0x4000
	lea	rdi, [rdi]
	je	.label_384
	mov	rdi, qword ptr [rbp - 0x6b8]
	mov	rsi, qword ptr [rbp - 0x218]
	mov	rdx, qword ptr [rbp - 0x250]
	mov	rsp, rsp
	call	emit_verbose
.label_384:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x5bc], 0
	jne	.label_395
	mov	qword ptr [rbp - 0x1d0], 0
	nop	
	jmp	.label_396
.label_395:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x2a], 1
	lea	rsi, [rsi]
	je	.label_397
	mov	eax, dword ptr [rbp - 0xfc]
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0x4000
	nop	
	jne	.label_397
	test	byte ptr [rbp - 0x11a], 1
	lea	rdi, [rdi]
	je	.label_372
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x218]
	mov	rsi, qword ptr [rbp - 0x3b8]
	mov	rdx, qword ptr [rbp - 0x3c0]
	lea	rsi, [rsi]
	call	remember_copied
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1d0], rax
	nop	
	jmp	.label_405
.label_372:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x3b8]
	mov	rsi, qword ptr [rbp - 0x3c0]
	call	src_to_dest_lookup
	mov	qword ptr [rbp - 0x1d0], rax
.label_405:
	mov	rbp, rbp
	jmp	.label_409
.label_397:
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x18], 1
	mov	rsp, rsp
	je	.label_410
	cmp	qword ptr [rbp - 0x3b0], 1
	jne	.label_410
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x3b8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x3c0]
	lea	rsi, [rsi]
	call	src_to_dest_lookup
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1d0], rax
	jmp	.label_417
.label_410:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x22], 1
	je	.label_418
	mov	rax, qword ptr [rbp - 0x688]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x17], 1
	lea	rsi, [rsi]
	jne	.label_418
	lea	rsi, [rsi]
	mov	eax, 1
	mov	ecx, eax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x3b0]
	jb	.label_422
	test	byte ptr [rbp - 0x11a], 1
	je	.label_428
	mov	rax, qword ptr [rbp - 0x688]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 4], 3
	je	.label_422
.label_428:
	mov	rax, qword ptr [rbp - 0x688]
	mov	rsp, rsp
	cmp	dword ptr [rax + 4], 4
	jne	.label_418
.label_422:
	mov	rdi, qword ptr [rbp - 0x218]
	mov	rsi, qword ptr [rbp - 0x3b8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x3c0]
	nop	
	call	remember_copied
	mov	qword ptr [rbp - 0x1d0], rax
.label_418:
	jmp	.label_417
.label_417:
	jmp	.label_409
.label_409:
	lea	rdi, [rdi]
	jmp	.label_396
.label_396:
	cmp	qword ptr [rbp - 0x1d0], 0
	je	.label_286
	mov	eax, dword ptr [rbp - 0xfc]
	and	eax, 0xf000
	mov	rsp, rsp
	cmp	eax, 0x4000
	lea	rdi, [rdi]
	jne	.label_441
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x6b8]
	mov	rsi, qword ptr [rbp - 0x1d0]
	call	same_name
	mov	rbp, rbp
	test	al, 1
	mov	rsp, rsp
	jne	.label_445
	jmp	.label_434
.label_445:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.27_0
	call	gettext
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, 4
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [top_level_src_name]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x588], rax
	call	quotearg_n_style
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, 4
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [top_level_dst_name]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x3f8], rax
	mov	rsp, rsp
	call	quotearg_n_style
	xor	esi, esi
	mov	edi, esi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x588]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x3f8]
	mov	r8, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	mov	rcx, qword ptr [rbp - 0x268]
	mov	rsp, rsp
	mov	byte ptr [rcx], 1
	jmp	.label_260
.label_434:
	mov	rdi, qword ptr [rbp - 0x218]
	mov	rsi, qword ptr [rbp - 0x1d0]
	call	same_name
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_461
	lea	rdi, [rdi]
	jmp	.label_463
.label_461:
	nop	
	movabs	rdi, OFFSET FLAT:.str.28_0
	nop	
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [top_level_src_name]]
	mov	qword ptr [rbp - 0x530], rax
	call	quotearg_style
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xdc], edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0xdc]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x530]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rcx, qword ptr [rbp - 0x688]
	mov	rbp, rbp
	test	byte ptr [rcx + 0x18], 1
	mov	rbp, rbp
	je	.label_413
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x6c8], 0
	je	.label_413
	mov	rax, qword ptr [rbp - 0x6c8]
	mov	byte ptr [rax], 1
.label_413:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x625], 1
	jmp	.label_258
.label_463:
	mov	rax, qword ptr [rbp - 0x688]
	cmp	dword ptr [rax + 4], 4
	lea	rdi, [rdi]
	je	.label_475
	test	byte ptr [rbp - 0x11a], 1
	lea	rdi, [rdi]
	je	.label_480
	mov	rax, qword ptr [rbp - 0x688]
	mov	rbp, rbp
	cmp	dword ptr [rax + 4], 3
	nop	
	jne	.label_480
.label_475:
	lea	rsi, [rsi]
	jmp	.label_481
.label_480:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.29_0
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x218]
	mov	qword ptr [rbp - 0x558], rax
	nop	
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x1d0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x540], rax
	nop	
	call	quotearg_n_style
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edi, esi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x558]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x540]
	mov	r8, rax
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	jmp	.label_260
.label_481:
	nop	
	jmp	.label_269
.label_269:
	jmp	.label_272
.label_272:
	jmp	.label_274
.label_441:
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x1d0]
	mov	rsi, qword ptr [rbp - 0x218]
	mov	rax, qword ptr [rbp - 0x688]
	mov	cl, byte ptr [rax + 0x2e]
	mov	r8b, byte ptr [rbp - 0x69b]
	lea	rsi, [rsi]
	and	cl, 1
	and	r8b, 1
	movzx	ecx, cl
	movzx	r8d, r8b
	call	create_hard_link
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_282
	jmp	.label_260
.label_282:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x625], 1
	nop	
	jmp	.label_258
.label_274:
	jmp	.label_286
.label_286:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x688]
	mov	rsp, rsp
	test	byte ptr [rax + 0x18], 1
	nop	
	je	.label_289
	cmp	dword ptr [rbp - 0x5bc], 0x11
	lea	rsi, [rsi]
	jne	.label_429
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x6b8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x218]
	mov	rsp, rsp
	call	rename
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_296
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	dword ptr [rbp - 0x560], eax
	lea	rsi, [rsi]
	jmp	.label_299
.label_296:
	mov	rsp, rsp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x560], ecx
.label_299:
	nop	
	mov	eax, dword ptr [rbp - 0x560]
	mov	dword ptr [rbp - 0x5bc], eax
.label_429:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x5bc], 0
	jne	.label_309
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x2e], 1
	je	.label_312
	movabs	rdi, OFFSET FLAT:.str.30
	call	gettext
	mov	rdi, rax
	nop	
	mov	al, 0
	call	printf
	mov	rdi, qword ptr [rbp - 0x6b8]
	mov	rsi, qword ptr [rbp - 0x218]
	mov	rdx, qword ptr [rbp - 0x250]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4d0], eax
	mov	rbp, rbp
	call	emit_verbose
.label_312:
	mov	rax, qword ptr [rbp - 0x688]
	mov	rbp, rbp
	test	byte ptr [rax + 0x21], 1
	lea	rsi, [rsi]
	je	.label_322
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 1
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rbp - 0x688]
	nop	
	call	set_file_security_ctx
	mov	byte ptr [rbp - 0x611], al
.label_322:
	cmp	qword ptr [rbp - 0x6c8], 0
	lea	rsi, [rsi]
	je	.label_329
	mov	rax, qword ptr [rbp - 0x6c8]
	mov	rsp, rsp
	mov	byte ptr [rax], 1
.label_329:
	test	byte ptr [rbp - 0x11a], 1
	mov	rbp, rbp
	je	.label_331
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x31], 1
	nop	
	jne	.label_331
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0x3c0]
	nop	
	mov	rax, qword ptr [rbp - 0x688]
	mov	rdi, qword ptr [rax + 0x40]
	mov	rsi, qword ptr [rbp - 0x218]
	call	record_file
.label_331:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x625], 1
	mov	rsp, rsp
	jmp	.label_258
.label_309:
	cmp	dword ptr [rbp - 0x5bc], 0x16
	jne	.label_341
	movabs	rdi, OFFSET FLAT:.str.31_0
	call	gettext
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, 4
	mov	rdx,  qword ptr [word ptr [top_level_src_name]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1e8], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [top_level_dst_name]]
	mov	qword ptr [rbp - 0x658], rax
	mov	rbp, rbp
	call	quotearg_n_style
	xor	esi, esi
	mov	rbp, rbp
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x1e8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x658]
	mov	r8, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	nop	
	mov	rcx, qword ptr [rbp - 0x268]
	mov	rsp, rsp
	mov	byte ptr [rcx], 1
	mov	byte ptr [rbp - 0x625], 1
	nop	
	jmp	.label_258
.label_341:
	cmp	dword ptr [rbp - 0x5bc], 0x12
	je	.label_358
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.32_0
	nop	
	mov	esi, dword ptr [rbp - 0x5bc]
	mov	dword ptr [rbp - 0x4b4], esi
	call	gettext
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x6b8]
	mov	qword ptr [rbp - 0x4d8], rax
	call	quotearg_n_style
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, 4
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x218]
	nop	
	mov	qword ptr [rbp - 0x118], rax
	call	quotearg_n_style
	nop	
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x4b4]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x4d8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	mov	r8, rax
	mov	rbp, rbp
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	nop	
	mov	rdi, qword ptr [rbp - 0x3b8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x3c0]
	call	forget_created
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x625], 0
	lea	rdi, [rdi]
	jmp	.label_258
.label_358:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xfc]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_380
	mov	rdi, qword ptr [rbp - 0x218]
	lea	rdi, [rdi]
	call	rmdir
	nop	
	mov	dword ptr [rbp - 0x624], eax
	mov	rbp, rbp
	jmp	.label_385
.label_380:
	mov	rdi, qword ptr [rbp - 0x218]
	mov	rsp, rsp
	call	unlink
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x624], eax
.label_385:
	mov	eax, dword ptr [rbp - 0x624]
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_391
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 2
	nop	
	je	.label_391
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.33_0
	nop	
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x590], esi
	lea	rdi, [rdi]
	call	gettext
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x6b8]
	mov	qword ptr [rbp - 0x708], rax
	call	quotearg_n_style
	mov	rsp, rsp
	mov	edi, 1
	mov	esi, 4
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x218]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4c0], rax
	mov	rsp, rsp
	call	quotearg_n_style
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x590]
	mov	rdx, qword ptr [rbp - 0x708]
	mov	rcx, qword ptr [rbp - 0x4c0]
	nop	
	mov	r8, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	nop	
	mov	rdi, qword ptr [rbp - 0x3b8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x3c0]
	mov	rsp, rsp
	call	forget_created
	mov	byte ptr [rbp - 0x625], 0
	jmp	.label_258
.label_391:
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x2e], 1
	mov	rsp, rsp
	je	.label_412
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xfc]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_412
	movabs	rdi, OFFSET FLAT:.str.34_0
	call	gettext
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	al, 0
	nop	
	call	printf
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x6b8]
	mov	rsi, qword ptr [rbp - 0x218]
	mov	rdx, qword ptr [rbp - 0x250]
	mov	dword ptr [rbp - 0x30c], eax
	call	emit_verbose
.label_412:
	mov	byte ptr [rbp - 0x4c9], 1
.label_289:
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x2b], 1
	je	.label_424
	mov	rax, qword ptr [rbp - 0x688]
	mov	ecx, dword ptr [rax + 0x10]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x680], ecx
	lea	rdi, [rdi]
	jmp	.label_427
.label_424:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xfc]
	mov	dword ptr [rbp - 0x680], eax
.label_427:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x680]
	and	eax, 0xfff
	mov	dword ptr [rbp - 0x1c4], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1c4]
	mov	rcx, qword ptr [rbp - 0x688]
	mov	rsp, rsp
	test	byte ptr [rcx + 0x1d], 1
	mov	dword ptr [rbp - 0x64c], eax
	nop	
	je	.label_431
	mov	eax, 0x3f
	mov	dword ptr [rbp - 0x574], eax
	lea	rsi, [rsi]
	jmp	.label_436
.label_431:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, 0x12
	mov	edx, dword ptr [rbp - 0xfc]
	lea	rsi, [rsi]
	and	edx, 0xf000
	cmp	edx, 0x4000
	cmove	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x574], eax
.label_436:
	mov	eax, dword ptr [rbp - 0x574]
	mov	ecx, dword ptr [rbp - 0x64c]
	and	ecx, eax
	mov	dword ptr [rbp - 0x110], ecx
	mov	byte ptr [rbp - 0x502], 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x6b8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x218]
	mov	edx, dword ptr [rbp - 0xfc]
	mov	r8b, byte ptr [rbp - 0x4c9]
	mov	r9, qword ptr [rbp - 0x688]
	lea	rdi, [rdi]
	and	r8b, 1
	movzx	ecx, r8b
	mov	r8, r9
	call	set_process_security_ctx
	mov	rsp, rsp
	test	al, 1
	mov	rbp, rbp
	jne	.label_485
	mov	byte ptr [rbp - 0x625], 0
	jmp	.label_258
.label_485:
	nop	
	mov	eax, dword ptr [rbp - 0xfc]
	mov	rsp, rsp
	and	eax, 0xf000
	nop	
	cmp	eax, 0x4000
	lea	rsi, [rsi]
	jne	.label_449
	lea	rdi, [rbp - 0x3c0]
	mov	rsi, qword ptr [rbp - 0x258]
	nop	
	call	is_ancestor
	test	al, 1
	jne	.label_453
	lea	rsi, [rsi]
	jmp	.label_455
.label_453:
	movabs	rdi, OFFSET FLAT:.str.35_0
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x6b8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe8], rax
	mov	rsp, rsp
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	dword ptr [rbp - 0x4f4], edi
	mov	esi, dword ptr [rbp - 0x4f4]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
	mov	rsp, rsp
	jmp	.label_260
.label_455:
	mov	rax, rsp
	nop	
	add	rax, -0x20
	mov	rsp, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x690], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rbp - 0x690]
	nop	
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x3b8]
	mov	rcx, qword ptr [rbp - 0x690]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x3c0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x690]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	test	byte ptr [rbp - 0x4c9], 1
	nop	
	jne	.label_466
	mov	eax, dword ptr [rbp - 0x780]
	mov	rbp, rbp
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_474
.label_466:
	mov	rdi, qword ptr [rbp - 0x218]
	mov	eax, dword ptr [rbp - 0x1c4]
	mov	ecx, dword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	xor	ecx, 0xffffffff
	lea	rdi, [rdi]
	and	eax, ecx
	lea	rsi, [rsi]
	mov	esi, eax
	call	mkdir
	cmp	eax, 0
	je	.label_483
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.36_0
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x20], esi
	lea	rsi, [rsi]
	call	gettext
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x218]
	mov	qword ptr [rbp - 0x698], rax
	call	quotearg_style
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x698]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
	jmp	.label_260
.label_483:
	lea	rsi, [rbp - 0x798]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x218]
	mov	rsp, rsp
	call	__lstat
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_270
	lea	rsi, [rsi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.12_0
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xe0], esi
	call	gettext
	mov	rbp, rbp
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x218]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x308], rax
	nop	
	call	quotearg_style
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0xe0]
	mov	rdx, qword ptr [rbp - 0x308]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
	mov	rbp, rbp
	jmp	.label_260
.label_270:
	mov	eax, dword ptr [rbp - 0x780]
	and	eax, 0x1c0
	lea	rsi, [rsi]
	cmp	eax, 0x1c0
	nop	
	je	.label_290
	mov	eax, dword ptr [rbp - 0x780]
	mov	dword ptr [rbp - 0xec], eax
	mov	byte ptr [rbp - 0x62d], 1
	nop	
	mov	rdi, qword ptr [rbp - 0x218]
	mov	eax, dword ptr [rbp - 0xec]
	or	eax, 0x1c0
	lea	rdi, [rdi]
	mov	esi, eax
	call	chmod
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_300
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x324], esi
	call	gettext
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rbp - 0x218]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x3e8], rax
	nop	
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x324]
	mov	rdx, qword ptr [rbp - 0x3e8]
	mov	rcx, rax
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	jmp	.label_260
.label_300:
	jmp	.label_290
.label_290:
	jmp	.label_316
.label_316:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	test	byte ptr [rax], 1
	jne	.label_318
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x218]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x790]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x798]
	call	remember_copied
	mov	rdx, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	mov	byte ptr [rdx], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x550], rax
.label_318:
	mov	rax, qword ptr [rbp - 0x688]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x2e], 1
	nop	
	je	.label_327
	mov	rax, qword ptr [rbp - 0x688]
	mov	rsp, rsp
	test	byte ptr [rax + 0x18], 1
	je	.label_386
	movabs	rdi, OFFSET FLAT:.str.38_0
	lea	rdi, [rdi]
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x218]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x660], rax
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x660]
	mov	rsi, rax
	mov	rbp, rbp
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x524], eax
	jmp	.label_339
.label_386:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x6b8]
	mov	rsi, qword ptr [rbp - 0x218]
	mov	rbp, rbp
	call	emit_verbose
.label_339:
	mov	rsp, rsp
	jmp	.label_327
.label_327:
	jmp	.label_343
.label_474:
	mov	dword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x21], 1
	jne	.label_344
	nop	
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x25], 1
	mov	rsp, rsp
	je	.label_347
.label_344:
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x218]
	nop	
	mov	rax, qword ptr [rbp - 0x688]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0x25]
	mov	rax, qword ptr [rbp - 0x688]
	mov	rsp, rsp
	and	cl, 1
	lea	rdi, [rdi]
	movzx	esi, cl
	lea	rdi, [rdi]
	mov	rcx, rax
	call	set_file_security_ctx
	lea	rdi, [rdi]
	test	al, 1
	nop	
	jne	.label_356
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x26], 1
	mov	rbp, rbp
	je	.label_357
	lea	rdi, [rdi]
	jmp	.label_260
.label_357:
	jmp	.label_356
.label_356:
	mov	rbp, rbp
	jmp	.label_347
.label_347:
	jmp	.label_343
.label_343:
	mov	rax, qword ptr [rbp - 0x688]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x1c], 1
	mov	rbp, rbp
	je	.label_363
	cmp	qword ptr [rbp - 0x648], 0
	lea	rdi, [rdi]
	je	.label_363
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x648]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	nop	
	cmp	rax, qword ptr [rbp - 0x3c0]
	je	.label_363
	jmp	.label_368
.label_363:
	lea	rcx, [rbp - 0x3c0]
	mov	rdi, qword ptr [rbp - 0x6b8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x218]
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x4c9]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x690]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x688]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xd8]
	nop	
	mov	r10, qword ptr [rbp - 0x268]
	and	al, 1
	nop	
	sub	rsp, 0x10
	movzx	r11d, al
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x3d8], rdx
	lea	rdi, [rdi]
	mov	edx, r11d
	mov	rbx, qword ptr [rbp - 0x3d8]
	mov	qword ptr [rsp], rbx
	mov	qword ptr [rsp + 8], r10
	lea	rsi, [rsi]
	call	copy_dir
	add	rsp, 0x10
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x502], al
.label_368:
	jmp	.label_387
.label_449:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x2c], 1
	nop	
	je	.label_388
	mov	byte ptr [rbp - 0x221], 1
	nop	
	mov	rax, qword ptr [rbp - 0x6b8]
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x2f
	je	.label_392
	mov	rdi, qword ptr [rbp - 0x218]
	nop	
	call	dir_name
	mov	rbp, rbp
	mov	cl, 1
	mov	qword ptr [rbp - 0x3e0], rax
	mov	rsi, qword ptr [rbp - 0x3e0]
	mov	edx, OFFSET FLAT:.str.2_1
	mov	edi, edx
	mov	byte ptr [rbp - 0x669], cl
	lea	rsi, [rsi]
	call	strcmp
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	mov	cl, byte ptr [rbp - 0x669]
	mov	byte ptr [rbp - 0x69a], cl
	lea	rsi, [rsi]
	je	.label_398
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.2_1
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x1b0]
	mov	rbp, rbp
	call	stat
	mov	cl, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0x69a], cl
	lea	rsi, [rsi]
	jne	.label_398
	mov	rsp, rsp
	lea	rsi, [rbp - 0xc8]
	nop	
	mov	rdi, qword ptr [rbp - 0x3e0]
	lea	rsi, [rsi]
	call	stat
	mov	rbp, rbp
	mov	cl, 1
	nop	
	cmp	eax, 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x69a], cl
	mov	rbp, rbp
	jne	.label_398
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7a9], cl
	jne	.label_440
	mov	rax, qword ptr [rbp - 0x1b0]
	cmp	rax, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	sete	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7a9], cl
.label_440:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x7a9]
	mov	byte ptr [rbp - 0x69a], al
.label_398:
	mov	al, byte ptr [rbp - 0x69a]
	nop	
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x222], al
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x3e0]
	call	free
	test	byte ptr [rbp - 0x222], 1
	jne	.label_421
	nop	
	movabs	rdi, OFFSET FLAT:.str.40
	call	gettext
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x218]
	mov	qword ptr [rbp - 0x7b8], rax
	call	quotearg_n_style_colon
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x7b8]
	nop	
	mov	rcx, rax
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	lea	rdi, [rdi]
	jmp	.label_260
.label_421:
	mov	rsp, rsp
	jmp	.label_392
.label_392:
	mov	rbp, rbp
	mov	esi, 0xffffff9c
	lea	rsi, [rsi]
	mov	r8d, 0xffffffff
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x6b8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x218]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x688]
	mov	cl, byte ptr [rax + 0x16]
	nop	
	and	cl, 1
	nop	
	movzx	ecx, cl
	call	force_symlinkat
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x3fc], eax
	mov	rsp, rsp
	cmp	ecx, dword ptr [rbp - 0x3fc]
	jge	.label_442
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.41_0
	mov	esi, dword ptr [rbp - 0x3fc]
	nop	
	mov	dword ptr [rbp - 0x310], esi
	mov	rsp, rsp
	call	gettext
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x218]
	mov	qword ptr [rbp - 0x5b8], rax
	mov	rsp, rsp
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x6b8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x5e8], rax
	lea	rsi, [rsi]
	call	quotearg_n_style
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x310]
	mov	rdx, qword ptr [rbp - 0x5b8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x5e8]
	nop	
	mov	r8, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
	jmp	.label_260
.label_442:
	jmp	.label_437
.label_388:
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x17], 1
	je	.label_452
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x688]
	test	byte ptr [rcx + 0x16], 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x699], al
	mov	rsp, rsp
	jne	.label_457
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x688]
	nop	
	cmp	dword ptr [rax + 8], 3
	sete	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x699], cl
.label_457:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x699]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x329], al
	nop	
	mov	rdi, qword ptr [rbp - 0x6b8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x218]
	mov	al, byte ptr [rbp - 0x329]
	lea	rsi, [rsi]
	mov	dl, byte ptr [rbp - 0x69b]
	lea	rdi, [rdi]
	and	al, 1
	and	dl, 1
	mov	rbp, rbp
	movzx	r8d, al
	mov	byte ptr [rbp - 0x612], dl
	nop	
	mov	edx, r8d
	mov	al, byte ptr [rbp - 0x612]
	movzx	r8d, al
	call	create_hard_link
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_469
	lea	rsi, [rsi]
	jmp	.label_260
.label_469:
	jmp	.label_435
.label_452:
	mov	eax, dword ptr [rbp - 0xfc]
	and	eax, 0xf000
	cmp	eax, 0x8000
	mov	rbp, rbp
	je	.label_473
	mov	rax, qword ptr [rbp - 0x688]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x14], 1
	nop	
	je	.label_476
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xfc]
	nop	
	and	eax, 0xf000
	nop	
	cmp	eax, 0xa000
	mov	rsp, rsp
	je	.label_476
.label_473:
	lea	rdi, [rdi]
	lea	r9, [rbp - 0x4c9]
	lea	rax, [rbp - 0x3c0]
	mov	byte ptr [rbp - 0x19], 1
	nop	
	mov	rdi, qword ptr [rbp - 0x6b8]
	mov	rsi, qword ptr [rbp - 0x218]
	mov	rdx, qword ptr [rbp - 0x688]
	mov	ecx, dword ptr [rbp - 0x1c4]
	and	ecx, 0x1ff
	mov	r8d, dword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	call	copy_reg
	add	rsp, 0x10
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_262
	lea	rdi, [rdi]
	jmp	.label_260
.label_262:
	mov	rsp, rsp
	jmp	.label_264
.label_476:
	mov	eax, dword ptr [rbp - 0xfc]
	and	eax, 0xf000
	cmp	eax, 0x1000
	jne	.label_267
	mov	rbp, rbp
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x218]
	mov	eax, dword ptr [rbp - 0xfc]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x110]
	mov	rsp, rsp
	xor	ecx, 0xffffffff
	nop	
	and	eax, ecx
	mov	esi, eax
	call	__mknod
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_281
	mov	rdi, qword ptr [rbp - 0x218]
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xfc]
	mov	rsp, rsp
	and	eax, 0xffffefff
	mov	ecx, dword ptr [rbp - 0x110]
	xor	ecx, 0xffffffff
	mov	rbp, rbp
	and	eax, ecx
	mov	esi, eax
	call	mkfifo
	cmp	eax, 0
	je	.label_285
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.42_0
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x100], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x218]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x608], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x100]
	mov	rdx, qword ptr [rbp - 0x608]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	jmp	.label_260
.label_285:
	jmp	.label_281
.label_281:
	jmp	.label_303
.label_267:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xfc]
	and	eax, 0xf000
	cmp	eax, 0x6000
	je	.label_307
	mov	eax, dword ptr [rbp - 0xfc]
	and	eax, 0xf000
	cmp	eax, 0x2000
	je	.label_307
	nop	
	mov	eax, dword ptr [rbp - 0xfc]
	mov	rbp, rbp
	and	eax, 0xf000
	cmp	eax, 0xc000
	lea	rdi, [rdi]
	jne	.label_311
.label_307:
	mov	rdi, qword ptr [rbp - 0x218]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xfc]
	mov	ecx, dword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	xor	ecx, 0xffffffff
	and	eax, ecx
	mov	rdx, qword ptr [rbp - 0x398]
	mov	rbp, rbp
	mov	esi, eax
	lea	rsi, [rsi]
	call	__mknod
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_320
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.43_0
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x618], esi
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x218]
	mov	qword ptr [rbp - 0x18], rax
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x618]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	jmp	.label_260
.label_320:
	jmp	.label_334
.label_311:
	mov	eax, dword ptr [rbp - 0xfc]
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0xa000
	jne	.label_336
	mov	rdi, qword ptr [rbp - 0x6b8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x390]
	call	areadlink_with_size
	nop	
	mov	qword ptr [rbp - 0x238], rax
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x221], 1
	cmp	qword ptr [rbp - 0x238], 0
	mov	rsp, rsp
	jne	.label_443
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.44_0
	nop	
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], esi
	call	gettext
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x6b8]
	mov	qword ptr [rbp - 0x600], rax
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x34]
	mov	rdx, qword ptr [rbp - 0x600]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	jmp	.label_260
.label_443:
	mov	esi, 0xffffff9c
	mov	rbp, rbp
	mov	r8d, 0xffffffff
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x238]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x218]
	mov	rax, qword ptr [rbp - 0x688]
	mov	cl, byte ptr [rax + 0x16]
	mov	rsp, rsp
	and	cl, 1
	movzx	ecx, cl
	call	force_symlinkat
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x328], eax
	mov	rbp, rbp
	cmp	ecx, dword ptr [rbp - 0x328]
	jge	.label_359
	mov	rax, qword ptr [rbp - 0x688]
	mov	rsp, rsp
	test	byte ptr [rax + 0x2d], 1
	je	.label_359
	test	byte ptr [rbp - 0x4c9], 1
	mov	rbp, rbp
	jne	.label_359
	mov	eax, dword ptr [rbp - 0x780]
	and	eax, 0xf000
	cmp	eax, 0xa000
	mov	rbp, rbp
	jne	.label_359
	mov	rax, qword ptr [rbp - 0x768]
	mov	rdi, qword ptr [rbp - 0x238]
	mov	qword ptr [rbp - 0xf8], rax
	mov	rsp, rsp
	call	strlen
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xf8]
	nop	
	cmp	rdi, rax
	jne	.label_359
	nop	
	mov	rdi, qword ptr [rbp - 0x218]
	mov	rsi, qword ptr [rbp - 0x768]
	call	areadlink_with_size
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
	cmp	qword ptr [rbp - 0x108], 0
	je	.label_374
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x238]
	nop	
	call	strcmp
	cmp	eax, 0
	jne	.label_381
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x328], 0
.label_381:
	mov	rdi, qword ptr [rbp - 0x108]
	call	free
.label_374:
	nop	
	jmp	.label_359
.label_359:
	mov	rdi, qword ptr [rbp - 0x238]
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x328]
	jge	.label_389
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.45
	mov	esi, dword ptr [rbp - 0x328]
	mov	dword ptr [rbp - 0x5ac], esi
	lea	rsi, [rsi]
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rbp - 0x218]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x5d0], rax
	nop	
	call	quotearg_style
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x5ac]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x5d0]
	mov	rcx, rax
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	jmp	.label_260
.label_389:
	mov	rax, qword ptr [rbp - 0x688]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0x25], 1
	je	.label_400
	call	restore_default_fscreatecon_or_die
.label_400:
	nop	
	mov	rax, qword ptr [rbp - 0x688]
	nop	
	test	byte ptr [rax + 0x1d], 1
	lea	rsi, [rsi]
	je	.label_292
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x218]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x3a4]
	mov	edx, dword ptr [rbp - 0x3a0]
	call	lchown
	cmp	eax, 0
	je	.label_406
	nop	
	mov	rdi, qword ptr [rbp - 0x688]
	lea	rdi, [rdi]
	call	chown_failure_ok
	mov	rbp, rbp
	test	al, 1
	nop	
	jne	.label_406
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.46
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5d4], esi
	call	gettext
	xor	edi, edi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x218]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x5d4]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x688]
	test	byte ptr [rcx + 0x24], 1
	lea	rdi, [rdi]
	je	.label_419
	mov	rsp, rsp
	jmp	.label_260
.label_419:
	jmp	.label_420
.label_406:
	jmp	.label_420
.label_420:
	jmp	.label_292
.label_292:
	jmp	.label_423
.label_336:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.47
	nop	
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x6b8]
	mov	qword ptr [rbp - 0x5a0], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x4e4], edi
	mov	esi, dword ptr [rbp - 0x4e4]
	mov	rdx, qword ptr [rbp - 0x5a0]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	lea	rsi, [rsi]
	jmp	.label_260
.label_423:
	lea	rsi, [rsi]
	jmp	.label_334
.label_334:
	jmp	.label_303
.label_303:
	jmp	.label_264
.label_264:
	mov	rsp, rsp
	jmp	.label_435
.label_435:
	mov	rbp, rbp
	jmp	.label_437
.label_437:
	mov	rbp, rbp
	jmp	.label_387
.label_387:
	test	byte ptr [rbp - 0x4c9], 1
	lea	rdi, [rdi]
	jne	.label_438
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x14], 1
	jne	.label_438
	mov	eax, dword ptr [rbp - 0xfc]
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0x4000
	je	.label_438
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x21], 1
	nop	
	jne	.label_446
	mov	rax, qword ptr [rbp - 0x688]
	mov	rsp, rsp
	test	byte ptr [rax + 0x25], 1
	je	.label_438
.label_446:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x218]
	mov	rax, qword ptr [rbp - 0x688]
	mov	cl, byte ptr [rax + 0x25]
	mov	rax, qword ptr [rbp - 0x688]
	mov	rbp, rbp
	and	cl, 1
	lea	rsi, [rsi]
	movzx	esi, cl
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	call	set_file_security_ctx
	nop	
	test	al, 1
	jne	.label_279
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x26], 1
	je	.label_450
	lea	rdi, [rdi]
	jmp	.label_260
.label_450:
	mov	rbp, rbp
	jmp	.label_279
.label_279:
	jmp	.label_438
.label_438:
	test	byte ptr [rbp - 0x11a], 1
	je	.label_298
	mov	rax, qword ptr [rbp - 0x688]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x40], 0
	mov	rbp, rbp
	je	.label_298
	lea	rsi, [rbp - 0x498]
	mov	rdi, qword ptr [rbp - 0x218]
	call	__lstat
	cmp	eax, 0
	jne	.label_462
	mov	rbp, rbp
	lea	rdx, [rbp - 0x498]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x688]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 0x40]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x218]
	call	record_file
.label_462:
	jmp	.label_298
.label_298:
	mov	rax, qword ptr [rbp - 0x688]
	nop	
	test	byte ptr [rax + 0x17], 1
	je	.label_367
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xfc]
	and	eax, 0xf000
	cmp	eax, 0x4000
	mov	rbp, rbp
	je	.label_367
	mov	al, byte ptr [rbp - 0x502]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x625], al
	lea	rdi, [rdi]
	jmp	.label_258
.label_367:
	test	byte ptr [rbp - 0x19], 1
	nop	
	je	.label_471
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x502]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x625], al
	jmp	.label_258
.label_471:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x688]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0x1f], 1
	je	.label_304
	lea	rdi, [rbp - 0x3c0]
	lea	rdi, [rdi]
	call	get_stat_atime
	lea	rdi, [rbp - 0x3c0]
	mov	qword ptr [rbp - 0x6d8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x6d0], rdx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x6d8]
	mov	qword ptr [rbp - 0x700], rax
	nop	
	mov	rax, qword ptr [rbp - 0x6d0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x6f8], rax
	mov	rsp, rsp
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x1c0], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1b8], rdx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	qword ptr [rbp - 0x6f0], rax
	nop	
	mov	rax, qword ptr [rbp - 0x1b8]
	mov	qword ptr [rbp - 0x6e8], rax
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x221], 1
	lea	rsi, [rsi]
	je	.label_256
	lea	rsi, [rbp - 0x700]
	mov	rdi, qword ptr [rbp - 0x218]
	mov	rbp, rbp
	call	utimens_symlink
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x228], eax
	jmp	.label_271
.label_256:
	lea	rsi, [rbp - 0x700]
	mov	rdi, qword ptr [rbp - 0x218]
	call	utimens
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x228], eax
.label_271:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x228]
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_371
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.48
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x650], esi
	mov	rsp, rsp
	call	gettext
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x218]
	mov	qword ptr [rbp - 0x568], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x568]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	nop	
	call	error
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x688]
	mov	rsp, rsp
	test	byte ptr [rcx + 0x24], 1
	lea	rdi, [rdi]
	je	.label_294
	mov	byte ptr [rbp - 0x625], 0
	mov	rbp, rbp
	jmp	.label_258
.label_294:
	jmp	.label_371
.label_371:
	jmp	.label_304
.label_304:
	test	byte ptr [rbp - 0x221], 1
	jne	.label_306
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x1d], 1
	je	.label_306
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x4c9], 1
	lea	rsi, [rsi]
	jne	.label_310
	mov	eax, dword ptr [rbp - 0x3a4]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x77c]
	jne	.label_310
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3a0]
	cmp	eax, dword ptr [rbp - 0x778]
	mov	rsp, rsp
	je	.label_306
.label_310:
	mov	rdi, qword ptr [rbp - 0x688]
	mov	rsi, qword ptr [rbp - 0x218]
	movzx	eax, byte ptr [rbp - 0x4c9]
	mov	rsp, rsp
	and	eax, 1
	mov	edx, 0xffffffff
	mov	rsp, rsp
	lea	rcx, [rbp - 0x3c0]
	lea	r9, [rbp - 0x798]
	mov	r8d, eax
	call	set_owner
	mov	rbp, rbp
	mov	edx, eax
	sub	eax, -1
	mov	dword ptr [rbp - 0x5d8], edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_325
	jmp	.label_376
.label_376:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x5d8]
	test	eax, eax
	nop	
	je	.label_379
	jmp	.label_330
.label_325:
	mov	byte ptr [rbp - 0x625], 0
	jmp	.label_258
.label_379:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xfc]
	and	eax, 0xfffff1ff
	mov	dword ptr [rbp - 0xfc], eax
.label_330:
	jmp	.label_306
.label_306:
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x27], 1
	mov	rbp, rbp
	je	.label_337
	nop	
	mov	eax, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x6b8]
	mov	rdx, qword ptr [rbp - 0x218]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x688]
	mov	esi, eax
	nop	
	mov	ecx, eax
	call	copy_attr
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_337
	mov	rax, qword ptr [rbp - 0x688]
	mov	rbp, rbp
	test	byte ptr [rax + 0x28], 1
	lea	rdi, [rdi]
	je	.label_337
	mov	byte ptr [rbp - 0x625], 0
	jmp	.label_258
.label_337:
	test	byte ptr [rbp - 0x221], 1
	mov	rsp, rsp
	je	.label_345
	mov	al, byte ptr [rbp - 0x502]
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x625], al
	nop	
	jmp	.label_258
.label_345:
	lea	rsi, [rsi]
	mov	esi, 0xffffffff
	nop	
	lea	rdx, [rbp - 0x3c0]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x218]
	call	set_author
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x688]
	lea	rdi, [rdi]
	test	byte ptr [rdx + 0x1e], 1
	jne	.label_351
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x18], 1
	lea	rdi, [rdi]
	je	.label_354
.label_351:
	mov	eax, 0xffffffff
	nop	
	mov	rdi, qword ptr [rbp - 0x6b8]
	mov	rdx, qword ptr [rbp - 0x218]
	mov	r8d, dword ptr [rbp - 0xfc]
	lea	rsi, [rsi]
	mov	esi, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	call	copy_acl
	nop	
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_361
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x688]
	nop	
	test	byte ptr [rax + 0x24], 1
	mov	rsp, rsp
	je	.label_361
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x625], 0
	nop	
	jmp	.label_258
.label_361:
	jmp	.label_302
.label_354:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x688]
	mov	rbp, rbp
	test	byte ptr [rax + 0x2b], 1
	je	.label_366
	mov	esi, 0xffffffff
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x218]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x688]
	mov	edx, dword ptr [rax + 0x10]
	mov	rsp, rsp
	call	set_acl
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_377
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x625], 0
	jmp	.label_258
.label_377:
	jmp	.label_378
.label_366:
	mov	rax, qword ptr [rbp - 0x688]
	nop	
	test	byte ptr [rax + 0x20], 1
	je	.label_317
	test	byte ptr [rbp - 0x4c9], 1
	mov	rsp, rsp
	je	.label_317
	mov	al, 1
	nop	
	mov	ecx, dword ptr [rbp - 0xfc]
	mov	rsp, rsp
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	mov	byte ptr [rbp - 0x229], al
	lea	rdi, [rdi]
	je	.label_383
	mov	eax, dword ptr [rbp - 0xfc]
	lea	rsi, [rsi]
	and	eax, 0xf000
	mov	rsp, rsp
	cmp	eax, 0xc000
	sete	cl
	mov	byte ptr [rbp - 0x229], cl
.label_383:
	mov	al, byte ptr [rbp - 0x229]
	mov	ecx, 0x1b6
	mov	edx, 0x1ff
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	cmovne	ecx, edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x7bc], ecx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x218]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x7bc]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6ac], ecx
	mov	rsp, rsp
	call	cached_umask
	nop	
	mov	esi, 0xffffffff
	xor	eax, 0xffffffff
	mov	ecx, dword ptr [rbp - 0x6ac]
	and	ecx, eax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	edx, ecx
	mov	rbp, rbp
	call	set_acl
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_382
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x625], 0
	mov	rsp, rsp
	jmp	.label_258
.label_382:
	jmp	.label_402
.label_317:
	nop	
	cmp	dword ptr [rbp - 0x110], 0
	mov	rbp, rbp
	je	.label_404
	lea	rdi, [rdi]
	call	cached_umask
	nop	
	xor	eax, 0xffffffff
	and	eax, dword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x110], eax
	cmp	dword ptr [rbp - 0x110], 0
	je	.label_411
	nop	
	test	byte ptr [rbp - 0x62d], 1
	nop	
	jne	.label_411
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x4c9], 1
	mov	rsp, rsp
	je	.label_414
	lea	rsi, [rbp - 0x798]
	nop	
	mov	rdi, qword ptr [rbp - 0x218]
	mov	rsp, rsp
	call	__lstat
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_414
	lea	rsi, [rsi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.12_0
	nop	
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4b0], esi
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x218]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x620], rax
	mov	rsp, rsp
	call	quotearg_style
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x4b0]
	mov	rdx, qword ptr [rbp - 0x620]
	lea	rdi, [rdi]
	mov	rcx, rax
	nop	
	mov	al, 0
	nop	
	call	error
	mov	byte ptr [rbp - 0x625], 0
	nop	
	jmp	.label_258
.label_414:
	mov	eax, dword ptr [rbp - 0x780]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xec], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x110]
	mov	ecx, dword ptr [rbp - 0xec]
	xor	ecx, 0xffffffff
	mov	rsp, rsp
	and	eax, ecx
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_432
	mov	byte ptr [rbp - 0x62d], 1
.label_432:
	jmp	.label_411
.label_411:
	mov	rsp, rsp
	jmp	.label_404
.label_404:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x62d], 1
	nop	
	je	.label_439
	mov	rdi, qword ptr [rbp - 0x218]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xec]
	or	eax, dword ptr [rbp - 0x110]
	mov	esi, eax
	nop	
	call	chmod
	mov	rbp, rbp
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_444
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.1_1
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x314], esi
	call	gettext
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rbp - 0x218]
	mov	qword ptr [rbp - 0x5c8], rax
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x314]
	mov	rdx, qword ptr [rbp - 0x5c8]
	nop	
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	nop	
	call	error
	mov	rcx, qword ptr [rbp - 0x688]
	mov	rsp, rsp
	test	byte ptr [rcx + 0x24], 1
	nop	
	je	.label_448
	mov	byte ptr [rbp - 0x625], 0
	jmp	.label_258
.label_448:
	nop	
	jmp	.label_444
.label_444:
	lea	rdi, [rdi]
	jmp	.label_439
.label_439:
	lea	rdi, [rdi]
	jmp	.label_402
.label_402:
	lea	rdi, [rdi]
	jmp	.label_378
.label_378:
	jmp	.label_302
.label_302:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x502]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x625], al
	jmp	.label_258
.label_260:
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x25], 1
	lea	rdi, [rdi]
	je	.label_328
	lea	rsi, [rsi]
	call	restore_default_fscreatecon_or_die
.label_328:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x1d0], 0
	lea	rdi, [rdi]
	jne	.label_464
	mov	rdi, qword ptr [rbp - 0x3b8]
	nop	
	mov	rsi, qword ptr [rbp - 0x3c0]
	lea	rdi, [rdi]
	call	forget_created
.label_464:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x250], 0
	je	.label_276
	mov	rdi, qword ptr [rbp - 0x250]
	mov	rsi, qword ptr [rbp - 0x218]
	mov	rsp, rsp
	call	rename
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_370
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.50
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x26c], esi
	mov	rbp, rbp
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x218]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x7a0], rax
	lea	rdi, [rdi]
	call	quotearg_style
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x26c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x7a0]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rbp, rbp
	jmp	.label_275
.label_370:
	mov	rax, qword ptr [rbp - 0x688]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x2e], 1
	lea	rsi, [rsi]
	je	.label_482
	movabs	rdi, OFFSET FLAT:.str.51
	call	gettext
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x250]
	mov	qword ptr [rbp - 0x510], rax
	lea	rdi, [rdi]
	call	quotearg_n_style
	nop	
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x218]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x5e0], rax
	lea	rdi, [rdi]
	call	quotearg_n_style
	mov	rdi, qword ptr [rbp - 0x510]
	nop	
	mov	rsi, qword ptr [rbp - 0x5e0]
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	nop	
	call	printf
	nop	
	mov	dword ptr [rbp - 0x62c], eax
.label_482:
	jmp	.label_275
.label_275:
	mov	rsp, rsp
	jmp	.label_276
.label_276:
	mov	byte ptr [rbp - 0x625], 0
.label_258:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x625]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	mov	rbp, rbp
	lea	rsp, [rbp - 0x10]
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a0c0

	.globl cp_options_default
	.type cp_options_default, @function
cp_options_default:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rbp, rbp
	mov	eax, 0x50
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	memset
	call	geteuid
	nop	
	cmp	eax, 0
	lea	rdi, [rdi]
	sete	cl
	mov	rdx, qword ptr [rbp - 8]
	mov	r8b, cl
	and	r8b, 1
	mov	rbp, rbp
	mov	byte ptr [rdx + 0x1b], r8b
	mov	rdx, qword ptr [rbp - 8]
	and	cl, 1
	mov	byte ptr [rdx + 0x1a], cl
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	dword ptr [rdx + 0x34], 0xffffffff
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a130

	.globl chown_failure_ok
	.type chown_failure_ok, @function
chown_failure_ok:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	call	__errno_location
	cmp	dword ptr [rax], 1
	je	.label_487
	mov	rsp, rsp
	call	__errno_location
	xor	ecx, ecx
	mov	dl, cl
	cmp	dword ptr [rax], 0x16
	mov	byte ptr [rbp - 1], dl
	jne	.label_488
.label_487:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0x1a]
	lea	rdi, [rdi]
	xor	cl, 0xff
	mov	byte ptr [rbp - 1], cl
.label_488:
	mov	al, byte ptr [rbp - 1]
	nop	
	and	al, 1
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a1a0

	.globl cached_umask
	.type cached_umask, @function
cached_umask:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	nop	
	cmp	dword ptr [dword ptr [cached_umask.mask]],  -1
	jne	.label_489
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	umask
	mov	rbp, rbp
	mov	dword ptr [dword ptr [cached_umask.mask]],  eax
	mov	edi,  dword ptr [dword ptr [cached_umask.mask]]
	mov	rsp, rsp
	call	umask
	mov	dword ptr [rbp - 4], eax
.label_489:
	nop	
	mov	eax,  dword ptr [dword ptr [cached_umask.mask]]
	lea	rsi, [rsi]
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a200

	.globl should_dereference
	.type should_dereference, @function
should_dereference:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	al, sil
	lea	rdi, [rdi]
	mov	cl, 1
	mov	qword ptr [rbp - 0x10], rdi
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x11], al
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	dword ptr [rdi + 4], 4
	mov	byte ptr [rbp - 2], cl
	mov	rsp, rsp
	je	.label_490
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	dword ptr [rdx + 4], 3
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], cl
	mov	rbp, rbp
	jne	.label_491
	mov	al, byte ptr [rbp - 0x11]
	mov	byte ptr [rbp - 1], al
.label_491:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 1]
	mov	rbp, rbp
	mov	byte ptr [rbp - 2], al
.label_490:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 2]
	and	al, 1
	movzx	eax, al
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a280

	.globl same_file_ok
	.type same_file_ok, @function
same_file_ok:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x190
	xor	eax, eax
	mov	rsp, rsp
	mov	r10b, al
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x160], rdi
	mov	qword ptr [rbp - 0x178], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x180], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], r8
	mov	qword ptr [rbp - 0x188], r9
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x178]
	mov	rcx, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rbp - 0x180]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x161], r10b
	lea	rsi, [rsi]
	jne	.label_516
	mov	rax, qword ptr [rbp - 0x178]
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x180]
	cmp	rax, qword ptr [rcx]
	mov	rsp, rsp
	sete	dl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x161], dl
.label_516:
	mov	al, byte ptr [rbp - 0x161]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x162], al
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x188]
	nop	
	mov	byte ptr [rcx], 0
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x162], 1
	nop	
	je	.label_498
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0x17], 1
	lea	rdi, [rdi]
	je	.label_498
	mov	rax, qword ptr [rbp - 0x188]
	mov	byte ptr [rax], 1
	mov	byte ptr [rbp - 0x149], 1
	jmp	.label_493
.label_498:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 4], 2
	jne	.label_510
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x162]
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x19], al
	mov	rcx, qword ptr [rbp - 0x178]
	mov	edx, dword ptr [rcx + 0x18]
	and	edx, 0xf000
	lea	rsi, [rsi]
	cmp	edx, 0xa000
	jne	.label_515
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x180]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	mov	rsp, rsp
	cmp	ecx, 0xa000
	mov	rbp, rbp
	jne	.label_515
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x160]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	same_name
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], al
	mov	rbp, rbp
	test	byte ptr [rbp - 9], 1
	mov	rsp, rsp
	jne	.label_508
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_504
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x149], 1
	mov	rsp, rsp
	jmp	.label_493
.label_504:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x19], 1
	lea	rsi, [rsi]
	je	.label_502
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x188]
	mov	byte ptr [rax], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x18]
	xor	cl, 0xff
	and	cl, 1
	mov	byte ptr [rbp - 0x149], cl
	jmp	.label_493
.label_502:
	nop	
	jmp	.label_508
.label_508:
	mov	al, byte ptr [rbp - 9]
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 0x149], al
	lea	rsi, [rsi]
	jmp	.label_493
.label_515:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x180]
	nop	
	mov	qword ptr [rbp - 0x170], rax
	lea	rdi, [rdi]
	jmp	.label_492
.label_510:
	test	byte ptr [rbp - 0x162], 1
	jne	.label_520
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x149], 1
	mov	rbp, rbp
	jmp	.label_493
.label_520:
	mov	rsp, rsp
	lea	rsi, [rbp - 0x148]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	__lstat
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_525
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0xb8]
	mov	rdi, qword ptr [rbp - 0x160]
	call	__lstat
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_529
.label_525:
	mov	byte ptr [rbp - 0x149], 1
	jmp	.label_493
.label_529:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	lea	rdx, [rbp - 0x148]
	lea	rsi, [rbp - 0xb8]
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x170], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsi, qword ptr [rbp - 0x170]
	cmp	rdx, qword ptr [rsi + 8]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1a], cl
	mov	rbp, rbp
	jne	.label_499
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x170]
	cmp	rax, qword ptr [rcx]
	sete	dl
	mov	byte ptr [rbp - 0x1a], dl
.label_499:
	mov	al, byte ptr [rbp - 0x1a]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rcx + 0x18]
	and	edx, 0xf000
	cmp	edx, 0xa000
	lea	rdi, [rdi]
	jne	.label_512
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x170]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	lea	rdi, [rdi]
	cmp	ecx, 0xa000
	mov	rbp, rbp
	jne	.label_512
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x15], 1
	je	.label_512
	mov	byte ptr [rbp - 0x149], 1
	jmp	.label_493
.label_512:
	jmp	.label_492
.label_492:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax], 0
	je	.label_506
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x19], 1
	jne	.label_528
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0x18], 1
	jne	.label_494
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 4], 2
	je	.label_494
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	nop	
	cmp	ecx, 0xa000
	jne	.label_494
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rsp, rsp
	and	ecx, 0xf000
	lea	rsi, [rsi]
	cmp	ecx, 0xa000
	je	.label_494
	mov	byte ptr [rbp - 0x149], 0
	mov	rbp, rbp
	jmp	.label_493
.label_494:
	mov	byte ptr [rbp - 0x149], 1
	nop	
	jmp	.label_493
.label_528:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x160]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	same_name
	xor	al, 0xff
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x149], al
	lea	rdi, [rdi]
	jmp	.label_493
.label_506:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x18], 1
	mov	rbp, rbp
	jne	.label_521
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	test	byte ptr [rax + 0x15], 1
	nop	
	je	.label_509
.label_521:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x170]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	nop	
	cmp	ecx, 0xa000
	jne	.label_526
	nop	
	mov	byte ptr [rbp - 0x149], 1
	jmp	.label_493
.label_526:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x19], 1
	mov	rsp, rsp
	je	.label_495
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	jae	.label_495
	mov	rdi, qword ptr [rbp - 0x160]
	mov	rsi, qword ptr [rbp - 0x28]
	call	same_name
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_495
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x18]
	xor	cl, 0xff
	and	cl, 1
	mov	byte ptr [rbp - 0x149], cl
	mov	rsp, rsp
	jmp	.label_493
.label_495:
	mov	rbp, rbp
	jmp	.label_509
.label_509:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	lea	rdi, [rdi]
	cmp	ecx, 0xa000
	nop	
	je	.label_497
	mov	rax, qword ptr [rbp - 0x170]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	je	.label_497
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_522
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x170]
	cmp	rax, qword ptr [rcx]
	je	.label_524
.label_522:
	mov	byte ptr [rbp - 0x149], 1
	jmp	.label_493
.label_524:
	nop	
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x17], 1
	je	.label_527
	mov	rax, qword ptr [rbp - 0x188]
	mov	byte ptr [rax], 1
	mov	byte ptr [rbp - 0x149], 1
	nop	
	jmp	.label_493
.label_527:
	jmp	.label_497
.label_497:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x18], 1
	je	.label_500
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	mov	rsp, rsp
	cmp	ecx, 0xa000
	jne	.label_500
	mov	rbp, rbp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x170]
	cmp	rcx, qword ptr [rdx + 0x10]
	jae	.label_500
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x160]
	lea	rdi, [rdi]
	call	canonicalize_file_name
	mov	qword ptr [rbp - 0x158], rax
	cmp	qword ptr [rbp - 0x158], 0
	je	.label_514
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x158]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	same_name
	xor	al, 0xff
	nop	
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x189], al
	mov	rdi, qword ptr [rbp - 0x158]
	call	free
	nop	
	mov	al, byte ptr [rbp - 0x189]
	and	al, 1
	mov	byte ptr [rbp - 0x149], al
	jmp	.label_493
.label_514:
	jmp	.label_500
.label_500:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x2c], 1
	je	.label_517
	mov	rax, qword ptr [rbp - 0x170]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_517
	mov	byte ptr [rbp - 0x149], 1
	mov	rbp, rbp
	jmp	.label_493
.label_517:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 4], 2
	nop	
	jne	.label_518
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x18]
	lea	rsi, [rsi]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	je	.label_501
	nop	
	mov	eax, 0x90
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rsp, rsp
	lea	rcx, [rbp - 0xb8]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	memcpy
	mov	rsp, rsp
	jmp	.label_511
.label_501:
	mov	rsp, rsp
	lea	rsi, [rbp - 0xb8]
	mov	rdi, qword ptr [rbp - 0x160]
	mov	rbp, rbp
	call	stat
	cmp	eax, 0
	je	.label_519
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x149], 1
	nop	
	jmp	.label_493
.label_519:
	mov	rbp, rbp
	jmp	.label_511
.label_511:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x18]
	lea	rsi, [rsi]
	and	ecx, 0xf000
	mov	rsp, rsp
	cmp	ecx, 0xa000
	je	.label_523
	mov	eax, 0x90
	mov	edx, eax
	lea	rcx, [rbp - 0x148]
	nop	
	mov	rsi, qword ptr [rbp - 0x170]
	mov	rdi, rcx
	call	memcpy
	jmp	.label_503
.label_523:
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x148]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	stat
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_496
	mov	byte ptr [rbp - 0x149], 1
	lea	rsi, [rsi]
	jmp	.label_493
.label_496:
	jmp	.label_503
.label_503:
	nop	
	mov	rax, qword ptr [rbp - 0xb0]
	nop	
	cmp	rax, qword ptr [rbp - 0x140]
	lea	rdi, [rdi]
	jne	.label_505
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x148]
	je	.label_507
.label_505:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x149], 1
	mov	rbp, rbp
	jmp	.label_493
.label_507:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0x17], 1
	mov	rbp, rbp
	je	.label_513
	mov	rax, qword ptr [rbp - 0x170]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rsp, rsp
	and	ecx, 0xf000
	lea	rdi, [rdi]
	cmp	ecx, 0xa000
	sete	dl
	xor	dl, 0xff
	mov	rax, qword ptr [rbp - 0x188]
	mov	rsp, rsp
	and	dl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rax], dl
	mov	byte ptr [rbp - 0x149], 1
	jmp	.label_493
.label_513:
	jmp	.label_518
.label_518:
	nop	
	mov	byte ptr [rbp - 0x149], 0
.label_493:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x149]
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	add	rsp, 0x190
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ab00

	.globl create_hard_link
	.type create_hard_link, @function
create_hard_link:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	rsp, rsp
	mov	al, r8b
	mov	r9b, cl
	lea	rdi, [rdi]
	mov	r10b, dl
	lea	rdi, [rdi]
	mov	ecx, 0xffffff9c
	lea	rdi, [rdi]
	mov	edx, 0xffffffff
	lea	rdi, [rdi]
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	r11d, 0x400
	mov	qword ptr [rbp - 0x58], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	and	r10b, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x25], r10b
	mov	rsp, rsp
	and	r9b, 1
	mov	byte ptr [rbp - 0x49], r9b
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], al
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x11]
	nop	
	test	al, 1
	cmovne	r8d, r11d
	mov	al, byte ptr [rbp - 0x25]
	and	al, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rdi
	mov	edi, ecx
	mov	dword ptr [rbp - 0x24], edx
	lea	rsi, [rsi]
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	movzx	r9d, al
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xffffffff
	call	force_linkat
	mov	rbp, rbp
	xor	edx, edx
	mov	dword ptr [rbp - 0x18], eax
	cmp	edx, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	jge	.label_531
	movabs	rdi, OFFSET FLAT:.str.52
	mov	esi, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], esi
	mov	rsp, rsp
	call	gettext
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, 4
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	call	quotearg_n_style
	mov	rsp, rsp
	mov	edi, 1
	mov	esi, 4
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	call	quotearg_n_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x4a], 0
	mov	rbp, rbp
	jmp	.label_532
.label_531:
	cmp	dword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jge	.label_530
	mov	rsp, rsp
	test	byte ptr [rbp - 0x49], 1
	lea	rdi, [rdi]
	je	.label_530
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.25_0
	call	gettext
	mov	rbp, rbp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rax
	mov	rbp, rbp
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x34], eax
.label_530:
	mov	byte ptr [rbp - 0x4a], 1
.label_532:
	mov	al, byte ptr [rbp - 0x4a]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x60
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40acc0

	.globl abandon_move
	.type abandon_move, @function
abandon_move:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	test	byte ptr [rdx + 0x18], 1
	lea	rdi, [rdi]
	je	.label_533
	jmp	.label_537
.label_533:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.53_0
	movabs	rsi, OFFSET FLAT:.str.5_0
	mov	rsp, rsp
	mov	edx, 0x6d2
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.abandon_move
	mov	rsp, rsp
	call	__assert_fail
.label_537:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	dword ptr [rcx + 8], 2
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], al
	mov	rbp, rbp
	je	.label_535
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	cmp	dword ptr [rax + 8], 3
	lea	rsi, [rsi]
	je	.label_534
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	dword ptr [rdx + 8], 4
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], cl
	lea	rsi, [rsi]
	jne	.label_536
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	test	byte ptr [rdx + 0x2f], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x21], cl
	nop	
	je	.label_536
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rax + 0x18]
	call	writable_destination
	nop	
	xor	esi, esi
	lea	rdi, [rdi]
	mov	cl, sil
	lea	rsi, [rsi]
	test	al, 1
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_536
.label_534:
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	overwrite_ok
	xor	al, 0xff
	mov	byte ptr [rbp - 0x21], al
.label_536:
	mov	al, byte ptr [rbp - 0x21]
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], al
.label_535:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 1]
	mov	rbp, rbp
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ae10

	.globl overwrite_ok
	.type overwrite_ok, @function
overwrite_ok:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rdx + 0x18]
	nop	
	call	writable_destination
	mov	rsp, rsp
	test	al, 1
	jne	.label_541
	lea	rsi, [rbp - 0x74]
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	edi, dword ptr [rax + 0x18]
	call	strmode
	mov	byte ptr [rbp - 0x6a], 0
	mov	rdi,  qword ptr [word ptr [stderr]]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	test	byte ptr [rax + 0x18], 1
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	jne	.label_538
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	test	byte ptr [rax + 0x15], 1
	nop	
	jne	.label_538
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	test	byte ptr [rax + 0x16], 1
	je	.label_542
.label_538:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.54
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_539
.label_542:
	nop	
	movabs	rdi, OFFSET FLAT:.str.55_0
	mov	rsp, rsp
	call	gettext
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
.label_539:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	edi, 4
	nop	
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x40], rdx
	lea	rsi, [rsi]
	call	quotearg_style
	nop	
	lea	rdx, [rbp - 0x74]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	edi, dword ptr [rsi + 0x18]
	mov	rbp, rbp
	and	edi, 0xfff
	mov	edi, edi
	nop	
	mov	r8d, edi
	nop	
	add	rdx, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rdx
	mov	rdx, rcx
	mov	rsp, rsp
	mov	rcx, rax
	mov	r9, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	jmp	.label_540
.label_541:
	movabs	rdi, OFFSET FLAT:.str.56_0
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rax
	lea	rsi, [rsi]
	call	gettext
	nop	
	mov	edi, 4
	mov	rdx,  qword ptr [word ptr [program_name]]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x50], rdx
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	fprintf
	nop	
	mov	dword ptr [rbp - 0x34], eax
.label_540:
	lea	rsi, [rsi]
	call	yesno
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	add	rsp, 0x80
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b000

	.globl dot_or_dotdot
	.type dot_or_dotdot, @function
dot_or_dotdot:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	eax, byte ptr [rdi]
	lea	rdi, [rdi]
	cmp	eax, 0x2e
	jne	.label_543
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + 1]
	lea	rsi, [rsi]
	cmp	edx, 0x2e
	sete	sil
	and	sil, 1
	movzx	edx, sil
	add	edx, 1
	mov	rsp, rsp
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	sil, byte ptr [rdi + rcx]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa], sil
	cmp	byte ptr [rbp - 0xa], 0
	mov	byte ptr [rbp - 0xb], al
	je	.label_544
	movsx	eax, byte ptr [rbp - 0xa]
	lea	rsi, [rsi]
	cmp	eax, 0x2f
	sete	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb], cl
.label_544:
	mov	al, byte ptr [rbp - 0xb]
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 9], al
	lea	rdi, [rdi]
	jmp	.label_545
.label_543:
	mov	byte ptr [rbp - 9], 0
.label_545:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b0b0

	.globl source_is_dst_backup
	.type source_is_dst_backup, @function
source_is_dst_backup:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x110
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0xe8], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xf8], rdx
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	strlen
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	rdi, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	call	last_component
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x108]
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	rdi,  qword ptr [word ptr [simple_backup_suffix]]
	lea	rsi, [rsi]
	call	strlen
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x28]
	nop	
	cmp	rax, rdx
	lea	rsi, [rsi]
	jne	.label_549
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x108]
	mov	rdx, qword ptr [rbp - 0x20]
	call	memcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_549
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [simple_backup_suffix]]
	mov	rsp, rsp
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_546
.label_549:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xe9], 0
	jmp	.label_548
.label_546:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	call	strlen
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	xmalloc
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xf8]
	mov	rdx, qword ptr [rbp - 0x18]
	call	mempcpy
	lea	rsi, [rbp - 0xd0]
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [simple_backup_suffix]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x100], rsi
	mov	rsi, rdx
	lea	rsi, [rsi]
	call	strcpy
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0xd8], rax
	mov	rsp, rsp
	call	stat
	nop	
	mov	dword ptr [rbp - 4], eax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	cmp	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x39], cl
	lea	rdi, [rdi]
	jne	.label_547
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rdx, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xd9], cl
	lea	rsi, [rsi]
	jne	.label_550
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xe8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0xd0]
	nop	
	sete	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xd9], cl
.label_550:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xd9]
	mov	byte ptr [rbp - 0x39], al
.label_547:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x39]
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xe9], al
.label_548:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xe9]
	lea	rsi, [rsi]
	and	al, 1
	nop	
	movzx	eax, al
	nop	
	add	rsp, 0x110
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b310

	.globl emit_verbose
	.type emit_verbose, @function
emit_verbose:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	nop	
	xor	eax, eax
	mov	ecx, 4
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	edi, eax
	mov	esi, ecx
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	call	quotearg_n_style
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.57_0
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	mov	rsp, rsp
	call	printf
	cmp	qword ptr [rbp - 0x18], 0
	mov	dword ptr [rbp - 4], eax
	je	.label_551
	movabs	rdi, OFFSET FLAT:.str.58_0
	call	gettext
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x38], rax
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, rax
	mov	al, 0
	call	printf
	nop	
	mov	dword ptr [rbp - 0x2c], eax
.label_551:
	nop	
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x30], eax
	mov	rsp, rsp
	add	rsp, 0x40
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b3f0

	.globl is_ancestor
	.type is_ancestor, @function
is_ancestor:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
.label_554:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_553
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jne	.label_552
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx]
	jne	.label_552
	mov	byte ptr [rbp - 9], 1
	jmp	.label_555
.label_552:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	nop	
	jmp	.label_554
.label_553:
	nop	
	mov	byte ptr [rbp - 9], 0
.label_555:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b480

	.globl copy_dir
	.type copy_dir, @function
copy_dir:
	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	push	r15
	lea	rsi, [rsi]
	push	r14
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x128
	mov	al, dl
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	mov	rbp, rbp
	mov	edx, 2
	mov	rsp, rsp
	mov	ebx, 0x50
	lea	rsi, [rsi]
	mov	r14d, ebx
	lea	rsi, [rsi]
	lea	r15, [rbp - 0xc0]
	mov	qword ptr [rbp - 0xd0], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
	nop	
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x29], al
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x108], r8
	mov	qword ptr [rbp - 0x40], r9
	mov	qword ptr [rbp - 0xf8], r11
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], r10
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	mov	rdi, r15
	mov	rsi, rcx
	mov	dword ptr [rbp - 0x70], edx
	mov	rbp, rbp
	mov	rdx, r14
	mov	rbp, rbp
	call	memcpy
	mov	byte ptr [rbp - 0xd9], 1
	mov	rdi, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x70]
	call	savedir
	mov	qword ptr [rbp - 0x118], rax
	cmp	qword ptr [rbp - 0x118], 0
	mov	rbp, rbp
	jne	.label_560
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.59_0
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe0], esi
	call	gettext
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x68], rax
	call	quotearg_style
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, rax
	nop	
	mov	al, 0
	nop	
	call	error
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xc1], 0
	mov	rbp, rbp
	jmp	.label_559
.label_560:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	cmp	dword ptr [rax + 4], 3
	jne	.label_561
	mov	dword ptr [rbp - 0xbc], 2
.label_561:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xf9], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rbp - 0x50], rax
.label_558:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_557
	xor	eax, eax
	nop	
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	call	file_name_concat
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	edx, ecx
	mov	qword ptr [rbp - 0xe8], rax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	call	file_name_concat
	mov	rbp, rbp
	lea	r9, [rbp - 0xc0]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	lea	rdx, [rbp - 0xe9]
	mov	rsp, rsp
	lea	rsi, [rbp - 0x69]
	xor	r8d, r8d
	mov	edi, r8d
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf8]
	mov	r10b, byte ptr [rax]
	lea	rsi, [rsi]
	and	r10b, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xe9], r10b
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	mov	r11, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r10b, byte ptr [rbp - 0x29]
	nop	
	mov	rbx, qword ptr [rbp - 0x60]
	mov	r8, qword ptr [rbp - 0x108]
	and	r10b, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rsi
	mov	rsp, rsp
	mov	rsi, r11
	movzx	r14d, r10b
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rdx
	mov	rsp, rsp
	mov	edx, r14d
	mov	dword ptr [rbp - 0x10c], ecx
	mov	rcx, rbx
	mov	rsp, rsp
	mov	dword ptr [rsp], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	r11, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], r11
	mov	qword ptr [rsp + 0x18], 0
	lea	rdi, [rdi]
	call	copy_internal
	mov	rsp, rsp
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	mov	al, byte ptr [rbp - 0xd9]
	lea	rsi, [rsi]
	and	al, 1
	movzx	r14d, al
	and	r14d, edx
	mov	rbp, rbp
	cmp	r14d, 0
	setne	al
	mov	rsp, rsp
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0xd9], al
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x69]
	and	al, 1
	movzx	edx, al
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	al, byte ptr [rcx]
	nop	
	and	al, 1
	mov	rsp, rsp
	movzx	r14d, al
	or	r14d, edx
	mov	rbp, rbp
	cmp	r14d, 0
	lea	rdi, [rdi]
	setne	al
	and	al, 1
	mov	byte ptr [rcx], al
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xe8]
	call	free
	test	byte ptr [rbp - 0x69], 1
	nop	
	je	.label_556
	jmp	.label_557
.label_556:
	mov	al, byte ptr [rbp - 0xe9]
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0xf9]
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	edx, al
	or	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xf9], al
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x50]
	call	strlen
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_558
.label_557:
	mov	rdi, qword ptr [rbp - 0x118]
	call	free
	nop	
	mov	al, byte ptr [rbp - 0xf9]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xf8]
	and	al, 1
	mov	byte ptr [rdi], al
	mov	al, byte ptr [rbp - 0xd9]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0xc1], al
.label_559:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xc1]
	lea	rsi, [rsi]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x128
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b860

	.globl copy_reg
	.type copy_reg, @function
copy_reg:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x4e8
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x10]
	xor	r10d, r10d
	mov	r11d, 0x20000
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rdi
	mov	qword ptr [rbp - 0x168], rsi
	mov	qword ptr [rbp - 0x3f8], rdx
	mov	dword ptr [rbp - 0x254], ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], r8d
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x230], r9
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x100], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], 0
	mov	rax, qword ptr [rbp - 0x50]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0xd8], ecx
	mov	byte ptr [rbp - 0x345], 1
	mov	rax, qword ptr [rbp - 0x3f8]
	mov	bl, byte ptr [rax + 0x23]
	and	bl, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x265], bl
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x3f8]
	nop	
	cmp	dword ptr [rax + 4], 2
	cmove	r10d, r11d
	nop	
	or	r10d, 0
	mov	esi, r10d
	mov	al, 0
	call	open_safer
	mov	dword ptr [rbp - 0x244], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x244], 0
	jge	.label_614
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.60_0
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x64], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x340], rax
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x64]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x340]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x429], 0
	mov	rbp, rbp
	jmp	.label_630
.label_614:
	lea	rsi, [rbp - 0x320]
	mov	edi, dword ptr [rbp - 0x244]
	mov	rbp, rbp
	call	__fstat
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_637
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.61
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x13c], esi
	call	gettext
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0xf0], rax
	nop	
	call	quotearg_style
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x13c]
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x345], 0
	lea	rdi, [rdi]
	jmp	.label_566
.label_637:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x318]
	nop	
	jne	.label_571
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x320]
	lea	rdi, [rdi]
	je	.label_576
.label_571:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.62
	call	gettext
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x438], rax
	call	quotearg_style
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xb0], edi
	mov	esi, dword ptr [rbp - 0xb0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x438]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	error
	mov	byte ptr [rbp - 0x345], 0
	lea	rdi, [rdi]
	jmp	.label_566
.label_576:
	mov	rax, qword ptr [rbp - 0x230]
	test	byte ptr [rax], 1
	jne	.label_602
	nop	
	xor	eax, eax
	nop	
	mov	ecx, 0x200
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x3f8]
	mov	rsp, rsp
	mov	sil, byte ptr [rdx + 0x23]
	test	sil, 1
	nop	
	cmovne	eax, ecx
	lea	rdi, [rdi]
	or	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x344], eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x168]
	mov	esi, dword ptr [rbp - 0x344]
	mov	rsp, rsp
	mov	al, 0
	call	open_safer
	mov	dword ptr [rbp - 0x174], eax
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa8], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x3f8]
	test	byte ptr [rax + 0x21], 1
	mov	rbp, rbp
	jne	.label_618
	mov	rax, qword ptr [rbp - 0x3f8]
	test	byte ptr [rax + 0x25], 1
	mov	rsp, rsp
	je	.label_625
.label_618:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x174]
	lea	rdi, [rdi]
	jg	.label_625
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x168]
	mov	rax, qword ptr [rbp - 0x3f8]
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 0x25]
	mov	rax, qword ptr [rbp - 0x3f8]
	and	cl, 1
	movzx	esi, cl
	lea	rdi, [rdi]
	mov	rcx, rax
	call	set_file_security_ctx
	test	al, 1
	nop	
	jne	.label_620
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x3f8]
	test	byte ptr [rax + 0x26], 1
	je	.label_636
	mov	byte ptr [rbp - 0x345], 0
	jmp	.label_573
.label_636:
	jmp	.label_620
.label_620:
	mov	rsp, rsp
	jmp	.label_625
.label_625:
	cmp	dword ptr [rbp - 0x174], 0
	jge	.label_611
	mov	rax, qword ptr [rbp - 0x3f8]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x16], 1
	je	.label_611
	mov	rdi, qword ptr [rbp - 0x168]
	lea	rsi, [rsi]
	call	unlink
	mov	rbp, rbp
	cmp	eax, 0
	nop	
	je	.label_565
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.24_0
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x258], esi
	mov	rbp, rbp
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x168]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x118], rax
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x258]
	nop	
	mov	rdx, qword ptr [rbp - 0x118]
	nop	
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x345], 0
	jmp	.label_566
.label_565:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x3f8]
	test	byte ptr [rax + 0x2e], 1
	mov	rbp, rbp
	je	.label_590
	movabs	rdi, OFFSET FLAT:.str.25_0
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x168]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x110], rax
	mov	rbp, rbp
	call	quotearg_style
	mov	rdi, qword ptr [rbp - 0x110]
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	al, 0
	nop	
	call	printf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xac], eax
.label_590:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x230]
	mov	byte ptr [rax], 1
	mov	rax, qword ptr [rbp - 0x3f8]
	test	byte ptr [rax + 0x21], 1
	lea	rdi, [rdi]
	je	.label_574
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x168]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x254]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x230]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	r8, qword ptr [rbp - 0x3f8]
	and	cl, 1
	nop	
	movzx	ecx, cl
	lea	rsi, [rsi]
	call	set_process_security_ctx
	test	al, 1
	mov	rbp, rbp
	jne	.label_623
	mov	byte ptr [rbp - 0x345], 0
	jmp	.label_566
.label_623:
	nop	
	jmp	.label_574
.label_574:
	jmp	.label_611
.label_611:
	jmp	.label_602
.label_602:
	mov	rax, qword ptr [rbp - 0x230]
	test	byte ptr [rax], 1
	nop	
	je	.label_627
	jmp	.label_628
.label_628:
	mov	dword ptr [rbp - 0xd4], 0x41
	mov	rdi, qword ptr [rbp - 0x168]
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rsi, [rsi]
	or	eax, 0x80
	nop	
	mov	ecx, dword ptr [rbp - 0x254]
	mov	edx, dword ptr [rbp - 0x54]
	xor	edx, 0xffffffff
	and	ecx, edx
	mov	esi, eax
	mov	edx, ecx
	mov	al, 0
	nop	
	call	open_safer
	nop	
	mov	dword ptr [rbp - 0x174], eax
	nop	
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xa8], ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x174], 0
	nop	
	jge	.label_610
	cmp	dword ptr [rbp - 0xa8], 0x11
	jne	.label_610
	mov	rax, qword ptr [rbp - 0x3f8]
	test	byte ptr [rax + 0x18], 1
	mov	rbp, rbp
	jne	.label_610
	lea	rsi, [rbp - 0x3f0]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x168]
	call	__lstat
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_567
	nop	
	mov	eax, dword ptr [rbp - 0x3d8]
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0xa000
	mov	rbp, rbp
	jne	.label_567
	mov	rax, qword ptr [rbp - 0x3f8]
	test	byte ptr [rax + 0x30], 1
	lea	rdi, [rdi]
	je	.label_632
	nop	
	mov	rdi, qword ptr [rbp - 0x168]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0xd4]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x254]
	mov	ecx, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	xor	ecx, 0xffffffff
	and	eax, ecx
	mov	edx, eax
	mov	al, 0
	call	open_safer
	mov	dword ptr [rbp - 0x174], eax
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xa8], ecx
	jmp	.label_591
.label_632:
	nop	
	movabs	rdi, OFFSET FLAT:.str.63
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x168]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x418], rax
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	dword ptr [rbp - 0x11c], edi
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x11c]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x418]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x345], 0
	lea	rdi, [rdi]
	jmp	.label_566
.label_591:
	jmp	.label_567
.label_567:
	jmp	.label_610
.label_610:
	cmp	dword ptr [rbp - 0x174], 0
	lea	rdi, [rdi]
	jge	.label_575
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xa8], 0x15
	lea	rsi, [rsi]
	jne	.label_575
	mov	rax, qword ptr [rbp - 0x168]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_575
	mov	rdi, qword ptr [rbp - 0x168]
	lea	rsi, [rsi]
	call	strlen
	sub	rax, 1
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x168]
	nop	
	movsx	ecx, byte ptr [rdi + rax]
	nop	
	cmp	ecx, 0x2f
	jne	.label_575
	mov	dword ptr [rbp - 0xa8], 0x14
.label_575:
	jmp	.label_629
.label_627:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], 0
.label_629:
	cmp	dword ptr [rbp - 0x174], 0
	lea	rdi, [rdi]
	jge	.label_631
	nop	
	cmp	dword ptr [rbp - 0xa8], 2
	nop	
	jne	.label_635
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x230]
	test	byte ptr [rax], 1
	jne	.label_635
	mov	rax, qword ptr [rbp - 0x3f8]
	nop	
	test	byte ptr [rax + 0x18], 1
	jne	.label_635
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x230]
	lea	rsi, [rsi]
	mov	byte ptr [rax], 1
	jmp	.label_628
.label_635:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.64
	mov	esi, dword ptr [rbp - 0xa8]
	mov	dword ptr [rbp - 0x14c], esi
	lea	rdi, [rdi]
	call	gettext
	mov	rbp, rbp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 0xe8], rax
	call	quotearg_style
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x14c]
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rcx, rax
	nop	
	mov	al, 0
	nop	
	call	error
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x345], 0
	nop	
	jmp	.label_566
.label_631:
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x218]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x174]
	nop	
	call	__fstat
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_586
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.61
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x170], esi
	call	gettext
	nop	
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 0x158], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x170]
	mov	rdx, qword ptr [rbp - 0x158]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	mov	byte ptr [rbp - 0x345], 0
	lea	rdi, [rdi]
	jmp	.label_573
.label_586:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x265], 1
	je	.label_562
	mov	rax, qword ptr [rbp - 0x3f8]
	cmp	dword ptr [rax + 0x38], 0
	je	.label_562
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x174]
	mov	esi, dword ptr [rbp - 0x244]
	mov	rsp, rsp
	call	clone_file
	lea	rsi, [rsi]
	cmp	eax, 0
	sete	cl
	and	cl, 1
	nop	
	mov	byte ptr [rbp - 0x181], cl
	test	byte ptr [rbp - 0x181], 1
	jne	.label_612
	mov	rax, qword ptr [rbp - 0x3f8]
	cmp	dword ptr [rax + 0x38], 2
	lea	rsi, [rsi]
	jne	.label_621
.label_612:
	test	byte ptr [rbp - 0x181], 1
	mov	rbp, rbp
	jne	.label_624
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.65
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x28c], esi
	nop	
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x168]
	nop	
	mov	qword ptr [rbp - 0x98], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x238], rax
	nop	
	call	quotearg_n_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x28c]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x238]
	mov	rbp, rbp
	mov	r8, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x345], 0
	lea	rdi, [rdi]
	jmp	.label_573
.label_624:
	nop	
	mov	byte ptr [rbp - 0x265], 0
.label_621:
	nop	
	jmp	.label_562
.label_562:
	test	byte ptr [rbp - 0x265], 1
	mov	rbp, rbp
	je	.label_564
	mov	rsp, rsp
	call	getpagesize
	mov	rbp, rbp
	lea	rcx, [rbp - 0x218]
	movsxd	rdx, eax
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdx, rsp
	mov	rsp, rsp
	mov	eax, 0x12
	mov	rsp, rsp
	mov	esi, eax
	lea	rdi, [rbp - 0x218]
	mov	qword ptr [rbp - 0x280], rcx
	mov	rcx, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x408], rdi
	mov	rdi, rdx
	mov	rsi, qword ptr [rbp - 0x408]
	rep movsq	qword ptr [rdi], qword ptr [rsi]
	mov	rsp, rsp
	call	io_blksize
	lea	rdi, [rdi]
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	ecx, r8d
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	cmp	rcx, qword ptr [rbp - 0x1e0]
	jge	.label_587
	movabs	rax, 0x2000000000000000
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x1e0], rax
	mov	rbp, rbp
	ja	.label_587
	mov	rax, qword ptr [rbp - 0x1e0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x428], rax
	jmp	.label_598
.label_587:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0x428], rcx
	jmp	.label_598
.label_598:
	nop	
	mov	rax, qword ptr [rbp - 0x428]
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	ecx, 2
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	mov	edi, dword ptr [rbp - 0x244]
	mov	rsi, rdx
	lea	rdi, [rdi]
	call	fdadvise
	lea	rdi, [rbp - 0x320]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x451], 0
	lea	rdi, [rdi]
	call	is_probably_sparse
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40d], al
	mov	ecx, dword ptr [rbp - 0x200]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	nop	
	jne	.label_604
	mov	rax, qword ptr [rbp - 0x3f8]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0xc], 3
	jne	.label_622
	mov	byte ptr [rbp - 0x451], 1
.label_622:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x3f8]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0xc], 2
	nop	
	jne	.label_626
	test	byte ptr [rbp - 0x40d], 1
	mov	rsp, rsp
	je	.label_626
	mov	byte ptr [rbp - 0x451], 1
.label_626:
	lea	rsi, [rsi]
	jmp	.label_604
.label_604:
	test	byte ptr [rbp - 0x451], 1
	jne	.label_608
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x320]
	mov	rbp, rbp
	movabs	rcx, 0x7fffffffffffffff
	sub	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x350], rcx
	mov	rcx, rsp
	nop	
	mov	edx, 0x12
	mov	esi, edx
	nop	
	lea	rdi, [rbp - 0x320]
	mov	qword ptr [rbp - 0x180], rcx
	nop	
	mov	rcx, rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xd0], rdi
	mov	rsp, rsp
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0xd0]
	rep movsq	qword ptr [rdi], qword ptr [rsi]
	mov	qword ptr [rbp - 0x330], rax
	lea	rsi, [rsi]
	call	io_blksize
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x350]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	buffer_lcm
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x228], rax
	mov	r8d, dword ptr [rbp - 0x308]
	mov	rsp, rsp
	and	r8d, 0xf000
	cmp	r8d, 0x8000
	jne	.label_570
	mov	rax, qword ptr [rbp - 0x2f0]
	nop	
	cmp	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	jae	.label_570
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x2f0]
	nop	
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
.label_570:
	mov	rax, qword ptr [rbp - 0x228]
	sub	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x228]
	mov	rsi, qword ptr [rbp - 0x40]
	sub	rsi, rdx
	mov	qword ptr [rbp - 0x40], rsi
	cmp	qword ptr [rbp - 0x40], 0
	lea	rsi, [rsi]
	je	.label_640
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x350]
	nop	
	cmp	rax, qword ptr [rbp - 0x40]
	jae	.label_606
.label_640:
	mov	rax, qword ptr [rbp - 0x228]
	mov	qword ptr [rbp - 0x40], rax
.label_606:
	lea	rdi, [rdi]
	jmp	.label_608
.label_608:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x100], rax
	mov	rdi, qword ptr [rbp - 0x100]
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	call	ptr_align
	mov	qword ptr [rbp - 0x450], rax
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x40d], 1
	je	.label_595
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x244]
	mov	esi, dword ptr [rbp - 0x174]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x450]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	r8, qword ptr [rbp - 0x60]
	mov	r9, qword ptr [rbp - 0x2f0]
	mov	rbp, rbp
	test	byte ptr [rbp - 0x451], 1
	mov	dword ptr [rbp - 0xa4], edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x264], esi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x108], rcx
	mov	qword ptr [rbp - 0x338], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x240], r9
	lea	rdi, [rdi]
	je	.label_593
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x3f8]
	mov	ecx, dword ptr [rax + 0xc]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x43c], ecx
	mov	rbp, rbp
	jmp	.label_617
.label_593:
	mov	eax, 1
	nop	
	mov	dword ptr [rbp - 0x43c], eax
	lea	rdi, [rdi]
	jmp	.label_617
.label_617:
	mov	eax, dword ptr [rbp - 0x43c]
	lea	rcx, [rbp - 0x3f9]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x168]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0xa4]
	mov	r8d, dword ptr [rbp - 0x264]
	mov	qword ptr [rbp - 0x220], rsi
	mov	esi, r8d
	lea	rsi, [rsi]
	mov	r9, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xc8], rdx
	nop	
	mov	rdx, r9
	mov	r10, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rbp, rbp
	mov	rcx, r10
	mov	r8, qword ptr [rbp - 0x338]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x240]
	mov	dword ptr [rsp], eax
	mov	r11, qword ptr [rbp - 0xc8]
	mov	qword ptr [rsp + 8], r11
	mov	r11, qword ptr [rbp - 0x220]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], r11
	mov	r11, qword ptr [rbp - 0xc0]
	mov	qword ptr [rsp + 0x18], r11
	call	extent_copy
	test	al, 1
	jne	.label_603
	jmp	.label_589
.label_603:
	jmp	.label_581
.label_589:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3f9], 1
	jne	.label_619
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x345], 0
	jmp	.label_573
.label_619:
	jmp	.label_595
.label_595:
	mov	edi, dword ptr [rbp - 0x244]
	mov	esi, dword ptr [rbp - 0x174]
	mov	rdx, qword ptr [rbp - 0x450]
	mov	rcx, qword ptr [rbp - 0x40]
	test	byte ptr [rbp - 0x451], 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40c], edi
	mov	dword ptr [rbp - 0x25c], esi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x138], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rcx
	mov	rsp, rsp
	je	.label_563
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_609
.label_563:
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_609
.label_609:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x3f8]
	mov	rbp, rbp
	cmp	dword ptr [rcx + 0xc], 3
	nop	
	sete	dl
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	rsi, qword ptr [rbp - 0x168]
	lea	rdi, [rdi]
	mov	rdi, rsp
	lea	rdi, [rdi]
	lea	r8, [rbp - 0x14d]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x20], r8
	lea	rsi, [rsi]
	lea	r8, [rbp - 0x18]
	mov	qword ptr [rdi + 0x18], r8
	mov	qword ptr [rdi + 8], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rdi], rcx
	mov	qword ptr [rdi + 0x10], -1
	and	dl, 1
	mov	rsp, rsp
	movzx	r9d, dl
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x40c]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x25c]
	mov	rdx, qword ptr [rbp - 0x138]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, rax
	lea	rdi, [rdi]
	call	sparse_copy
	test	al, 1
	jne	.label_634
	mov	byte ptr [rbp - 0x345], 0
	jmp	.label_573
.label_634:
	test	byte ptr [rbp - 0x14d], 1
	mov	rsp, rsp
	je	.label_638
	mov	edi, dword ptr [rbp - 0x174]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	ftruncate
	cmp	eax, 0
	nop	
	jge	.label_638
	mov	rsp, rsp
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.66
	nop	
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x274], esi
	mov	rsp, rsp
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x168]
	nop	
	mov	qword ptr [rbp - 0x160], rax
	lea	rdi, [rdi]
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x274]
	mov	rdx, qword ptr [rbp - 0x160]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	nop	
	call	error
	nop	
	mov	byte ptr [rbp - 0x345], 0
	jmp	.label_573
.label_638:
	jmp	.label_580
.label_580:
	mov	rsp, rsp
	jmp	.label_564
.label_564:
	mov	rbp, rbp
	jmp	.label_581
.label_581:
	mov	rax, qword ptr [rbp - 0x3f8]
	test	byte ptr [rax + 0x1f], 1
	mov	rsp, rsp
	je	.label_582
	nop	
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	call	get_stat_atime
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x360], rax
	mov	qword ptr [rbp - 0x358], rdx
	nop	
	mov	rax, qword ptr [rbp - 0x360]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x358]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], rax
	mov	rdi, qword ptr [rbp - 0x50]
	call	get_stat_mtime
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x90]
	mov	qword ptr [rbp - 0x130], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x128], rdx
	mov	rax, qword ptr [rbp - 0x130]
	nop	
	mov	qword ptr [rbp - 0x80], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x128]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
	mov	ecx, dword ptr [rbp - 0x174]
	mov	rsi, qword ptr [rbp - 0x168]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rdi
	mov	edi, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	fdutimens
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_613
	mov	rsp, rsp
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.48
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x284], esi
	mov	rsp, rsp
	call	gettext
	nop	
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 0x148], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x284]
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rcx, rax
	nop	
	mov	al, 0
	nop	
	call	error
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x3f8]
	nop	
	test	byte ptr [rcx + 0x24], 1
	je	.label_615
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x345], 0
	mov	rbp, rbp
	jmp	.label_573
.label_615:
	lea	rdi, [rdi]
	jmp	.label_613
.label_613:
	mov	rsp, rsp
	jmp	.label_582
.label_582:
	mov	rax, qword ptr [rbp - 0x3f8]
	mov	rbp, rbp
	test	byte ptr [rax + 0x1d], 1
	lea	rdi, [rdi]
	je	.label_585
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	ecx, dword ptr [rax + 0x1c]
	cmp	ecx, dword ptr [rbp - 0x1fc]
	jne	.label_639
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	ecx, dword ptr [rax + 0x20]
	mov	rbp, rbp
	cmp	ecx, dword ptr [rbp - 0x1f8]
	lea	rsi, [rsi]
	je	.label_585
.label_639:
	mov	rdi, qword ptr [rbp - 0x3f8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x168]
	mov	edx, dword ptr [rbp - 0x174]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x230]
	lea	rsi, [rsi]
	movzx	r8d, byte ptr [rax]
	mov	rbp, rbp
	and	r8d, 1
	lea	r9, [rbp - 0x218]
	lea	rdi, [rdi]
	call	set_owner
	lea	rsi, [rsi]
	mov	edx, eax
	sub	eax, -1
	nop	
	mov	dword ptr [rbp - 0x120], edx
	mov	dword ptr [rbp - 0x16c], eax
	lea	rdi, [rdi]
	je	.label_578
	jmp	.label_583
.label_583:
	mov	eax, dword ptr [rbp - 0x120]
	test	eax, eax
	mov	rbp, rbp
	je	.label_584
	jmp	.label_588
.label_578:
	mov	byte ptr [rbp - 0x345], 0
	jmp	.label_573
.label_584:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xd8]
	and	eax, 0xfffff1ff
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd8], eax
.label_588:
	jmp	.label_585
.label_585:
	mov	rax, qword ptr [rbp - 0x3f8]
	mov	rsp, rsp
	test	byte ptr [rax + 0x27], 1
	lea	rdi, [rdi]
	je	.label_596
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x321], 0
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x200]
	lea	rdi, [rdi]
	and	eax, 0x80
	mov	rbp, rbp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_601
	call	geteuid
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_601
	lea	rdi, [rdi]
	mov	edx, 0x180
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x174]
	mov	rsi, qword ptr [rbp - 0x168]
	lea	rsi, [rsi]
	call	fchmod_or_lchmod
	lea	rdi, [rdi]
	cmp	eax, 0
	sete	cl
	and	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x321], cl
.label_601:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	esi, dword ptr [rbp - 0x244]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x168]
	mov	ecx, dword ptr [rbp - 0x174]
	mov	r8, qword ptr [rbp - 0x3f8]
	mov	rsp, rsp
	call	copy_attr
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_597
	mov	rax, qword ptr [rbp - 0x3f8]
	test	byte ptr [rax + 0x28], 1
	nop	
	je	.label_597
	mov	byte ptr [rbp - 0x345], 0
.label_597:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x321], 1
	nop	
	je	.label_633
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x174]
	mov	rsi, qword ptr [rbp - 0x168]
	mov	eax, dword ptr [rbp - 0x254]
	mov	ecx, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	xor	ecx, 0xffffffff
	and	eax, ecx
	lea	rsi, [rsi]
	mov	edx, eax
	lea	rdi, [rdi]
	call	fchmod_or_lchmod
	mov	dword ptr [rbp - 0x260], eax
.label_633:
	jmp	.label_596
.label_596:
	mov	rdi, qword ptr [rbp - 0x168]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x174]
	nop	
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	call	set_author
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x3f8]
	test	byte ptr [rdx + 0x1e], 1
	nop	
	jne	.label_641
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x3f8]
	nop	
	test	byte ptr [rax + 0x18], 1
	je	.label_643
.label_641:
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x244]
	mov	rdx, qword ptr [rbp - 0x168]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x174]
	mov	r8d, dword ptr [rbp - 0xd8]
	call	copy_acl
	cmp	eax, 0
	je	.label_607
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x3f8]
	mov	rsp, rsp
	test	byte ptr [rax + 0x24], 1
	nop	
	je	.label_607
	mov	byte ptr [rbp - 0x345], 0
.label_607:
	lea	rsi, [rsi]
	jmp	.label_572
.label_643:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x3f8]
	test	byte ptr [rax + 0x2b], 1
	je	.label_592
	mov	rdi, qword ptr [rbp - 0x168]
	mov	esi, dword ptr [rbp - 0x174]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x3f8]
	mov	edx, dword ptr [rax + 0x10]
	call	set_acl
	nop	
	cmp	eax, 0
	je	.label_594
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x345], 0
.label_594:
	lea	rdi, [rdi]
	jmp	.label_599
.label_592:
	mov	rax, qword ptr [rbp - 0x3f8]
	test	byte ptr [rax + 0x20], 1
	mov	rsp, rsp
	je	.label_600
	mov	rax, qword ptr [rbp - 0x230]
	mov	rbp, rbp
	test	byte ptr [rax], 1
	je	.label_600
	mov	rdi, qword ptr [rbp - 0x168]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x174]
	mov	qword ptr [rbp - 0xf8], rdi
	mov	dword ptr [rbp - 0x41c], esi
	call	cached_umask
	xor	eax, 0xffffffff
	mov	rsp, rsp
	and	eax, 0x1b6
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x41c]
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rdi, [rdi]
	call	set_acl
	cmp	eax, 0
	je	.label_579
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x345], 0
.label_579:
	mov	rsp, rsp
	jmp	.label_569
.label_600:
	cmp	dword ptr [rbp - 0x54], 0
	je	.label_568
	call	cached_umask
	nop	
	xor	eax, 0xffffffff
	mov	rbp, rbp
	and	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 0
	mov	rbp, rbp
	je	.label_616
	mov	edi, dword ptr [rbp - 0x174]
	mov	rsi, qword ptr [rbp - 0x168]
	mov	edx, dword ptr [rbp - 0x254]
	nop	
	call	fchmod_or_lchmod
	nop	
	cmp	eax, 0
	je	.label_616
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.1_1
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], esi
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x168]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x270], rax
	call	quotearg_style
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x270]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
	mov	rcx, qword ptr [rbp - 0x3f8]
	test	byte ptr [rcx + 0x24], 1
	lea	rdi, [rdi]
	je	.label_642
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x345], 0
.label_642:
	jmp	.label_616
.label_616:
	jmp	.label_568
.label_568:
	jmp	.label_569
.label_569:
	jmp	.label_599
.label_599:
	jmp	.label_572
.label_572:
	mov	rbp, rbp
	jmp	.label_573
.label_573:
	mov	edi, dword ptr [rbp - 0x174]
	nop	
	call	close
	lea	rsi, [rsi]
	cmp	eax, 0
	jge	.label_577
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.67
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xdc], esi
	nop	
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x168]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x250], rax
	call	quotearg_style
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0xdc]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x250]
	nop	
	mov	rcx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x345], 0
.label_577:
	jmp	.label_566
.label_566:
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x244]
	call	close
	mov	rbp, rbp
	cmp	eax, 0
	jge	.label_605
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.67
	mov	rsp, rsp
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x288], esi
	call	gettext
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x448], rax
	call	quotearg_style
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x288]
	nop	
	mov	rdx, qword ptr [rbp - 0x448]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	nop	
	mov	byte ptr [rbp - 0x345], 0
.label_605:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	call	free
	mov	rdi, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	call	free
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x345]
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0x429], al
.label_630:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x429]
	lea	rsi, [rsi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	add	rsp, 0x4e8
	pop	rbx
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cfa0

	.globl restore_default_fscreatecon_or_die
	.type restore_default_fscreatecon_or_die, @function
restore_default_fscreatecon_or_die:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, eax
	lea	rdi, [rdi]
	call	setfscreatecon
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_644
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.75
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 4], esi
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 1
	nop	
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_644:
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d010

	.globl utimens_symlink
	.type utimens_symlink, @function
utimens_symlink:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	lutimens
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_645
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0x26
	jne	.label_645
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0
.label_645:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d080

	.globl set_owner
	.type set_owner, @function
set_owner:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x80
	mov	al, r8b
	mov	qword ptr [rbp - 0x40], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], edx
	mov	qword ptr [rbp - 0x50], rcx
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0xd], al
	mov	qword ptr [rbp - 8], r9
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	edx, dword ptr [rcx + 0x1c]
	mov	dword ptr [rbp - 0x18], edx
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	edx, dword ptr [rcx + 0x20]
	mov	dword ptr [rbp - 0x6c], edx
	test	byte ptr [rbp - 0xd], 1
	jne	.label_646
	mov	rax, qword ptr [rbp - 0x40]
	test	byte ptr [rax + 0x1e], 1
	nop	
	jne	.label_661
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	test	byte ptr [rax + 0x18], 1
	lea	rdi, [rdi]
	jne	.label_661
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	test	byte ptr [rax + 0x2b], 1
	lea	rsi, [rsi]
	je	.label_646
.label_661:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x14], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	test	byte ptr [rax + 0x1e], 1
	nop	
	jne	.label_649
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	test	byte ptr [rax + 0x18], 1
	mov	rbp, rbp
	je	.label_655
.label_649:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x74], ecx
	lea	rdi, [rdi]
	jmp	.label_658
.label_655:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x10]
	mov	dword ptr [rbp - 0x74], ecx
.label_658:
	mov	eax, dword ptr [rbp - 0x74]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x68], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	and	eax, dword ptr [rbp - 0x68]
	and	eax, 0x1c0
	mov	dword ptr [rbp - 0x24], eax
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0xfff
	mov	ecx, dword ptr [rbp - 0x68]
	xor	ecx, 0xffffffff
	lea	rsi, [rsi]
	or	ecx, 0x800
	lea	rdi, [rdi]
	or	ecx, 0x400
	or	ecx, 0x200
	mov	rbp, rbp
	and	eax, ecx
	lea	rsi, [rsi]
	cmp	eax, 0
	nop	
	je	.label_660
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x5c]
	mov	edx, dword ptr [rbp - 0x24]
	call	qset_acl
	nop	
	cmp	eax, 0
	nop	
	je	.label_660
	mov	rdi, qword ptr [rbp - 0x40]
	call	owner_failure_ok
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_662
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.76
	nop	
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44], esi
	mov	rsp, rsp
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rax
	call	quotearg_style
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x44]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_662:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x40]
	mov	dl, byte ptr [rcx + 0x24]
	mov	rsp, rsp
	and	dl, 1
	movzx	esi, dl
	sub	eax, esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x30], eax
	mov	rbp, rbp
	jmp	.label_651
.label_660:
	jmp	.label_646
.label_646:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x5c], -1
	mov	rbp, rbp
	je	.label_663
	mov	edi, dword ptr [rbp - 0x5c]
	mov	esi, dword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x6c]
	call	fchown
	cmp	eax, 0
	jne	.label_648
	mov	dword ptr [rbp - 0x30], 1
	jmp	.label_651
.label_648:
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 1
	mov	rsp, rsp
	je	.label_653
	lea	rsi, [rsi]
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_657
.label_653:
	call	__errno_location
	mov	esi, 0xffffffff
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], ecx
	mov	edi, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	call	fchown
	nop	
	mov	dword ptr [rbp - 0x2c], eax
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rbp - 0x28]
	mov	dword ptr [rax], ecx
.label_657:
	jmp	.label_650
.label_663:
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	esi, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x6c]
	lea	rdi, [rdi]
	call	lchown
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_652
	nop	
	mov	dword ptr [rbp - 0x30], 1
	jmp	.label_651
.label_652:
	call	__errno_location
	cmp	dword ptr [rax], 1
	lea	rdi, [rdi]
	je	.label_656
	lea	rdi, [rdi]
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	lea	rsi, [rsi]
	jne	.label_659
.label_656:
	mov	rsp, rsp
	call	__errno_location
	mov	esi, 0xffffffff
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x60], ecx
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x6c]
	call	lchown
	nop	
	mov	dword ptr [rbp - 0x48], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x60]
	mov	dword ptr [rbp - 0x70], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	dword ptr [rax], ecx
.label_659:
	lea	rdi, [rdi]
	jmp	.label_650
.label_650:
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	call	chown_failure_ok
	test	al, 1
	mov	rsp, rsp
	jne	.label_654
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.46
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x64], esi
	lea	rdi, [rdi]
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x58], rax
	lea	rsi, [rsi]
	call	quotearg_style
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x64]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	test	byte ptr [rcx + 0x24], 1
	lea	rdi, [rdi]
	je	.label_647
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x30], 0xffffffff
	mov	rbp, rbp
	jmp	.label_651
.label_647:
	lea	rdi, [rdi]
	jmp	.label_654
.label_654:
	mov	dword ptr [rbp - 0x30], 0
.label_651:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rsp, 0x80
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d450

	.globl copy_attr
	.type copy_attr, @function
copy_attr:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	al, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], ecx
	nop	
	mov	qword ptr [rbp - 0x20], r8
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d490

	.globl set_author
	.type set_author, @function
set_author:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	nop	
	mov	qword ptr [rbp - 8], rdx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d4b0

	.globl writable_destination
	.type writable_destination, @function
writable_destination:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], esi
	mov	esi, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	and	esi, 0xf000
	cmp	esi, 0xa000
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], al
	je	.label_664
	mov	rsp, rsp
	call	can_write_any_file
	mov	rsp, rsp
	mov	cl, 1
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], cl
	jne	.label_664
	mov	rsp, rsp
	mov	esi, 2
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	euidaccess
	cmp	eax, 0
	mov	rsp, rsp
	sete	cl
	mov	byte ptr [rbp - 9], cl
.label_664:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 9]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d550

	.globl clone_file
	.type clone_file, @function
clone_file:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0x40049409
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], edi
	nop	
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, rcx
	mov	al, 0
	nop	
	call	ioctl
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d590

	.globl io_blksize
	.type io_blksize, @function
io_blksize:
	nop	
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	lea	rax, [rbp + 0x10]
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	edx, ecx
	cmp	rdx, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jge	.label_669
	nop	
	movabs	rax, 0x2000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + 0x38], rax
	mov	rbp, rbp
	ja	.label_669
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rbp, rbp
	jmp	.label_665
.label_669:
	mov	rbp, rbp
	mov	eax, 0x200
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_665
.label_665:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, 0x20000
	mov	edx, ecx
	nop	
	cmp	rdx, rax
	mov	rbp, rbp
	jle	.label_667
	mov	eax, 0x20000
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	jmp	.label_670
.label_667:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdx + 0x38]
	jge	.label_668
	mov	rbp, rbp
	movabs	rax, 0x2000000000000000
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 0x38], rax
	mov	rbp, rbp
	ja	.label_668
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x38]
	nop	
	mov	qword ptr [rbp - 8], rcx
	lea	rsi, [rsi]
	jmp	.label_666
.label_668:
	mov	eax, 0x200
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rcx
	nop	
	jmp	.label_666
.label_666:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_670:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d6b0

	.globl is_probably_sparse
	.type is_probably_sparse, @function
is_probably_sparse:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	eax, dword ptr [rdi + 0x18]
	and	eax, 0xf000
	cmp	eax, 0x8000
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11], cl
	mov	rsp, rsp
	jne	.label_671
	lea	rdi, [rdi]
	mov	eax, 0x200
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x40]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rsi + 0x30]
	mov	qword ptr [rbp - 0x10], rdx
	nop	
	cqo	
	idiv	rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rcx, rax
	mov	rbp, rbp
	setl	dil
	mov	byte ptr [rbp - 0x11], dil
.label_671:
	mov	al, byte ptr [rbp - 0x11]
	nop	
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d740

	.globl ptr_align
	.type ptr_align, @function
ptr_align:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsi, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rdi, [rdi]
	div	qword ptr [rbp - 8]
	sub	rcx, rdx
	nop	
	add	rsi, rcx
	mov	rsp, rsp
	mov	rax, rsi
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d7b0

	.globl extent_copy
	.type extent_copy, @function
extent_copy:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x1a8
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x28]
	lea	rsi, [rsi]
	mov	r10, qword ptr [rbp + 0x20]
	mov	r11, qword ptr [rbp + 0x18]
	mov	ebx, dword ptr [rbp + 0x10]
	lea	rsi, [rsi]
	lea	r14, [rbp - 0x100]
	nop	
	mov	dword ptr [rbp - 0x17c], edi
	nop	
	mov	dword ptr [rbp - 0x154], esi
	mov	qword ptr [rbp - 0x60], rdx
	mov	qword ptr [rbp - 0x120], rcx
	mov	qword ptr [rbp - 0x88], r8
	mov	qword ptr [rbp - 0x48], r9
	mov	dword ptr [rbp - 0x184], ebx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], r11
	nop	
	mov	qword ptr [rbp - 0x138], r10
	mov	qword ptr [rbp - 0x140], rax
	mov	qword ptr [rbp - 0xa8], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], 0
	mov	edi, dword ptr [rbp - 0x17c]
	mov	rsi, r14
	mov	rsp, rsp
	call	extent_scan_init
	mov	rax, qword ptr [rbp - 0x140]
	mov	byte ptr [rax], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x121], 1
.label_682:
	lea	rdi, [rbp - 0x100]
	lea	rsi, [rsi]
	call	extent_scan_read
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x149], al
	test	byte ptr [rbp - 0x149], 1
	jne	.label_693
	mov	rbp, rbp
	test	byte ptr [rbp - 0xdf], 1
	mov	rsp, rsp
	je	.label_697
	mov	rsp, rsp
	jmp	.label_701
.label_697:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xe0], 1
	mov	rbp, rbp
	je	.label_702
	mov	rax, qword ptr [rbp - 0x140]
	mov	byte ptr [rax], 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x31], 0
	jmp	.label_672
.label_702:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.68
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x114], esi
	lea	rsi, [rsi]
	call	gettext
	xor	edi, edi
	mov	esi, 3
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	call	quotearg_n_style_colon
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, dword ptr [rbp - 0x114]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x31], 0
	jmp	.label_672
.label_693:
	nop	
	mov	byte ptr [rbp - 0x16d], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x16c], 0
.label_678:
	lea	rdi, [rdi]
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x16c]
	mov	rsp, rsp
	mov	edx, ecx
	cmp	rdx, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x17d], al
	jb	.label_687
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x16d]
	mov	byte ptr [rbp - 0x17d], al
.label_687:
	nop	
	mov	al, byte ptr [rbp - 0x17d]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_696
	lea	rdi, [rdi]
	jmp	.label_675
.label_696:
	mov	eax, dword ptr [rbp - 0x16c]
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xe8]
	lea	rdi, [rdi]
	jae	.label_703
	mov	eax, dword ptr [rbp - 0x16c]
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rbp, rbp
	imul	rcx, rcx, 0x18
	nop	
	add	rcx, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	nop	
	mov	qword ptr [rbp - 0x80], rcx
	mov	eax, dword ptr [rbp - 0x16c]
	mov	ecx, eax
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rbp - 0xd8]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	qword ptr [rbp - 0x68], rcx
	jmp	.label_707
.label_703:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x16c]
	add	eax, -1
	mov	dword ptr [rbp - 0x16c], eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x16c]
	mov	rbp, rbp
	mov	edx, eax
	lea	rsi, [rsi]
	imul	rdx, rdx, 0x18
	mov	rsp, rsp
	add	rdx, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx + 8]
	mov	qword ptr [rbp - 0x80], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], 0
.label_707:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x68]
	cmp	rax, rcx
	jge	.label_688
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	jge	.label_692
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rax
.label_692:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x68], rax
.label_688:
	mov	rax, qword ptr [rbp - 0x80]
	sub	rax, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x198], rax
	mov	byte ptr [rbp - 0x121], 0
	cmp	qword ptr [rbp - 0x198], 0
	nop	
	je	.label_684
	lea	rdi, [rdi]
	xor	edx, edx
	mov	edi, dword ptr [rbp - 0x17c]
	mov	rsi, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	call	lseek
	lea	rsi, [rsi]
	cmp	rax, 0
	jge	.label_710
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.69
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x70], esi
	call	gettext
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x90], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_674:
	lea	rdi, [rbp - 0x100]
	mov	rbp, rbp
	call	extent_scan_free
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x31], 0
	mov	rbp, rbp
	jmp	.label_672
.label_710:
	test	byte ptr [rbp - 0x16d], 1
	lea	rsi, [rsi]
	je	.label_690
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x184], 3
	nop	
	je	.label_695
.label_690:
	test	byte ptr [rbp - 0x16d], 1
	jne	.label_700
	cmp	dword ptr [rbp - 0x184], 1
	nop	
	je	.label_700
.label_695:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x154]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x138]
	cmp	dword ptr [rbp - 0x184], 3
	nop	
	sete	al
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x198]
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	lea	rsi, [rsi]
	call	create_hole
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_709
	mov	rbp, rbp
	jmp	.label_674
.label_709:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x121], 1
	lea	rsi, [rsi]
	jmp	.label_680
.label_700:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x198]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x148], rax
	test	byte ptr [rbp - 0x16d], 1
	lea	rsi, [rsi]
	je	.label_676
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x198]
	nop	
	jge	.label_689
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x50]
	nop	
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	jmp	.label_683
.label_689:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x198]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
.label_683:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	mov	qword ptr [rbp - 0x148], rax
.label_676:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x154]
	mov	rsi, qword ptr [rbp - 0x148]
	call	write_zeros
	test	al, 1
	mov	rbp, rbp
	jne	.label_698
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.70
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x6c], esi
	lea	rsi, [rsi]
	call	gettext
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x138]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x110], rax
	call	quotearg_n_style_colon
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x6c]
	nop	
	mov	rdx, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	lea	rdi, [rdi]
	jmp	.label_674
.label_698:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	jge	.label_694
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x130], rax
	jmp	.label_679
.label_694:
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x130], rax
.label_679:
	mov	rax, qword ptr [rbp - 0x130]
	nop	
	mov	qword ptr [rbp - 0x50], rax
.label_680:
	jmp	.label_684
.label_684:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0xa8], rax
	mov	byte ptr [rbp - 0x16d], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x28], rax
	mov	edi, dword ptr [rbp - 0x17c]
	mov	esi, dword ptr [rbp - 0x154]
	mov	rdx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x120]
	cmp	dword ptr [rbp - 0x184], 3
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x118], edi
	nop	
	mov	dword ptr [rbp - 0x150], esi
	mov	qword ptr [rbp - 0x168], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x178], rcx
	jne	.label_685
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_705
.label_685:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0xb0], rcx
	jmp	.label_705
.label_705:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	r9d, 1
	mov	rbp, rbp
	lea	rcx, [rbp - 0x58]
	lea	rdx, [rbp - 0xb1]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 0x138]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	r10d, dword ptr [rbp - 0x118]
	nop	
	mov	qword ptr [rbp - 0xc8], rdi
	lea	rdi, [rdi]
	mov	edi, r10d
	mov	r11d, dword ptr [rbp - 0x150]
	mov	qword ptr [rbp - 0x30], rsi
	mov	esi, r11d
	mov	rbx, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 0x160], rdx
	mov	rdx, rbx
	mov	r14, qword ptr [rbp - 0x178]
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	lea	rsi, [rsi]
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x108], r8
	lea	rsi, [rsi]
	mov	r8, rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rsp], rax
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rsp + 0x18], rax
	lea	rsi, [rsi]
	mov	r15, qword ptr [rbp - 0x160]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], r15
	call	sparse_copy
	mov	rbp, rbp
	test	al, 1
	nop	
	jne	.label_704
	jmp	.label_674
.label_704:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	je	.label_706
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xb1]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x121], al
.label_706:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x48]
	nop	
	jne	.label_673
	mov	byte ptr [rbp - 0xdf], 1
	lea	rdi, [rdi]
	jmp	.label_675
.label_673:
	nop	
	jmp	.label_708
.label_708:
	mov	eax, dword ptr [rbp - 0x16c]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 0x16c], eax
	mov	rbp, rbp
	jmp	.label_678
.label_675:
	lea	rdi, [rbp - 0x100]
	call	extent_scan_free
	mov	al, byte ptr [rbp - 0xdf]
	nop	
	xor	al, 0xff
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_682
.label_701:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x48]
	jl	.label_686
	test	byte ptr [rbp - 0x121], 1
	je	.label_677
.label_686:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x184], 1
	je	.label_691
	mov	edi, dword ptr [rbp - 0x154]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	call	ftruncate
	cmp	eax, 0
	nop	
	jne	.label_699
	jmp	.label_677
.label_691:
	mov	edi, dword ptr [rbp - 0x154]
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rsi, rax
	mov	rbp, rbp
	call	write_zeros
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_677
.label_699:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.66
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xcc], esi
	mov	rbp, rbp
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0x190], rax
	lea	rsi, [rsi]
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xcc]
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x31], 0
	nop	
	jmp	.label_672
.label_677:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x184], 3
	mov	rbp, rbp
	jne	.label_681
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	jge	.label_681
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x154]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0x50]
	mov	rdx, rax
	mov	rbp, rbp
	call	punch_hole
	nop	
	cmp	eax, 0
	jge	.label_681
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.71
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x9c], esi
	lea	rsi, [rsi]
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0x98], rax
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x9c]
	mov	rdx, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	byte ptr [rbp - 0x31], 0
	jmp	.label_672
.label_681:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x31], 1
.label_672:
	nop	
	mov	al, byte ptr [rbp - 0x31]
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x1a8
	nop	
	pop	rbx
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e140

	.globl sparse_copy
	.type sparse_copy, @function
sparse_copy:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	push	r15
	mov	rbp, rbp
	push	r14
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x108
	mov	al, r9b
	mov	r10, qword ptr [rbp + 0x30]
	mov	r11, qword ptr [rbp + 0x28]
	mov	rbx, qword ptr [rbp + 0x20]
	mov	r14, qword ptr [rbp + 0x18]
	nop	
	mov	r15, qword ptr [rbp + 0x10]
	mov	dword ptr [rbp - 0x2c], edi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb4], esi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc8], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0xf8], r8
	mov	rsp, rsp
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x39], al
	nop	
	mov	qword ptr [rbp - 0xe8], r15
	mov	qword ptr [rbp - 0x58], r14
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rbx
	nop	
	mov	qword ptr [rbp - 0xc0], r11
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd0], r10
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xd0]
	nop	
	mov	byte ptr [rcx], 0
	mov	rcx, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x112], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], 0
.label_712:
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_714
	mov	edi, dword ptr [rbp - 0x2c]
	mov	rsi, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0xa4], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rbp, rbp
	jae	.label_713
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_727
.label_713:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
.label_727:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	edi, dword ptr [rbp - 0xa4]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, rax
	lea	rdi, [rdi]
	call	read
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x68], 0
	jge	.label_738
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 4
	jne	.label_743
	mov	rsp, rsp
	jmp	.label_712
.label_743:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.72
	nop	
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xfc], esi
	nop	
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xfc]
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	nop	
	mov	byte ptr [rbp - 0x111], 0
	mov	rbp, rbp
	jmp	.label_716
.label_738:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], 0
	mov	rbp, rbp
	jne	.label_723
	mov	rsp, rsp
	jmp	.label_714
.label_723:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	nop	
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	sub	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rcx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xf8], 0
	je	.label_717
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_733
.label_717:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x90], rax
.label_733:
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0x108], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
.label_729:
	cmp	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	je	.label_724
	mov	al, byte ptr [rbp - 0x112]
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x91], al
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x88]
	cmp	rcx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	jae	.label_728
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
	lea	rsi, [rsi]
	jmp	.label_736
.label_728:
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x70], rax
.label_736:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
	cmp	qword ptr [rbp - 0xf8], 0
	je	.label_719
	cmp	qword ptr [rbp - 0x88], 0
	je	.label_719
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	call	is_nul
	and	al, 1
	mov	byte ptr [rbp - 0x112], al
.label_719:
	xor	eax, eax
	mov	cl, al
	nop	
	mov	dl, byte ptr [rbp - 0x112]
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	movzx	esi, dl
	cmp	eax, esi
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x49], cl
	mov	rsp, rsp
	je	.label_731
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xa0], 0
	setne	al
	nop	
	mov	byte ptr [rbp - 0x49], al
.label_731:
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], al
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	nop	
	cmp	rcx, qword ptr [rbp - 0x88]
	jne	.label_715
	mov	al, 1
	mov	rbp, rbp
	test	byte ptr [rbp - 0x112], 1
	mov	byte ptr [rbp - 0x59], al
	je	.label_726
.label_715:
	cmp	qword ptr [rbp - 0x88], 0
	mov	rbp, rbp
	setne	al
	lea	rsi, [rsi]
	xor	al, 0xff
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x59], al
.label_726:
	nop	
	mov	al, byte ptr [rbp - 0x59]
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0xd9], al
	test	byte ptr [rbp - 0x79], 1
	jne	.label_735
	test	byte ptr [rbp - 0xd9], 1
	je	.label_741
.label_735:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x79], 1
	lea	rsi, [rsi]
	jne	.label_711
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0xa0], rax
.label_711:
	test	byte ptr [rbp - 0x91], 1
	jne	.label_725
	mov	edi, dword ptr [rbp - 0xb4]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa0]
	nop	
	call	full_write
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	je	.label_734
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.73
	nop	
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x100], esi
	call	gettext
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x110], rax
	mov	rsp, rsp
	call	quotearg_style
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x100]
	mov	rdx, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	nop	
	mov	byte ptr [rbp - 0x111], 0
	jmp	.label_716
.label_734:
	mov	rbp, rbp
	jmp	.label_721
.label_725:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0xb4]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	al, byte ptr [rbp - 0x39]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	movzx	edx, al
	mov	rsp, rsp
	call	create_hole
	test	al, 1
	nop	
	jne	.label_730
	mov	byte ptr [rbp - 0x111], 0
	jmp	.label_716
.label_730:
	mov	rsp, rsp
	jmp	.label_721
.label_721:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0xa0], rax
	test	byte ptr [rbp - 0xd9], 1
	je	.label_720
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x88], 0
	jne	.label_718
	mov	qword ptr [rbp - 0x68], 0
.label_718:
	test	byte ptr [rbp - 0x79], 1
	je	.label_740
	nop	
	mov	qword ptr [rbp - 0x88], 0
	mov	rsp, rsp
	jmp	.label_742
.label_740:
	mov	qword ptr [rbp - 0xa0], 0
.label_742:
	jmp	.label_720
.label_720:
	jmp	.label_722
.label_741:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0xa0]
	sub	rax, qword ptr [rbp - 0x88]
	cmp	rcx, rax
	lea	rsi, [rsi]
	ja	.label_737
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rbp, rbp
	jmp	.label_732
.label_737:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.74
	mov	rsp, rsp
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rbp, rbp
	call	quotearg_style
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xec], edi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0xec]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x111], 0
	mov	rsp, rsp
	jmp	.label_716
.label_732:
	nop	
	jmp	.label_722
.label_722:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x68]
	sub	rcx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x108], rax
	lea	rdi, [rdi]
	jmp	.label_729
.label_724:
	mov	al, byte ptr [rbp - 0x112]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rcx], al
	jmp	.label_712
.label_714:
	test	byte ptr [rbp - 0x112], 1
	lea	rsi, [rsi]
	je	.label_739
	nop	
	mov	edi, dword ptr [rbp - 0xb4]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	al, byte ptr [rbp - 0x39]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	and	al, 1
	movzx	edx, al
	call	create_hole
	mov	rsp, rsp
	test	al, 1
	jne	.label_739
	mov	byte ptr [rbp - 0x111], 0
	jmp	.label_716
.label_739:
	mov	byte ptr [rbp - 0x111], 1
.label_716:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x111]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	add	rsp, 0x108
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40e840

	.globl fchmod_or_lchmod
	.type fchmod_or_lchmod, @function
fchmod_or_lchmod:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	cmp	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	jg	.label_744
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x14]
	call	fchmod
	nop	
	mov	dword ptr [rbp - 8], eax
	jmp	.label_745
.label_744:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	call	chmod
	nop	
	mov	dword ptr [rbp - 8], eax
.label_745:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40e8b0

	.globl extent_scan_free
	.type extent_scan_free, @function
extent_scan_free:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x28], 0
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x18], 0
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e900

	.globl create_hole
	.type create_hole, @function
create_hole:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, dl
	mov	rbp, rbp
	mov	edx, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], edi
	nop	
	mov	qword ptr [rbp - 0x30], rsi
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11], al
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rcx
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x40]
	call	lseek
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	jge	.label_748
	mov	rbp, rbp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.69
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x44], esi
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	call	quotearg_style
	nop	
	xor	edi, edi
	nop	
	mov	esi, dword ptr [rbp - 0x44]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, rax
	nop	
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x31], 0
	mov	rbp, rbp
	jmp	.label_747
.label_748:
	nop	
	test	byte ptr [rbp - 0x11], 1
	lea	rsi, [rsi]
	je	.label_746
	mov	edi, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsi, rax
	call	punch_hole
	lea	rdi, [rdi]
	cmp	eax, 0
	jge	.label_746
	lea	rsi, [rsi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.71
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 4], esi
	mov	rbp, rbp
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, rax
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x31], 0
	nop	
	jmp	.label_747
.label_746:
	mov	byte ptr [rbp - 0x31], 1
.label_747:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x31]
	lea	rsi, [rsi]
	and	al, 1
	movzx	eax, al
	nop	
	add	rsp, 0x50
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ea60

	.globl write_zeros
	.type write_zeros, @function
write_zeros:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], edi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [word ptr [write_zeros.zeros]],  0
	jne	.label_749
	mov	eax, 1
	lea	rsi, [rsi]
	mov	esi, eax
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [write_zeros.nz]]
	call	calloc
	mov	qword ptr [word ptr [write_zeros.zeros]],  rax
	mov	rbp, rbp
	cmp	qword ptr [word ptr [write_zeros.zeros]],  0
	mov	rsp, rsp
	jne	.label_756
	movabs	rax, OFFSET FLAT:write_zeros.fallback
	nop	
	mov	qword ptr [word ptr [write_zeros.zeros]],  rax
	mov	qword ptr [word ptr [write_zeros.nz]],  0x400
.label_756:
	nop	
	jmp	.label_749
.label_749:
	jmp	.label_753
.label_753:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	je	.label_750
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [write_zeros.nz]]
	cmp	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	jae	.label_754
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [write_zeros.nz]]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_752
.label_754:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
.label_752:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [write_zeros.zeros]]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	full_write
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	je	.label_755
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], 0
	jmp	.label_751
.label_755:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x18], rcx
	lea	rdi, [rdi]
	jmp	.label_753
.label_750:
	mov	byte ptr [rbp - 9], 1
.label_751:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ebb0

	.globl punch_hole
	.type punch_hole, @function
punch_hole:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	eax, 3
	mov	dword ptr [rbp - 0xc], edi
	nop	
	mov	qword ptr [rbp - 8], rsi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	esi, eax
	call	fallocate
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1c], 0
	mov	rbp, rbp
	jge	.label_757
	nop	
	call	__errno_location
	lea	rdi, [rdi]
	mov	edi, dword ptr [rax]
	call	is_ENOTSUP
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_758
	lea	rsi, [rsi]
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0x26
	nop	
	jne	.label_757
.label_758:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], 0
.label_757:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ec50

	.globl is_ENOTSUP
	.type is_ENOTSUP, @function
is_ENOTSUP:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	al, 1
	nop	
	mov	dword ptr [rbp - 8], edi
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 8], 0x5f
	mov	byte ptr [rbp - 1], al
	nop	
	je	.label_759
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], cl
	lea	rsi, [rsi]
	jmp	.label_759
.label_759:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ec90

	.globl is_nul
	.type is_nul, @function
is_nul:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_768
	mov	byte ptr [rbp - 1], 1
	nop	
	jmp	.label_762
.label_768:
	jmp	.label_764
.label_764:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	and	rax, 0
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_766
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	byte ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_761
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_762
.label_761:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	jne	.label_760
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_762
.label_760:
	jmp	.label_764
.label_766:
	jmp	.label_763
.label_763:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], cl
	nop	
	cmp	byte ptr [rbp - 0x21], 0
	lea	rdi, [rdi]
	je	.label_765
	nop	
	mov	byte ptr [rbp - 1], 0
	jmp	.label_762
.label_765:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	sub	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	jne	.label_769
	mov	byte ptr [rbp - 1], 1
	lea	rdi, [rdi]
	jmp	.label_762
.label_769:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0xf
	nop	
	cmp	rax, 0
	jne	.label_767
	jmp	.label_770
.label_767:
	mov	rsp, rsp
	jmp	.label_763
.label_770:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	call	memcmp
	cmp	eax, 0
	mov	rsp, rsp
	sete	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
.label_762:
	mov	al, byte ptr [rbp - 1]
	nop	
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ee10

	.globl owner_failure_ok
	.type owner_failure_ok, @function
owner_failure_ok:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 1
	je	.label_772
	call	__errno_location
	xor	ecx, ecx
	mov	rsp, rsp
	mov	dl, cl
	cmp	dword ptr [rax], 0x16
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], dl
	jne	.label_771
.label_772:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x1b]
	xor	cl, 0xff
	mov	rbp, rbp
	mov	byte ptr [rbp - 9], cl
.label_771:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ee70

	.globl forget_created
	.type forget_created, @function
forget_created:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	nop	
	lea	rax, [rbp - 0x30]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [src_to_dest]]
	mov	rsi, rax
	call	hash_delete
	nop	
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_773
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, rax
	call	src_to_dest_free
.label_773:
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40eef0

	.globl src_to_dest_free
	.type src_to_dest_free, @function
src_to_dest_free:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	free
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ef40

	.globl src_to_dest_lookup
	.type src_to_dest_lookup, @function
src_to_dest_lookup:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	rbp, rbp
	lea	rax, [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [src_to_dest]]
	mov	rsp, rsp
	mov	rsi, rax
	call	hash_lookup
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	nop	
	je	.label_774
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_775
.label_774:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_775
.label_775:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x40
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40efd0

	.globl remember_copied
	.type remember_copied, @function
remember_copied:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	eax, 0x18
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 8], rdx
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	xmalloc
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	xstrdup
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	mov	rdi,  qword ptr [word ptr [src_to_dest]]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, rax
	call	hash_insert
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_777
	call	xalloc_die
.label_777:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	nop	
	je	.label_778
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	src_to_dest_free
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_776
.label_778:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], 0
.label_776:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40f0c0

	.globl hash_init
	.type hash_init, @function
hash_init:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	eax, 0x67
	nop	
	mov	edi, eax
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:src_to_dest_hash
	movabs	rcx, OFFSET FLAT:src_to_dest_compare
	movabs	r8, OFFSET FLAT:src_to_dest_free
	lea	rsi, [rsi]
	call	hash_initialize
	mov	rsp, rsp
	mov	qword ptr [word ptr [src_to_dest]],  rax
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [src_to_dest]],  0
	jne	.label_779
	call	xalloc_die
.label_779:
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f130

	.globl src_to_dest_hash
	.type src_to_dest_hash, @function
src_to_dest_hash:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rsi]
	xor	ecx, ecx
	mov	edx, ecx
	mov	rbp, rbp
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f170

	.globl src_to_dest_compare
	.type src_to_dest_compare, @function
src_to_dest_compare:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	cmp	rsi, qword ptr [rdi]
	mov	byte ptr [rbp - 9], cl
	nop	
	jne	.label_780
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	sete	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], dl
.label_780:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 9]
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	edx, 1
	test	al, 1
	nop	
	cmovne	ecx, edx
	mov	rsp, rsp
	cmp	ecx, 0
	setne	al
	nop	
	and	al, 1
	movzx	eax, al
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f210
	.globl forget_all
	.type forget_all, @function
forget_all:

	nop
	push	rbp
	mov	rbp, rsp
	mov	rdi,  qword ptr [word ptr [src_to_dest]]
	call	hash_free
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40f230

	.globl extent_scan_init
	.type extent_scan_init, @function
extent_scan_init:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 8], rsi
	mov	edi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	dword ptr [rsi], edi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rsi + 0x18], 0
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x28], 0
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rsi + 8], 0
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + 0x20], 0
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + 0x21], 0
	lea	rsi, [rsi]
	call	extent_need_sync
	xor	edi, edi
	mov	ecx, 1
	test	al, 1
	cmovne	edi, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	dword ptr [rsi + 0x10], edi
	mov	rsp, rsp
	add	rsp, 0x10
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f2c0

	.globl extent_need_sync
	.type extent_need_sync, @function
extent_need_sync:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f2e0

	.globl extent_scan_read
	.type extent_scan_read, @function
extent_scan_read:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x1060
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1030], rdi
	nop	
	mov	dword ptr [rbp - 0x1044], 0
	mov	rdi, qword ptr [rbp - 0x1030]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 0x28]
	mov	qword ptr [rbp - 8], rdi
.label_790:
	mov	eax, 0xc020660b
	mov	esi, eax
	mov	rcx, -1
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, 0x1000
	nop	
	lea	rdi, [rbp - 0x1008]
	mov	r8, rdi
	mov	qword ptr [rbp - 0x1020], r8
	nop	
	mov	r8, qword ptr [rbp - 0x1020]
	nop	
	add	r8, 0x20
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1040], r8
	mov	qword ptr [rbp - 0x1050], rsi
	mov	esi, eax
	mov	qword ptr [rbp - 0x1058], rcx
	call	memset
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x1030]
	mov	rcx, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rbp - 0x1020]
	nop	
	mov	qword ptr [rdx], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x1030]
	mov	eax, dword ptr [rcx + 0x10]
	mov	rcx, qword ptr [rbp - 0x1020]
	mov	dword ptr [rcx + 0x10], eax
	mov	rcx, qword ptr [rbp - 0x1020]
	mov	dword ptr [rcx + 0x18], 0x48
	mov	rcx, qword ptr [rbp - 0x1030]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x1058]
	sub	rdx, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x1020]
	mov	qword ptr [rcx + 8], rdx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x1030]
	mov	edi, dword ptr [rcx]
	nop	
	mov	rdx, qword ptr [rbp - 0x1020]
	mov	rsi, qword ptr [rbp - 0x1050]
	lea	rdi, [rdi]
	mov	al, 0
	call	ioctl
	cmp	eax, 0
	jge	.label_805
	mov	rax, qword ptr [rbp - 0x1030]
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	jne	.label_806
	mov	rax, qword ptr [rbp - 0x1030]
	nop	
	mov	byte ptr [rax + 0x20], 1
.label_806:
	mov	byte ptr [rbp - 0x1021], 0
	jmp	.label_788
.label_805:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1020]
	cmp	dword ptr [rax + 0x14], 0
	jne	.label_793
	mov	rax, qword ptr [rbp - 0x1030]
	mov	byte ptr [rax + 0x21], 1
	nop	
	mov	rax, qword ptr [rbp - 0x1030]
	mov	rsp, rsp
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x1021], cl
	jmp	.label_788
.label_793:
	mov	rax, -1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x1030]
	mov	rcx, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x1020]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rdx + 0x14]
	mov	edx, esi
	mov	rsp, rsp
	sub	rax, rdx
	cmp	rcx, rax
	lea	rsi, [rsi]
	ja	.label_803
	jmp	.label_792
.label_803:
	movabs	rdi, OFFSET FLAT:.str_3
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.1_2
	lea	rsi, [rsi]
	mov	edx, 0x7e
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.extent_scan_read
	call	__assert_fail
.label_792:
	mov	eax, 0x18
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x1020]
	mov	eax, dword ptr [rdx + 0x14]
	mov	rbp, rbp
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x1030]
	nop	
	add	rdx, qword ptr [rsi + 0x18]
	mov	rsp, rsp
	mov	qword ptr [rsi + 0x18], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x1030]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0x28]
	lea	rdi, [rdi]
	sub	rdx, rsi
	nop	
	mov	rax, rdx
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x1060], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1030]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x1030]
	mov	rsi, qword ptr [rsi + 0x18]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	xnrealloc
	mov	rcx, qword ptr [rbp - 0x1030]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x1030]
	nop	
	mov	rax, qword ptr [rax + 0x28]
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rbp - 0x1060], 0x18
	nop	
	add	rax, rcx
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0x1014], 0
	nop	
	mov	dword ptr [rbp - 0x1014], 0
.label_791:
	mov	eax, dword ptr [rbp - 0x1014]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x1020]
	mov	rsp, rsp
	cmp	eax, dword ptr [rcx + 0x14]
	jae	.label_781
	movabs	rax, 0x7fffffffffffffff
	mov	ecx, dword ptr [rbp - 0x1014]
	mov	rbp, rbp
	mov	edx, ecx
	imul	rdx, rdx, 0x38
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x1040]
	nop	
	mov	rdx, qword ptr [rdx]
	mov	ecx, dword ptr [rbp - 0x1014]
	mov	rbp, rbp
	mov	esi, ecx
	imul	rsi, rsi, 0x38
	add	rsi, qword ptr [rbp - 0x1040]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rsi + 0x10]
	cmp	rdx, rax
	ja	.label_798
	jmp	.label_785
.label_798:
	movabs	rdi, OFFSET FLAT:.str.2_2
	movabs	rsi, OFFSET FLAT:.str.1_2
	mov	edx, 0x8d
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.extent_scan_read
	call	__assert_fail
.label_785:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1044], 0
	nop	
	je	.label_782
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	ecx, dword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x1014]
	mov	eax, edx
	imul	rax, rax, 0x38
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x1040]
	mov	rsp, rsp
	mov	edx, dword ptr [rax + 0x28]
	and	edx, 0xfffffffe
	cmp	ecx, edx
	mov	rbp, rbp
	jne	.label_782
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	add	rax, qword ptr [rcx + 8]
	mov	edx, dword ptr [rbp - 0x1014]
	lea	rdi, [rdi]
	mov	ecx, edx
	imul	rcx, rcx, 0x38
	nop	
	add	rcx, qword ptr [rbp - 0x1040]
	cmp	rax, qword ptr [rcx]
	jne	.label_782
	mov	eax, dword ptr [rbp - 0x1014]
	mov	ecx, eax
	mov	rsp, rsp
	imul	rcx, rcx, 0x38
	add	rcx, qword ptr [rbp - 0x1040]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 8]
	add	rcx, qword ptr [rdx + 8]
	mov	qword ptr [rdx + 8], rcx
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1014]
	mov	ecx, eax
	imul	rcx, rcx, 0x38
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x1040]
	mov	eax, dword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	dword ptr [rcx + 0x10], eax
	jmp	.label_797
.label_782:
	nop	
	cmp	dword ptr [rbp - 0x1044], 0
	lea	rsi, [rsi]
	jne	.label_783
	mov	rax, qword ptr [rbp - 0x1030]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x1014]
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsp, rsp
	imul	rdx, rdx, 0x38
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x1040]
	cmp	rax, qword ptr [rdx]
	lea	rsi, [rsi]
	ja	.label_789
.label_783:
	nop	
	cmp	dword ptr [rbp - 0x1044], 0
	je	.label_800
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	add	rax, qword ptr [rcx + 8]
	mov	edx, dword ptr [rbp - 0x1014]
	mov	rbp, rbp
	mov	ecx, edx
	mov	rbp, rbp
	imul	rcx, rcx, 0x38
	add	rcx, qword ptr [rbp - 0x1040]
	cmp	rax, qword ptr [rcx]
	nop	
	jbe	.label_800
.label_789:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1044], 0
	mov	rbp, rbp
	jne	.label_795
	mov	rax, qword ptr [rbp - 0x1030]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1038], rax
	mov	rsp, rsp
	jmp	.label_794
.label_795:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x1038], rax
.label_794:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1038]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x1014]
	mov	rsp, rsp
	mov	edx, ecx
	imul	rdx, rdx, 0x38
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x1040]
	sub	rax, qword ptr [rdx]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1010], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1010]
	mov	ecx, dword ptr [rbp - 0x1014]
	lea	rsi, [rsi]
	mov	edx, ecx
	imul	rdx, rdx, 0x38
	add	rdx, qword ptr [rbp - 0x1040]
	cmp	rax, qword ptr [rdx + 0x10]
	jae	.label_784
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1030]
	cmp	qword ptr [rax + 8], 0
	jne	.label_799
	mov	rax, qword ptr [rbp - 0x1030]
	mov	byte ptr [rax + 0x20], 1
.label_799:
	mov	byte ptr [rbp - 0x1021], 0
	lea	rdi, [rdi]
	jmp	.label_788
.label_784:
	mov	rax, qword ptr [rbp - 0x1038]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x1014]
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	imul	rdx, rdx, 0x38
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x1040]
	mov	rbp, rbp
	mov	qword ptr [rdx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1010]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x1014]
	mov	edx, ecx
	imul	rdx, rdx, 0x38
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x1040]
	mov	rsi, qword ptr [rdx + 0x10]
	sub	rsi, rax
	mov	rbp, rbp
	mov	qword ptr [rdx + 0x10], rsi
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x1014]
	nop	
	add	ecx, -1
	mov	dword ptr [rbp - 0x1014], ecx
	jmp	.label_787
.label_800:
	mov	rax, qword ptr [rbp - 0x1030]
	mov	rax, qword ptr [rax + 0x28]
	mov	ecx, dword ptr [rbp - 0x1044]
	mov	edx, ecx
	imul	rdx, rdx, 0x18
	lea	rsi, [rsi]
	add	rax, rdx
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x1014]
	nop	
	mov	eax, ecx
	imul	rax, rax, 0x38
	nop	
	add	rax, qword ptr [rbp - 0x1040]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx], rax
	mov	ecx, dword ptr [rbp - 0x1014]
	mov	eax, ecx
	imul	rax, rax, 0x38
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x1040]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 8], rax
	mov	ecx, dword ptr [rbp - 0x1014]
	lea	rdi, [rdi]
	mov	eax, ecx
	mov	rbp, rbp
	imul	rax, rax, 0x38
	nop	
	add	rax, qword ptr [rbp - 0x1040]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x28]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x10], ecx
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x1044]
	mov	rsp, rsp
	add	ecx, 1
	nop	
	mov	dword ptr [rbp - 0x1044], ecx
	jmp	.label_797
.label_797:
	mov	rsp, rsp
	jmp	.label_787
.label_787:
	mov	eax, dword ptr [rbp - 0x1014]
	add	eax, 1
	mov	dword ptr [rbp - 0x1014], eax
	jmp	.label_791
.label_781:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	ecx, dword ptr [rax + 0x10]
	mov	rsp, rsp
	and	ecx, 1
	cmp	ecx, 0
	nop	
	je	.label_796
	mov	rax, qword ptr [rbp - 0x1030]
	nop	
	mov	byte ptr [rax + 0x21], 1
.label_796:
	cmp	dword ptr [rbp - 0x1044], 0x48
	lea	rdi, [rdi]
	jbe	.label_802
	mov	rax, qword ptr [rbp - 0x1030]
	test	byte ptr [rax + 0x21], 1
	jne	.label_802
	mov	rax, qword ptr [rbp - 0x1030]
	nop	
	mov	rax, qword ptr [rax + 0x28]
	mov	ecx, dword ptr [rbp - 0x1044]
	add	ecx, -1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1044], ecx
	nop	
	mov	ecx, ecx
	nop	
	mov	edx, ecx
	lea	rsi, [rsi]
	imul	rdx, rdx, 0x18
	add	rax, rdx
	nop	
	add	rax, -0x18
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_802:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1044]
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x1030]
	mov	qword ptr [rdx + 0x18], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x1030]
	test	byte ptr [rcx + 0x21], 1
	je	.label_801
	lea	rsi, [rsi]
	jmp	.label_786
.label_801:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x1030]
	mov	qword ptr [rcx + 8], rax
	cmp	dword ptr [rbp - 0x1044], 0x48
	jb	.label_804
	mov	rbp, rbp
	jmp	.label_786
.label_804:
	jmp	.label_790
.label_786:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1021], 1
.label_788:
	nop	
	mov	al, byte ptr [rbp - 0x1021]
	lea	rsi, [rsi]
	and	al, 1
	nop	
	movzx	eax, al
	add	rsp, 0x1060
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40fad0

	.globl force_linkat
	.type force_linkat, @function
force_linkat:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x170
	lea	rdi, [rdi]
	mov	al, r9b
	nop	
	mov	r9d, dword ptr [rbp + 0x10]
	mov	dword ptr [rbp - 0x24], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rsi
	nop	
	mov	dword ptr [rbp - 0x2c], edx
	mov	qword ptr [rbp - 0x170], rcx
	mov	dword ptr [rbp - 0x50], r8d
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x161], al
	mov	dword ptr [rbp - 8], r9d
	nop	
	cmp	dword ptr [rbp - 8], 0
	jge	.label_811
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x2c]
	nop	
	mov	rcx, qword ptr [rbp - 0x170]
	mov	r8d, dword ptr [rbp - 0x50]
	call	linkat
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_818
	mov	rsp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 0x28], eax
	lea	rdi, [rdi]
	jmp	.label_809
.label_818:
	nop	
	call	__errno_location
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x28], ecx
.label_809:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 8], eax
.label_811:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x161], 1
	mov	rsp, rsp
	je	.label_815
	nop	
	cmp	dword ptr [rbp - 8], 0x11
	nop	
	je	.label_807
.label_815:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x4c], eax
	nop	
	jmp	.label_810
.label_807:
	lea	rsi, [rbp - 0x160]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x170]
	mov	rsp, rsp
	call	samedir_template
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	lea	rsi, [rsi]
	jne	.label_816
	mov	rsp, rsp
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x4c], ecx
	mov	rsp, rsp
	jmp	.label_810
.label_816:
	mov	rbp, rbp
	xor	esi, esi
	movabs	rcx, OFFSET FLAT:try_link
	mov	eax, 6
	lea	rdi, [rdi]
	mov	r8d, eax
	nop	
	lea	rdx, [rbp - 0x20]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20], eax
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	try_tempname_len
	cmp	eax, 0
	je	.label_817
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_808
.label_817:
	mov	edi, dword ptr [rbp - 0x2c]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	edx, dword ptr [rbp - 0x2c]
	mov	rcx, qword ptr [rbp - 0x170]
	call	renameat
	cmp	eax, 0
	jne	.label_812
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], eax
	lea	rsi, [rsi]
	jmp	.label_814
.label_812:
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], ecx
.label_814:
	mov	eax, dword ptr [rbp - 0x54]
	xor	edx, edx
	mov	dword ptr [rbp - 4], eax
	mov	edi, dword ptr [rbp - 0x2c]
	mov	rsi, qword ptr [rbp - 0x38]
	call	unlinkat
	mov	dword ptr [rbp - 0x3c], eax
.label_808:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x160]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, rax
	je	.label_813
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_813:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4c], eax
.label_810:
	nop	
	mov	eax, dword ptr [rbp - 0x4c]
	add	rsp, 0x170
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fcf0

	.globl samedir_template
	.type samedir_template, @function
samedir_template:
	nop	
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	last_component
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	sub	rax, rsi
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 9
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], 0x100
	lea	rsi, [rsi]
	ja	.label_821
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_819
.label_821:
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	call	malloc
	nop	
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_820
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	jmp	.label_822
.label_820:
	mov	rbp, rbp
	jmp	.label_819
.label_819:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	call	mempcpy
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:simple_pattern
	mov	esi, ecx
	mov	rdi, rax
	call	strcpy
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 8], rax
.label_822:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fde0

	.globl try_link
	.type try_link, @function
try_link:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rsi]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rax + 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	mov	r8d, dword ptr [rax + 0x14]
	call	linkat
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fe40

	.globl force_symlinkat
	.type force_symlinkat, @function
force_symlinkat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x150
	mov	al, cl
	mov	qword ptr [rbp - 0x118], rdi
	nop	
	mov	dword ptr [rbp - 0x13c], esi
	mov	qword ptr [rbp - 0x148], rdx
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x119], al
	mov	dword ptr [rbp - 0x140], r8d
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x140], 0
	mov	rsp, rsp
	jge	.label_823
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x13c]
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	call	symlinkat
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_830
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x124], eax
	nop	
	jmp	.label_833
.label_830:
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x124], ecx
.label_833:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x124]
	mov	dword ptr [rbp - 0x140], eax
.label_823:
	test	byte ptr [rbp - 0x119], 1
	je	.label_831
	cmp	dword ptr [rbp - 0x140], 0x11
	je	.label_834
.label_831:
	mov	eax, dword ptr [rbp - 0x140]
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_824
.label_834:
	lea	rsi, [rbp - 0x110]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	call	samedir_template
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_832
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], ecx
	lea	rsi, [rsi]
	jmp	.label_824
.label_832:
	lea	rdi, [rdi]
	xor	esi, esi
	movabs	rcx, OFFSET FLAT:try_symlink
	lea	rdi, [rdi]
	mov	eax, 6
	mov	rbp, rbp
	mov	r8d, eax
	lea	rdx, [rbp - 0x138]
	mov	rdi, qword ptr [rbp - 0x118]
	mov	qword ptr [rbp - 0x138], rdi
	mov	eax, dword ptr [rbp - 0x13c]
	mov	dword ptr [rbp - 0x130], eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	try_tempname_len
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_829
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x120], ecx
	jmp	.label_827
.label_829:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x13c]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x13c]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x148]
	call	renameat
	cmp	eax, 0
	nop	
	je	.label_826
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	xor	edx, edx
.label_2037:
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x120], ecx
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x13c]
	mov	rsi, qword ptr [rbp - 8]
	call	unlinkat
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_828
.label_826:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x120], 0xffffffff
.label_828:
	jmp	.label_827
.label_827:
	lea	rax, [rbp - 0x110]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	rcx, rax
	je	.label_825
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	free
.label_825:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x120]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], eax
.label_824:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	add	rsp, 0x150
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x410080

	.globl try_symlink
	.type try_symlink, @function
try_symlink:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rsi + 8]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	symlinkat
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4100d0

	.globl copy_acl
	.type copy_acl, @function
copy_acl:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x2c], esi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rdx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], ecx
	mov	dword ptr [rbp - 0x1c], r8d
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	esi, dword ptr [rbp - 0x2c]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x28]
	call	qcopy_acl
	mov	dword ptr [rbp - 0x18], eax
	mov	ecx, eax
	sub	eax, -2
	mov	dword ptr [rbp - 0x14], ecx
	mov	dword ptr [rbp - 0x24], eax
	je	.label_837
	mov	rbp, rbp
	jmp	.label_838
.label_838:
	mov	eax, dword ptr [rbp - 0x14]
	sub	eax, -1
	nop	
	mov	dword ptr [rbp - 0x20], eax
	je	.label_836
	lea	rdi, [rdi]
	jmp	.label_839
.label_837:
	call	__errno_location
	nop	
	mov	esi, dword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], esi
	nop	
	call	quote
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_4
	mov	esi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	nop	
	jmp	.label_835
.label_836:
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.1_1
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x30], esi
	lea	rdi, [rdi]
	call	gettext
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	call	quote
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, rax
	nop	
	mov	al, 0
	call	error
	nop	
	jmp	.label_835
.label_839:
	lea	rsi, [rsi]
	jmp	.label_835
.label_835:
	nop	
	mov	eax, dword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x40
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4101e0

	.globl set_acl
	.type set_acl, @function
set_acl:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x14]
	mov	edx, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	qset_acl
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x18], 0
	je	.label_840
	mov	rsp, rsp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_2
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], esi
	lea	rsi, [rsi]
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	call	quote
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0xc]
	nop	
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
.label_840:
	nop	
	mov	eax, dword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x410290

	.globl areadlink_with_size
	.type areadlink_with_size, @function
areadlink_with_size:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x30], rdi
	nop	
	mov	qword ptr [rbp - 0x48], rsi
	nop	
	mov	qword ptr [rbp - 0x68], 0x400
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], 0x2000
	nop	
	mov	rsi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	cmp	rsi, qword ptr [rbp - 0x50]
	jae	.label_846
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_843
.label_846:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
.label_843:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	jae	.label_851
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_844
.label_851:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x40], rax
.label_844:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
.label_849:
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_841
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], 0
	nop	
	jmp	.label_842
.label_841:
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	readlink
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x70], 0
	mov	rsp, rsp
	jge	.label_848
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x22
	mov	rbp, rbp
	je	.label_848
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], ecx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	ecx, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x1c], ecx
	mov	rsp, rsp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	mov	rbp, rbp
	jmp	.label_842
.label_848:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_847
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_842
.label_847:
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	free
	movabs	rdi, 0x3fffffffffffffff
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], rdi
	ja	.label_853
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	shl	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_845
.label_853:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x38], rax
	jae	.label_850
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	jmp	.label_852
.label_850:
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0xc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_842
.label_852:
	jmp	.label_845
.label_845:
	lea	rdi, [rdi]
	jmp	.label_849
.label_842:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rsp, 0x70
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4104d0

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
	.align	32
	#Procedure 0x4104f0

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
.label_858:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_854
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
	jne	.label_855
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	jne	.label_859
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_861
.label_859:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_864
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_856
.label_864:
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_860
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
	je	.label_862
.label_860:
	nop	
	mov	byte ptr [rbp - 0x21], 1
.label_862:
	lea	rsi, [rsi]
	jmp	.label_856
.label_856:
	mov	rbp, rbp
	jmp	.label_865
.label_865:
	mov	rsp, rsp
	jmp	.label_855
.label_855:
	nop	
	jmp	.label_857
.label_857:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	jmp	.label_858
.label_854:
	test	byte ptr [rbp - 0x21], 1
	je	.label_863
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], -2
	jmp	.label_861
.label_863:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_861:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsp, 0x50
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4106a0

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
	jne	.label_866
	movabs	rdi, OFFSET FLAT:.str_5
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
	nop	
	jmp	.label_867
.label_866:
	nop	
	movabs	rdi, OFFSET FLAT:.str.1_3
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
.label_867:
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
	.align	32
	#Procedure 0x410780

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	nop	
	movabs	rax, OFFSET FLAT:.str.2_3
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
.label_870:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rax*8], 0
	lea	rsi, [rsi]
	je	.label_871
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_872
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
	je	.label_869
.label_872:
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
	movabs	rsi, OFFSET FLAT:.str.3_1
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
	jmp	.label_873
.label_869:
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
	movabs	rsi, OFFSET FLAT:.str.4_1
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
.label_873:
	jmp	.label_868
.label_868:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_870
.label_871:
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
	.align	32
	#Procedure 0x410930

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
	jl	.label_874
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_875
.label_874:
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
.label_875:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4109f0
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
.label_878:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	je	.label_880
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
	jne	.label_877
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_876
.label_877:
	lea	rdi, [rdi]
	jmp	.label_879
.label_879:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_878
.label_880:
	nop	
	mov	qword ptr [rbp - 8], 0
.label_876:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410ac0

	.globl set_simple_backup_suffix
	.type set_simple_backup_suffix, @function
set_simple_backup_suffix:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_881
	nop	
	movabs	rdi, OFFSET FLAT:.str_6
	call	getenv
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
.label_881:
	nop	
	cmp	qword ptr [rbp - 8], 0
	je	.label_882
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_882
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	call	last_component
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	cmp	rdi, rax
	jne	.label_882
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_883
.label_882:
	movabs	rax, OFFSET FLAT:.str.1_4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_883
.label_883:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [simple_backup_suffix]],  rax
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410b80

	.globl backupfile_internal
	.type backupfile_internal, @function
backupfile_internal:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	lea	rsi, [rsi]
	mov	al, cl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rsi
	mov	dword ptr [rbp - 0x24], edx
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	rdi, qword ptr [rbp - 0x38]
	call	last_component
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	sub	rax, rsi
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x38]
	add	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rax
	lea	rdi, [rdi]
	call	strlen
	nop	
	mov	rsi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	add	rsi, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rsi
	cmp	qword ptr [word ptr [simple_backup_suffix]],  0
	jne	.label_896
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edi, eax
	lea	rdi, [rdi]
	call	set_simple_backup_suffix
.label_896:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [simple_backup_suffix]]
	lea	rdi, [rdi]
	call	strlen
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
	cmp	qword ptr [rbp - 0x88], 9
	jae	.label_894
	mov	qword ptr [rbp - 0x88], 9
.label_894:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x30]
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rax
	nop	
	cmp	qword ptr [rbp - 0x90], 0
	jne	.label_901
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 0x78], rax
	nop	
	jmp	.label_886
.label_901:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x28], 0xffffffff
	mov	qword ptr [rbp - 0x40], 0
.label_897:
	mov	rdi, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, 1
	lea	rdi, [rdi]
	mov	rdx, rax
	call	memcpy
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x24], 1
	nop	
	jne	.label_892
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x98]
	nop	
	mov	rsi,  qword ptr [word ptr [simple_backup_suffix]]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	memcpy
	lea	rsi, [rsi]
	jmp	.label_887
.label_892:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, rsp
	lea	rsi, [rbp - 0x28]
	mov	qword ptr [rax], rsi
	mov	rbp, rbp
	lea	rsi, [rbp - 0x90]
	lea	rsi, [rsi]
	lea	r9, [rbp - 0x20]
	mov	rbp, rbp
	call	numbered_backup
	mov	edi, eax
	nop	
	mov	ecx, edi
	mov	rbp, rbp
	sub	eax, 3
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], rcx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], eax
	lea	rsi, [rsi]
	ja	.label_888
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_885]]
	lea	rdi, [rdi]
	jmp	rcx
.label_2028:
	lea	rdi, [rdi]
	jmp	.label_888
.label_2029:
	nop	
	cmp	dword ptr [rbp - 0x24], 2
	jne	.label_889
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], 1
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x98]
	mov	rsi,  qword ptr [word ptr [simple_backup_suffix]]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	memcpy
.label_889:
	jmp	.label_890
.label_890:
	mov	rbp, rbp
	mov	edx, 0x7e
	lea	rdi, [rdi]
	lea	r8, [rbp - 0x40]
	nop	
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rsi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x28]
	call	check_extension
	jmp	.label_888
.label_2030:
	mov	rdi, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_886
.label_888:
	lea	rdi, [rdi]
	jmp	.label_887
.label_887:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x11], 1
	nop	
	jne	.label_893
	mov	rsp, rsp
	jmp	.label_891
.label_893:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x28], 0
	jge	.label_899
	nop	
	mov	dword ptr [rbp - 0x28], 0xffffff9c
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], 0
.label_899:
	mov	edi, 0xffffff9c
	mov	eax, 1
	xor	ecx, ecx
	nop	
	cmp	dword ptr [rbp - 0x24], 1
	lea	rsi, [rsi]
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x5c], eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x90]
	nop	
	add	r8, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	mov	rcx, r8
	lea	rdi, [rdi]
	mov	r8d, eax
	lea	rdi, [rdi]
	call	renameatu
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_895
	mov	rbp, rbp
	jmp	.label_891
.label_895:
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x48], ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x48], 0x11
	lea	rsi, [rsi]
	je	.label_900
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_884
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	closedir
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44], eax
.label_884:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x90]
	call	free
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x6c], eax
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	rsp, rsp
	mov	dword ptr [rax], ecx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_886
.label_900:
	jmp	.label_897
.label_891:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_898
	mov	rdi, qword ptr [rbp - 0x20]
	call	closedir
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], eax
.label_898:
	mov	rax, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
.label_886:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	add	rsp, 0xb0
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410fb0

	.globl numbered_backup
	.type numbered_backup, @function
numbered_backup:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0xd0
	nop	
	mov	rax, qword ptr [rbp + 0x10]
	nop	
	mov	dword ptr [rbp - 0x34], edi
	mov	qword ptr [rbp - 0xa0], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rcx
	mov	qword ptr [rbp - 0x10], r8
	mov	qword ptr [rbp - 0x40], r9
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0xa4], 2
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x58], rax
	mov	qword ptr [rbp - 0x60], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x48]
	call	base_len
	nop	
	mov	qword ptr [rbp - 0xb0], rax
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_913
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	call	rewinddir
	jmp	.label_917
.label_913:
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	cx, word ptr [rax]
	mov	word ptr [rbp - 0x92], cx
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.2_1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x64], edx
	call	strcpy
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x90]
	nop	
	mov	edx, dword ptr [rbp - 0x64]
	mov	qword ptr [rbp - 0xc8], rax
	nop	
	call	opendirat
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_911
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	jne	.label_911
	mov	dword ptr [rbp - 0xa4], 3
.label_911:
	mov	rax, qword ptr [rbp - 0x48]
	mov	cx, word ptr [rbp - 0x92]
	nop	
	mov	word ptr [rax], cx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0xb0]
	mov	edx, OFFSET FLAT:.str.3_2
	nop	
	mov	esi, edx
	mov	rdi, rax
	call	strcpy
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0xb8], rax
	jne	.label_903
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xa4]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_909
.label_903:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rcx], rax
.label_917:
	jmp	.label_905
.label_905:
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	readdir
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_916
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x13
	mov	rdi, rax
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xb0]
	nop	
	add	rdi, 4
	lea	rsi, [rsi]
	cmp	rax, rdi
	jae	.label_921
	jmp	.label_905
.label_921:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x13
	mov	rdx, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	add	rdx, 2
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcmp
	nop	
	cmp	eax, 0
	je	.label_915
	jmp	.label_905
.label_915:
	nop	
	mov	eax, 0x31
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rcx, 0x13
	add	rcx, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	add	rcx, 2
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx]
	lea	rsi, [rsi]
	cmp	eax, edx
	jg	.label_918
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x39
	lea	rdi, [rdi]
	jle	.label_908
.label_918:
	lea	rsi, [rsi]
	jmp	.label_905
.label_908:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x39
	lea	rsi, [rsi]
	sete	dl
	mov	rbp, rbp
	and	dl, 1
	nop	
	mov	byte ptr [rbp - 0x81], dl
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], 1
.label_904:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	sub	edx, 0x30
	lea	rdi, [rdi]
	cmp	edx, 9
	ja	.label_920
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rcx + rax]
	nop	
	cmp	edx, 0x39
	mov	rsp, rsp
	sete	sil
	nop	
	and	sil, 1
	lea	rsi, [rsi]
	movzx	edx, sil
	mov	sil, byte ptr [rbp - 0x81]
	mov	rsp, rsp
	and	sil, 1
	lea	rdi, [rdi]
	movzx	edi, sil
	lea	rsi, [rsi]
	and	edi, edx
	nop	
	cmp	edi, 0
	setne	sil
	and	sil, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x81], sil
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0xc0], rax
	lea	rdi, [rdi]
	jmp	.label_904
.label_920:
	nop	
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x7e
	jne	.label_902
	nop	
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	byte ptr [rcx + rax + 1], 0
	lea	rdi, [rdi]
	jne	.label_902
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0xc0]
	jb	.label_906
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0xc0]
	jne	.label_902
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x78]
	add	rax, 2
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0xc0]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	call	memcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	nop	
	jle	.label_906
.label_902:
	jmp	.label_905
.label_906:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	dl, byte ptr [rbp - 0x81]
	mov	rbp, rbp
	and	dl, 1
	lea	rsi, [rsi]
	movzx	esi, dl
	mov	rbp, rbp
	mov	edi, esi
	add	rdi, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x60], rdi
	mov	dl, byte ptr [rbp - 0x81]
	test	dl, 1
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0xa4], eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	add	rdi, 2
	mov	rsp, rsp
	add	rdi, qword ptr [rbp - 0x60]
	add	rdi, 2
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, qword ptr [rbp - 0x70]
	cmp	rdi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	jae	.label_910
	movabs	rax, 0x3fffffffffffffff
	cmp	rax, qword ptr [rbp - 0x50]
	nop	
	jb	.label_907
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	shl	rax, 1
	mov	qword ptr [rbp - 0x50], rax
.label_907:
	mov	rdi, qword ptr [rbp - 0x58]
	nop	
	mov	rsi, qword ptr [rbp - 0x50]
	call	realloc
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_914
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], 3
	lea	rsi, [rsi]
	jmp	.label_909
.label_914:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
.label_910:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x80], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x80], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0x2e
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, rax
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], 0x7e
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	byte ptr [rax], 0x30
	mov	dl, byte ptr [rbp - 0x81]
	and	dl, 1
	movzx	esi, dl
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	movsxd	rcx, esi
	add	rax, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	add	rax, 2
	lea	rdi, [rdi]
	mov	rdx, rax
	nop	
	call	memcpy
	mov	rax, qword ptr [rbp - 0xc0]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_919:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, rax
	add	rcx, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rcx
	movsx	edx, byte ptr [rax - 1]
	cmp	edx, 0x39
	lea	rsi, [rsi]
	jne	.label_912
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], 0x30
	lea	rdi, [rdi]
	jmp	.label_919
.label_912:
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	add	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [rax], cl
	jmp	.label_905
.label_916:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0xa4]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], edx
.label_909:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	add	rsp, 0xd0
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4115c0

	.globl check_extension
	.type check_extension, @function
check_extension:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x60
	mov	al, dl
	mov	qword ptr [rbp - 0x58], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x39], al
	mov	dword ptr [rbp - 4], ecx
	nop	
	mov	qword ptr [rbp - 0x48], r8
	mov	rdi, qword ptr [rbp - 0x58]
	call	last_component
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	call	base_len
	lea	rdi, [rdi]
	mov	ecx, 0xe
	mov	rbp, rbp
	mov	esi, ecx
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x38], 0xff
	cmp	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_929
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax], 0
	mov	rsp, rsp
	jne	.label_924
	mov	rsp, rsp
	cmp	dword ptr [rbp - 4], 0
	mov	rbp, rbp
	jge	.label_926
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	cx, word ptr [rax]
	lea	rsi, [rsi]
	mov	word ptr [rbp - 0x22], cx
	mov	rdi, qword ptr [rbp - 0x30]
	mov	edx, OFFSET FLAT:.str.2_1
	nop	
	mov	esi, edx
	call	strcpy
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	call	__errno_location
	mov	esi, 3
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	pathconf
	mov	qword ptr [rbp - 0x18], rax
	call	__errno_location
	cmp	dword ptr [rax], 0
	lea	rsi, [rsi]
	setne	r8b
	xor	r8b, 0xff
	mov	rbp, rbp
	and	r8b, 1
	lea	rdi, [rdi]
	movzx	edx, r8b
	mov	rsp, rsp
	movsxd	rax, edx
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	sub	rdi, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	cx, word ptr [rbp - 0x22]
	mov	word ptr [rax], cx
	nop	
	jmp	.label_923
.label_926:
	call	__errno_location
	lea	rdi, [rdi]
	mov	esi, 3
	mov	dword ptr [rax], 0
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	call	fpathconf
	mov	qword ptr [rbp - 0x18], rax
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0
	mov	rsp, rsp
	setne	cl
	lea	rsi, [rsi]
	xor	cl, 0xff
	lea	rsi, [rsi]
	and	cl, 1
	movzx	esi, cl
	mov	rsp, rsp
	movsxd	rax, esi
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdx
.label_923:
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x18]
	jg	.label_927
	cmp	qword ptr [rbp - 0x18], -1
	ja	.label_927
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_922
.label_927:
	lea	rdi, [rdi]
	mov	rax, -1
	lea	rdi, [rdi]
	mov	ecx, 0xe
	mov	edx, ecx
	cmp	qword ptr [rbp - 0x18], -1
	mov	rbp, rbp
	cmovl	rax, rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
.label_922:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
.label_924:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
.label_929:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_925
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	sub	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	ja	.label_928
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_928:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x39]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rdx + rcx], al
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rdx + rcx + 1], 0
.label_925:
	nop	
	add	rsp, 0x60
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411840

	.globl backup_file_rename
	.type backup_file_rename, @function
backup_file_rename:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	ecx, 1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], edx
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	nop	
	call	backupfile_internal
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411880

	.globl find_backup_file_name
	.type find_backup_file_name, @function
find_backup_file_name:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x1c], edi
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	dword ptr [rbp - 0xc], edx
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0xc]
	call	backupfile_internal
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	jne	.label_930
	call	xalloc_die
.label_930:
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4118e0

	.globl get_version
	.type get_version, @function
get_version:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_931
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_932
.label_931:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], 2
	jmp	.label_933
.label_932:
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:backup_args
	movabs	rax, OFFSET FLAT:backup_types
	lea	rdi, [rdi]
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rbp, rbp
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + backup_types]]
	mov	dword ptr [rbp - 0xc], r10d
.label_933:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411990

	.globl xget_version
	.type xget_version, @function
xget_version:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_934
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_934
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	get_version
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_935
.label_934:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.1_5
	call	getenv
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_7
	mov	rsi, rax
	mov	rsp, rsp
	call	get_version
	mov	dword ptr [rbp - 4], eax
.label_935:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	add	rsp, 0x20
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x411a30

	.globl buffer_lcm
	.type buffer_lcm, @function
buffer_lcm:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x28], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rsi
	nop	
	mov	qword ptr [rbp - 0x50], rdx
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	jne	.label_943
	cmp	qword ptr [rbp - 0x60], 0
	mov	rbp, rbp
	je	.label_944
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_937
.label_944:
	mov	eax, 0x2000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	jmp	.label_937
.label_937:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_938
.label_943:
	cmp	qword ptr [rbp - 0x60], 0
	je	.label_941
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
.label_940:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsp, rsp
	div	qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdx
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_945
	jmp	.label_947
.label_947:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	jmp	.label_940
.label_945:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	imul	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x50]
	ja	.label_936
	mov	rax, qword ptr [rbp - 8]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	div	qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	jne	.label_936
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_942
.label_936:
	jmp	.label_941
.label_941:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x40], rax
.label_938:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x50]
	ja	.label_946
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_939
.label_946:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x18], rax
.label_939:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rax
.label_942:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411bc0
	.globl close_stdin_set_file_name
	.type close_stdin_set_file_name, @function
close_stdin_set_file_name:

	nop
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [word ptr [file_name]],  rdi
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411bf0

	.globl close_stdin
	.type close_stdin, @function
close_stdin:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	nop	
	mov	byte ptr [rbp - 0xd], 0
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	freadahead
	cmp	rax, 0
	jbe	.label_949
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, eax
	mov	rbp, rbp
	mov	edx, 1
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fseeko
	lea	rsi, [rsi]
	cmp	eax, 0
	nop	
	jne	.label_950
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_950
	mov	byte ptr [rbp - 0xd], 1
.label_950:
	jmp	.label_949
.label_949:
	mov	rdi,  qword ptr [word ptr [stdin]]
	nop	
	call	close_stream
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_954
	mov	byte ptr [rbp - 0xd], 1
.label_954:
	test	byte ptr [rbp - 0xd], 1
	je	.label_948
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_8
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_952
	mov	rbp, rbp
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	lea	rsi, [rsi]
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str.1_6
	nop	
	mov	r8, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_951
.label_952:
	nop	
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_4
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_951:
	lea	rsi, [rsi]
	jmp	.label_948
.label_948:
	call	close_stdout
	test	byte ptr [rbp - 0xd], 1
	nop	
	je	.label_953
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	lea	rsi, [rsi]
	call	_exit
.label_953:
	lea	rdi, [rdi]
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411d60
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
	mov	qword ptr [word ptr [file_name_0]],  rdi
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411d90
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
	.align	32
	#Procedure 0x411dc0

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
	je	.label_955
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_956
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_955
.label_956:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_9
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name_0]],  0
	je	.label_959
	nop	
	call	__errno_location
	nop	
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name_0]]
	mov	dword ptr [rbp - 4], esi
	call	quotearg_colon
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str.1_6
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_957
.label_959:
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_4
	mov	esi, dword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_957:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_955:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_958
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_958:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411ef0

	.globl dir_name
	.type dir_name, @function
dir_name:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	mdir_name
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	nop	
	jne	.label_960
	lea	rsi, [rsi]
	call	xalloc_die
.label_960:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x411f40

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 8], 0
	nop	
	cmp	qword ptr [rbp - 8], 0
	je	.label_961
	xor	eax, eax
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	jmp	.label_964
.label_961:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x2f
	nop	
	cmove	eax, ecx
	mov	dword ptr [rbp - 0xc], eax
.label_964:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rcx
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	last_component
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
.label_965:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x18]
	nop	
	jae	.label_966
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	cmp	edx, 0x2f
	je	.label_962
	jmp	.label_966
.label_962:
	jmp	.label_963
.label_963:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_965
.label_966:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x412030

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, qword ptr [rbp - 0x20]
	call	dir_len
	mov	rsp, rsp
	mov	cl, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	nop	
	mov	byte ptr [rbp - 0x22], cl
	je	.label_968
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	byte ptr [rbp - 0x22], cl
	lea	rdi, [rdi]
	jmp	.label_968
.label_968:
	mov	al, byte ptr [rbp - 0x22]
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rbp - 0x21]
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	nop	
	mov	esi, edx
	nop	
	add	rcx, rsi
	mov	rsp, rsp
	add	rcx, 1
	mov	rdi, rcx
	nop	
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_970
	nop	
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jmp	.label_967
.label_970:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcpy
	test	byte ptr [rbp - 0x21], 1
	lea	rdi, [rdi]
	je	.label_969
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx + rax], 0x2e
.label_969:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx + rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 8], rax
.label_967:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x412150

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
.label_977:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	jne	.label_974
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_977
.label_974:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
.label_976:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_971
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	jne	.label_975
	mov	byte ptr [rbp - 0x19], 1
	nop	
	jmp	.label_973
.label_975:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x19], 1
	lea	rdi, [rdi]
	je	.label_972
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], 0
.label_972:
	jmp	.label_973
.label_973:
	jmp	.label_978
.label_978:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_976
.label_971:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412220

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
.label_980:
	xor	eax, eax
	mov	cl, al
	mov	eax, 1
	lea	rsi, [rsi]
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 1], cl
	mov	rsp, rsp
	jae	.label_979
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
.label_979:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	test	al, 1
	nop	
	jne	.label_981
	mov	rbp, rbp
	jmp	.label_982
.label_981:
	jmp	.label_983
.label_983:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_980
.label_982:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4122e0

	.globl strip_trailing_slashes
	.type strip_trailing_slashes, @function
strip_trailing_slashes:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	last_component
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	jne	.label_984
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
.label_984:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	call	base_len
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rdi, rax
	mov	qword ptr [rbp - 0x28], rdi
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	lea	rdi, [rdi]
	setne	dl
	nop	
	and	dl, 1
	mov	byte ptr [rbp - 1], dl
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax], 0
	mov	rbp, rbp
	mov	dl, byte ptr [rbp - 1]
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
	lea	rsi, [rsi]
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x412390

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
	.align	32
	#Procedure 0x4123d0
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
	je	.label_985
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
.label_985:
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x412430

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
	je	.label_986
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
.label_986:
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
	je	.label_987
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
	ja	.label_988
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
	jmp	.label_989
.label_988:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rdx
.label_989:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x30]
	mov	rsp, rsp
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x1d4], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_987:
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
	.align	32
	#Procedure 0x4126b0

	.globl record_file
	.type record_file, @function
record_file:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdx
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_990
	jmp	.label_992
.label_990:
	nop	
	mov	eax, 0x18
	mov	edi, eax
	call	xmalloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	xstrdup
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x10], rax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	call	hash_insert
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_991
	mov	rbp, rbp
	call	xalloc_die
.label_991:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	je	.label_992
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	nop	
	call	triple_free
.label_992:
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412790

	.globl seen_file
	.type seen_file, @function
seen_file:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	mov	qword ptr [rbp - 0x38], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdx
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_993
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], 0
	jmp	.label_994
.label_993:
	lea	rax, [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, rax
	call	hash_lookup
	lea	rsi, [rsi]
	cmp	rax, 0
	lea	rdi, [rdi]
	setne	dl
	xor	dl, 0xff
	xor	dl, 0xff
	and	dl, 1
	nop	
	mov	byte ptr [rbp - 9], dl
.label_994:
	mov	al, byte ptr [rbp - 9]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	lea	rdi, [rdi]
	add	rsp, 0x40
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412830

	.globl strmode
	.type strmode, @function
strmode:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 0xc], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	call	ftypelet
	mov	edi, 0x2d
	mov	ecx, 0x77
	lea	rdi, [rdi]
	mov	edx, 0x72
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi], al
	mov	rbp, rbp
	mov	r8d, dword ptr [rbp - 0xc]
	and	r8d, 0x100
	cmp	r8d, 0
	nop	
	mov	r8d, edi
	cmovne	r8d, edx
	mov	al, r8b
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + 1], al
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	and	edx, 0x80
	mov	rbp, rbp
	cmp	edx, 0
	lea	rdi, [rdi]
	cmovne	edi, ecx
	mov	al, dil
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + 2], al
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0xc]
	and	ecx, 0x800
	mov	rbp, rbp
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_996
	mov	eax, 0x53
	mov	ecx, 0x73
	mov	edx, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	and	edx, 0x40
	mov	rbp, rbp
	cmp	edx, 0
	nop	
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x18], eax
	lea	rsi, [rsi]
	jmp	.label_997
.label_996:
	lea	rsi, [rsi]
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0xc]
	and	edx, 0x40
	cmp	edx, 0
	cmovne	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x18], eax
.label_997:
	mov	eax, dword ptr [rbp - 0x18]
	mov	ecx, 0x2d
	lea	rsi, [rsi]
	mov	edx, 0x77
	mov	esi, 0x72
	mov	dil, al
	mov	r8, qword ptr [rbp - 8]
	mov	byte ptr [r8 + 3], dil
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	and	eax, 0x20
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rbp, rbp
	mov	eax, ecx
	lea	rdi, [rdi]
	cmovne	eax, esi
	mov	dil, al
	mov	r8, qword ptr [rbp - 8]
	mov	byte ptr [r8 + 4], dil
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	and	eax, 0x10
	lea	rdi, [rdi]
	cmp	eax, 0
	cmovne	ecx, edx
	mov	dil, cl
	nop	
	mov	r8, qword ptr [rbp - 8]
	mov	byte ptr [r8 + 5], dil
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 0x400
	cmp	eax, 0
	je	.label_999
	mov	eax, 0x53
	mov	rsp, rsp
	mov	ecx, 0x73
	mov	edx, dword ptr [rbp - 0xc]
	and	edx, 8
	nop	
	cmp	edx, 0
	lea	rsi, [rsi]
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	jmp	.label_1000
.label_999:
	nop	
	mov	eax, 0x2d
	mov	rsp, rsp
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	and	edx, 8
	lea	rsi, [rsi]
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x14], eax
.label_1000:
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	mov	ecx, 0x2d
	mov	edx, 0x77
	mov	esi, 0x72
	mov	dil, al
	nop	
	mov	r8, qword ptr [rbp - 8]
	mov	byte ptr [r8 + 6], dil
	nop	
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	and	eax, 4
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	mov	eax, ecx
	lea	rdi, [rdi]
	cmovne	eax, esi
	mov	dil, al
	mov	r8, qword ptr [rbp - 8]
	mov	byte ptr [r8 + 7], dil
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 2
	cmp	eax, 0
	cmovne	ecx, edx
	mov	rbp, rbp
	mov	dil, cl
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 8]
	mov	byte ptr [r8 + 8], dil
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	and	eax, 0x200
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_995
	mov	eax, 0x54
	lea	rsi, [rsi]
	mov	ecx, 0x74
	nop	
	mov	edx, dword ptr [rbp - 0xc]
	and	edx, 1
	mov	rsp, rsp
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	jmp	.label_998
.label_995:
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 0xc]
	and	edx, 1
	cmp	edx, 0
	nop	
	cmovne	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x10], eax
.label_998:
	mov	eax, dword ptr [rbp - 0x10]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rdx + 9], cl
	mov	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rdx + 0xa], 0x20
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	byte ptr [rdx + 0xb], 0
	mov	rsp, rsp
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x412ad0

	.globl ftypelet
	.type ftypelet, @function
ftypelet:
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	mov	dword ptr [rbp - 4], edi
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 4]
	and	edi, 0xf000
	lea	rdi, [rdi]
	cmp	edi, 0x8000
	jne	.label_1006
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 5], 0x2d
	jmp	.label_1002
.label_1006:
	mov	eax, dword ptr [rbp - 4]
	nop	
	and	eax, 0xf000
	cmp	eax, 0x4000
	lea	rsi, [rsi]
	jne	.label_1001
	mov	rbp, rbp
	mov	byte ptr [rbp - 5], 0x64
	nop	
	jmp	.label_1002
.label_1001:
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	and	eax, 0xf000
	cmp	eax, 0x6000
	jne	.label_1008
	mov	rbp, rbp
	mov	byte ptr [rbp - 5], 0x62
	nop	
	jmp	.label_1002
.label_1008:
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	and	eax, 0xf000
	cmp	eax, 0x2000
	jne	.label_1004
	mov	byte ptr [rbp - 5], 0x63
	jmp	.label_1002
.label_1004:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	and	eax, 0xf000
	mov	rbp, rbp
	cmp	eax, 0xa000
	nop	
	jne	.label_1003
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 0x6c
	jmp	.label_1002
.label_1003:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	nop	
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0x1000
	jne	.label_1005
	mov	byte ptr [rbp - 5], 0x70
	mov	rbp, rbp
	jmp	.label_1002
.label_1005:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	and	eax, 0xf000
	mov	rsp, rsp
	cmp	eax, 0xc000
	jne	.label_1007
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 5], 0x73
	lea	rsi, [rsi]
	jmp	.label_1002
.label_1007:
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 0x3f
.label_1002:
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rbp - 5]
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412bf0
	.globl filemodestring
	.type filemodestring, @function
filemodestring:

	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsi + 0x18]
	mov	rsi, qword ptr [rbp - 8]
	call	strmode
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rsi + 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	sub	edi, dword ptr [rsi + 0x18]
	lea	rsi, [rsi]
	cmp	edi, 0
	je	.label_1014
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 0x46
	jmp	.label_1010
.label_1014:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_1012
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	byte ptr [rax], 0x51
	jmp	.label_1009
.label_1012:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	ecx, dword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_1013
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x53
	jmp	.label_1011
.label_1013:
	lea	rsi, [rsi]
	jmp	.label_1011
.label_1011:
	mov	rbp, rbp
	jmp	.label_1009
.label_1009:
	jmp	.label_1010
.label_1010:
	nop	
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x412cd0

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	call	mfile_name_concat
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jne	.label_1015
	lea	rsi, [rsi]
	call	xalloc_die
.label_1015:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412d40

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x20], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x48], rdx
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	last_component
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	base_len
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	sub	rax, rdx
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	mov	qword ptr [rbp - 8], rax
	mov	byte ptr [rbp - 0x29], 0
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1017
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	cmp	edx, 0x2f
	je	.label_1018
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x2f
	je	.label_1018
	nop	
	mov	byte ptr [rbp - 0x29], 0x2f
.label_1018:
	jmp	.label_1021
.label_1017:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_1022
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x29], 0x2e
.label_1022:
	jmp	.label_1021
.label_1021:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	movsx	ecx, byte ptr [rbp - 0x29]
	nop	
	cmp	ecx, 0
	setne	dl
	lea	rdi, [rdi]
	and	dl, 1
	movzx	ecx, dl
	movsxd	rsi, ecx
	add	rax, rsi
	add	rax, qword ptr [rbp - 8]
	add	rax, 1
	lea	rdi, [rdi]
	mov	rdi, rax
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1019
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], 0
	mov	rsp, rsp
	jmp	.label_1016
.label_1019:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x50]
	nop	
	call	mempcpy
	mov	qword ptr [rbp - 0x58], rax
	nop	
	mov	cl, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], cl
	movsx	r8d, byte ptr [rbp - 0x29]
	nop	
	cmp	r8d, 0
	setne	cl
	and	cl, 1
	movzx	r8d, cl
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	movsxd	rdx, r8d
	add	rax, rdx
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x48], 0
	nop	
	je	.label_1020
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rcx], rax
.label_1020:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	call	mempcpy
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], 0
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
.label_1016:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	add	rsp, 0x60
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x412f20

	.globl full_write
	.type full_write, @function
full_write:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0x1c], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rdx
.label_1024:
	cmp	qword ptr [rbp - 0x18], 0
	jbe	.label_1025
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	safe_write
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], -1
	lea	rdi, [rdi]
	jne	.label_1026
	jmp	.label_1025
.label_1026:
	cmp	qword ptr [rbp - 8], 0
	nop	
	jne	.label_1023
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0x1c
	lea	rdi, [rdi]
	jmp	.label_1025
.label_1023:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_1024
.label_1025:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x30
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412ff0

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x10]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413010

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x413030

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x20]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x413050

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
.label_1031:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	jae	.label_1027
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1030
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], 1
.label_1032:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	je	.label_1033
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	nop	
	jmp	.label_1032
.label_1033:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	jbe	.label_1028
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
.label_1028:
	jmp	.label_1030
.label_1030:
	mov	rbp, rbp
	jmp	.label_1029
.label_1029:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1031
.label_1027:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x413130
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rdi
.label_1038:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jae	.label_1034
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1036
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_1039:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	je	.label_1040
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_1039
.label_1040:
	jmp	.label_1036
.label_1036:
	jmp	.label_1037
.label_1037:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_1038
.label_1034:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	jne	.label_1035
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_1035
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_1041
.label_1035:
	mov	byte ptr [rbp - 0x19], 0
.label_1041:
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413260
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x50
	nop	
	movabs	rax, OFFSET FLAT:.str.2_4
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rsi
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	call	hash_get_n_entries
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	hash_get_n_buckets
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	hash_get_n_buckets_used
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	hash_get_max_bucket_length
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str_10
	mov	rbp, rbp
	mov	esi, ecx
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	r8b, cl
	mov	rsp, rsp
	mov	al, r8b
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x29], r8b
	call	fprintf
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	ecx, OFFSET FLAT:.str.1_7
	mov	esi, ecx
	mov	r8b, byte ptr [rbp - 0x29]
	mov	dword ptr [rbp - 0x3c], eax
	mov	al, r8b
	mov	rsp, rsp
	call	fprintf
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	movq	xmm0, rdx
	nop	
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_1042]]
	punpckldq	xmm0, xmm1
	mov	rbp, rbp
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_1043]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	movsd	xmm0,  qword ptr [word ptr [rip + label_1044]]
	mulsd	xmm3, xmm0
	movq	xmm0, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	punpckldq	xmm0, xmm1
	subpd	xmm0, xmm2
	pshufd	xmm1, xmm0, 0x4e
	mov	rbp, rbp
	addpd	xmm1, xmm0
	mov	rbp, rbp
	divsd	xmm3, xmm1
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	movaps	xmm0, xmm3
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	call	fprintf
	movabs	rsi, OFFSET FLAT:.str.3_3
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 4], eax
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	mov	dword ptr [rbp - 0x30], eax
	add	rsp, 0x50
	nop	
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4133e0

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	call	safe_hasher
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	jne	.label_1048
	mov	qword ptr [rbp - 0x18], 0
	nop	
	jmp	.label_1045
.label_1048:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
.label_1051:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1049
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	je	.label_1046
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx]
	nop	
	call	rax
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1046
	mov	rsp, rsp
	jmp	.label_1050
.label_1046:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1045
.label_1050:
	nop	
	jmp	.label_1047
.label_1047:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1051
.label_1049:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], 0
.label_1045:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4134d0

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 0x30]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rsi + 0x10]
	jb	.label_1052
	call	abort
.label_1052:
	nop	
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	shl	rcx, 4
	nop	
	add	rax, rcx
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x413560
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rdi + 0x20], 0
	jne	.label_1053
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_1057
.label_1053:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
.label_1055:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jb	.label_1054
	lea	rsi, [rsi]
	call	abort
.label_1054:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_1056
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1057
.label_1056:
	jmp	.label_1058
.label_1058:
	nop	
	jmp	.label_1059
.label_1059:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1055
.label_1057:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413620
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	call	safe_hasher
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 8], rax
.label_1064:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_1061
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 8], 0
	je	.label_1061
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1060
.label_1061:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jne	.label_1064
	jmp	.label_1062
.label_1062:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1065
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_1063
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_1060
.label_1063:
	jmp	.label_1062
.label_1065:
	mov	qword ptr [rbp - 0x28], 0
.label_1060:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x413720
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	nop
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x10], rdx
	nop	
	mov	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 8], rdx
.label_1067:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jae	.label_1070
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	nop	
	je	.label_1068
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
.label_1071:
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_1069
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_1072
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1066
.label_1072:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, rcx
	add	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_1071
.label_1069:
	lea	rsi, [rsi]
	jmp	.label_1068
.label_1068:
	jmp	.label_1073
.label_1073:
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_1067
.label_1070:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rax
.label_1066:
	mov	rax, qword ptr [rbp - 0x38]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413830
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x30], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], 0
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x38], rdx
.label_1075:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jae	.label_1074
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_1078
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_1080:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1081
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rcx]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	call	rax
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_1079
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1076
.label_1079:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1080
.label_1081:
	mov	rbp, rbp
	jmp	.label_1078
.label_1078:
	nop	
	jmp	.label_1077
.label_1077:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1075
.label_1074:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
.label_1076:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413940
	.globl hash_string
	.type hash_string, @function
hash_string:

	nop
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
.label_1082:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax]
	nop	
	mov	byte ptr [rbp - 0x19], cl
	cmp	cl, 0
	nop	
	je	.label_1083
	imul	rax, qword ptr [rbp - 0x18], 0x1f
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	edx, ecx
	add	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1082
.label_1083:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4139b0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	nop
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [default_tuning]]
	lea	rdi, [rdi]
	mov	qword ptr [rdi], rax
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [label_1084]]
	mov	qword ptr [rdi + 8], rax
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [label_1085]]
	lea	rsi, [rsi]
	mov	dword ptr [rdi + 0x10], ecx
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413a00

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x30], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], r8
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1086
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:raw_hasher
	mov	qword ptr [rbp - 0x30], rax
.label_1086:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1087
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:raw_comparator
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
.label_1087:
	mov	eax, 0x50
	mov	rsp, rsp
	mov	edi, eax
	mov	rsp, rsp
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1088
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_1089
.label_1088:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1091
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x10], rax
.label_1091:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	call	check_tuning
	test	al, 1
	mov	rbp, rbp
	jne	.label_1092
	jmp	.label_1090
.label_1092:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	compute_bucket_size
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	jne	.label_1093
	mov	rsp, rsp
	jmp	.label_1090
.label_1093:
	lea	rdi, [rdi]
	mov	eax, 0x10
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdi, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	call	calloc
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	nop	
	jne	.label_1094
	jmp	.label_1090
.label_1094:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	shl	rcx, 4
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x18], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x48], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_1089
.label_1090:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], 0
.label_1089:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413c20

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	eax, 3
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	esi, eax
	call	rotr_sz
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	xor	esi, esi
	mov	edx, esi
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x413c70

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	sete	al
	nop	
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x413ca0

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	push	rbp
	nop	
	mov	rbp, rsp
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 0x28]
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	cmp	qword ptr [rbp - 0x18], rax
	jne	.label_1095
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1098
.label_1095:
	movss	xmm0,  dword ptr [dword ptr [label_1099]]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_1097
	mov	rsp, rsp
	movss	xmm0,  dword ptr [dword ptr [label_1096]]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	mov	rsp, rsp
	subss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	jbe	.label_1097
	nop	
	movss	xmm0,  dword ptr [dword ptr [label_1096]]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 0xc]
	ucomiss	xmm1, xmm0
	lea	rsi, [rsi]
	jbe	.label_1097
	xorps	xmm0, xmm0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax]
	mov	rsp, rsp
	ucomiss	xmm1, xmm0
	jb	.label_1097
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 4]
	ucomiss	xmm1, xmm0
	jbe	.label_1097
	mov	rsp, rsp
	movss	xmm0,  dword ptr [dword ptr [label_1096]]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	ucomiss	xmm0, dword ptr [rax + 4]
	jb	.label_1097
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm0, dword ptr [rax]
	lea	rsi, [rsi]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	lea	rdi, [rdi]
	ucomiss	xmm1, xmm0
	mov	rbp, rbp
	jbe	.label_1097
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1098
.label_1097:
	nop	
	movabs	rax, OFFSET FLAT:default_tuning
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x28], rax
	mov	byte ptr [rbp - 1], 0
.label_1098:
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x413e10

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	test	byte ptr [rsi + 0x10], 1
	mov	rbp, rbp
	jne	.label_1100
	lea	rsi, [rsi]
	movss	xmm0,  dword ptr [dword ptr [label_1101]]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	nop	
	and	edx, 1
	nop	
	mov	esi, edx
	or	rsi, rcx
	mov	rsp, rsp
	cvtsi2ss	xmm1, rsi
	mov	rsp, rsp
	addss	xmm1, xmm1
	mov	rsp, rsp
	cvtsi2ss	xmm2, rax
	mov	rsp, rsp
	test	rax, rax
	movss	dword ptr [rbp - 0x24], xmm0
	movss	dword ptr [rbp - 0xc], xmm2
	lea	rdi, [rdi]
	movss	dword ptr [rbp - 0x10], xmm1
	mov	rbp, rbp
	js	.label_1102
	movss	xmm0, dword ptr [rbp - 0xc]
	movss	dword ptr [rbp - 0x10], xmm0
.label_1102:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x30]
	divss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0x14], xmm0
	movss	xmm0, dword ptr [rbp - 0x14]
	movss	xmm1, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	ucomiss	xmm0, xmm1
	lea	rdi, [rdi]
	jb	.label_1106
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1104
.label_1106:
	nop	
	movss	xmm0, dword ptr [rbp - 0x14]
	nop	
	movss	xmm1,  dword ptr [dword ptr [rip + label_1105]]
	nop	
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	lea	rdi, [rdi]
	cvttss2si	rax, xmm2
	lea	rdi, [rdi]
	movabs	rcx, 0x8000000000000000
	mov	rbp, rbp
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	mov	rbp, rbp
	ucomiss	xmm1, xmm0
	cmova	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_1100:
	mov	rdi, qword ptr [rbp - 8]
	call	next_prime
	lea	rsi, [rsi]
	movabs	rdi, 0xfffffffffffffff
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	cmp	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	jae	.label_1103
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1104
.label_1103:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
.label_1104:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413f80
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x20], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x18], rdi
.label_1110:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jae	.label_1109
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_1113
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_1112:
	cmp	qword ptr [rbp - 8], 0
	nop	
	je	.label_1114
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x40], 0
	lea	rdi, [rdi]
	je	.label_1111
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rcx]
	call	rax
.label_1111:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1112
.label_1114:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1108
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	nop	
	call	rax
.label_1108:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 8], 0
.label_1113:
	jmp	.label_1107
.label_1107:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1110
.label_1109:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], 0
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax + 0x20], 0
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4140f0

	.globl hash_free
	.type hash_free, @function
hash_free:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdi + 0x40], 0
	lea	rdi, [rdi]
	je	.label_1118
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x20], 0
	lea	rsi, [rsi]
	je	.label_1118
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
.label_1127:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jae	.label_1116
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	je	.label_1119
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
.label_1124:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1128
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx]
	call	rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	jmp	.label_1124
.label_1128:
	jmp	.label_1119
.label_1119:
	jmp	.label_1123
.label_1123:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1127
.label_1116:
	jmp	.label_1118
.label_1118:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
.label_1120:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1121
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
.label_1126:
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	je	.label_1115
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1126
.label_1115:
	jmp	.label_1117
.label_1117:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1120
.label_1121:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x48]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_1122:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1125
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1122
.label_1125:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4142e0

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x60], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rsi
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	call	compute_bucket_size
	mov	qword ptr [rbp - 0x58], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x58], 0
	nop	
	jne	.label_1131
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x71], 0
	jmp	.label_1130
.label_1131:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_1134
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x71], 1
	mov	rbp, rbp
	jmp	.label_1130
.label_1134:
	nop	
	mov	eax, 0x10
	mov	esi, eax
	mov	rsp, rsp
	lea	rcx, [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rcx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	call	calloc
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	jne	.label_1136
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x71], 0
	mov	rsp, rsp
	jmp	.label_1130
.label_1136:
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x58]
	shl	rcx, 4
	mov	rbp, rbp
	add	rax, rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax + 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x38], rax
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax + 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x40], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x60]
	call	transfer_entries
	test	al, 1
	mov	rbp, rbp
	jne	.label_1132
	lea	rsi, [rsi]
	jmp	.label_1129
.label_1132:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	qword ptr [rdi], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	qword ptr [rdi + 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	qword ptr [rdi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x18], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	qword ptr [rdi + 0x48], rax
	mov	byte ptr [rbp - 0x71], 1
	jmp	.label_1130
.label_1129:
	mov	rsp, rsp
	mov	edx, 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	rax, qword ptr [rax + 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x60]
	nop	
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	transfer_entries
	test	al, 1
	jne	.label_1135
	mov	rbp, rbp
	jmp	.label_1137
.label_1135:
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	call	transfer_entries
	nop	
	test	al, 1
	jne	.label_1133
.label_1137:
	call	abort
.label_1133:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	nop	
	mov	byte ptr [rbp - 0x71], 0
.label_1130:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x71]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x80
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4145b0

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, dl
	mov	qword ptr [rbp - 0x50], rdi
	mov	qword ptr [rbp - 0x40], rsi
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], al
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rsi
.label_1151:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1145
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_1150
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
.label_1138:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1144
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	call	safe_hasher
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	nop	
	je	.label_1139
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rcx + 8], rax
	jmp	.label_1140
.label_1139:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 0x18]
	mov	rsp, rsp
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], rcx
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	free_entry
.label_1140:
	mov	rbp, rbp
	jmp	.label_1142
.label_1142:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1138
.label_1144:
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rax + 8], 0
	test	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	je	.label_1149
	jmp	.label_1143
.label_1149:
	mov	rdi, qword ptr [rbp - 0x50]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	safe_hasher
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	nop	
	je	.label_1147
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	call	allocate_entry
	mov	qword ptr [rbp - 0x18], rax
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jne	.label_1141
	mov	byte ptr [rbp - 0x19], 0
	mov	rbp, rbp
	jmp	.label_1146
.label_1141:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	jmp	.label_1148
.label_1147:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
.label_1148:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rax], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	add	rcx, -1
	mov	rbp, rbp
	mov	qword ptr [rax + 0x18], rcx
.label_1150:
	jmp	.label_1143
.label_1143:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	add	rax, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	jmp	.label_1151
.label_1145:
	mov	byte ptr [rbp - 0x19], 1
.label_1146:
	mov	al, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x50
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414840

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 0xa0], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x98], rsi
	mov	qword ptr [rbp - 0x10], rdx
	cmp	qword ptr [rbp - 0x98], 0
	jne	.label_1152
	lea	rsi, [rsi]
	call	abort
.label_1152:
	mov	rbp, rbp
	lea	rdx, [rbp - 0x68]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	call	hash_find_entry
	nop	
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_1162
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1169
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_1169:
	nop	
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1157
.label_1162:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rax + 0x18]
	nop	
	mov	rsi, rdx
	shr	rsi, 1
	lea	rdi, [rdi]
	mov	edi, edx
	and	edi, 1
	lea	rdi, [rdi]
	mov	r8d, edi
	or	r8, rsi
	cvtsi2ss	xmm0, r8
	addss	xmm0, xmm0
	mov	rsp, rsp
	cvtsi2ss	xmm1, rdx
	lea	rsi, [rsi]
	test	rdx, rdx
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x80], rcx
	movss	dword ptr [rbp - 0x88], xmm1
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xa8], xmm0
	js	.label_1163
	movss	xmm0, dword ptr [rbp - 0x88]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1163:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x80]
	shr	rcx, 1
	nop	
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	esi, edx
	and	esi, 1
	lea	rdi, [rdi]
	mov	edi, esi
	mov	rsp, rsp
	or	rdi, rcx
	mov	rbp, rbp
	cvtsi2ss	xmm2, rdi
	lea	rdi, [rdi]
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0x60], xmm0
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xbc], xmm1
	movss	dword ptr [rbp - 0x6c], xmm3
	movss	dword ptr [rbp - 0x24], xmm2
	mov	rsp, rsp
	js	.label_1156
	movss	xmm0, dword ptr [rbp - 0x6c]
	nop	
	movss	dword ptr [rbp - 0x24], xmm0
.label_1156:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0x24]
	movss	xmm1, dword ptr [rbp - 0xbc]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x60]
	ucomiss	xmm0, xmm1
	jbe	.label_1158
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	call	check_tuning
	mov	rdi, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rbp, rbp
	mov	rsi, rdx
	mov	rbp, rbp
	shr	rsi, 1
	mov	r8d, edx
	and	r8d, 1
	mov	r9d, r8d
	or	r9, rsi
	lea	rsi, [rsi]
	cvtsi2ss	xmm0, r9
	lea	rdi, [rdi]
	addss	xmm0, xmm0
	lea	rdi, [rdi]
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1d], al
	nop	
	mov	qword ptr [rbp - 0x58], rdi
	nop	
	mov	qword ptr [rbp - 0x50], rcx
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x3c], xmm1
	mov	rbp, rbp
	movss	dword ptr [rbp - 8], xmm0
	js	.label_1166
	movss	xmm0, dword ptr [rbp - 0x3c]
	nop	
	movss	dword ptr [rbp - 8], xmm0
.label_1166:
	movss	xmm0, dword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x50]
	shr	rcx, 1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	esi, edx
	lea	rdi, [rdi]
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	mov	rbp, rbp
	movss	dword ptr [rbp - 0x1c], xmm0
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0xa4], xmm1
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0x44], xmm3
	movss	dword ptr [rbp - 0x8c], xmm2
	js	.label_1170
	lea	rdi, [rdi]
	movss	xmm0, dword ptr [rbp - 0x44]
	movss	dword ptr [rbp - 0x8c], xmm0
.label_1170:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	xmm1, dword ptr [rbp - 0xa4]
	mov	rsp, rsp
	mulss	xmm1, xmm0
	lea	rsi, [rsi]
	movss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	nop	
	jbe	.label_1153
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb8]
	test	byte ptr [rax + 0x10], 1
	mov	rsp, rsp
	je	.label_1164
	nop	
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	lea	rdi, [rdi]
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	lea	rdi, [rdi]
	movss	dword ptr [rbp - 0x40], xmm1
	movss	dword ptr [rbp - 0x84], xmm0
	nop	
	js	.label_1167
	movss	xmm0, dword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0x84], xmm0
.label_1167:
	movss	xmm0, dword ptr [rbp - 0x84]
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x5c], xmm0
	mov	rbp, rbp
	jmp	.label_1165
.label_1164:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	rbp, rbp
	mov	edx, eax
	lea	rdi, [rdi]
	and	edx, 1
	mov	esi, edx
	mov	rbp, rbp
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	mov	rbp, rbp
	cvtsi2ss	xmm1, rax
	mov	rbp, rbp
	test	rax, rax
	movss	dword ptr [rbp - 0x18], xmm1
	nop	
	movss	dword ptr [rbp - 0x14], xmm0
	lea	rdi, [rdi]
	js	.label_1159
	movss	xmm0, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0x14], xmm0
.label_1159:
	movss	xmm0, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb8]
	mulss	xmm0, dword ptr [rax + 8]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x5c], xmm0
.label_1165:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	movss	xmm1,  dword ptr [dword ptr [label_1101]]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xac], xmm0
	movss	xmm0, dword ptr [rbp - 0xac]
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	lea	rsi, [rsi]
	jb	.label_1161
	mov	dword ptr [rbp - 4], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_1157
.label_1161:
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1105]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	mov	rbp, rbp
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm1, xmm0
	nop	
	cmova	rax, rcx
	lea	rsi, [rsi]
	mov	rsi, rax
	call	hash_rehash
	test	al, 1
	jne	.label_1154
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1157
.label_1154:
	lea	rdx, [rbp - 0x68]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x98]
	call	hash_find_entry
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1155
	call	abort
.label_1155:
	jmp	.label_1153
.label_1153:
	lea	rdi, [rdi]
	jmp	.label_1158
.label_1158:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	qword ptr [rax], 0
	je	.label_1168
	mov	rdi, qword ptr [rbp - 0xa0]
	call	allocate_entry
	nop	
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	jne	.label_1160
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_1157
.label_1160:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, 1
	mov	qword ptr [rax + 0x20], rcx
	mov	dword ptr [rbp - 4], 1
	lea	rdi, [rdi]
	jmp	.label_1157
.label_1168:
	mov	rax, qword ptr [rbp - 0x98]
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	nop	
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rax + 0x20]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], rcx
	mov	dword ptr [rbp - 4], 1
.label_1157:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xc0
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x414e30

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, cl
	nop	
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x50], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	call	safe_hasher
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx], rax
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax], 0
	jne	.label_1177
	nop	
	mov	qword ptr [rbp - 0x40], 0
	jmp	.label_1172
.label_1177:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rcx]
	je	.label_1178
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x38]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rcx]
	nop	
	call	rax
	mov	rsp, rsp
	test	al, 1
	jne	.label_1178
	jmp	.label_1173
.label_1178:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x21], 1
	mov	rsp, rsp
	je	.label_1175
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_1180
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax], rdx
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	free_entry
	nop	
	jmp	.label_1171
.label_1180:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rax], 0
.label_1171:
	jmp	.label_1175
.label_1175:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1172
.label_1173:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x10], rax
.label_1181:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_1179
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	je	.label_1176
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx]
	nop	
	call	rax
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1176
	lea	rsi, [rsi]
	jmp	.label_1174
.label_1176:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_1183
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	free_entry
.label_1183:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1172
.label_1174:
	mov	rbp, rbp
	jmp	.label_1182
.label_1182:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_1181
.label_1179:
	mov	qword ptr [rbp - 0x40], 0
.label_1172:
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x60
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x415070

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x48], 0
	je	.label_1184
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x48], rax
	jmp	.label_1185
.label_1184:
	mov	eax, 0x10
	lea	rdi, [rdi]
	mov	edi, eax
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_1185:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4150f0

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	lea	rdx, [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	call	hash_insert_if_absent
	nop	
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 4], -1
	lea	rdi, [rdi]
	jne	.label_1188
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	jmp	.label_1186
.label_1188:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jne	.label_1189
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1187
.label_1189:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x30], rax
.label_1187:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
.label_1186:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415190

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	lea	rdx, [rbp - 0xb8]
	nop	
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x90], rsi
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	call	hash_find_entry
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1193
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_1204
.label_1193:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, -1
	nop	
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	qword ptr [rax], 0
	jne	.label_1202
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rax + 0x18]
	dec	rcx
	mov	qword ptr [rax + 0x18], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rax + 0x18]
	nop	
	mov	rsi, rdx
	shr	rsi, 1
	mov	edi, edx
	mov	rsp, rsp
	and	edi, 1
	lea	rsi, [rsi]
	mov	r8d, edi
	mov	rbp, rbp
	or	r8, rsi
	mov	rbp, rbp
	cvtsi2ss	xmm0, r8
	mov	rsp, rsp
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	qword ptr [rbp - 0x80], rax
	mov	qword ptr [rbp - 0x20], rcx
	movss	dword ptr [rbp - 0x2c], xmm1
	movss	dword ptr [rbp - 0x60], xmm0
	lea	rsi, [rsi]
	js	.label_1195
	movss	xmm0, dword ptr [rbp - 0x2c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_1195:
	movss	xmm0, dword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x20]
	shr	rcx, 1
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	esi, edx
	lea	rsi, [rsi]
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	lea	rsi, [rsi]
	cvtsi2ss	xmm2, rdi
	lea	rsi, [rsi]
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	lea	rsi, [rsi]
	test	rdx, rdx
	movss	dword ptr [rbp - 0x14], xmm0
	movss	dword ptr [rbp - 0x98], xmm1
	movss	dword ptr [rbp - 0x64], xmm3
	lea	rdi, [rdi]
	movss	dword ptr [rbp - 0x5c], xmm2
	lea	rsi, [rsi]
	js	.label_1192
	movss	xmm0, dword ptr [rbp - 0x64]
	movss	dword ptr [rbp - 0x5c], xmm0
.label_1192:
	movss	xmm0, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	movss	xmm1, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x14]
	ucomiss	xmm1, xmm0
	jbe	.label_1203
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	call	check_tuning
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	r8d, edx
	lea	rdi, [rdi]
	and	r8d, 1
	mov	rsp, rsp
	mov	r9d, r8d
	or	r9, rsi
	cvtsi2ss	xmm0, r9
	mov	rsp, rsp
	addss	xmm0, xmm0
	mov	rsp, rsp
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	byte ptr [rbp - 0x15], al
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rdi
	mov	qword ptr [rbp - 0x50], rcx
	movss	dword ptr [rbp - 0x84], xmm1
	movss	dword ptr [rbp - 0x24], xmm0
	nop	
	js	.label_1201
	movss	xmm0, dword ptr [rbp - 0x84]
	movss	dword ptr [rbp - 0x24], xmm0
.label_1201:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rax + 0x28]
	nop	
	movss	xmm1, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x50]
	shr	rcx, 1
	nop	
	mov	rdx, qword ptr [rbp - 0x50]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	lea	rsi, [rsi]
	cvtsi2ss	xmm2, rdi
	lea	rdi, [rdi]
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	nop	
	test	rdx, rdx
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xb0], xmm0
	movss	dword ptr [rbp - 0x94], xmm1
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xa4], xmm3
	movss	dword ptr [rbp - 0x74], xmm2
	js	.label_1198
	movss	xmm0, dword ptr [rbp - 0xa4]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0x74], xmm0
.label_1198:
	movss	xmm0, dword ptr [rbp - 0x74]
	movss	xmm1, dword ptr [rbp - 0x94]
	lea	rsi, [rsi]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0xb0]
	mov	rbp, rbp
	ucomiss	xmm1, xmm0
	jbe	.label_1190
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rax + 0x28]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x10], 1
	je	.label_1191
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	lea	rdi, [rdi]
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	mov	rbp, rbp
	addss	xmm0, xmm0
	mov	rsp, rsp
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xc], xmm1
	nop	
	movss	dword ptr [rbp - 0xac], xmm0
	lea	rsi, [rsi]
	js	.label_1199
	movss	xmm0, dword ptr [rbp - 0xc]
	movss	dword ptr [rbp - 0xac], xmm0
.label_1199:
	lea	rdi, [rdi]
	movss	xmm0, dword ptr [rbp - 0xac]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mulss	xmm0, dword ptr [rax + 4]
	movss	dword ptr [rbp - 0x10], xmm0
	jmp	.label_1205
.label_1191:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	mov	rsp, rsp
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	nop	
	mov	esi, edx
	mov	rsp, rsp
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	lea	rsi, [rsi]
	addss	xmm0, xmm0
	mov	rsp, rsp
	cvtsi2ss	xmm1, rax
	nop	
	test	rax, rax
	nop	
	movss	dword ptr [rbp - 0x28], xmm1
	movss	dword ptr [rbp - 0xa8], xmm0
	js	.label_1197
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x28]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1197:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mulss	xmm0, dword ptr [rax + 4]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mulss	xmm0, dword ptr [rax + 8]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0x10], xmm0
.label_1205:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x10]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1105]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	lea	rdi, [rdi]
	movabs	rcx, 0x8000000000000000
	lea	rsi, [rsi]
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	lea	rsi, [rsi]
	ucomiss	xmm0, xmm1
	mov	rbp, rbp
	cmovb	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	hash_rehash
	test	al, 1
	jne	.label_1200
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0xc0], rax
.label_1194:
	cmp	qword ptr [rbp - 0xc0], 0
	nop	
	je	.label_1196
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_1194
.label_1196:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rax + 0x48], 0
.label_1200:
	lea	rsi, [rsi]
	jmp	.label_1190
.label_1190:
	jmp	.label_1203
.label_1203:
	nop	
	jmp	.label_1202
.label_1202:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
.label_1204:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rsp, 0xc0
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415660

	.globl next_prime
	.type next_prime, @function
next_prime:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0xa
	jae	.label_1206
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], 0xa
.label_1206:
	mov	rax, qword ptr [rbp - 0x10]
	or	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_1210:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	rdx, -1
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 1], cl
	mov	rbp, rbp
	je	.label_1208
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	is_prime
	nop	
	xor	al, 0xff
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], al
.label_1208:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1209
	jmp	.label_1207
.label_1209:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 2
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	jmp	.label_1210
.label_1207:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x415710

	.globl is_prime
	.type is_prime, @function
is_prime:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	mov	qword ptr [rbp - 8], 3
	mov	rdi, qword ptr [rbp - 8]
	imul	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
.label_1212:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x11], cl
	mov	rbp, rbp
	jae	.label_1211
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	div	qword ptr [rbp - 8]
	cmp	rdx, 0
	setne	sil
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], sil
.label_1211:
	mov	al, byte ptr [rbp - 0x11]
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1214
	jmp	.label_1213
.label_1214:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	shl	rax, 2
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_1212
.label_1213:
	xor	eax, eax
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	mov	rax, rdx
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, esi
	mov	rsp, rsp
	div	qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rdx, 0
	mov	esi, dword ptr [rbp - 0x18]
	cmovne	esi, ecx
	cmp	esi, 0
	setne	dil
	lea	rdi, [rdi]
	and	dil, 1
	movzx	ecx, dil
	mov	eax, ecx
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415810

	.globl free_entry
	.type free_entry, @function
free_entry:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi], 0
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rsi + 0x48]
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x48], rsi
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x415860

	.globl triple_hash
	.type triple_hash, @function
triple_hash:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	hash_pjw
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	rax, qword ptr [rsi + 8]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	mov	rsp, rsp
	div	qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, rdx
	nop	
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4158d0

	.globl triple_hash_no_name
	.type triple_hash_no_name, @function
triple_hash_no_name:
	nop
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rsi + 8]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, rdx
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415910

	.globl triple_compare
	.type triple_compare, @function
triple_compare:
	nop
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	qword ptr [rbp - 0x28], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 8]
	mov	rdi, qword ptr [rbp - 0x18]
	cmp	rsi, qword ptr [rdi + 8]
	mov	byte ptr [rbp - 0x19], cl
	jne	.label_1215
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x19], cl
	jne	.label_1215
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	same_name
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x19], al
.label_1215:
	mov	al, byte ptr [rbp - 0x19]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, 1
	lea	rdi, [rdi]
	test	al, 1
	cmovne	ecx, edx
	nop	
	cmp	ecx, 0
	setne	al
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4159d0
	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:

	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	cmp	rsi, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], cl
	lea	rsi, [rsi]
	jne	.label_1216
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x11], cl
	lea	rdi, [rdi]
	jne	.label_1216
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0x11], cl
.label_1216:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x11]
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	
	mov	edx, 1
	test	al, 1
	cmovne	ecx, edx
	mov	rsp, rsp
	cmp	ecx, 0
	lea	rdi, [rdi]
	setne	al
	lea	rsi, [rsi]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415ab0

	.globl triple_free
	.type triple_free, @function
triple_free:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi]
	call	free
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x415b00

	.globl opendirat
	.type opendirat, @function
opendirat:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 0x14], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], edx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	mov	edx, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	or	edx, 0x90900
	mov	dword ptr [rbp - 4], edx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 4]
	mov	al, 0
	lea	rsi, [rsi]
	call	openat_safer
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x40], eax
	cmp	dword ptr [rbp - 0x40], 0
	mov	rsp, rsp
	jge	.label_1217
	nop	
	mov	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	jmp	.label_1219
.label_1217:
	mov	edi, dword ptr [rbp - 0x40]
	call	fdopendir
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_1220
	nop	
	mov	eax, dword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dword ptr [rcx], eax
	jmp	.label_1218
.label_1220:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x38], ecx
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x40]
	call	close
	mov	ecx, dword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c], eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], ecx
	nop	
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x34]
	mov	dword ptr [rax], ecx
.label_1218:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_1219:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x415c00

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
	jne	.label_1221
	movabs	rdi, OFFSET FLAT:.str_11
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	call	abort
.label_1221:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1224
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1223
.label_1224:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_1223:
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
	jl	.label_1222
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_8
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
	jne	.label_1222
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.2_5
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
	jne	.label_1225
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_1225:
	jmp	.label_1222
.label_1222:
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
	.align	32
	#Procedure 0x415d80

	.globl qcopy_acl
	.type qcopy_acl, @function
qcopy_acl:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	lea	rax, [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	mov	dword ptr [rbp - 0x28], esi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], ecx
	mov	dword ptr [rbp - 0x24], r8d
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x28]
	mov	edx, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	rcx, rax
	call	get_permissions
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x30], eax
	cmp	dword ptr [rbp - 0x30], 0
	je	.label_1226
	mov	dword ptr [rbp - 0x14], 0xfffffffe
	nop	
	jmp	.label_1227
.label_1226:
	lea	rdi, [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x2c]
	call	set_permissions
	lea	rdi, [rbp - 8]
	mov	dword ptr [rbp - 0x30], eax
	call	free_permission_context
	mov	eax, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x14], eax
.label_1227:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x415e20

	.globl qset_acl
	.type qset_acl, @function
qset_acl:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	rsp, rsp
	lea	rax, [rbp - 8]
	xor	ecx, ecx
	mov	r8d, 4
	mov	rsp, rsp
	mov	r9d, r8d
	mov	qword ptr [rbp - 0x20], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	dword ptr [rbp - 0xc], edx
	mov	rdi, rax
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	call	memset
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0xc]
	nop	
	mov	dword ptr [rbp - 8], ecx
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	call	set_permissions
	lea	rdi, [rbp - 8]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], eax
	mov	rbp, rbp
	call	free_permission_context
	mov	eax, dword ptr [rbp - 0x10]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x415ea0
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
	je	.label_1229
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_1228
.label_1229:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_1228
.label_1228:
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
	.align	32
	#Procedure 0x415f50
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
	je	.label_1230
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_1231
.label_1230:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1231
.label_1231:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415fb0
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
	je	.label_1232
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1233
.label_1232:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_1233
.label_1233:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416010

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
	je	.label_1234
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jmp	.label_1235
.label_1234:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_1235
.label_1235:
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
	.align	32
	#Procedure 0x416110
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
	jne	.label_1236
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
.label_1236:
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
	.align	32
	#Procedure 0x416170

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
	jne	.label_1237
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
.label_1237:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_1239
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_1238
.label_1239:
	call	abort
.label_1238:
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
	.align	32
	#Procedure 0x416210
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
	je	.label_1240
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1241
.label_1240:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_1241
.label_1241:
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
	.align	32
	#Procedure 0x416310

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
.label_1419:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0x88], rcx
	mov	qword ptr [rbp - 0x130], rdx
	ja	.label_1442
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1254]]
	jmp	rcx
.label_1959:
	mov	dword ptr [rbp - 0x58], 5
	mov	byte ptr [rbp - 0x3e], 1
.label_1958:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_1266
	jmp	.label_1270
.label_1270:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1271
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x22
.label_1271:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_1266
.label_1266:
	movabs	rax, OFFSET FLAT:.str.10_1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	jmp	.label_1285
.label_1960:
	nop	
	mov	byte ptr [rbp - 0x89], 1
	nop	
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_1285
.label_1961:
	cmp	dword ptr [rbp - 0x58], 0xa
	je	.label_1298
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.11_1
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	gettext_quote
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.12_1
	mov	qword ptr [rbp - 0x120], rax
	mov	esi, dword ptr [rbp - 0x58]
	call	gettext_quote
	mov	qword ptr [rbp - 0xc0], rax
.label_1298:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_1313
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x108], rax
.label_1336:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_1320
	jmp	.label_1433
.label_1433:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1322
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rdx + rax], cl
.label_1322:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1302
.label_1302:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_1336
.label_1320:
	mov	rbp, rbp
	jmp	.label_1313
.label_1313:
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
	jmp	.label_1285
.label_1956:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x89], 1
.label_1955:
	mov	byte ptr [rbp - 0x3e], 1
.label_1957:
	nop	
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_1360
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
.label_1360:
	jmp	.label_1362
.label_1362:
	mov	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_1363
	jmp	.label_1367
.label_1367:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_1368
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1368:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1363
.label_1363:
	movabs	rax, OFFSET FLAT:.str.12_1
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	mov	rsp, rsp
	jmp	.label_1285
.label_1954:
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_1285
.label_1442:
	call	abort
.label_1285:
	mov	qword ptr [rbp - 0xd8], 0
.label_1388:
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_1384
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
	jmp	.label_1385
.label_1384:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], edx
.label_1385:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1402
	mov	rbp, rbp
	jmp	.label_1410
.label_1402:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa6], 0
	nop	
	mov	byte ptr [rbp - 0x3f], 0
	mov	byte ptr [rbp - 0x91], 0
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_1258
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	je	.label_1258
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_1258
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], -1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jne	.label_1296
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xd0]
	jae	.label_1296
	mov	rdi, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_1432
.label_1296:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xc8], rax
.label_1432:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_1258
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
	jne	.label_1258
	nop	
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	je	.label_1262
	jmp	.label_1276
.label_1262:
	nop	
	mov	byte ptr [rbp - 0xa6], 1
.label_1258:
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
	ja	.label_1269
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1283]]
	nop	
	jmp	rcx
.label_2004:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	je	.label_1288
	mov	rsp, rsp
	jmp	.label_1293
.label_1293:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_1295
	jmp	.label_1276
.label_1295:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3f], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_1291
	mov	rbp, rbp
	test	byte ptr [rbp - 0x42], 1
	mov	rbp, rbp
	jne	.label_1291
	nop	
	jmp	.label_1304
.label_1304:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1307
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_1307:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1314
.label_1314:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1318
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_1318:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_1324
.label_1324:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1329
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1329:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_1291:
	lea	rsi, [rsi]
	jmp	.label_1354
.label_1354:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1341
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_1341:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1348
.label_1348:
	cmp	dword ptr [rbp - 0x58], 2
	je	.label_1308
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_1308
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x150]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_1308
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_1308
	nop	
	jmp	.label_1372
.label_1372:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1373
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x30
.label_1373:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1359
.label_1359:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1422
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_1422:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1308
.label_1308:
	mov	byte ptr [rbp - 0x3d], 0x30
	nop	
	jmp	.label_1389
.label_1288:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_1392
	mov	rbp, rbp
	jmp	.label_1386
.label_1392:
	jmp	.label_1389
.label_1389:
	jmp	.label_1281
.label_2015:
	mov	eax, dword ptr [rbp - 0x58]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0x78], eax
	nop	
	mov	dword ptr [rbp - 0x90], ecx
	mov	rsp, rsp
	je	.label_1400
	mov	rbp, rbp
	jmp	.label_1406
.label_1406:
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb4], eax
	lea	rsi, [rsi]
	je	.label_1408
	jmp	.label_1414
.label_1400:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_1416
	jmp	.label_1276
.label_1416:
	jmp	.label_1338
.label_1408:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 4
	cmp	eax, 0
	je	.label_1261
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	jae	.label_1261
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_1261
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
	je	.label_1246
	nop	
	jmp	.label_1438
.label_1438:
	nop	
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	jb	.label_1246
	jmp	.label_1244
.label_1244:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x144]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_1246
	jmp	.label_1255
.label_1255:
	mov	eax, dword ptr [rbp - 0x144]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x128], eax
	je	.label_1246
	jmp	.label_1334
.label_1334:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0xf4], eax
	lea	rdi, [rdi]
	ja	.label_1440
	jmp	.label_1246
.label_1246:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_1273
	jmp	.label_1276
.label_1273:
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
	jae	.label_1277
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_1277:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1300
.label_1300:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1305
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_1305:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1310
.label_1310:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1317
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_1317:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1321
.label_1321:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1264
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_1264:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1251
.label_1440:
	jmp	.label_1251
.label_1251:
	jmp	.label_1261
.label_1261:
	jmp	.label_1338
.label_1414:
	jmp	.label_1338
.label_1338:
	jmp	.label_1281
.label_2005:
	mov	byte ptr [rbp - 0xb6], 0x61
	jmp	.label_1343
.label_2006:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb6], 0x62
	jmp	.label_1343
.label_2010:
	mov	byte ptr [rbp - 0xb6], 0x66
	lea	rdi, [rdi]
	jmp	.label_1343
.label_2008:
	mov	byte ptr [rbp - 0xb6], 0x6e
	mov	rbp, rbp
	jmp	.label_1351
.label_2011:
	mov	byte ptr [rbp - 0xb6], 0x72
	mov	rbp, rbp
	jmp	.label_1351
.label_2007:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb6], 0x74
	jmp	.label_1351
.label_2009:
	mov	byte ptr [rbp - 0xb6], 0x76
	jmp	.label_1343
.label_2016:
	mov	al, byte ptr [rbp - 0x3d]
	nop	
	mov	byte ptr [rbp - 0xb6], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_1361
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_1365
	nop	
	jmp	.label_1276
.label_1365:
	lea	rsi, [rsi]
	jmp	.label_1279
.label_1361:
	test	byte ptr [rbp - 0x89], 1
	je	.label_1344
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_1344
	nop	
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rbp, rbp
	je	.label_1344
	jmp	.label_1279
.label_1344:
	jmp	.label_1351
.label_1351:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	jne	.label_1378
	test	byte ptr [rbp - 0x3e], 1
	je	.label_1378
	jmp	.label_1276
.label_1378:
	mov	rsp, rsp
	jmp	.label_1343
.label_1343:
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_1382
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb6]
	mov	byte ptr [rbp - 0x3d], al
	jmp	.label_1284
.label_1382:
	jmp	.label_1281
.label_2017:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_1390
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x150]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_1394
	jmp	.label_1399
.label_1390:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 1
	je	.label_1394
.label_1399:
	nop	
	jmp	.label_1281
.label_1394:
	jmp	.label_1403
.label_1403:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rbp, rbp
	je	.label_1404
	lea	rsi, [rsi]
	jmp	.label_1281
.label_1404:
	nop	
	jmp	.label_1411
.label_1411:
	mov	byte ptr [rbp - 0x91], 1
.label_2012:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_1413
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_1413
	jmp	.label_1276
.label_1413:
	lea	rsi, [rsi]
	jmp	.label_1281
.label_2014:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa5], 1
	mov	byte ptr [rbp - 0x91], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_1420
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_1315
	jmp	.label_1276
.label_1315:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1330
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x140], 0
	lea	rdi, [rdi]
	jne	.label_1330
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x140], rax
	mov	qword ptr [rbp - 0x28], 0
.label_1330:
	jmp	.label_1434
.label_1434:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_1436
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_1436:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1441
.label_1441:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	jae	.label_1250
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_1250:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_1263
.label_1263:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1268
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1268:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_1420:
	lea	rsi, [rsi]
	jmp	.label_1281
.label_2013:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 1
	jmp	.label_1281
.label_1269:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xb5], 1
	je	.label_1289
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
	jmp	.label_1247
.label_1289:
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
	jne	.label_1316
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x150]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
.label_1316:
	jmp	.label_1323
.label_1323:
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
	jne	.label_1339
	jmp	.label_1345
.label_1339:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], -1
	jne	.label_1346
	mov	byte ptr [rbp - 0x40], 0
	jmp	.label_1345
.label_1346:
	nop	
	cmp	qword ptr [rbp - 0x10], -2
	jne	.label_1350
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_1370:
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
	jae	.label_1355
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0x110]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x41], sil
.label_1355:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_1393
	jmp	.label_1369
.label_1393:
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_1370
.label_1369:
	jmp	.label_1345
.label_1350:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_1376
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_1376
	mov	qword ptr [rbp - 0xe8], 1
.label_1418:
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_1379
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
	jb	.label_1381
	jmp	.label_1396
.label_1396:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x148], eax
	je	.label_1381
	jmp	.label_1401
.label_1401:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	je	.label_1381
	jmp	.label_1407
.label_1407:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x48], eax
	jne	.label_1409
	mov	rsp, rsp
	jmp	.label_1381
.label_1381:
	mov	rsp, rsp
	jmp	.label_1276
.label_1409:
	jmp	.label_1417
.label_1417:
	mov	rsp, rsp
	jmp	.label_1437
.label_1437:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe8]
	add	rax, 1
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_1418
.label_1379:
	mov	rbp, rbp
	jmp	.label_1376
.label_1376:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x74]
	call	iswprint
	cmp	eax, 0
	jne	.label_1426
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_1426:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_1427
.label_1427:
	lea	rsi, [rsi]
	jmp	.label_1429
.label_1429:
	jmp	.label_1430
.label_1430:
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
	jne	.label_1323
.label_1345:
	jmp	.label_1247
.label_1247:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x40]
	and	dl, 1
	mov	byte ptr [rbp - 0x91], dl
	cmp	rcx, qword ptr [rbp - 0x110]
	nop	
	jb	.label_1439
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_1253
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	mov	rsp, rsp
	jne	.label_1253
.label_1439:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x110]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_1428:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	nop	
	je	.label_1272
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	jne	.label_1272
	jmp	.label_1274
.label_1274:
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_1275
	jmp	.label_1276
.label_1275:
	mov	byte ptr [rbp - 0x3f], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_1280
	test	byte ptr [rbp - 0x42], 1
	jne	.label_1280
	lea	rdi, [rdi]
	jmp	.label_1290
.label_1290:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1292
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1292:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_1299
.label_1299:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1331
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x24
.label_1331:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_1311
.label_1311:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1340
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1340:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_1280:
	jmp	.label_1325
.label_1325:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_1326
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_1326:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1327
.label_1327:
	jmp	.label_1335
.label_1335:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1337
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
.label_1337:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_1349
.label_1349:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1356
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
.label_1356:
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
	jmp	.label_1364
.label_1272:
	test	byte ptr [rbp - 0xa6], 1
	lea	rsi, [rsi]
	je	.label_1371
	lea	rdi, [rdi]
	jmp	.label_1374
.label_1374:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1256
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x5c
.label_1256:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa6], 0
.label_1371:
	nop	
	jmp	.label_1364
.label_1364:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xd8]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_1383
	jmp	.label_1387
.label_1383:
	lea	rsi, [rsi]
	jmp	.label_1391
.label_1391:
	test	byte ptr [rbp - 0x42], 1
	je	.label_1312
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_1312
	lea	rsi, [rsi]
	jmp	.label_1397
.label_1397:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1398
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_1398:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_1405
.label_1405:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_1412
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_1412:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_1312:
	nop	
	jmp	.label_1423
.label_1423:
	mov	rsp, rsp
	jmp	.label_1424
.label_1424:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1425
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x3d]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_1425:
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
	jmp	.label_1428
.label_1387:
	mov	rsp, rsp
	jmp	.label_1279
.label_1253:
	lea	rsi, [rsi]
	jmp	.label_1281
.label_1281:
	test	byte ptr [rbp - 0x89], 1
	mov	rbp, rbp
	je	.label_1421
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_1248
.label_1421:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_1252
.label_1248:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x100], 0
	nop	
	je	.label_1252
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
	jne	.label_1259
.label_1252:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xa6], 1
	lea	rdi, [rdi]
	jne	.label_1259
	mov	rsp, rsp
	jmp	.label_1279
.label_1259:
	nop	
	jmp	.label_1284
.label_1284:
	jmp	.label_1286
.label_1286:
	test	byte ptr [rbp - 0x3e], 1
	mov	rbp, rbp
	je	.label_1287
	jmp	.label_1276
.label_1287:
	mov	byte ptr [rbp - 0x3f], 1
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_1243
	test	byte ptr [rbp - 0x42], 1
	lea	rdi, [rdi]
	jne	.label_1243
	lea	rdi, [rdi]
	jmp	.label_1297
.label_1297:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1303
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_1303:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1309
.label_1309:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1435
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_1435:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1319
.label_1319:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1358
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_1358:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_1243:
	jmp	.label_1332
.label_1332:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1333
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_1333:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1342
.label_1342:
	nop	
	jmp	.label_1279
.label_1279:
	jmp	.label_1347
.label_1347:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x42], 1
	je	.label_1352
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_1352
	lea	rdi, [rdi]
	jmp	.label_1353
.label_1353:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1357
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1357:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1282
.label_1282:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1366
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_1366:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_1352:
	jmp	.label_1375
.label_1375:
	nop	
	jmp	.label_1377
.label_1377:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1328
	mov	al, byte ptr [rbp - 0x3d]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_1328:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x91], 1
	jne	.label_1380
	mov	byte ptr [rbp - 0xb7], 0
.label_1380:
	mov	rbp, rbp
	jmp	.label_1386
.label_1386:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_1388
.label_1410:
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_1395
	cmp	dword ptr [rbp - 0x58], 2
	nop	
	jne	.label_1395
	mov	rbp, rbp
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_1395
	nop	
	jmp	.label_1276
.label_1395:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_1245
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_1245
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa5], 1
	je	.label_1245
	test	byte ptr [rbp - 0xb7], 1
	je	.label_1415
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
	jmp	.label_1301
.label_1415:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jne	.label_1431
	cmp	qword ptr [rbp - 0x140], 0
	lea	rsi, [rsi]
	je	.label_1431
	nop	
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_1419
.label_1431:
	jmp	.label_1242
.label_1242:
	mov	rbp, rbp
	jmp	.label_1245
.label_1245:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x108], 0
	je	.label_1249
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_1249
	mov	rbp, rbp
	jmp	.label_1257
.label_1257:
	mov	rax, qword ptr [rbp - 0x108]
	cmp	byte ptr [rax], 0
	je	.label_1260
	lea	rdi, [rdi]
	jmp	.label_1265
.label_1265:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1267
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_1267:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1278
.label_1278:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_1257
.label_1260:
	jmp	.label_1249
.label_1249:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1294
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0
.label_1294:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1301
.label_1276:
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_1306
	mov	rsp, rsp
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_1306
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], 4
.label_1306:
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
.label_1301:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	add	rsp, 0x168
	pop	rbx
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417db0
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
	.align	32
	#Procedure 0x417e20

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
	je	.label_1443
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_1444
.label_1443:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_1444
.label_1444:
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
	je	.label_1445
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
.label_1445:
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
	.align	32
	#Procedure 0x417ff0
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
.label_1450:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_1449
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
	jmp	.label_1450
.label_1449:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_1448
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_1446]],  rax
.label_1448:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_1447
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_1447:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418100

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
	.align	32
	#Procedure 0x418150

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
	jge	.label_1457
	call	abort
.label_1457:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 0x64]
	jg	.label_1453
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
	jge	.label_1454
	call	xalloc_die
.label_1454:
	test	byte ptr [rbp - 0x51], 1
	je	.label_1452
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_1458
.label_1452:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_1458:
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
	je	.label_1456
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_1446]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_1456:
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
.label_1453:
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
	ja	.label_1455
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
	je	.label_1451
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	free
.label_1451:
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
.label_1455:
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
	.align	32
	#Procedure 0x418480

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
	.align	32
	#Procedure 0x4184c0
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
	.align	32
	#Procedure 0x4184f0
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
	.align	32
	#Procedure 0x418530

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
	.align	32
	#Procedure 0x418590

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
	jne	.label_1459
	call	abort
.label_1459:
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
	.align	32
	#Procedure 0x418630

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
	.align	32
	#Procedure 0x4186a0

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
	.align	32
	#Procedure 0x4186e0
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
	.align	32
	#Procedure 0x418720

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
	.align	32
	#Procedure 0x4187d0

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
	.align	32
	#Procedure 0x418810

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
	.align	32
	#Procedure 0x418840
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
	.align	32
	#Procedure 0x418880

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
	.align	32
	#Procedure 0x418960

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
	.align	32
	#Procedure 0x4189b0

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
	.align	32
	#Procedure 0x418a50
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
	.align	32
	#Procedure 0x418aa0
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
	.align	32
	#Procedure 0x418b00

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
	.align	32
	#Procedure 0x418b40
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
	.align	32
	#Procedure 0x418b80

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
	.align	32
	#Procedure 0x418bc0

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
	.align	32
	#Procedure 0x418c00

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
	je	.label_1463
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1461
.label_1463:
	call	locale_charset
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.13_1
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1462
	movabs	rax, OFFSET FLAT:.str.15_1
	movabs	rcx, OFFSET FLAT:.str.14_1
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1461
.label_1462:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_1
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_1460
	nop	
	movabs	rax, OFFSET FLAT:.str.18_2
	movabs	rcx, OFFSET FLAT:.str.17_2
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_1461
.label_1460:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_1
	movabs	rcx, OFFSET FLAT:.str.10_1
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
.label_1461:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418d40

	.globl renameatu
	.type renameatu, @function
renameatu:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x190
	mov	eax, 0x13c
	mov	rsp, rsp
	mov	r9d, eax
	mov	dword ptr [rbp - 0x14], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc8], rsi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe4], edx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe0], rcx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x20], r8d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x184], 0xffffffff
	mov	dword ptr [rbp - 0x1c], 0x16
	nop	
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	ecx, dword ptr [rbp - 0xe4]
	mov	r8, qword ptr [rbp - 0xe0]
	mov	eax, dword ptr [rbp - 0x20]
	nop	
	mov	rdi, r9
	lea	rdi, [rdi]
	mov	r9d, eax
	lea	rsi, [rsi]
	mov	al, 0
	mov	rsp, rsp
	call	syscall
	mov	ecx, eax
	nop	
	mov	dword ptr [rbp - 0x184], ecx
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], ecx
	cmp	dword ptr [rbp - 0x184], 0
	lea	rdi, [rdi]
	jge	.label_1481
	cmp	dword ptr [rbp - 0x1c], 0x16
	je	.label_1469
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1c], 0x26
	mov	rbp, rbp
	je	.label_1469
	cmp	dword ptr [rbp - 0x1c], 0x5f
	lea	rsi, [rsi]
	je	.label_1469
.label_1481:
	mov	eax, dword ptr [rbp - 0x184]
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_1464
.label_1469:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc0], rax
	mov	dword ptr [rbp - 0x18], 0x14
	mov	byte ptr [rbp - 0xe9], 0
	cmp	dword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	je	.label_1470
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x20]
	nop	
	and	eax, 0xfffffffe
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_1484
	mov	rbp, rbp
	mov	edi, 0x5f
	mov	rsp, rsp
	call	errno_fail
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1464
.label_1484:
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x180]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0xe4]
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	call	lstatat
	cmp	eax, 0
	je	.label_1475
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x4b
	jne	.label_1478
.label_1475:
	lea	rsi, [rsi]
	mov	edi, 0x11
	lea	rdi, [rdi]
	call	errno_fail
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1464
.label_1478:
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 2
	lea	rdi, [rdi]
	je	.label_1487
	nop	
	mov	dword ptr [rbp - 0xc], 0xffffffff
	jmp	.label_1464
.label_1487:
	mov	byte ptr [rbp - 0xe9], 1
	jmp	.label_1470
.label_1470:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	call	strlen
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_1476
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1480
.label_1476:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0xe4]
	mov	rcx, qword ptr [rbp - 0xe0]
	call	renameat
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1464
.label_1480:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	sub	rax, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	movsx	edx, byte ptr [rcx + rax]
	nop	
	cmp	edx, 0x2f
	sete	sil
	mov	rbp, rbp
	and	sil, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xc9], sil
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0xe0]
	nop	
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	and	sil, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xd], sil
	mov	rsp, rsp
	test	byte ptr [rbp - 0xc9], 1
	jne	.label_1468
	test	byte ptr [rbp - 0xd], 1
	jne	.label_1468
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x14]
	nop	
	mov	rsi, qword ptr [rbp - 0xc8]
	mov	edx, dword ptr [rbp - 0xe4]
	mov	rcx, qword ptr [rbp - 0xe0]
	call	renameat
	nop	
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1464
.label_1468:
	mov	rbp, rbp
	lea	rdx, [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x14]
	nop	
	mov	rsi, qword ptr [rbp - 0xc8]
	nop	
	call	lstatat
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_1474
	mov	dword ptr [rbp - 0xc], 0xffffffff
	mov	rsp, rsp
	jmp	.label_1464
.label_1474:
	test	byte ptr [rbp - 0xe9], 1
	je	.label_1483
	mov	eax, dword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	and	eax, 0xf000
	cmp	eax, 0x4000
	lea	rsi, [rsi]
	je	.label_1486
	mov	edi, 2
	call	errno_fail
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1464
.label_1486:
	mov	rbp, rbp
	jmp	.label_1472
.label_1483:
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x180]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0xe4]
	mov	rsi, qword ptr [rbp - 0xe0]
	call	lstatat
	mov	rbp, rbp
	cmp	eax, 0
	nop	
	je	.label_1477
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 2
	mov	rsp, rsp
	jne	.label_1482
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa0]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_1485
.label_1482:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], 0xffffffff
	mov	rbp, rbp
	jmp	.label_1464
.label_1485:
	jmp	.label_1467
.label_1477:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x168]
	and	eax, 0xf000
	cmp	eax, 0x4000
	lea	rdi, [rdi]
	je	.label_1473
	mov	edi, 0x14
	nop	
	call	errno_fail
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	jmp	.label_1464
.label_1473:
	mov	eax, dword ptr [rbp - 0xa0]
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0x4000
	mov	rbp, rbp
	je	.label_1479
	mov	rsp, rsp
	mov	edi, 0x15
	call	errno_fail
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	jmp	.label_1464
.label_1479:
	jmp	.label_1465
.label_1465:
	lea	rdi, [rdi]
	jmp	.label_1467
.label_1467:
	jmp	.label_1472
.label_1472:
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0xd8]
	mov	edx, dword ptr [rbp - 0xe4]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	call	renameat
	mov	dword ptr [rbp - 0x184], eax
	call	__errno_location
	mov	rsp, rsp
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x18], edx
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	je	.label_1471
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xd8]
	nop	
	call	free
.label_1471:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0xe0]
	je	.label_1466
	nop	
	mov	rdi, qword ptr [rbp - 0xc0]
	call	free
.label_1466:
	mov	eax, dword ptr [rbp - 0x18]
	nop	
	mov	dword ptr [rbp - 0xe8], eax
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0xe8]
	nop	
	mov	dword ptr [rax], ecx
	mov	ecx, dword ptr [rbp - 0x184]
	mov	dword ptr [rbp - 0xc], ecx
.label_1464:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	add	rsp, 0x190
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x419250

	.globl errno_fail
	.type errno_fail, @function
errno_fail:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	dword ptr [rbp - 8], edi
	nop	
	mov	edi, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	edi, 0xffffffff
	mov	ecx, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	dword ptr [rax], ecx
	lea	rsi, [rsi]
	mov	eax, edi
	add	rsp, 0x10
	nop	
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419290

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
.label_1494:
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0xc]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	call	write
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	jg	.label_1495
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1493
.label_1495:
	call	__errno_location
	cmp	dword ptr [rax], 4
	nop	
	jne	.label_1491
	nop	
	jmp	.label_1494
.label_1491:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	mov	rbp, rbp
	jne	.label_1488
	mov	eax, 0x7ff00000
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_1488
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], 0x7ff00000
	jmp	.label_1489
.label_1488:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1493
.label_1489:
	jmp	.label_1490
.label_1490:
	jmp	.label_1492
.label_1492:
	jmp	.label_1494
.label_1493:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419370

	.globl same_name
	.type same_name, @function
same_name:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0xffffff9c
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	edi, eax
	mov	edx, eax
	lea	rdi, [rdi]
	call	same_nameat
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4193c0

	.globl same_nameat
	.type same_nameat, @function
same_nameat:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x190
	nop	
	mov	dword ptr [rbp - 0x24], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe0], rsi
	nop	
	mov	dword ptr [rbp - 0xd4], edx
	mov	qword ptr [rbp - 8], rcx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xe0]
	call	last_component
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	last_component
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	call	base_len
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x18]
	call	base_len
	xor	edx, edx
	mov	r8b, dl
	mov	qword ptr [rbp - 0xd0], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0xd0]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xe1], r8b
	lea	rsi, [rsi]
	jne	.label_1498
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xd0]
	call	memcmp
	nop	
	cmp	eax, 0
	sete	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xe1], cl
.label_1498:
	mov	al, byte ptr [rbp - 0xe1]
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0xe2], al
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xe2]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xd5], al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x25], 0
	test	byte ptr [rbp - 0xd5], 1
	lea	rsi, [rsi]
	je	.label_1496
	mov	rdi, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	call	dir_name
	lea	rdx, [rbp - 0xc8]
	mov	qword ptr [rbp - 0x180], rax
	mov	dword ptr [rbp - 0x184], 0x100
	nop	
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x180]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x184]
	call	fstatat
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_1499
	call	__errno_location
	mov	rbp, rbp
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_4
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x180]
	mov	rbp, rbp
	mov	al, 0
	call	error
.label_1499:
	nop	
	mov	rdi, qword ptr [rbp - 0x180]
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	call	dir_name
	lea	rdx, [rbp - 0x178]
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	edi, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x184]
	call	fstatat
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_1497
	call	__errno_location
	mov	rsp, rsp
	mov	edi, 1
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_4
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	al, 0
	nop	
	call	error
.label_1497:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xc0]
	cmp	rdx, qword ptr [rbp - 0x170]
	mov	byte ptr [rbp - 9], cl
	lea	rdi, [rdi]
	jne	.label_1500
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	sete	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], cl
.label_1500:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	mov	byte ptr [rbp - 0x25], al
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	free
.label_1496:
	mov	al, byte ptr [rbp - 0x25]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x190
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419630

	.globl streamsavedir
	.type streamsavedir, @function
streamsavedir:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 0x20], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], esi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], 0
	mov	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], 0
	nop	
	mov	qword ptr [rbp - 0x80], 0
	mov	qword ptr [rbp - 0x48], 0
	mov	esi, dword ptr [rbp - 0x54]
	mov	edi, esi
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [+ (rdi * 8) + comparison_function_table]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], rdi
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1509
	mov	qword ptr [rbp - 0x28], 0
	jmp	.label_1504
.label_1509:
	jmp	.label_1510
.label_1510:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	readdir
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1515
	jmp	.label_1518
.label_1515:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x13
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x50]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	je	.label_1519
	mov	rsp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 0x6c], eax
	lea	rdi, [rdi]
	jmp	.label_1503
.label_1519:
	mov	eax, 2
	mov	ecx, 1
	nop	
	mov	rdx, qword ptr [rbp - 0x50]
	nop	
	movsx	esi, byte ptr [rdx + 1]
	mov	rsp, rsp
	cmp	esi, 0x2e
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x6c], eax
.label_1503:
	mov	eax, dword ptr [rbp - 0x6c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x50]
	movsx	eax, byte ptr [rdx + rcx]
	cmp	eax, 0
	je	.label_1512
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x13
	mov	rdi, rax
	call	strlen
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	nop	
	cmp	qword ptr [rbp - 0x90], 0
	mov	rbp, rbp
	je	.label_1517
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	cmp	rax, qword ptr [rbp - 0x80]
	nop	
	jne	.label_1501
	lea	rsi, [rbp - 0x88]
	mov	eax, 0x10
	mov	edx, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], rcx
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rdi, rcx
	call	x2nrealloc
	mov	qword ptr [rbp - 0xa0], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
.label_1501:
	mov	rdi, qword ptr [rbp - 0x50]
	call	xstrdup
	mov	rdi, qword ptr [rbp - 0x80]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 0xa0]
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x80]
	nop	
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 0xa0]
	mov	qword ptr [rdi + 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_1516
.label_1517:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	ja	.label_1507
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	cmp	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	jae	.label_1513
	call	xalloc_die
.label_1513:
	mov	rsp, rsp
	lea	rsi, [rbp - 8]
	mov	eax, 1
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	call	x2nrealloc
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
.label_1507:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	memcpy
.label_1516:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
.label_1512:
	jmp	.label_1510
.label_1518:
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x58], ecx
	cmp	dword ptr [rbp - 0x58], 0
	nop	
	je	.label_1514
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa0]
	nop	
	mov	rdi, rax
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	call	free
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x58]
	mov	dword ptr [rbp - 0x34], ecx
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x34]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	jmp	.label_1504
.label_1514:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x90], 0
	lea	rdi, [rdi]
	je	.label_1506
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1511
	mov	rbp, rbp
	mov	eax, 0x10
	nop	
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x98], rdi
	nop	
	mov	rdi, rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x98]
	nop	
	call	qsort
.label_1511:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	xmalloc
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], 0
	nop	
	mov	qword ptr [rbp - 0x68], 0
.label_1505:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x80]
	jae	.label_1508
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x68]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	call	stpcpy
	mov	rsi, qword ptr [rbp - 0x60]
	sub	rax, rsi
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	shl	rax, 4
	nop	
	add	rax, qword ptr [rbp - 0xa0]
	nop	
	mov	rdi, qword ptr [rax]
	call	free
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_1505
.label_1508:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	jmp	.label_1502
.label_1506:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	jne	.label_1520
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rsp, rsp
	call	xrealloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
.label_1520:
	mov	rbp, rbp
	jmp	.label_1502
.label_1502:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rax
.label_1504:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rsp, 0xa0
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419ad0

	.globl savedir
	.type savedir, @function
savedir:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x20], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	opendir_safer
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	nop	
	jne	.label_1523
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1521
.label_1523:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0x14]
	call	streamsavedir
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	closedir
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_1522
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], ecx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x18], ecx
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x18]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1521
.label_1522:
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rbp - 0x10], rax
.label_1521:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x419b90

	.globl direntry_cmp_name
	.type direntry_cmp_name, @function
direntry_cmp_name:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi]
	call	strcmp
	lea	rdi, [rdi]
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419be0

	.globl direntry_cmp_inode
	.type direntry_cmp_inode, @function
direntry_cmp_inode:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rsi + 8]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rsi, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	jae	.label_1524
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	jmp	.label_1525
.label_1524:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	seta	dl
	and	dl, 1
	lea	rdi, [rdi]
	movzx	esi, dl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], esi
.label_1525:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x419c70
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
	.align	32
	#Procedure 0x419ca0

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
	.align	32
	#Procedure 0x419cb0
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
	.align	32
	#Procedure 0x419ce0

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
	.align	32
	#Procedure 0x419d20
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
	.align	32
	#Procedure 0x419d60
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
	.align	32
	#Procedure 0x419da0

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
	.align	32
	#Procedure 0x419de0
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
	.align	32
	#Procedure 0x419e20
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
	.align	32
	#Procedure 0x419e60
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
	.align	32
	#Procedure 0x419ea0
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
	.align	32
	#Procedure 0x419ee0
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
	.align	32
	#Procedure 0x419f20
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
	.align	32
	#Procedure 0x419f60
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
	.align	32
	#Procedure 0x419fa0
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
	.align	32
	#Procedure 0x419ff0
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
	.align	32
	#Procedure 0x41a020
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
	.align	32
	#Procedure 0x41a060

	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rdi + 0x50]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a080

	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x70]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a0a0

	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x60]
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41a0c0
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a0e0

	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x48]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a110
	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	movups	xmm0, xmmword ptr [rdi + 0x68]
	movaps	xmmword ptr [rbp - 0x20], xmm0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a140

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rdi + 0x58]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x20], xmm0
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a170
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x10], -1
	mov	qword ptr [rbp - 8], -1
	movups	xmm0, xmmword ptr [rbp - 0x10]
	movaps	xmmword ptr [rbp - 0x20], xmm0
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a1b0
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 8], rsi
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41a1d0
	.globl statat
	.type statat, @function
statat:

	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	nop	
	xor	ecx, ecx
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdx
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	call	fstatat
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41a210

	.globl lstatat
	.type lstatat, @function
lstatat:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	ecx, 0x100
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 8], rdx
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x14]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	call	fstatat
	mov	rsp, rsp
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x41a260

	.globl try_tempname_len
	.type try_tempname_len, @function
try_tempname_len:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x60], rdi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x70], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x10], r8
	mov	dword ptr [rbp - 0x40], 0xffffffff
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4c], esi
	nop	
	mov	dword ptr [rbp - 0x3c], 0x3a2f8
	mov	rdi, qword ptr [rbp - 0x60]
	nop	
	call	strlen
	nop	
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	add	rcx, rdx
	lea	rdi, [rdi]
	cmp	rax, rcx
	mov	rsp, rsp
	jb	.label_1534
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	sub	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 0x70]
	sub	rax, rcx
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	nop	
	call	check_x_suffix
	nop	
	test	al, 1
	mov	rsp, rsp
	jne	.label_1538
.label_1534:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1528
.label_1538:
	xor	eax, eax
	mov	edi, eax
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	sub	rcx, rdx
	add	rcx, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	randint_all_new
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x48], 0
	lea	rdi, [rdi]
	jne	.label_1529
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rbp, rbp
	jmp	.label_1528
.label_1529:
	mov	dword ptr [rbp - 0x14], 0
.label_1532:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x3c]
	jae	.label_1533
	mov	qword ptr [rbp - 0x78], 0
.label_1537:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	jae	.label_1531
	mov	eax, 0x3d
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x48]
	call	randint_genmax
	mov	cl,  byte ptr [byte ptr [+ (rax * 1) + letters]]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	byte ptr [rsi + rax], cl
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	nop	
	jmp	.label_1537
.label_1531:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x40], eax
	cmp	dword ptr [rbp - 0x40], 0
	nop	
	jl	.label_1536
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x18], eax
	lea	rsi, [rsi]
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x18]
	nop	
	mov	dword ptr [rax], ecx
	lea	rsi, [rsi]
	jmp	.label_1526
.label_1536:
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0x11
	lea	rdi, [rdi]
	je	.label_1535
	mov	dword ptr [rbp - 0x40], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_1526
.label_1535:
	jmp	.label_1530
.label_1530:
	jmp	.label_1527
.label_1527:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	jmp	.label_1532
.label_1533:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	call	randint_all_free
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0x11
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_1528
.label_1526:
	lea	rdi, [rdi]
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6c], ecx
	mov	rdi, qword ptr [rbp - 0x48]
	call	randint_all_free
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rbp - 0x68], eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x64], ecx
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x64]
	mov	dword ptr [rax], ecx
	mov	ecx, dword ptr [rbp - 0x40]
	nop	
	mov	dword ptr [rbp - 4], ecx
.label_1528:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x80
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41a4f0

	.globl check_x_suffix
	.type check_x_suffix, @function
check_x_suffix:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.2_6
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, rax
	call	strspn
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	cmp	rsi, rax
	nop	
	setbe	cl
	and	cl, 1
	mov	rbp, rbp
	movzx	eax, cl
	lea	rsi, [rsi]
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41a550

	.globl gen_tempname_len
	.type gen_tempname_len, @function
gen_tempname_len:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], esi
	mov	dword ptr [rbp - 0x1c], edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], ecx
	mov	qword ptr [rbp - 8], r8
	mov	ecx, dword ptr [rbp - 0x34]
	test	ecx, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], ecx
	je	.label_1543
	mov	rsp, rsp
	jmp	.label_1540
.label_1540:
	mov	eax, dword ptr [rbp - 0x24]
	sub	eax, 1
	nop	
	mov	dword ptr [rbp - 0xc], eax
	je	.label_1542
	jmp	.label_1545
.label_1545:
	nop	
	mov	eax, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	sub	eax, 2
	mov	dword ptr [rbp - 0x20], eax
	je	.label_1539
	mov	rbp, rbp
	jmp	.label_1544
.label_1543:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:try_file
	mov	qword ptr [rbp - 0x30], rax
	nop	
	jmp	.label_1541
.label_1542:
	movabs	rax, OFFSET FLAT:try_dir
	nop	
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1541
.label_1539:
	movabs	rax, OFFSET FLAT:try_nocreate
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1541
.label_1544:
	movabs	rdi, OFFSET FLAT:.str_12
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.1_9
	mov	edx, 0x147
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.gen_tempname_len
	call	__assert_fail
.label_1541:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x1c]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, rax
	call	try_tempname_len
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a660

	.globl try_file
	.type try_file, @function
try_file:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	mov	edx, 0x180
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rsi]
	lea	rsi, [rsi]
	and	eax, 0xfffffffc
	or	eax, 2
	mov	rsp, rsp
	or	eax, 0x40
	or	eax, 0x80
	lea	rsi, [rsi]
	mov	esi, eax
	mov	al, 0
	call	open
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41a6c0

	.globl try_dir
	.type try_dir, @function
try_dir:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0x1c0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	esi, eax
	nop	
	call	mkdir
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a700

	.globl try_nocreate
	.type try_nocreate, @function
try_nocreate:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0xa0
	lea	rax, [rbp - 0x90]
	mov	qword ptr [rbp - 0xa0], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rsi
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, rax
	call	__lstat
	cmp	eax, 0
	je	.label_1547
	call	__errno_location
	cmp	dword ptr [rax], 0x4b
	jne	.label_1546
.label_1547:
	call	__errno_location
	mov	dword ptr [rax], 0x11
.label_1546:
	call	__errno_location
	mov	ecx, 0xffffffff
	nop	
	xor	edx, edx
	cmp	dword ptr [rax], 2
	mov	rbp, rbp
	cmove	ecx, edx
	mov	eax, ecx
	mov	rbp, rbp
	add	rsp, 0xa0
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a790
	.globl gen_tempname
	.type gen_tempname, @function
gen_tempname:

	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	eax, 6
	mov	rsp, rsp
	mov	r8d, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	nop	
	mov	dword ptr [rbp - 4], edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 4]
	nop	
	mov	ecx, dword ptr [rbp - 8]
	call	gen_tempname_len
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a7e0
	.globl try_tempname
	.type try_tempname, @function
try_tempname:

	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	mov	eax, 6
	mov	rsp, rsp
	mov	r8d, eax
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], esi
	mov	qword ptr [rbp - 0x10], rdx
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	try_tempname_len
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41a840

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
	jg	.label_1548
	cmp	dword ptr [rbp - 4], 2
	jg	.label_1548
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
.label_1548:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a8d0

	.globl utimecmp
	.type utimecmp, @function
utimecmp:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	eax, 0xffffff9c
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	dword ptr [rbp - 4], ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	edi, eax
	call	utimecmpat
	lea	rdi, [rdi]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a930

	.globl utimecmpat
	.type utimecmpat, @function
utimecmpat:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x1e0
	mov	dword ptr [rbp - 0x1cc], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc0], rsi
	mov	qword ptr [rbp - 0x60], rdx
	nop	
	mov	qword ptr [rbp - 0x80], rcx
	mov	dword ptr [rbp - 0x134], r8d
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x58]
	nop	
	mov	qword ptr [rbp - 0x128], rcx
	mov	rcx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x58]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe8], rcx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
	call	get_stat_mtime_ns
	mov	r8d, eax
	mov	dword ptr [rbp - 0x24], r8d
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	call	get_stat_mtime_ns
	mov	rsp, rsp
	mov	r8d, eax
	mov	dword ptr [rbp - 0x84], r8d
	mov	r8d, dword ptr [rbp - 0x134]
	and	r8d, 1
	lea	rsi, [rsi]
	cmp	r8d, 0
	je	.label_1551
	mov	qword ptr [rbp - 0xd0], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x128]
	cmp	rax, qword ptr [rbp - 0xe8]
	nop	
	jne	.label_1586
	mov	eax, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x84]
	jne	.label_1586
	mov	dword ptr [rbp - 0x94], 0
	lea	rdi, [rdi]
	jmp	.label_1552
.label_1586:
	mov	rax, qword ptr [rbp - 0x128]
	mov	rcx, qword ptr [rbp - 0xe8]
	sub	rcx, 2
	cmp	rax, rcx
	nop	
	jg	.label_1555
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x94], 0xffffffff
	jmp	.label_1552
.label_1555:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0x128]
	nop	
	sub	rcx, 2
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jg	.label_1564
	mov	dword ptr [rbp - 0x94], 1
	lea	rdi, [rdi]
	jmp	.label_1552
.label_1564:
	nop	
	cmp	qword ptr [word ptr [utimecmpat.ht]],  0
	jne	.label_1574
	lea	rsi, [rsi]
	mov	eax, 0x10
	lea	rdi, [rdi]
	mov	edi, eax
	nop	
	xor	eax, eax
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:dev_info_hash
	movabs	rcx, OFFSET FLAT:dev_info_compare
	movabs	r8, OFFSET FLAT:free
	lea	rsi, [rsi]
	call	hash_initialize
	mov	qword ptr [word ptr [utimecmpat.ht]],  rax
.label_1574:
	cmp	qword ptr [word ptr [utimecmpat.ht]],  0
	je	.label_1585
	nop	
	cmp	qword ptr [word ptr [utimecmpat.new_dst_res]],  0
	jne	.label_1587
	mov	eax, 0x10
	lea	rsi, [rsi]
	mov	edi, eax
	call	malloc
	nop	
	mov	qword ptr [word ptr [utimecmpat.new_dst_res]],  rax
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [utimecmpat.new_dst_res]],  0
	jne	.label_1592
	mov	rsp, rsp
	jmp	.label_1568
.label_1592:
	mov	rax,  qword ptr [word ptr [utimecmpat.new_dst_res]]
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], 0x77359400
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [utimecmpat.new_dst_res]]
	mov	byte ptr [rax + 0xc], 0
.label_1587:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [utimecmpat.new_dst_res]]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [utimecmpat.ht]]
	mov	rax,  qword ptr [word ptr [utimecmpat.new_dst_res]]
	lea	rsi, [rsi]
	mov	rsi, rax
	call	hash_insert
	nop	
	mov	qword ptr [rbp - 0xd0], rax
	cmp	qword ptr [rbp - 0xd0], 0
	jne	.label_1580
	mov	rbp, rbp
	jmp	.label_1568
.label_1580:
	mov	rax, qword ptr [rbp - 0xd0]
	nop	
	cmp	rax,  qword ptr [word ptr [utimecmpat.new_dst_res]]
	lea	rsi, [rsi]
	jne	.label_1577
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [utimecmpat.new_dst_res]],  0
.label_1577:
	nop	
	jmp	.label_1561
.label_1585:
	jmp	.label_1568
.label_1568:
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [utimecmpat.ht]],  0
	je	.label_1583
	lea	rax, [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [utimecmpat.ht]]
	mov	rsi, rax
	mov	rbp, rbp
	call	hash_lookup
	mov	qword ptr [rbp - 0xd0], rax
.label_1583:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xd0], 0
	jne	.label_1550
	lea	rax, [rbp - 0x18]
	mov	qword ptr [rbp - 0xd0], rax
	nop	
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rsp, rsp
	mov	dword ptr [rax + 8], 0x77359400
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rsp, rsp
	mov	byte ptr [rax + 0xc], 0
.label_1550:
	mov	rsp, rsp
	jmp	.label_1561
.label_1561:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x20], ecx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd0]
	nop	
	test	byte ptr [rax + 0xc], 1
	lea	rdi, [rdi]
	jne	.label_1575
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 0x128]
	nop	
	mov	qword ptr [rbp - 0x70], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	get_stat_atime_ns
	mov	ecx, eax
	mov	dword ptr [rbp - 0xc4], ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	get_stat_ctime_ns
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x98], ecx
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0xa0], ecx
	mov	rax, qword ptr [rbp - 0x78]
	or	rax, qword ptr [rbp - 0x30]
	or	rax, qword ptr [rbp - 0x70]
	and	rax, 1
	cmp	rax, 0
	setne	dl
	mov	rbp, rbp
	and	dl, 1
	mov	byte ptr [rbp - 0x8d], dl
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0xc4]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], ecx
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x8c], ecx
	mov	ecx, dword ptr [rbp - 0xa0]
	mov	dword ptr [rbp - 8], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xd4], 1
	imul	ecx, dword ptr [rbp - 0xd4], 0xa
	mov	dword ptr [rbp - 0xd4], ecx
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	cdq	
	idiv	dword ptr [rbp - 0xd4]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x8c]
	mov	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9c], edx
	cdq	
	idiv	dword ptr [rbp - 0xd4]
	mov	ecx, dword ptr [rbp - 0x9c]
	or	ecx, edx
	nop	
	mov	edx, dword ptr [rbp - 8]
	mov	eax, edx
	lea	rdi, [rdi]
	cdq	
	lea	rdi, [rdi]
	idiv	dword ptr [rbp - 0xd4]
	or	ecx, edx
	nop	
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_1589
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x20], 1
	jmp	.label_1578
.label_1589:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x20], eax
	nop	
	mov	eax, dword ptr [rbp - 0xd4]
	mov	ecx, dword ptr [rbp - 0x54]
	nop	
	mov	dword ptr [rbp - 0xb0], eax
	lea	rsi, [rsi]
	mov	eax, ecx
	mov	rbp, rbp
	cdq	
	mov	ecx, dword ptr [rbp - 0xb0]
	mov	rbp, rbp
	idiv	ecx
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x8c]
	mov	dword ptr [rbp - 0x118], eax
	lea	rdi, [rdi]
	mov	eax, esi
	mov	rbp, rbp
	cdq	
	mov	esi, dword ptr [rbp - 0x118]
	mov	rbp, rbp
	idiv	esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x8c], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xd4]
	mov	edi, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1d0], eax
	nop	
	mov	eax, edi
	cdq	
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x1d0]
	lea	rsi, [rsi]
	idiv	edi
	mov	dword ptr [rbp - 8], eax
.label_1557:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0xd0]
	cmp	eax, dword ptr [rdx + 8]
	mov	byte ptr [rbp - 0x19], cl
	jge	.label_1562
	mov	rsp, rsp
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x1d4], eax
	nop	
	mov	eax, ecx
	mov	rbp, rbp
	cdq	
	mov	ecx, dword ptr [rbp - 0x1d4]
	nop	
	idiv	ecx
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x8c]
	mov	eax, esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x104], edx
	cdq	
	nop	
	idiv	ecx
	mov	esi, dword ptr [rbp - 0x104]
	lea	rsi, [rsi]
	or	esi, edx
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 8]
	mov	eax, edx
	cdq	
	idiv	ecx
	nop	
	or	esi, edx
	cmp	esi, 0
	mov	rbp, rbp
	sete	dil
	mov	byte ptr [rbp - 0x19], dil
.label_1562:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_1582
	jmp	.label_1584
.label_1582:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x20], 0x3b9aca00
	lea	rdi, [rdi]
	jne	.label_1591
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x8d], 1
	jne	.label_1588
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x20]
	nop	
	shl	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x20], eax
.label_1588:
	jmp	.label_1584
.label_1591:
	jmp	.label_1549
.label_1549:
	mov	eax, 0xa
	mov	rbp, rbp
	imul	ecx, dword ptr [rbp - 0x20], 0xa
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x20], ecx
	mov	ecx, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xdc], eax
	mov	rsp, rsp
	mov	eax, ecx
	mov	rsp, rsp
	cdq	
	mov	ecx, dword ptr [rbp - 0xdc]
	nop	
	idiv	ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], eax
	mov	eax, dword ptr [rbp - 0x8c]
	mov	rsp, rsp
	cdq	
	mov	rbp, rbp
	idiv	ecx
	mov	dword ptr [rbp - 0x8c], eax
	nop	
	mov	eax, dword ptr [rbp - 8]
	nop	
	cdq	
	lea	rdi, [rdi]
	idiv	ecx
	nop	
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	jmp	.label_1557
.label_1584:
	mov	rsp, rsp
	jmp	.label_1578
.label_1578:
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	dword ptr [rdx + 8], ecx
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	jge	.label_1572
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, 1
	mov	edx, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x100], eax
	mov	eax, edx
	cdq	
	idiv	ecx
	nop	
	mov	esi, dword ptr [rbp - 0x84]
	sub	esi, edx
	mov	dword ptr [rbp - 0x84], esi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xe8]
	cmp	dword ptr [rbp - 0x20], 0x77359400
	mov	edx, dword ptr [rbp - 0x100]
	cmove	edx, ecx
	lea	rdi, [rdi]
	xor	edx, 0xffffffff
	movsxd	r8, edx
	mov	rsp, rsp
	and	rdi, r8
	mov	qword ptr [rbp - 0x130], rdi
	mov	rdi, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	cmp	rdi, qword ptr [rbp - 0x128]
	jl	.label_1579
	mov	rax, qword ptr [rbp - 0xe8]
	cmp	rax, qword ptr [rbp - 0x128]
	mov	rbp, rbp
	jne	.label_1553
	mov	eax, dword ptr [rbp - 0x84]
	nop	
	cmp	eax, dword ptr [rbp - 0x24]
	jg	.label_1553
.label_1579:
	nop	
	mov	dword ptr [rbp - 0x94], 1
	jmp	.label_1552
.label_1553:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x128]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x130]
	mov	rsp, rsp
	jl	.label_1563
	mov	rax, qword ptr [rbp - 0x128]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	jne	.label_1567
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x24]
	mov	ecx, dword ptr [rbp - 0x84]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x84]
	nop	
	mov	dword ptr [rbp - 0xb4], eax
	mov	eax, edx
	cdq	
	idiv	dword ptr [rbp - 0x20]
	mov	rsp, rsp
	sub	ecx, edx
	mov	edx, dword ptr [rbp - 0xb4]
	cmp	edx, ecx
	jge	.label_1567
.label_1563:
	mov	dword ptr [rbp - 0x94], 0xffffffff
	jmp	.label_1552
.label_1567:
	lea	rdi, [rdi]
	mov	ecx, 0x100
	lea	rdx, [rbp - 0x50]
	mov	eax, 9
	mov	rsi, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x50], rsi
	movsxd	rsi, dword ptr [rbp - 0xc4]
	mov	qword ptr [rbp - 0x48], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x20], 0x77359400
	sete	dil
	and	dil, 1
	movzx	r8d, dil
	nop	
	movsxd	r9, r8d
	mov	rsp, rsp
	or	rsi, r9
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rsi
	nop	
	mov	r8d, dword ptr [rbp - 0xa0]
	mov	r10d, dword ptr [rbp - 0x20]
	nop	
	mov	dword ptr [rbp - 0xec], eax
	mov	eax, r10d
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xf8], rdx
	cdq	
	mov	r10d, dword ptr [rbp - 0xec]
	mov	rbp, rbp
	idiv	r10d
	add	r8d, eax
	mov	rsp, rsp
	movsxd	rsi, r8d
	mov	qword ptr [rbp - 0x38], rsi
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x1cc]
	nop	
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	r9, qword ptr [rbp - 0xf8]
	mov	rdx, r9
	call	utimensat
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_1570
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x94], 0xfffffffe
	jmp	.label_1552
.label_1570:
	lea	rdx, [rbp - 0x1c8]
	mov	ecx, 0x100
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x1cc]
	mov	rsi, qword ptr [rbp - 0xc0]
	nop	
	call	fstatat
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x1c8]
	mov	dword ptr [rbp - 0x11c], eax
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rbp - 0x11c]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x170]
	mov	rbp, rbp
	xor	rsi, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	or	rdx, rsi
	mov	qword ptr [rbp - 0xa8], rdx
	lea	rdi, [rdi]
	call	get_stat_mtime_ns
	movsxd	rdx, dword ptr [rbp - 0xa0]
	xor	rax, rdx
	mov	rdx, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	or	rdx, rax
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_1590
	mov	ecx, 0x100
	mov	rsp, rsp
	lea	rdx, [rbp - 0x50]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	movsxd	rax, dword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x1cc]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	call	utimensat
	mov	dword ptr [rbp - 0xfc], eax
.label_1590:
	nop	
	cmp	dword ptr [rbp - 0x11c], 0
	je	.label_1565
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x94], 0xfffffffe
	jmp	.label_1552
.label_1565:
	lea	rdi, [rbp - 0x1c8]
	nop	
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x10c], eax
	nop	
	mov	rcx, qword ptr [rbp - 0x170]
	mov	rsp, rsp
	and	rcx, 1
	mov	rbp, rbp
	imul	rcx, rcx, 0x3b9aca00
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rcx
	call	get_stat_mtime_ns
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x68]
	add	rcx, rax
	mov	rsp, rsp
	mov	edx, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xac], edx
	mov	dword ptr [rbp - 0x20], 1
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x20]
	nop	
	mov	eax, dword ptr [rbp - 0xac]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x88], edx
	cdq	
	mov	esi, dword ptr [rbp - 0x88]
	idiv	esi
	nop	
	mov	dword ptr [rbp - 0xac], eax
.label_1581:
	lea	rsi, [rsi]
	mov	eax, 0xa
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0xac]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x114], eax
	lea	rsi, [rsi]
	mov	eax, ecx
	lea	rdi, [rdi]
	cdq	
	nop	
	mov	ecx, dword ptr [rbp - 0x114]
	lea	rdi, [rdi]
	idiv	ecx
	cmp	edx, 0
	lea	rsi, [rsi]
	jne	.label_1559
	cmp	dword ptr [rbp - 0x20], 0x3b9aca00
	mov	rsp, rsp
	jne	.label_1558
	mov	eax, dword ptr [rbp - 0x20]
	shl	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x20], eax
	mov	rbp, rbp
	jmp	.label_1559
.label_1558:
	nop	
	imul	eax, dword ptr [rbp - 0x20], 0xa
	mov	dword ptr [rbp - 0x20], eax
	mov	eax, dword ptr [rbp - 0x20]
	nop	
	cmp	eax, dword ptr [rbp - 0x10c]
	mov	rbp, rbp
	jne	.label_1554
	jmp	.label_1559
.label_1554:
	mov	rbp, rbp
	jmp	.label_1571
.label_1571:
	mov	eax, 0xa
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0xac]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x108], eax
	mov	rbp, rbp
	mov	eax, ecx
	cdq	
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	idiv	ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xac], eax
	mov	rbp, rbp
	jmp	.label_1581
.label_1559:
	jmp	.label_1572
.label_1572:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	dword ptr [rcx + 8], eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + 0xc], 1
.label_1575:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, 1
	cmp	dword ptr [rbp - 0x20], 0x77359400
	cmove	eax, ecx
	xor	eax, 0xffffffff
	movsxd	rdx, eax
	mov	rbp, rbp
	and	rdx, qword ptr [rbp - 0xe8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], rdx
	mov	eax, dword ptr [rbp - 0x84]
	nop	
	cdq	
	nop	
	idiv	dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x84]
	sub	ecx, edx
	nop	
	mov	dword ptr [rbp - 0x84], ecx
.label_1551:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x128]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0xe8]
	nop	
	jge	.label_1556
	mov	eax, 0xffffffff
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd8], eax
	mov	rbp, rbp
	jmp	.label_1560
.label_1556:
	mov	rax, qword ptr [rbp - 0x128]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0xe8]
	jle	.label_1566
	mov	rbp, rbp
	mov	eax, 1
	nop	
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1569
.label_1566:
	mov	eax, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x84]
	jge	.label_1573
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x110], eax
	mov	rsp, rsp
	jmp	.label_1576
.label_1573:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x24]
	cmp	eax, dword ptr [rbp - 0x84]
	setg	cl
	mov	rbp, rbp
	and	cl, 1
	movzx	eax, cl
	nop	
	mov	dword ptr [rbp - 0x110], eax
.label_1576:
	mov	eax, dword ptr [rbp - 0x110]
	nop	
	mov	dword ptr [rbp - 4], eax
.label_1569:
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0xd8], eax
.label_1560:
	mov	eax, dword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x94], eax
.label_1552:
	mov	eax, dword ptr [rbp - 0x94]
	add	rsp, 0x1e0
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b500

	.globl dev_info_hash
	.type dev_info_hash, @function
dev_info_hash:
	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rsi]
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	div	qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, rdx
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b540

	.globl dev_info_compare
	.type dev_info_compare, @function
dev_info_compare:
	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 8]
	cmp	rsi, qword ptr [rdi]
	sete	al
	lea	rsi, [rsi]
	and	al, 1
	movzx	eax, al
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x41b590
	.globl lutimensat
	.type lutimensat, @function
lutimensat:

	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	ecx, 0x100
	nop	
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	utimensat
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41b5d0

	.globl fdutimens
	.type fdutimens, @function
fdutimens:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x1b0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1a4], edi
	mov	qword ptr [rbp - 0xa8], rsi
	mov	qword ptr [rbp - 0x108], rdx
	cmp	qword ptr [rbp - 0x108], 0
	mov	rbp, rbp
	je	.label_1626
	lea	rax, [rbp - 0x60]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1597
.label_1626:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb0], rcx
	lea	rsi, [rsi]
	jmp	.label_1597
.label_1597:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xc8], rax
	mov	dword ptr [rbp - 0x14], 0
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xc8], 0
	je	.label_1602
	nop	
	mov	rax, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rcx
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x108]
	nop	
	mov	rcx, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rcx
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0xc8]
	call	validate_timespec
	mov	dword ptr [rbp - 0x14], eax
.label_1602:
	cmp	dword ptr [rbp - 0x14], 0
	mov	rbp, rbp
	jge	.label_1619
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9c], 0xffffffff
	jmp	.label_1599
.label_1619:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1a4], 0
	jge	.label_1624
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xa8], 0
	mov	rbp, rbp
	jne	.label_1624
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 9
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x9c], 0xffffffff
	jmp	.label_1599
.label_1624:
	xor	eax, eax
	cmp	eax,  dword ptr [dword ptr [utimensat_works_really]]
	jg	.label_1596
	cmp	dword ptr [rbp - 0x14], 2
	jne	.label_1600
	cmp	dword ptr [rbp - 0x1a4], 0
	nop	
	jge	.label_1601
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x1a0]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xa8]
	call	stat
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_1604
	mov	rbp, rbp
	jmp	.label_1607
.label_1601:
	lea	rsi, [rbp - 0x1a0]
	mov	edi, dword ptr [rbp - 0x1a4]
	call	__fstat
	cmp	eax, 0
	je	.label_1607
.label_1604:
	mov	dword ptr [rbp - 0x9c], 0xffffffff
	jmp	.label_1599
.label_1607:
	mov	rax, qword ptr [rbp - 0xc8]
	nop	
	cmp	qword ptr [rax + 8], 0x3ffffffe
	lea	rdi, [rdi]
	jne	.label_1615
	lea	rdi, [rbp - 0x1a0]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x110], rax
	call	get_stat_atime
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [rbp - 8], rdx
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x110]
	nop	
	mov	qword ptr [rdx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 8], rax
	mov	rsp, rsp
	jmp	.label_1606
.label_1615:
	mov	rax, qword ptr [rbp - 0xc8]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	mov	rsp, rsp
	jne	.label_1628
	lea	rdi, [rbp - 0x1a0]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0x1b0], rax
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x1b0]
	mov	qword ptr [rdx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rdx + 0x18], rax
.label_1628:
	jmp	.label_1606
.label_1606:
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], eax
.label_1600:
	nop	
	cmp	dword ptr [rbp - 0x1a4], 0
	lea	rsi, [rsi]
	jge	.label_1609
	mov	edi, 0xffffff9c
	xor	ecx, ecx
	mov	rsi, qword ptr [rbp - 0xa8]
	nop	
	mov	rdx, qword ptr [rbp - 0xc8]
	call	utimensat
	nop	
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xdc], eax
	cmp	ecx, dword ptr [rbp - 0xdc]
	nop	
	jge	.label_1616
	lea	rsi, [rsi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x26
.label_1616:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xdc], 0
	nop	
	je	.label_1622
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x26
	mov	rsp, rsp
	je	.label_1614
.label_1622:
	mov	dword ptr [dword ptr [utimensat_works_really]],  1
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xdc]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1599
.label_1614:
	mov	rsp, rsp
	jmp	.label_1609
.label_1609:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x1a4]
	mov	rsp, rsp
	jg	.label_1595
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x1a4]
	mov	rsi, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	call	futimens
	mov	rsp, rsp
	xor	edi, edi
	mov	dword ptr [rbp - 0xdc], eax
	nop	
	cmp	edi, dword ptr [rbp - 0xdc]
	mov	rbp, rbp
	jge	.label_1630
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x26
.label_1630:
	cmp	dword ptr [rbp - 0xdc], 0
	je	.label_1608
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x26
	mov	rbp, rbp
	je	.label_1612
.label_1608:
	mov	dword ptr [dword ptr [utimensat_works_really]],  1
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xdc]
	nop	
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1599
.label_1612:
	mov	rbp, rbp
	jmp	.label_1595
.label_1595:
	jmp	.label_1596
.label_1596:
	mov	rbp, rbp
	mov	dword ptr [dword ptr [utimensat_works_really]],  0xffffffff
	mov	dword ptr [dword ptr [lutimensat_works_really]],  0xffffffff
	nop	
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_1617
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14], 3
	je	.label_1598
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x1a4], 0
	lea	rdi, [rdi]
	jge	.label_1627
	mov	rbp, rbp
	lea	rsi, [rbp - 0x1a0]
	mov	rdi, qword ptr [rbp - 0xa8]
	nop	
	call	stat
	cmp	eax, 0
	jne	.label_1593
	mov	rsp, rsp
	jmp	.label_1598
.label_1627:
	nop	
	lea	rsi, [rbp - 0x1a0]
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x1a4]
	mov	rsp, rsp
	call	__fstat
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_1598
.label_1593:
	mov	dword ptr [rbp - 0x9c], 0xffffffff
	jmp	.label_1599
.label_1598:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xc8], 0
	je	.label_1605
	lea	rdi, [rbp - 0x1a0]
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0xc8]
	mov	rsp, rsp
	call	update_timespec
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1613
	jmp	.label_1605
.label_1613:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x9c], 0
	jmp	.label_1599
.label_1605:
	jmp	.label_1617
.label_1617:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xc8], 0
	mov	rsp, rsp
	je	.label_1618
	lea	rax, [rbp - 0x100]
	mov	ecx, 0x3e8
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x100], rsi
	mov	rsi, qword ptr [rbp - 0xc8]
	mov	rsi, qword ptr [rsi + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rax
	mov	rbp, rbp
	mov	rax, rsi
	mov	qword ptr [rbp - 0xc0], rdx
	mov	rbp, rbp
	cqo	
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	idiv	rsi
	mov	qword ptr [rbp - 0xf8], rax
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rax + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xf0], rax
	mov	rax, qword ptr [rbp - 0xc8]
	nop	
	mov	rax, qword ptr [rax + 0x18]
	mov	rsp, rsp
	cqo	
	idiv	rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe8], rax
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd0], rax
	jmp	.label_1621
.label_1618:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd0], 0
.label_1621:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x1a4], 0
	jge	.label_1611
	mov	edi, 0xffffff9c
	mov	rsi, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xd0]
	call	futimesat
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1599
.label_1611:
	xor	eax, eax
	mov	esi, eax
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x1a4]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xd0]
	lea	rdi, [rdi]
	call	futimesat
	cmp	eax, 0
	jne	.label_1623
	cmp	qword ptr [rbp - 0xd0], 0
	nop	
	je	.label_1625
	mov	eax, 0x7a120
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0xd0]
	cmp	rcx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	setle	sil
	and	sil, 1
	mov	byte ptr [rbp - 0xb1], sil
	mov	rdx, qword ptr [rbp - 0xd0]
	cmp	rcx, qword ptr [rdx + 0x18]
	lea	rsi, [rsi]
	setle	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x81], sil
	mov	rbp, rbp
	mov	sil, byte ptr [rbp - 0xb1]
	and	sil, 1
	movzx	eax, sil
	mov	sil, byte ptr [rbp - 0x81]
	and	sil, 1
	mov	rbp, rbp
	movzx	edi, sil
	nop	
	or	eax, edi
	mov	rbp, rbp
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_1610
	mov	rsp, rsp
	lea	rsi, [rbp - 0x1a0]
	mov	edi, dword ptr [rbp - 0x1a4]
	lea	rsi, [rsi]
	call	__fstat
	lea	rdi, [rdi]
	cmp	eax, 0
	jne	.label_1610
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x158]
	mov	rcx, qword ptr [rbp - 0xd0]
	sub	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x148]
	nop	
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	rbp, rbp
	sub	rax, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x98], rax
	mov	qword ptr [rbp - 0x90], 0
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rcx, qword ptr [rax]
	mov	qword ptr [rbp - 0x80], rcx
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x78], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x70], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xb1], 1
	lea	rdi, [rdi]
	je	.label_1594
	cmp	qword ptr [rbp - 0x20], 1
	mov	rbp, rbp
	jne	.label_1594
	lea	rdi, [rbp - 0x1a0]
	mov	rsp, rsp
	call	get_stat_atime_ns
	lea	rdi, [rdi]
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_1594
	lea	rax, [rbp - 0x80]
	nop	
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], 0
.label_1594:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x81], 1
	nop	
	je	.label_1603
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x98], 1
	jne	.label_1603
	lea	rdi, [rbp - 0x1a0]
	call	get_stat_mtime_ns
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_1603
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x80]
	nop	
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], 0
.label_1603:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x90], 0
	je	.label_1620
	xor	eax, eax
	nop	
	mov	esi, eax
	nop	
	mov	edi, dword ptr [rbp - 0x1a4]
	mov	rdx, qword ptr [rbp - 0x90]
	call	futimesat
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
.label_1620:
	nop	
	jmp	.label_1610
.label_1610:
	lea	rdi, [rdi]
	jmp	.label_1625
.label_1625:
	mov	dword ptr [rbp - 0x9c], 0
	jmp	.label_1599
.label_1623:
	lea	rsi, [rsi]
	jmp	.label_1629
.label_1629:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xa8], 0
	jne	.label_1631
	mov	dword ptr [rbp - 0x9c], 0xffffffff
	mov	rbp, rbp
	jmp	.label_1599
.label_1631:
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xd0]
	call	utimes
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x9c], eax
.label_1599:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x9c]
	mov	rsp, rsp
	add	rsp, 0x1b0
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41be60

	.globl validate_timespec
	.type validate_timespec, @function
validate_timespec:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 0x14], 0
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rdi + 8], 0x3fffffff
	je	.label_1635
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0x3ffffffe
	mov	rbp, rbp
	je	.label_1635
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rdx + 8]
	jg	.label_1633
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0x3b9aca00
	lea	rsi, [rsi]
	jge	.label_1633
.label_1635:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax + 0x18], 0x3fffffff
	mov	rsp, rsp
	je	.label_1637
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	mov	rsp, rsp
	je	.label_1637
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	cmp	rcx, qword ptr [rdx + 0x18]
	lea	rsi, [rsi]
	jg	.label_1633
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0x3b9aca00
	mov	rbp, rbp
	jl	.label_1637
.label_1633:
	nop	
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x16
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], 0xffffffff
	jmp	.label_1641
.label_1637:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax + 8], 0x3fffffff
	mov	rbp, rbp
	je	.label_1639
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0x3ffffffe
	jne	.label_1638
.label_1639:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax], 0
	mov	dword ptr [rbp - 4], 1
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0x3ffffffe
	jne	.label_1640
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
.label_1640:
	jmp	.label_1638
.label_1638:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax + 0x18], 0x3fffffff
	je	.label_1636
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	nop	
	jne	.label_1634
.label_1636:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], 0
	mov	dword ptr [rbp - 4], 1
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	jne	.label_1632
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
.label_1632:
	mov	rbp, rbp
	jmp	.label_1634
.label_1634:
	mov	eax, dword ptr [rbp - 4]
	cmp	dword ptr [rbp - 0x14], 1
	sete	cl
	mov	rsp, rsp
	and	cl, 1
	movzx	edx, cl
	add	eax, edx
	mov	dword ptr [rbp - 0x18], eax
.label_1641:
	mov	eax, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41c050

	.globl update_timespec
	.type update_timespec, @function
update_timespec:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x48], rdi
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rsi + 8], 0x3ffffffe
	mov	rbp, rbp
	jne	.label_1645
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	mov	rbp, rbp
	jne	.label_1645
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x49], 1
	mov	rsp, rsp
	jmp	.label_1642
.label_1645:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	cmp	qword ptr [rax + 8], 0x3fffffff
	lea	rsi, [rsi]
	jne	.label_1644
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x18], 0x3fffffff
	mov	rbp, rbp
	jne	.label_1644
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rax], 0
	mov	byte ptr [rbp - 0x49], 0
	mov	rbp, rbp
	jmp	.label_1642
.label_1644:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0x3ffffffe
	mov	rsp, rsp
	jne	.label_1648
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	call	get_stat_atime
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdx
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 8], rax
	lea	rdi, [rdi]
	jmp	.label_1646
.label_1648:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax + 8], 0x3fffffff
	nop	
	jne	.label_1647
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	gettime
.label_1647:
	jmp	.label_1646
.label_1646:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	jne	.label_1650
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0x40], rax
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x30], rdx
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx + 0x18], rax
	mov	rbp, rbp
	jmp	.label_1649
.label_1650:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x18], 0x3fffffff
	jne	.label_1643
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, 0x10
	lea	rdi, [rdi]
	mov	rdi, rax
	call	gettime
.label_1643:
	nop	
	jmp	.label_1649
.label_1649:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x49], 0
.label_1642:
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	add	rsp, 0x50
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41c230

	.globl utimens
	.type utimens, @function
utimens:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	eax, 0xffffffff
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	edi, eax
	mov	rsp, rsp
	call	fdutimens
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c270

	.globl lutimens
	.type lutimens, @function
lutimens:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x110
	mov	qword ptr [rbp - 0x68], rdi
	mov	qword ptr [rbp - 0x40], rsi
	nop	
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1669
	mov	rsp, rsp
	lea	rax, [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_1658
.label_1669:
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rcx
	lea	rsi, [rsi]
	jmp	.label_1658
.label_1658:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x28], rax
	mov	dword ptr [rbp - 0x44], 0
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1664
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rax]
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x10], rcx
	nop	
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 8], rax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	validate_timespec
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], eax
.label_1664:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x44], 0
	jge	.label_1655
	nop	
	mov	dword ptr [rbp - 0x34], 0xffffffff
	mov	rsp, rsp
	jmp	.label_1657
.label_1655:
	xor	eax, eax
	cmp	eax,  dword ptr [dword ptr [lutimensat_works_really]]
	nop	
	jg	.label_1663
	cmp	dword ptr [rbp - 0x44], 2
	lea	rsi, [rsi]
	jne	.label_1653
	mov	rbp, rbp
	lea	rsi, [rbp - 0xf8]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	call	__lstat
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_1668
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], 0xffffffff
	mov	rbp, rbp
	jmp	.label_1657
.label_1668:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], 0x3ffffffe
	jne	.label_1651
	lea	rdi, [rbp - 0xf8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	call	get_stat_atime
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	mov	qword ptr [rbp - 0x58], rdx
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	qword ptr [rdx + 8], rax
	mov	rsp, rsp
	jmp	.label_1661
.label_1651:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	nop	
	jne	.label_1666
	mov	rsp, rsp
	lea	rdi, [rbp - 0xf8]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x110], rax
	mov	rsp, rsp
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x108], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x100], rdx
	mov	rax, qword ptr [rbp - 0x108]
	mov	rdx, qword ptr [rbp - 0x110]
	mov	qword ptr [rdx + 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	qword ptr [rdx + 0x18], rax
.label_1666:
	nop	
	jmp	.label_1661
.label_1661:
	mov	eax, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 0x44], eax
.label_1653:
	mov	rsp, rsp
	mov	edi, 0xffffff9c
	mov	rsp, rsp
	mov	ecx, 0x100
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	utimensat
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x38], eax
	cmp	ecx, dword ptr [rbp - 0x38]
	mov	rsp, rsp
	jge	.label_1670
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0x26
.label_1670:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x38], 0
	je	.label_1656
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	mov	rsp, rsp
	je	.label_1660
.label_1656:
	nop	
	mov	dword ptr [dword ptr [utimensat_works_really]],  1
	mov	rbp, rbp
	mov	dword ptr [dword ptr [lutimensat_works_really]],  1
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], eax
	lea	rdi, [rdi]
	jmp	.label_1657
.label_1660:
	mov	rsp, rsp
	jmp	.label_1663
.label_1663:
	mov	dword ptr [dword ptr [lutimensat_works_really]],  0xffffffff
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x44], 0
	lea	rsi, [rsi]
	je	.label_1662
	nop	
	cmp	dword ptr [rbp - 0x44], 3
	je	.label_1652
	lea	rsi, [rbp - 0xf8]
	mov	rdi, qword ptr [rbp - 0x68]
	call	__lstat
	nop	
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_1652
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_1657
.label_1652:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	je	.label_1659
	lea	rdi, [rbp - 0xf8]
	lea	rsi, [rbp - 0x28]
	call	update_timespec
	mov	rbp, rbp
	test	al, 1
	mov	rbp, rbp
	jne	.label_1667
	jmp	.label_1659
.label_1667:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], 0
	mov	rsp, rsp
	jmp	.label_1657
.label_1659:
	mov	rsp, rsp
	jmp	.label_1662
.label_1662:
	cmp	dword ptr [rbp - 0x44], 0
	jne	.label_1654
	lea	rsi, [rbp - 0xf8]
	mov	rdi, qword ptr [rbp - 0x68]
	call	__lstat
	cmp	eax, 0
	je	.label_1654
	nop	
	mov	dword ptr [rbp - 0x34], 0xffffffff
	jmp	.label_1657
.label_1654:
	mov	eax, dword ptr [rbp - 0xe0]
	and	eax, 0xf000
	cmp	eax, 0xa000
	mov	rsp, rsp
	je	.label_1665
	mov	edi, 0xffffffff
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	call	fdutimens
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_1657
.label_1665:
	nop	
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x26
	mov	dword ptr [rbp - 0x34], 0xffffffff
.label_1657:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x34]
	add	rsp, 0x110
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41c620

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
	je	.label_1675
	movabs	rsi, OFFSET FLAT:.str_13
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
	jmp	.label_1673
.label_1675:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_10
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0x78]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x114], eax
.label_1673:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	eax, OFFSET FLAT:.str.2_7
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
	mov	ecx, OFFSET FLAT:.str.3_4
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
	ja	.label_1674
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1671]]
	jmp	rcx
.label_1925:
	jmp	.label_1672
.label_1926:
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
	jmp	.label_1672
.label_1927:
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
	jmp	.label_1672
.label_1928:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6_1
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
	jmp	.label_1672
.label_1929:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.7_1
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
	jmp	.label_1672
.label_1930:
	nop	
	movabs	rdi, OFFSET FLAT:.str.8_1
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
	jmp	.label_1672
.label_1931:
	nop	
	movabs	rdi, OFFSET FLAT:.str.9_1
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
	jmp	.label_1672
.label_1932:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.10_2
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
	jmp	.label_1672
.label_1933:
	movabs	rdi, OFFSET FLAT:.str.11_2
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
	jmp	.label_1672
.label_1934:
	movabs	rdi, OFFSET FLAT:.str.12_2
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
	jmp	.label_1672
.label_1674:
	movabs	rdi, OFFSET FLAT:.str.13_2
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
.label_1672:
	lea	rdi, [rdi]
	add	rsp, 0x170
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41ce60
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
.label_1676:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1677
	mov	rbp, rbp
	jmp	.label_1678
.label_1678:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_1676
.label_1677:
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
	.align	32
	#Procedure 0x41cf10

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
.label_1683:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x40], 0xa
	mov	byte ptr [rbp - 0x11], cl
	jae	.label_1679
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], ecx
	ja	.label_1685
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
	jmp	.label_1684
.label_1685:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x30], rdx
.label_1684:
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
.label_1679:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_1682
	mov	rsp, rsp
	jmp	.label_1680
.label_1682:
	jmp	.label_1681
.label_1681:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1683
.label_1680:
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
	.align	32
	#Procedure 0x41d070

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
	je	.label_1686
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
.label_1686:
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
	.align	32
	#Procedure 0x41d230
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.14_2
	lea	rsi, [rsi]
	call	gettext
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.15_2
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.16_2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17_0
	movabs	rdx, OFFSET FLAT:.str.18_0
	mov	rsp, rsp
	mov	rdi, rax
	mov	al, 0
	call	printf
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.19_1
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
	.align	32
	#Procedure 0x41d2e0

	.globl can_write_any_file
	.type can_write_any_file, @function
can_write_any_file:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [can_write_any_file.initialized]],  1
	mov	rbp, rbp
	jne	.label_1687
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
	call	geteuid
	lea	rdi, [rdi]
	cmp	eax, 0
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	mov	cl, byte ptr [rbp - 1]
	nop	
	and	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [can_write_any_file.can_write]],  cl
	mov	rsp, rsp
	mov	byte ptr [byte ptr [can_write_any_file.initialized]],  1
.label_1687:
	mov	al,  byte ptr [byte ptr [can_write_any_file.can_write]]
	nop	
	and	al, 1
	movzx	eax, al
	nop	
	add	rsp, 0x10
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41d350
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
	jae	.label_1688
	mov	rbp, rbp
	call	xalloc_die
.label_1688:
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
	.align	32
	#Procedure 0x41d3b0

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
	jne	.label_1689
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_1689
	lea	rdi, [rdi]
	call	xalloc_die
.label_1689:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41d410

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
	jae	.label_1690
	mov	rsp, rsp
	call	xalloc_die
.label_1690:
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
	.align	32
	#Procedure 0x41d490

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
	jne	.label_1691
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_1691
	mov	rdi, qword ptr [rbp - 8]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_1693
.label_1691:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	realloc
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_1692
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_1692
	lea	rsi, [rsi]
	call	xalloc_die
.label_1692:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
.label_1693:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41d540

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
	jne	.label_1694
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1696
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
.label_1696:
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
	jae	.label_1698
	call	xalloc_die
.label_1698:
	lea	rsi, [rsi]
	jmp	.label_1697
.label_1694:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_1695
	call	xalloc_die
.label_1695:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_1697:
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
	.align	32
	#Procedure 0x41d670

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
	.align	32
	#Procedure 0x41d6a0
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
	.align	32
	#Procedure 0x41d6e0
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
	.align	32
	#Procedure 0x41d730
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
	jb	.label_1699
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	calloc
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_1700
.label_1699:
	lea	rsi, [rsi]
	call	xalloc_die
.label_1700:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41d7a0

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
	.align	32
	#Procedure 0x41d7f0

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
	.align	32
	#Procedure 0x41d850

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.1_11
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	nop	
	mov	dword ptr [rbp - 4], eax
	call	gettext
	mov	rsp, rsp
	xor	esi, esi
	nop	
	movabs	rdx, OFFSET FLAT:.str_4
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41d8b0

	.globl yesno
	.type yesno, @function
yesno:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rbp - 8]
	mov	rbp, rbp
	lea	rsi, [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	mov	qword ptr [rbp - 0x10], 0
	mov	rdx,  qword ptr [word ptr [stdin]]
	call	getline
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jg	.label_1702
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_1701
.label_1702:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0xa
	jne	.label_1703
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	byte ptr [rcx + rax], 0
.label_1703:
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	rpmatch
	nop	
	xor	ecx, ecx
	nop	
	cmp	ecx, eax
	mov	rsp, rsp
	setl	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x19], dl
.label_1701:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	call	free
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41d980

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
	je	.label_1704
	mov	rdi, qword ptr [rbp - 8]
	call	__freading
	cmp	eax, 0
	jne	.label_1705
.label_1704:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_1706
.label_1705:
	mov	rdi, qword ptr [rbp - 8]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
.label_1706:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41d9f0

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
	je	.label_1707
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
.label_1707:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41da50

	.globl freadahead
	.type freadahead, @function
freadahead:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 0x28]
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rdi, qword ptr [rax + 0x20]
	nop	
	jbe	.label_1708
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1709
.label_1708:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	nop	
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rcx]
	and	edx, 0x100
	mov	rbp, rbp
	cmp	edx, 0
	mov	qword ptr [rbp - 0x10], rax
	je	.label_1710
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x58]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x48]
	sub	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_1711
.label_1710:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rcx
	mov	rbp, rbp
	jmp	.label_1711
.label_1711:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
.label_1709:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41db20

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
	jne	.label_1712
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_1712
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1712
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
	jne	.label_1714
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	jmp	.label_1713
.label_1714:
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
	jmp	.label_1713
.label_1712:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
.label_1713:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41dc30

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
	jne	.label_1715
	lea	rax, [rbp - 0x14]
	mov	qword ptr [rbp - 0x10], rax
.label_1715:
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
	ja	.label_1716
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_1716
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1716
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
	jmp	.label_1717
.label_1716:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1717:
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
	.align	32
	#Procedure 0x41dd20

	.globl free_permission_context
	.type free_permission_context, @function
free_permission_context:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41dd30

	.globl get_permissions
	.type get_permissions, @function
get_permissions:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	rbp, rbp
	mov	r8d, 4
	mov	r9d, r8d
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x20], esi
	mov	dword ptr [rbp - 4], edx
	mov	qword ptr [rbp - 0x10], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, rcx
	mov	esi, eax
	lea	rdi, [rdi]
	mov	rdx, r9
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	call	memset
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rcx], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41dda0

	.globl chmod_or_fchmod
	.type chmod_or_fchmod, @function
chmod_or_fchmod:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], esi
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edx
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xc], -1
	mov	rsp, rsp
	je	.label_1718
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 4]
	call	fchmod
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], eax
	lea	rdi, [rdi]
	jmp	.label_1719
.label_1718:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	call	chmod
	mov	dword ptr [rbp - 8], eax
.label_1719:
	mov	eax, dword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41de10

	.globl set_permissions
	.type set_permissions, @function
set_permissions:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], edx
	mov	rbp, rbp
	mov	byte ptr [rbp - 5], 0
	mov	byte ptr [rbp - 0x15], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x28], 0
	mov	byte ptr [rbp - 6], 1
	test	byte ptr [rbp - 6], 1
	je	.label_1725
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	edx, dword ptr [rax]
	lea	rsi, [rsi]
	call	chmod_or_fchmod
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x28], 0
	nop	
	je	.label_1726
	mov	dword ptr [rbp - 0x30], 0xffffffff
	jmp	.label_1721
.label_1726:
	mov	rbp, rbp
	jmp	.label_1725
.label_1725:
	test	byte ptr [rbp - 0x15], 1
	nop	
	je	.label_1720
	lea	rdi, [rdi]
	test	byte ptr [rbp - 6], 1
	nop	
	jne	.label_1720
	cmp	dword ptr [rbp - 0x28], 0
	je	.label_1724
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
	jmp	.label_1723
.label_1724:
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	jmp	.label_1723
.label_1723:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 4]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx]
	call	chmod_or_fchmod
	nop	
	mov	dword ptr [rbp - 0x28], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	je	.label_1722
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x24], eax
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x28], 0xffffffff
.label_1722:
	jmp	.label_1720
.label_1720:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x30], eax
.label_1721:
	nop	
	mov	eax, dword ptr [rbp - 0x30]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41df50
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], esi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, esi
	shl	rdi, cl
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	sub	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	nop	
	shr	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41dfa0
	.globl rotr64
	.type rotr64, @function
rotr64:

	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	eax, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], esi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	ecx, esi
	nop	
	shr	rdi, cl
	mov	rdx, qword ptr [rbp - 0x10]
	sub	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	eax, eax
	mov	ecx, eax
	mov	rbp, rbp
	shl	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41dff0
	.globl rotl32
	.type rotl32, @function
rotl32:

	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x20
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], esi
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 8]
	mov	rsp, rsp
	shl	esi, cl
	mov	edi, dword ptr [rbp - 4]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 8]
	nop	
	mov	ecx, eax
	lea	rsi, [rsi]
	shr	edi, cl
	lea	rdi, [rdi]
	or	esi, edi
	mov	rbp, rbp
	mov	eax, esi
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41e040
	.globl rotr32
	.type rotr32, @function
rotr32:

	nop
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x20
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], edi
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], esi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 4]
	mov	rsp, rsp
	shr	esi, cl
	mov	edi, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 4]
	mov	ecx, eax
	shl	edi, cl
	or	esi, edi
	mov	eax, esi
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41e080
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	dword ptr [rbp - 0xc], esi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	edx, eax
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, rdx
	shl	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	movsxd	r8, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	r9, qword ptr [rbp - 0x18]
	sub	r9, r8
	mov	rcx, r9
	shr	rdx, cl
	mov	rbp, rbp
	or	rdi, rdx
	mov	rax, rdi
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41e0e0

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	nop	
	mov	ecx, eax
	mov	qword ptr [rbp - 0x18], rdi
	mov	dword ptr [rbp - 4], esi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rbp - 4]
	mov	edx, eax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rsp, rsp
	mov	rcx, rdx
	lea	rdi, [rdi]
	shr	rdi, cl
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movsxd	r8, dword ptr [rbp - 4]
	mov	r9, qword ptr [rbp - 0x10]
	sub	r9, r8
	nop	
	mov	rcx, r9
	shl	rdx, cl
	mov	rsp, rsp
	or	rdi, rdx
	mov	rsp, rsp
	mov	rax, rdi
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41e140
	.globl rotl16
	.type rotl16, @function
rotl16:

	push	rbp
	mov	rbp, rsp
	mov	ax, di
	lea	rsi, [rsi]
	mov	edi, 0x10
	mov	rsp, rsp
	mov	word ptr [rbp - 6], ax
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], esi
	movzx	esi, word ptr [rbp - 6]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 4]
	mov	rbp, rbp
	shl	esi, cl
	movzx	edx, word ptr [rbp - 6]
	sub	edi, dword ptr [rbp - 4]
	mov	ecx, edi
	sar	edx, cl
	or	esi, edx
	and	esi, 0xffff
	mov	ax, si
	movzx	eax, ax
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41e190
	.globl rotr16
	.type rotr16, @function
rotr16:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	ax, di
	lea	rdi, [rdi]
	mov	edi, 0x10
	mov	rsp, rsp
	mov	word ptr [rbp - 2], ax
	mov	dword ptr [rbp - 8], esi
	lea	rsi, [rsi]
	movzx	esi, word ptr [rbp - 2]
	mov	ecx, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	sar	esi, cl
	nop	
	movzx	edx, word ptr [rbp - 2]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	shl	edx, cl
	or	esi, edx
	lea	rdi, [rdi]
	and	esi, 0xffff
	mov	ax, si
	movzx	eax, ax
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41e1e0
	.globl rotl8
	.type rotl8, @function
rotl8:

	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	mov	al, dil
	mov	rsp, rsp
	mov	edi, 8
	mov	byte ptr [rbp - 5], al
	nop	
	mov	dword ptr [rbp - 4], esi
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rbp - 5]
	mov	ecx, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	shl	esi, cl
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rbp - 5]
	mov	rsp, rsp
	sub	edi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	ecx, edi
	sar	edx, cl
	or	esi, edx
	and	esi, 0xff
	nop	
	mov	al, sil
	mov	rbp, rbp
	movzx	eax, al
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41e240
	.globl rotr8
	.type rotr8, @function
rotr8:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	mov	al, dil
	mov	rsp, rsp
	mov	edi, 8
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], al
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], esi
	movzx	esi, byte ptr [rbp - 1]
	mov	ecx, dword ptr [rbp - 8]
	sar	esi, cl
	movzx	edx, byte ptr [rbp - 1]
	sub	edi, dword ptr [rbp - 8]
	nop	
	mov	ecx, edi
	shl	edx, cl
	lea	rdi, [rdi]
	or	esi, edx
	lea	rsi, [rsi]
	and	esi, 0xff
	mov	al, sil
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41e290

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
	jne	.label_1727
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_1731
.label_1727:
	mov	rbp, rbp
	jmp	.label_1728
.label_1728:
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
	jne	.label_1729
	jmp	.label_1730
.label_1729:
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
	je	.label_1728
.label_1730:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x1a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_1731:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e380

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
	jne	.label_1734
	test	byte ptr [rbp - 0x15], 1
	je	.label_1733
	test	byte ptr [rbp - 0x16], 1
	lea	rsi, [rsi]
	jne	.label_1734
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_1733
.label_1734:
	nop	
	test	byte ptr [rbp - 0x15], 1
	mov	rsp, rsp
	jne	.label_1732
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1732:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0xffffffff
	jmp	.label_1735
.label_1733:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], 0
.label_1735:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41e460

	.globl opendir_safer
	.type opendir_safer, @function
opendir_safer:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, qword ptr [rbp - 0x20]
	call	opendir
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	nop	
	je	.label_1737
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	dirfd
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x34], eax
	nop	
	cmp	ecx, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	jg	.label_1736
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jg	.label_1736
	mov	esi, 0x406
	mov	edx, 3
	mov	edi, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	mov	al, 0
	call	rpl_fcntl
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x30], eax
	cmp	dword ptr [rbp - 0x30], 0
	jge	.label_1739
	lea	rsi, [rsi]
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], ecx
	mov	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	jmp	.label_1738
.label_1739:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x30]
	call	fdopendir
	mov	qword ptr [rbp - 0x28], rax
	call	__errno_location
	lea	rdi, [rdi]
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], edi
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1740
	mov	edi, dword ptr [rbp - 0x30]
	call	close
	mov	dword ptr [rbp - 0x14], eax
.label_1740:
	nop	
	jmp	.label_1738
.label_1738:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	closedir
	nop	
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	mov	dword ptr [rbp - 0x10], ecx
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rax], ecx
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1736:
	jmp	.label_1737
.label_1737:
	nop	
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x41e590

	.globl gettime
	.type gettime, @function
gettime:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	mov	rsp, rsp
	call	clock_gettime
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41e5d0
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	nop	
	lea	rdi, [rbp - 0x10]
	call	gettime
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rbp - 0x10]
	movaps	xmmword ptr [rbp - 0x20], xmm0
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41e620

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
	je	.label_1742
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_14
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_1743
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:.str.1_12
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1741
.label_1743:
	mov	byte ptr [rbp - 0xd], 0
.label_1741:
	jmp	.label_1742
.label_1742:
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
	.align	32
	#Procedure 0x41e6c0

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rsi
.label_1745:
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_1744
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	movsx	rax, byte ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rcx, 9
	mov	rdx, qword ptr [rbp - 0x20]
	shr	rdx, 0x37
	or	rcx, rdx
	lea	rdi, [rdi]
	add	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1745
.label_1744:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	div	qword ptr [rbp - 0x18]
	mov	rax, rdx
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41e750

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
	jne	.label_1747
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_1747:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_1746
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.1_13
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_1746:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41e7d0

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x1d0
	test	al, al
	movaps	xmmword ptr [rbp - 0x30], xmm7
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x100], xmm6
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x90], xmm5
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xb0], xmm4
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0xf0], xmm3
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xc0], xmm2
	movaps	xmmword ptr [rbp - 0x80], xmm1
	movaps	xmmword ptr [rbp - 0xd0], xmm0
	mov	dword ptr [rbp - 0x110], edi
	mov	qword ptr [rbp - 8], r9
	mov	qword ptr [rbp - 0x108], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x118], rcx
	mov	dword ptr [rbp - 0x34], edx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rsi
	mov	rbp, rbp
	je	.label_1748
	lea	rsi, [rsi]
	movaps	xmm0, xmmword ptr [rbp - 0xd0]
	movaps	xmmword ptr [rbp - 0x1a0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x190], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0xc0]
	movaps	xmmword ptr [rbp - 0x180], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0xf0]
	nop	
	movaps	xmmword ptr [rbp - 0x170], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x160], xmm4
	mov	rbp, rbp
	movaps	xmm5, xmmword ptr [rbp - 0x90]
	movaps	xmmword ptr [rbp - 0x150], xmm5
	lea	rsi, [rsi]
	movaps	xmm6, xmmword ptr [rbp - 0x100]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x140], xmm6
	lea	rdi, [rdi]
	movaps	xmm7, xmmword ptr [rbp - 0x30]
	movaps	xmmword ptr [rbp - 0x130], xmm7
.label_1748:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x1a8], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x1b0], rcx
	mov	rdx, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1b8], rdx
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x34]
	mov	rdi, qword ptr [rbp - 0x40]
	nop	
	mov	r8d, dword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44], r8d
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rbp - 0xd4], esi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10c], 0
	mov	esi, dword ptr [rbp - 0xd4]
	and	esi, 0x40
	lea	rsi, [rsi]
	cmp	esi, 0
	je	.label_1750
	lea	rax, [rbp - 0x70]
	mov	rcx, rax
	mov	rsp, rsp
	lea	rdx, [rbp - 0x1d0]
	mov	qword ptr [rcx + 0x10], rdx
	mov	rsp, rsp
	lea	rdx, [rbp + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rdx
	lea	rsi, [rsi]
	mov	dword ptr [rcx + 4], 0x30
	nop	
	mov	dword ptr [rcx], 0x18
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x70]
	cmp	esi, 0x28
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], esi
	lea	rsi, [rsi]
	ja	.label_1749
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	movsxd	rcx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rcx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	add	eax, 8
	mov	rbp, rbp
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x58], rcx
	mov	rsp, rsp
	jmp	.label_1751
.label_1749:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x58], rdx
.label_1751:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rcx, [rbp - 0x70]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10c], edx
	mov	qword ptr [rbp - 0x10], rcx
.label_1750:
	mov	edi, dword ptr [rbp - 0x44]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	edx, dword ptr [rbp - 0xd4]
	mov	ecx, dword ptr [rbp - 0x10c]
	xor	eax, eax
	mov	r8b, al
	mov	al, r8b
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0x1d0
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41ea40

	.globl randint_new
	.type randint_new, @function
randint_new:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	nop	
	mov	eax, 0x18
	nop	
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rcx
	mov	rbp, rbp
	call	xmalloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41eaa0

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	call	randread_new
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	nop	
	je	.label_1753
	mov	rdi, qword ptr [rbp - 0x18]
	call	randint_new
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1752
.label_1753:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rcx
	lea	rsi, [rsi]
	jmp	.label_1752
.label_1752:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41eb10
	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:

	nop
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41eb30

	.globl randint_genmax
	.type randint_genmax, @function
randint_genmax:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x38], rdi
	mov	qword ptr [rbp - 0x70], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x50], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x10]
	nop	
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	add	rsi, 1
	nop	
	mov	qword ptr [rbp - 0x58], rsi
.label_1755:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x70]
	jae	.label_1757
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
.label_1759:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	call	shift_left
	add	rax, 0xff
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x70]
	jb	.label_1759
	lea	rsi, [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x60]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	call	randread
	mov	qword ptr [rbp - 0x10], 0
.label_1758:
	mov	rdi, qword ptr [rbp - 0x50]
	call	shift_left
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp + rdi - 8]
	lea	rsi, [rsi]
	mov	edi, ecx
	add	rax, rdi
	mov	qword ptr [rbp - 0x50], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	shift_left
	nop	
	add	rax, 0xff
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x70]
	jb	.label_1758
	jmp	.label_1757
.label_1757:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x70]
	jne	.label_1756
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1754
.label_1756:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0x58]
	nop	
	mov	qword ptr [rbp - 0x68], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	sub	rdx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rax, rdx
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	div	qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, qword ptr [rbp - 0x50]
	cmp	rdx, qword ptr [rbp - 0x20]
	ja	.label_1760
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rsi + 8], rax
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_1754
.label_1760:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x68]
	sub	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_1755
.label_1754:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rsp, 0x70
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41ed90

	.globl shift_left
	.type shift_left, @function
shift_left:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	shl	rdi, 8
	mov	rax, rdi
	pop	rbp
	nop	
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41edb0

	.globl randint_free
	.type randint_free, @function
randint_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0x18
	mov	esi, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	explicit_bzero
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	rdi, rsi
	call	free
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41edf0

	.globl randint_all_free
	.type randint_all_free, @function
randint_all_free:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	call	randread_free
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 8], ecx
	mov	rdi, qword ptr [rbp - 0x10]
	call	randint_free
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x14], ecx
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41ee50

	.globl randread_new
	.type randread_new, @function
randread_new:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x20], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rsi
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], 0
	mov	rbp, rbp
	jne	.label_1767
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdi, rcx
	nop	
	mov	rsi, rcx
	call	simple_new
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1768
.label_1767:
	nop	
	mov	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_1761
	nop	
	movabs	rsi, OFFSET FLAT:.str_15
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	fopen_safer
	nop	
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	jne	.label_1765
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	jmp	.label_1768
.label_1765:
	mov	rsp, rsp
	jmp	.label_1761
.label_1761:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	call	simple_new
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1762
	mov	eax, 0x1000
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rdx, 0x18
	cmp	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rdi
	mov	rbp, rbp
	jae	.label_1763
	lea	rdi, [rdi]
	mov	eax, 0x1000
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	jmp	.label_1764
.label_1763:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x28], rax
.label_1764:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rcx, rax
	mov	rbp, rbp
	call	setvbuf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1766
.label_1762:
	lea	rdi, [rdi]
	mov	eax, 0x800
	mov	esi, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], 0
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x18
	nop	
	add	rcx, 8
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x38]
	nop	
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	get_nonce
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x18
	lea	rsi, [rsi]
	add	rcx, 8
	lea	rsi, [rsi]
	mov	rdi, rcx
	call	isaac_seed
.label_1766:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
.label_1768:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x50
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41f010

	.globl simple_new
	.type simple_new, @function
simple_new:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	eax, 0x1038
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rdi, rcx
	call	xmalloc
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:randread_error
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rsi], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41f090

	.globl get_nonce
	.type get_nonce, @function
get_nonce:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0xf0
	movabs	rax, OFFSET FLAT:.str.3_5
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rsi
	mov	qword ptr [rbp - 0xc0], rdx
	mov	rdx, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], 0
	nop	
	mov	rdi, rax
	nop	
	mov	esi, ecx
	mov	al, 0
	call	open
	xor	ecx, ecx
	mov	dword ptr [rbp - 0xb8], eax
	lea	rdi, [rdi]
	cmp	ecx, dword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	jg	.label_1784
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0xb8]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], edi
	mov	qword ptr [rbp - 0x98], rsi
	nop	
	jae	.label_1770
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1776
.label_1770:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x30], rax
.label_1776:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdx, rax
	call	read
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x48], 0
	lea	rsi, [rsi]
	jge	.label_1786
	mov	qword ptr [rbp - 0x48], 0
.label_1786:
	mov	edi, dword ptr [rbp - 0xb8]
	call	close
	mov	dword ptr [rbp - 0xd4], eax
.label_1784:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	jae	.label_1782
	lea	rdi, [rdi]
	mov	eax, 0x10
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jae	.label_1775
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rbp, rbp
	jmp	.label_1774
.label_1775:
	mov	rax, qword ptr [rbp - 0x50]
	sub	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0x10], rax
.label_1774:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rbp - 0xd0]
	xor	ecx, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x68], rax
	call	gettimeofday
	lea	rsi, [rbp - 0xd0]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xa0]
	add	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x68]
	nop	
	mov	dword ptr [rbp - 0xa4], eax
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x68]
	add	rdx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rdx
.label_1782:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	jae	.label_1780
	nop	
	mov	eax, 4
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	sub	rdx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	rcx, rdx
	mov	rsp, rsp
	jae	.label_1781
	mov	rsp, rsp
	mov	eax, 4
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x58], rcx
	mov	rsp, rsp
	jmp	.label_1769
.label_1781:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
.label_1769:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	call	getpid
	nop	
	lea	rcx, [rbp - 0xdc]
	mov	dword ptr [rbp - 0xdc], eax
	nop	
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	add	rdx, qword ptr [rbp - 0x48]
	nop	
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0xb0], rsi
	nop	
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0xb0]
	call	memcpy
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	add	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rcx
.label_1780:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	jae	.label_1771
	mov	eax, 4
	nop	
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x50]
	nop	
	sub	rdx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	jae	.label_1773
	mov	eax, 4
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_1778
.label_1773:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x88], rax
.label_1778:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x20], rax
	call	getppid
	lea	rcx, [rbp - 0x74]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x74], eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	add	rdx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rcx
.label_1771:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x50]
	jae	.label_1777
	mov	eax, 4
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x50]
	nop	
	sub	rdx, qword ptr [rbp - 0x48]
	cmp	rcx, rdx
	mov	rbp, rbp
	jae	.label_1779
	lea	rdi, [rdi]
	mov	eax, 4
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_1783
.label_1779:
	mov	rax, qword ptr [rbp - 0x50]
	sub	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_1783:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe8], rax
	call	getuid
	mov	rsp, rsp
	lea	rcx, [rbp - 0xb4]
	mov	dword ptr [rbp - 0xb4], eax
	mov	rdx, qword ptr [rbp - 0xa0]
	add	rdx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0xe8]
	mov	rdi, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rsi
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x80]
	call	memcpy
	mov	rcx, qword ptr [rbp - 0xe8]
	nop	
	add	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rcx
.label_1777:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x50]
	jae	.label_1785
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	sub	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	cmp	rcx, rdx
	jae	.label_1787
	mov	rsp, rsp
	mov	eax, 4
	mov	rsp, rsp
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x60], rcx
	mov	rbp, rbp
	jmp	.label_1772
.label_1787:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x60], rax
.label_1772:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x70], rax
	nop	
	call	getgid
	lea	rcx, [rbp - 0xd8]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd8], eax
	mov	rdx, qword ptr [rbp - 0xa0]
	add	rdx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdi, rdx
	nop	
	mov	qword ptr [rbp - 0x38], rsi
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	memcpy
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	add	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rcx
.label_1785:
	add	rsp, 0xf0
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41f540
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 8], rsi
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41f570
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x10], rsi
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41f590

	.globl randread
	.type randread, @function
randread:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rdx], 0
	mov	rbp, rbp
	je	.label_1788
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	nop	
	call	readsource
	jmp	.label_1789
.label_1788:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x18
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	rdi, rax
	call	readisaac
.label_1789:
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41f610

	.globl readsource
	.type readsource, @function
readsource:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x20], rdx
.label_1793:
	nop	
	mov	eax, 1
	nop	
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	call	fread_unlocked
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	call	__errno_location
	mov	rbp, rbp
	mov	r8d, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 4], r8d
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x20], rcx
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1791
	jmp	.label_1794
.label_1791:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	lea	rdi, [rdi]
	call	ferror_unlocked
	lea	rsi, [rsi]
	cmp	eax, 0
	nop	
	je	.label_1792
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 8], eax
	jmp	.label_1790
.label_1792:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	jmp	.label_1790
.label_1790:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	call	rax
	jmp	.label_1793
.label_1794:
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41f720

	.globl readisaac
	.type readisaac, @function
readisaac:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
.label_1800:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	ja	.label_1798
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rdx, 0x820
	add	rdx, 0x800
	sub	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, rdx
	mov	rdx, rcx
	call	memcpy
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rdx], rcx
	mov	rbp, rbp
	jmp	.label_1796
.label_1798:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 8]
	add	rdx, 0x820
	nop	
	add	rdx, 0x800
	sub	rcx, qword ptr [rbp - 0x20]
	add	rdx, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, rdx
	mov	rsp, rsp
	mov	rdx, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x10], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	and	rcx, 7
	cmp	rcx, 0
	jne	.label_1797
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
.label_1801:
	lea	rdi, [rdi]
	mov	eax, 0x800
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	ja	.label_1795
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, rax
	mov	rbp, rbp
	call	isaac_refill
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 0x800
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x800
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1799
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rax], 0
	mov	rbp, rbp
	jmp	.label_1796
.label_1799:
	lea	rdi, [rdi]
	jmp	.label_1801
.label_1795:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
.label_1797:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rcx, 0x820
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsi, rcx
	call	isaac_refill
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], 0x800
	jmp	.label_1800
.label_1796:
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41f920

	.globl randread_free
	.type randread_free, @function
randread_free:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 0x1038
	mov	esi, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	call	explicit_bzero
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rsi
	call	free
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1802
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	call	rpl_fclose
	nop	
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	jmp	.label_1803
.label_1802:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	jmp	.label_1803
.label_1803:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41f9b0

	.globl randread_error
	.type randread_error, @function
randread_error:
	mov	rsp, rsp
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	nop	
	je	.label_1804
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	nop	
	mov	dword ptr [rbp - 0x24], edi
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], esi
	call	__errno_location
	cmp	dword ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_1806
	movabs	rdi, OFFSET FLAT:.str.1_14
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_1805
.label_1806:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.2_8
	nop	
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
.label_1805:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	call	quote
	mov	edi, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
.label_1804:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41fa70

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rsi
	mov	rsi, qword ptr [rbp - 0x58]
	nop	
	mov	rsi, qword ptr [rsi + 0x800]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rsi + 0x808]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x810]
	add	rax, 1
	mov	qword ptr [rdi + 0x810], rax
	add	rsi, rax
	nop	
	mov	qword ptr [rbp - 0xb8], rsi
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0xb0], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0x50], rax
.label_1808:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 0x15
	xor	rax, rcx
	xor	rax, 0xffffffffffffffff
	xor	rax, 0
	mov	rcx, qword ptr [rbp - 0xb0]
	nop	
	add	rax, qword ptr [rcx + 0x400]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xa0], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0xc0], rax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc0]
	shr	rax, 8
	mov	rsp, rsp
	mov	rsi, rax
	lea	rdi, [rdi]
	call	ind
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xa0]
	nop	
	mov	rdi, rax
	nop	
	call	just
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x80], rax
	mov	rbp, rbp
	call	just
	shr	rax, 5
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	xor	rcx, rax
	xor	rcx, 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb0]
	add	rcx, qword ptr [rax + 0x408]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x40]
	call	ind
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 8
	mov	rsi, rax
	mov	rsp, rsp
	call	ind
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0xb8], rax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	shl	rcx, 0xc
	xor	rax, rcx
	nop	
	xor	rax, 0
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rcx + 0x410]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	qword ptr [rbp - 0x88], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x88]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + 0x10], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x58]
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	shr	rax, 8
	mov	rsi, rax
	lea	rsi, [rsi]
	call	ind
	add	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	call	just
	nop	
	shr	rax, 0x21
	mov	rcx, qword ptr [rbp - 0x48]
	xor	rcx, rax
	mov	rsp, rsp
	xor	rcx, 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb0]
	add	rcx, qword ptr [rax + 0x418]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x10]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + 0x18], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	shr	rax, 8
	mov	rsi, rax
	lea	rsi, [rsi]
	call	ind
	add	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	just
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], rax
	nop	
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 0x20
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	add	rax, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rcx, 0x400
	cmp	rax, rcx
	lea	rsi, [rsi]
	jb	.label_1808
	jmp	.label_1807
.label_1807:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 0x15
	mov	rbp, rbp
	xor	rax, rcx
	xor	rax, 0xffffffffffffffff
	xor	rax, 0
	mov	rcx, qword ptr [rbp - 0xb0]
	nop	
	add	rax, qword ptr [rcx - 0x400]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0xb0]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xd0], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xb8]
	nop	
	mov	qword ptr [rbp - 0x78], rax
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0xd0]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	just
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	call	just
	shr	rax, 5
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	xor	rcx, rax
	lea	rdi, [rdi]
	xor	rcx, 0
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rax - 0x3f8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x30]
	call	ind
	nop	
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 8]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	call	just
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	shl	rcx, 0xc
	xor	rax, rcx
	mov	rbp, rbp
	xor	rax, 0
	mov	rcx, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rcx - 0x3f0]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x90], rax
	mov	rdi, qword ptr [rbp - 0x58]
	nop	
	mov	rsi, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa8], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xb0]
.label_2039:
	nop	
	mov	qword ptr [rcx + 0x10], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0xa8]
	shr	rax, 8
	mov	rsp, rsp
	mov	rsi, rax
	mov	rbp, rbp
	call	ind
	add	rax, qword ptr [rbp - 0x90]
	mov	rdi, rax
	call	just
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb8], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	call	just
	mov	rsp, rsp
	shr	rax, 0x21
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	xor	rcx, rax
	xor	rcx, 0
	mov	rax, qword ptr [rbp - 0xb0]
	add	rcx, qword ptr [rax - 0x3e8]
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0xb0]
	nop	
	mov	rax, qword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x68]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + 0x18], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	shr	rax, 8
	mov	rsi, rax
	lea	rdi, [rdi]
	call	ind
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rdi, rax
	call	just
	nop	
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x50]
	nop	
	mov	qword ptr [rcx + 0x18], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, 0x20
	mov	qword ptr [rbp - 0xb0], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rcx, 0x800
	cmp	rax, rcx
	jb	.label_1807
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x800], rax
	nop	
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x808], rax
	lea	rsi, [rsi]
	add	rsp, 0xd0
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4201a0

	.globl ind
	.type ind, @function
ind:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	and	rdi, 0x7f8
	lea	rdi, [rdi]
	add	rsi, rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rax, qword ptr [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x420210

	.globl just
	.type just, @function
just:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], -1
	nop	
	mov	rdi, qword ptr [rbp - 8]
	and	rdi, qword ptr [rbp - 0x10]
	mov	rax, rdi
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x420240

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x60
	movabs	rax, 0x98f5704f6c44c0ab
	mov	rsp, rsp
	movabs	rcx, 0xae985bf2cbfc89ed
	movabs	rdx, 0x48fe4a0fa5a09315
	nop	
	movabs	rsi, 0x82f053db8355e0ce
	mov	rbp, rbp
	movabs	r8, 0xb29b2e824a595524
	movabs	r9, 0x8c0ea5053d4712a0
	movabs	r10, 0xb9f8b322c73ac862
	movabs	r11, 0x647c4677a2884b7c
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rdi
	mov	qword ptr [rbp - 0x10], r11
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], r10
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], r9
	mov	qword ptr [rbp - 0x30], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rsi
	mov	qword ptr [rbp - 0x58], rdx
	mov	qword ptr [rbp - 0x40], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], 0
.label_1811:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 0x100
	mov	rbp, rbp
	jge	.label_1810
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	edx, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	add	edx, 1
	movsxd	rax, edx
	nop	
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	edx, dword ptr [rbp - 0x14]
	add	edx, 2
	movsxd	rax, edx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	edx, dword ptr [rbp - 0x14]
	add	edx, 3
	movsxd	rax, edx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	add	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	edx, dword ptr [rbp - 0x14]
	add	edx, 4
	movsxd	rax, edx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	add	edx, 5
	mov	rbp, rbp
	movsxd	rax, edx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	mov	edx, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	edx, 6
	movsxd	rax, edx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	edx, dword ptr [rbp - 0x14]
	nop	
	add	edx, 7
	nop	
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rcx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	just
	nop	
	shr	rax, 9
	lea	rsi, [rsi]
	xor	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 9
	xor	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	call	just
	shr	rax, 0x17
	xor	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 0xf
	xor	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rdi, qword ptr [rbp - 0x30]
	call	just
	lea	rdi, [rdi]
	shr	rax, 0xe
	xor	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	sub	rcx, rax
	mov	qword ptr [rbp - 0x58], rcx
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	shl	rax, 0x14
	xor	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	call	just
	shr	rax, 0x11
	xor	rax, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	sub	rcx, rax
	mov	qword ptr [rbp - 8], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	shl	rax, 0xe
	xor	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 0x14]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	add	edx, 1
	mov	rsp, rsp
	movsxd	rcx, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rdi + rcx*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rbp - 0x14]
	add	edx, 2
	mov	rbp, rbp
	movsxd	rcx, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	add	edx, 3
	lea	rsi, [rsi]
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x14]
	add	edx, 4
	mov	rbp, rbp
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x14]
	add	edx, 5
	movsxd	rcx, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	edx, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	add	edx, 6
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	add	edx, 7
	nop	
	movsxd	rcx, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rdi + rcx*8], rax
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 8
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1811
.label_1810:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44], 0
.label_1812:
	cmp	dword ptr [rbp - 0x44], 0x100
	mov	rsp, rsp
	jge	.label_1809
	movsxd	rax, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	edx, dword ptr [rbp - 0x44]
	lea	rdi, [rdi]
	add	edx, 1
	lea	rsi, [rsi]
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x44]
	add	edx, 2
	lea	rsi, [rsi]
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	edx, dword ptr [rbp - 0x44]
	add	edx, 3
	lea	rsi, [rsi]
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 0x50]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x44]
	nop	
	add	edx, 4
	movsxd	rax, edx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	mov	edx, dword ptr [rbp - 0x44]
	add	edx, 5
	movsxd	rax, edx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	mov	edx, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	add	edx, 6
	movsxd	rax, edx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	edx, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	add	edx, 7
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	add	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	just
	lea	rdi, [rdi]
	shr	rax, 9
	nop	
	xor	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	sub	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 9
	lea	rsi, [rsi]
	xor	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	sub	rcx, rax
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	call	just
	mov	rsp, rsp
	shr	rax, 0x17
	mov	rbp, rbp
	xor	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	sub	rcx, rax
	mov	qword ptr [rbp - 0x30], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 0xf
	xor	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x38], rcx
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	call	just
	lea	rsi, [rsi]
	shr	rax, 0xe
	lea	rsi, [rsi]
	xor	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x58]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x58], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	shl	rax, 0x14
	mov	rsp, rsp
	xor	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rcx
	mov	rdi, qword ptr [rbp - 0x58]
	call	just
	mov	rbp, rbp
	shr	rax, 0x11
	mov	rsp, rsp
	xor	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	sub	rcx, rax
	mov	qword ptr [rbp - 8], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 0xe
	xor	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 0x44]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	add	edx, 1
	mov	rbp, rbp
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + rcx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rbp - 0x44]
	add	edx, 2
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x44]
	nop	
	add	edx, 3
	mov	rsp, rsp
	movsxd	rcx, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	qword ptr [rdi + rcx*8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	edx, dword ptr [rbp - 0x44]
	add	edx, 4
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	edx, dword ptr [rbp - 0x44]
	add	edx, 5
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	qword ptr [rdi + rcx*8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	edx, dword ptr [rbp - 0x44]
	nop	
	add	edx, 6
	movsxd	rcx, edx
	nop	
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x44]
	add	edx, 7
	mov	rsp, rsp
	movsxd	rcx, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rcx*8], rax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x44]
	nop	
	add	eax, 8
	mov	dword ptr [rbp - 0x44], eax
	mov	rbp, rbp
	jmp	.label_1812
.label_1809:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x810], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x808], 0
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rax + 0x800], 0
	add	rsp, 0x60
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x420b00

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
	.align	32
	#Procedure 0x420b40

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	esi, eax
	lea	rsi, [rsi]
	call	memset
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x420b80

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
	jge	.label_1816
	mov	rdi, qword ptr [rbp - 8]
	call	fclose
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	jmp	.label_1814
.label_1816:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_1813
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
	je	.label_1815
.label_1813:
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_1815
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_1815:
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_1817
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
.label_1817:
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x10], eax
.label_1814:
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
	.align	32
	#Procedure 0x420ca0

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
	je	.label_1828
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
.label_1828:
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
	je	.label_1832
	nop	
	jmp	.label_1841
.label_1841:
	nop	
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x214], eax
	je	.label_1842
	jmp	.label_1837
.label_1832:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x1c0]
	mov	ecx, dword ptr [rbp - 0x1c0]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0xd8], rax
	nop	
	mov	dword ptr [rbp - 0x1f8], ecx
	ja	.label_1847
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
	jmp	.label_1827
.label_1847:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rcx, 8
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xe8], rdx
.label_1827:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0xe0], ecx
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0xe0]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_1823
.label_1842:
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
	ja	.label_1826
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
	jmp	.label_1839
.label_1826:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_1839:
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
	jmp	.label_1823
.label_1837:
	mov	eax, dword ptr [rbp - 0x1a4]
	test	eax, eax
	nop	
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	je	.label_1819
	nop	
	jmp	.label_1840
.label_1840:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	je	.label_1822
	jmp	.label_1845
.label_1845:
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	je	.label_1819
	nop	
	jmp	.label_1821
.label_1821:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 3
	nop	
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	je	.label_1822
	nop	
	jmp	.label_1831
.label_1831:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x234], eax
	nop	
	je	.label_1819
	lea	rsi, [rsi]
	jmp	.label_1838
.label_1838:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	sub	eax, 8
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	je	.label_1819
	lea	rsi, [rsi]
	jmp	.label_1844
.label_1844:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_1822
	mov	rsp, rsp
	jmp	.label_1846
.label_1846:
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_1819
	jmp	.label_1825
.label_1825:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	eax, 0xb
	nop	
	mov	dword ptr [rbp - 0x23c], eax
	nop	
	je	.label_1822
	lea	rsi, [rsi]
	jmp	.label_1835
.label_1835:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0x400
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	je	.label_1819
	jmp	.label_1818
.label_1818:
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_1822
	mov	rsp, rsp
	jmp	.label_1824
.label_1824:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	sub	eax, 0x402
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	je	.label_1819
	lea	rsi, [rsi]
	jmp	.label_1843
.label_1843:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_1819
	nop	
	jmp	.label_1834
.label_1834:
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x240], eax
	lea	rdi, [rdi]
	jne	.label_1836
	lea	rdi, [rdi]
	jmp	.label_1822
.label_1822:
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0x1a4]
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	fcntl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], eax
	lea	rsi, [rsi]
	jmp	.label_1829
.label_1819:
	nop	
	lea	rax, [rbp - 0x1c0]
	nop	
	mov	ecx, dword ptr [rbp - 0x1c0]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0xf0], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], ecx
	lea	rsi, [rsi]
	ja	.label_1848
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
	jmp	.label_1830
.label_1848:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x208], rdx
.label_1830:
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
	jmp	.label_1829
.label_1836:
	lea	rax, [rbp - 0x1c0]
	mov	ecx, dword ptr [rbp - 0x1c0]
	lea	rsi, [rsi]
	cmp	ecx, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x238], ecx
	lea	rdi, [rdi]
	ja	.label_1833
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
	jmp	.label_1820
.label_1833:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x90], rdx
.label_1820:
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
.label_1829:
	jmp	.label_1823
.label_1823:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	add	rsp, 0x240
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x421300

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
	.align	32
	#Procedure 0x421350

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
	jg	.label_1851
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
	jle	.label_1850
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_1853
.label_1850:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_1855
.label_1853:
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jl	.label_1852
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_1852:
	mov	rbp, rbp
	jmp	.label_1855
.label_1855:
	jmp	.label_1856
.label_1851:
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
.label_1856:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x18]
	jg	.label_1849
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	mov	rsp, rsp
	jne	.label_1849
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0x18]
	mov	al, 0
	call	fcntl
	nop	
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x14], 0
	jl	.label_1857
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
	jne	.label_1854
.label_1857:
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
.label_1854:
	jmp	.label_1849
.label_1849:
	mov	eax, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4214d0

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
	ja	.label_1858
	jmp	.label_1860
.label_1860:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1859
.label_1858:
	lea	rsi, [rsi]
	jmp	.label_1859
.label_1859:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x421530
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
	jb	.label_1861
	jmp	.label_1863
.label_1863:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, -0x41
	lea	rdi, [rdi]
	sub	eax, 0x1a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	jb	.label_1861
	nop	
	jmp	.label_1862
.label_1862:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, -0x61
	sub	eax, 0x19
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], eax
	mov	rbp, rbp
	ja	.label_1865
	jmp	.label_1861
.label_1861:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x15], 1
	lea	rsi, [rsi]
	jmp	.label_1864
.label_1865:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x15], 0
.label_1864:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	eax, al
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4215c0
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
	jb	.label_1866
	nop	
	jmp	.label_1867
.label_1867:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	add	eax, -0x61
	nop	
	sub	eax, 0x19
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	mov	rsp, rsp
	ja	.label_1868
	lea	rdi, [rdi]
	jmp	.label_1866
.label_1866:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	jmp	.label_1869
.label_1868:
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
.label_1869:
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
	.align	32
	#Procedure 0x421640
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
	ja	.label_1870
	mov	rsp, rsp
	jmp	.label_1872
.label_1872:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_1871
.label_1870:
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 0
.label_1871:
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
	.align	32
	#Procedure 0x421690
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
	je	.label_1873
	cmp	dword ptr [rbp - 4], 9
	lea	rsi, [rsi]
	sete	al
	mov	byte ptr [rbp - 5], al
.label_1873:
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
	.align	32
	#Procedure 0x4216e0
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
	jb	.label_1874
	nop	
	jmp	.label_1875
.label_1875:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0xc], eax
	jne	.label_1876
	lea	rsi, [rsi]
	jmp	.label_1874
.label_1874:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_1877
.label_1876:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 5], 0
.label_1877:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x421750
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
	ja	.label_1879
	jmp	.label_1880
.label_1880:
	mov	byte ptr [rbp - 5], 1
	lea	rdi, [rdi]
	jmp	.label_1878
.label_1879:
	mov	byte ptr [rbp - 5], 0
.label_1878:
	mov	al, byte ptr [rbp - 5]
	mov	rsp, rsp
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4217a0
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
	ja	.label_1881
	lea	rsi, [rsi]
	jmp	.label_1883
.label_1883:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_1882
.label_1881:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], 0
.label_1882:
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
	.align	32
	#Procedure 0x4217f0
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
	ja	.label_1884
	jmp	.label_1885
.label_1885:
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_1886
.label_1884:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
.label_1886:
	mov	al, byte ptr [rbp - 1]
	nop	
	and	al, 1
	movzx	eax, al
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x421840
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
	ja	.label_1887
	jmp	.label_1889
.label_1889:
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 1
	jmp	.label_1888
.label_1887:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], 0
.label_1888:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x421890
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
	jb	.label_1890
	jmp	.label_1892
.label_1892:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	eax, -0x3a
	sub	eax, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	jb	.label_1890
	nop	
	jmp	.label_1895
.label_1895:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	eax, -0x5b
	mov	rsp, rsp
	sub	eax, 6
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_1890
	jmp	.label_1893
.label_1893:
	mov	eax, dword ptr [rbp - 4]
	add	eax, -0x7b
	mov	rsp, rsp
	sub	eax, 3
	mov	dword ptr [rbp - 0xc], eax
	ja	.label_1891
	mov	rsp, rsp
	jmp	.label_1890
.label_1890:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_1894
.label_1891:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], 0
.label_1894:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x421940
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
	jb	.label_1896
	mov	rbp, rbp
	jmp	.label_1897
.label_1897:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	jne	.label_1899
	mov	rsp, rsp
	jmp	.label_1896
.label_1896:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_1898
.label_1899:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
.label_1898:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4219b0
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
	ja	.label_1900
	jmp	.label_1902
.label_1902:
	mov	byte ptr [rbp - 5], 1
	nop	
	jmp	.label_1901
.label_1900:
	mov	byte ptr [rbp - 5], 0
.label_1901:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x421a00
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
	jb	.label_1903
	lea	rdi, [rdi]
	jmp	.label_1907
.label_1907:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	eax, -0x41
	mov	rbp, rbp
	sub	eax, 6
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jb	.label_1903
	jmp	.label_1904
.label_1904:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	add	eax, -0x61
	sub	eax, 5
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1906
	jmp	.label_1903
.label_1903:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_1905
.label_1906:
	nop	
	mov	byte ptr [rbp - 9], 0
.label_1905:
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
	.align	32
	#Procedure 0x421a90

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
	ja	.label_1908
	jmp	.label_1909
.label_1909:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x41
	nop	
	add	eax, 0x61
	nop	
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	jmp	.label_1910
.label_1908:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
.label_1910:
	nop	
	mov	eax, dword ptr [rbp - 8]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x421ae0
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
	ja	.label_1911
	mov	rbp, rbp
	jmp	.label_1912
.label_1912:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	sub	eax, 0x61
	mov	rsp, rsp
	add	eax, 0x41
	nop	
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_1913
.label_1911:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_1913:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x421b40

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x50
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rsi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	call	fopen
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1917
	mov	rdi, qword ptr [rbp - 0x28]
	call	fileno
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], eax
	mov	rsp, rsp
	cmp	ecx, dword ptr [rbp - 0x34]
	jg	.label_1915
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	jg	.label_1915
	mov	edi, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	call	dup_safer
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14], 0
	lea	rsi, [rsi]
	jge	.label_1919
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], ecx
	mov	rdi, qword ptr [rbp - 0x28]
	call	rpl_fclose
	mov	ecx, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18], ecx
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x18]
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], 0
	jmp	.label_1914
.label_1919:
	mov	rdi, qword ptr [rbp - 0x28]
	call	rpl_fclose
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_1916
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	call	fdopen
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	mov	rsp, rsp
	jne	.label_1918
.label_1916:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], ecx
	nop	
	mov	edi, dword ptr [rbp - 0x14]
	call	close
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
	mov	dword ptr [rbp - 0x10], ecx
	lea	rsi, [rsi]
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	nop	
	mov	qword ptr [rbp - 0x30], 0
	jmp	.label_1914
.label_1918:
	jmp	.label_1915
.label_1915:
	jmp	.label_1917
.label_1917:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rax
.label_1914:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rsp, 0x50
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x421d70

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x421d80

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	nop	
	.section	.text
	.align	32
	#Procedure 0x421d90

	.globl __lstat
	.type __lstat, @function
__lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section	.text
	.align	32
	#Procedure 0x421da0

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
	nop	word ptr cs:[rax + rax]
	nop	
	.section .text
	.align	32
	#Procedure 0x421dc0

	.globl __mknod
	.type __mknod, @function
__mknod:
	sub	rsp, 0x18
	lea	rcx, [rsp + 8]
	mov	qword ptr [rsp + 8], rdx
	mov	edx, esi
	mov	rsi, rdi
	xor	edi, edi
	call	__xmknod
	add	rsp, 0x18
	ret	
