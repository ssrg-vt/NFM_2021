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
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	cmp	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	je	.label_8
	nop	
	jmp	.label_9
.label_9:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
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
	mov	dword ptr [rbp - 0x18], eax
	nop	
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
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
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.5
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.6
	nop	
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.7
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.8
	mov	dword ptr [rbp - 0x30], eax
	mov	rsp, rsp
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.9
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.10
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.11
	nop	
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.12
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.13
	mov	dword ptr [rbp - 0x44], eax
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.14
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.15
	mov	dword ptr [rbp - 0x4c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.16
	nop	
	mov	dword ptr [rbp - 0x50], eax
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.17
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x58], eax
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
	mov	dword ptr [rbp - 0x5c], eax
	lea	rsi, [rsi]
	call	emit_ancillary_info
.label_7:
	mov	edi, dword ptr [rbp - 4]
	mov	rsp, rsp
	call	exit
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
	mov	dword ptr [rbp - 4], eax
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	dword ptr [rbp - 8], eax
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x402bb0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
.label_15:
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], cl
	je	.label_13
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	lea	rdi, [rdi]
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_13:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x21]
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_14
	mov	rbp, rbp
	jmp	.label_11
.label_14:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_15
.label_11:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_12
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x10], rax
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
	mov	dword ptr [rbp - 0x28], eax
	nop	
	call	setlocale
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_10
	nop	
	movabs	rsi, OFFSET FLAT:.str.55
	mov	eax, 3
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
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
	mov	dword ptr [rbp - 0x2c], eax
.label_10:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.57
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.18_0
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	mov	rbp, rbp
	call	printf
	movabs	rdi, OFFSET FLAT:.str.58
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	nop	
	movabs	rsi, OFFSET FLAT:.str.59
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmove	rdx, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	printf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	add	rsp, 0x40
	pop	rbp
	ret	
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
	sub	rsp, 0x210
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x16], 0
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	byte ptr [rbp - 0x79], 0
	mov	qword ptr [rbp - 0x88], 0
	mov	byte ptr [rbp - 0x89], 0
	mov	qword ptr [rbp - 0x98], 0
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:.str_0
	mov	rbp, rbp
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.21
	movabs	rsi, OFFSET FLAT:.str.22
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x130], rax
	mov	rbp, rbp
	call	bindtextdomain
	nop	
	movabs	rdi, OFFSET FLAT:.str.21
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x138], rax
	mov	rbp, rbp
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdin
	nop	
	mov	qword ptr [rbp - 0x140], rax
	call	atexit
	lea	rdi, [rbp - 0x78]
	mov	rsp, rsp
	mov	byte ptr [byte ptr [selinux_enabled]],  0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x144], eax
	lea	rsi, [rsi]
	call	cp_option_init
.label_44:
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str.23
	nop	
	movabs	rcx, OFFSET FLAT:long_opts
	lea	rsi, [rsi]
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	getopt_long
	nop	
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, -1
	je	.label_60
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rbp, rbp
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x148], eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14c], ecx
	je	.label_65
	jmp	.label_71
.label_71:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0xffffff7e
	nop	
	mov	dword ptr [rbp - 0x150], eax
	mov	rbp, rbp
	je	.label_73
	jmp	.label_79
.label_79:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	sub	eax, 0x48
	mov	dword ptr [rbp - 0x154], eax
	je	.label_80
	mov	rbp, rbp
	jmp	.label_84
.label_84:
	mov	eax, dword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	sub	eax, 0x4c
	mov	dword ptr [rbp - 0x158], eax
	je	.label_86
	jmp	.label_91
.label_91:
	mov	eax, dword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x15c], eax
	je	.label_94
	jmp	.label_100
.label_100:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x52
	mov	dword ptr [rbp - 0x160], eax
	nop	
	je	.label_69
	jmp	.label_105
.label_105:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x53
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x164], eax
	je	.label_108
	mov	rsp, rsp
	jmp	.label_109
.label_109:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x168], eax
	nop	
	je	.label_111
	nop	
	jmp	.label_16
.label_16:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x5a
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x16c], eax
	je	.label_17
	jmp	.label_22
.label_22:
	nop	
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x61
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x170], eax
	je	.label_59
	jmp	.label_28
.label_28:
	mov	eax, dword ptr [rbp - 0x148]
	mov	rsp, rsp
	sub	eax, 0x62
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x174], eax
	lea	rsi, [rsi]
	je	.label_30
	jmp	.label_33
.label_33:
	nop	
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0x178], eax
	je	.label_34
	jmp	.label_39
.label_39:
	nop	
	mov	eax, dword ptr [rbp - 0x148]
	mov	rbp, rbp
	sub	eax, 0x66
	nop	
	mov	dword ptr [rbp - 0x17c], eax
	je	.label_40
	jmp	.label_46
.label_46:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x148]
	nop	
	sub	eax, 0x69
	mov	dword ptr [rbp - 0x180], eax
	lea	rsi, [rsi]
	je	.label_48
	jmp	.label_51
.label_51:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	sub	eax, 0x6c
	mov	dword ptr [rbp - 0x184], eax
	je	.label_53
	lea	rsi, [rsi]
	jmp	.label_55
.label_55:
	nop	
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x188], eax
	lea	rdi, [rdi]
	je	.label_57
	jmp	.label_62
.label_62:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x70
	mov	dword ptr [rbp - 0x18c], eax
	je	.label_64
	lea	rsi, [rsi]
	jmp	.label_67
.label_67:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x72
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x190], eax
	mov	rbp, rbp
	je	.label_69
	jmp	.label_74
.label_74:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x194], eax
	mov	rbp, rbp
	je	.label_75
	jmp	.label_82
.label_82:
	mov	eax, dword ptr [rbp - 0x148]
	mov	rbp, rbp
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x198], eax
	lea	rsi, [rsi]
	je	.label_83
	mov	rsp, rsp
	jmp	.label_87
.label_87:
	nop	
	mov	eax, dword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x19c], eax
	je	.label_89
	jmp	.label_97
.label_97:
	mov	eax, dword ptr [rbp - 0x148]
	mov	rbp, rbp
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x1a0], eax
	je	.label_99
	jmp	.label_36
.label_36:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x78
	mov	dword ptr [rbp - 0x1a4], eax
	mov	rbp, rbp
	je	.label_103
	jmp	.label_106
.label_106:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x1a8], eax
	je	.label_76
	jmp	.label_112
.label_112:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x148]
	nop	
	sub	eax, 0x81
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1ac], eax
	je	.label_113
	lea	rdi, [rdi]
	jmp	.label_20
.label_20:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x82
	nop	
	mov	dword ptr [rbp - 0x1b0], eax
	lea	rsi, [rsi]
	je	.label_21
	jmp	.label_27
.label_27:
	mov	eax, dword ptr [rbp - 0x148]
	mov	rsp, rsp
	sub	eax, 0x83
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1b4], eax
	je	.label_98
	mov	rsp, rsp
	jmp	.label_72
.label_72:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x84
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1b8], eax
	mov	rbp, rbp
	je	.label_35
	jmp	.label_41
.label_41:
	mov	eax, dword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	sub	eax, 0x85
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1bc], eax
	mov	rsp, rsp
	je	.label_43
	lea	rdi, [rdi]
	jmp	.label_101
.label_101:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x86
	mov	dword ptr [rbp - 0x1c0], eax
	mov	rsp, rsp
	je	.label_49
	jmp	.label_107
.label_107:
	mov	eax, dword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	sub	eax, 0x87
	nop	
	mov	dword ptr [rbp - 0x1c4], eax
	je	.label_54
	jmp	.label_96
.label_96:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x88
	mov	dword ptr [rbp - 0x1c8], eax
	mov	rbp, rbp
	je	.label_58
	jmp	.label_66
.label_49:
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
	mov	dword ptr [rbp - 0x6c], r10d
	jmp	.label_25
.label_43:
	nop	
	cmp	qword ptr [word ptr [optarg]],  0
	nop	
	jne	.label_61
	mov	dword ptr [rbp - 0x40], 2
	jmp	.label_88
.label_61:
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
	mov	dword ptr [rbp - 0x40], r10d
.label_88:
	jmp	.label_25
.label_59:
	mov	dword ptr [rbp - 0x74], 2
	mov	byte ptr [rbp - 0x56], 1
	mov	byte ptr [rbp - 0x5b], 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x5a], 1
	nop	
	mov	byte ptr [rbp - 0x59], 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x54], 1
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [selinux_enabled]],  1
	je	.label_110
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x53], 1
.label_110:
	mov	byte ptr [rbp - 0x51], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x4f], 1
	mov	byte ptr [rbp - 0x4e], 1
	lea	rdi, [rdi]
	jmp	.label_25
.label_30:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x16], 1
	nop	
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_26
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x28], rax
.label_26:
	jmp	.label_25
.label_76:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x55], 0
	lea	rsi, [rsi]
	jmp	.label_25
.label_113:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x79], 1
	nop	
	jmp	.label_25
.label_34:
	mov	byte ptr [rbp - 0x56], 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x74], 2
	jmp	.label_25
.label_40:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x62], 1
	jmp	.label_25
.label_80:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x74], 3
	mov	rbp, rbp
	jmp	.label_25
.label_48:
	mov	dword ptr [rbp - 0x70], 3
	jmp	.label_25
.label_53:
	mov	byte ptr [rbp - 0x61], 1
	jmp	.label_25
.label_86:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x74], 4
	mov	rsp, rsp
	jmp	.label_25
.label_57:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x70], 2
	nop	
	jmp	.label_25
.label_94:
	mov	dword ptr [rbp - 0x74], 2
	lea	rdi, [rdi]
	jmp	.label_25
.label_21:
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x78]
	mov	rbp, rbp
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	decode_preserve_arg
	nop	
	jmp	.label_25
.label_35:
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [optarg]],  0
	mov	rsp, rsp
	jne	.label_37
	nop	
	jmp	.label_70
.label_37:
	lea	rsi, [rbp - 0x78]
	mov	rsp, rsp
	mov	edx, 1
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	decode_preserve_arg
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x54], 1
	jmp	.label_25
.label_70:
	jmp	.label_64
.label_64:
	mov	byte ptr [rbp - 0x5b], 1
	mov	byte ptr [rbp - 0x5a], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x59], 1
	mov	byte ptr [rbp - 0x54], 1
	jmp	.label_25
.label_98:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [parents_option]],  1
	mov	rbp, rbp
	jmp	.label_25
.label_69:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x4e], 1
	jmp	.label_25
.label_58:
	mov	byte ptr [rbp - 0x63], 1
	mov	rbp, rbp
	jmp	.label_25
.label_54:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [remove_trailing_slashes]],  1
	nop	
	jmp	.label_25
.label_75:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x4c], 1
	mov	rbp, rbp
	jmp	.label_25
.label_83:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x88], 0
	mov	rbp, rbp
	je	.label_102
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
.label_102:
	lea	rsi, [rbp - 0x128]
	mov	rdi,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	call	stat
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_19
	lea	rdi, [rdi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.27
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1cc], esi
	mov	rbp, rbp
	call	gettext
	nop	
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x1d8], rax
	lea	rsi, [rsi]
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x1cc]
	mov	rdx, qword ptr [rbp - 0x1d8]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
.label_19:
	nop	
	mov	eax, dword ptr [rbp - 0x110]
	nop	
	and	eax, 0xf000
	cmp	eax, 0x4000
	lea	rdi, [rdi]
	je	.label_68
	movabs	rdi, OFFSET FLAT:.str.28
	call	gettext
	mov	rbp, rbp
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [optarg]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1e0], rax
	nop	
	call	quotearg_style
	lea	rsi, [rsi]
	mov	edi, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x1e0]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_68:
	jmp	.label_104
.label_104:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
	mov	rsp, rsp
	jmp	.label_25
.label_111:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x89], 1
	jmp	.label_25
.label_89:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x4b], 1
	mov	rbp, rbp
	jmp	.label_25
.label_99:
	mov	byte ptr [rbp - 0x4a], 1
	jmp	.label_25
.label_103:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x5c], 1
	jmp	.label_25
.label_17:
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [selinux_enabled]],  1
	mov	rbp, rbp
	je	.label_78
	nop	
	cmp	qword ptr [word ptr [optarg]],  0
	lea	rdi, [rdi]
	je	.label_81
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x98], rax
	nop	
	jmp	.label_85
.label_81:
	mov	byte ptr [rbp - 0x57], 1
.label_85:
	jmp	.label_90
.label_78:
	mov	rsp, rsp
	cmp	qword ptr [word ptr [optarg]],  0
	mov	rbp, rbp
	je	.label_93
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
.label_93:
	jmp	.label_90
.label_90:
	jmp	.label_25
.label_108:
	mov	byte ptr [rbp - 0x16], 1
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	jmp	.label_25
.label_73:
	xor	edi, edi
	lea	rdi, [rdi]
	call	usage
.label_65:
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
	mov	qword ptr [rbp - 0x1e8], rdi
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
.label_66:
	mov	edi, 1
	mov	rbp, rbp
	call	usage
.label_25:
	jmp	.label_44
.label_60:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x61], 1
	nop	
	je	.label_45
	test	byte ptr [rbp - 0x4c], 1
	nop	
	je	.label_45
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
.label_45:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x70], 2
	jne	.label_56
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x4b], 0
.label_56:
	nop	
	test	byte ptr [rbp - 0x16], 1
	mov	rbp, rbp
	je	.label_47
	nop	
	cmp	dword ptr [rbp - 0x70], 2
	jne	.label_47
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
.label_47:
	cmp	dword ptr [rbp - 0x40], 2
	jne	.label_77
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x6c], 2
	mov	rsp, rsp
	je	.label_77
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
.label_77:
	test	byte ptr [rbp - 0x16], 1
	je	.label_95
	movabs	rdi, OFFSET FLAT:.str.37
	call	gettext
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	xget_version
	nop	
	mov	dword ptr [rbp - 0x1ec], eax
	jmp	.label_52
.label_95:
	xor	eax, eax
	mov	dword ptr [rbp - 0x1ec], eax
	lea	rdi, [rdi]
	jmp	.label_52
.label_52:
	mov	eax, dword ptr [rbp - 0x1ec]
	mov	dword ptr [rbp - 0x78], eax
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	set_simple_backup_suffix
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x74], 1
	nop	
	jne	.label_23
	mov	rbp, rbp
	test	byte ptr [rbp - 0x4e], 1
	nop	
	je	.label_31
	test	byte ptr [rbp - 0x61], 1
	jne	.label_31
	mov	dword ptr [rbp - 0x74], 2
	jmp	.label_18
.label_31:
	mov	dword ptr [rbp - 0x74], 4
.label_18:
	jmp	.label_23
.label_23:
	test	byte ptr [rbp - 0x4e], 1
	nop	
	je	.label_24
	nop	
	mov	al, byte ptr [rbp - 0x79]
	nop	
	and	al, 1
	mov	byte ptr [rbp - 0x64], al
.label_24:
	test	byte ptr [rbp - 0x57], 1
	mov	rbp, rbp
	jne	.label_29
	cmp	qword ptr [rbp - 0x98], 0
	je	.label_32
.label_29:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x52], 1
	lea	rdi, [rdi]
	jne	.label_32
	mov	byte ptr [rbp - 0x53], 0
.label_32:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x53], 1
	je	.label_42
	test	byte ptr [rbp - 0x57], 1
	jne	.label_38
	nop	
	cmp	qword ptr [rbp - 0x98], 0
	mov	rsp, rsp
	je	.label_42
.label_38:
	movabs	rdi, OFFSET FLAT:.str.38
	call	gettext
	nop	
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_42:
	nop	
	test	byte ptr [rbp - 0x52], 1
	je	.label_50
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [selinux_enabled]],  1
	jne	.label_50
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
.label_50:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x98], 0
	je	.label_63
	nop	
	mov	rdi, qword ptr [rbp - 0x98]
	call	se_const
	mov	rdi, rax
	call	setfscreatecon
	cmp	eax, 0
	jge	.label_63
	mov	rsp, rsp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1f0], esi
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x1f8], rax
	mov	rbp, rbp
	call	quote
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x1f0]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x1f8]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_63:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x50], 1
	je	.label_92
	movabs	rdi, OFFSET FLAT:.str.41
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_92:
	mov	rbp, rbp
	call	hash_init
	lea	r8, [rbp - 0x78]
	mov	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	sub	eax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	movsxd	rdx,  dword ptr [dword ptr [optind]]
	shl	rdx, 3
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x88]
	mov	sil, byte ptr [rbp - 0x89]
	nop	
	and	sil, 1
	mov	edi, eax
	mov	byte ptr [rbp - 0x1f9], sil
	lea	rsi, [rsi]
	mov	rsi, rcx
	mov	r9b, byte ptr [rbp - 0x1f9]
	movzx	ecx, r9b
	lea	rdi, [rdi]
	call	do_copy
	mov	ecx, 1
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x15], al
	nop	
	mov	al, byte ptr [rbp - 0x15]
	test	al, 1
	nop	
	cmovne	ecx, edi
	mov	rbp, rbp
	mov	eax, ecx
	add	rsp, 0x210
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x403c60

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
	.section	.text
	.align	32
	#Procedure 0x403e40

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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	xstrdup
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
.label_116:
	lea	rsi, [rsi]
	mov	esi, 0x2c
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	strchr
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_118
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x30], rcx
	mov	byte ptr [rax], 0
.label_118:
	mov	al, byte ptr [rbp - 0x11]
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
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:decode_preserve_arg.preserve_args
	mov	edi, ecx
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:decode_preserve_arg.preserve_vals
	mov	rbp, rbp
	mov	r8d, 4
	mov	qword ptr [rbp - 0x40], rdi
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, rdx
	mov	rdx, qword ptr [rbp - 0x40]
	nop	
	call	__xargmatch_internal
	lea	rsi, [rsi]
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + decode_preserve_arg.preserve_vals]]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], r10d
	mov	rbp, rbp
	mov	r10d, dword ptr [rbp - 0x34]
	mov	eax, r10d
	mov	rcx, rax
	sub	rcx, 6
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x50], rcx
	mov	rbp, rbp
	ja	.label_115
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_119]]
	jmp	rcx
.label_1925:
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rcx + 0x1e], al
	nop	
	mov	al, byte ptr [rbp - 0x11]
	xor	al, 0xff
	mov	rcx, qword ptr [rbp - 0x10]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rcx + 0x20], al
	jmp	.label_114
.label_1926:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
	and	al, 1
	mov	byte ptr [rcx + 0x1f], al
	jmp	.label_114
.label_1927:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rcx + 0x1d], al
	jmp	.label_114
.label_1928:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x11]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	and	al, 1
	mov	byte ptr [rcx + 0x22], al
	jmp	.label_114
.label_1929:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rcx + 0x26], al
	nop	
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rcx + 0x25], al
	nop	
	jmp	.label_114
.label_1930:
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
	and	al, 1
	mov	byte ptr [rcx + 0x27], al
	mov	al, byte ptr [rbp - 0x11]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rcx + 0x28], al
	lea	rsi, [rsi]
	jmp	.label_114
.label_1931:
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rcx + 0x1e], al
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rcx + 0x1f], al
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rcx + 0x1d], al
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rcx + 0x22], al
	mov	al, byte ptr [rbp - 0x11]
	mov	rbp, rbp
	xor	al, 0xff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rcx + 0x20], al
	test	byte ptr [byte ptr [selinux_enabled]],  1
	je	.label_117
	nop	
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rcx + 0x25], al
.label_117:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
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
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_116
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404100

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
	.section	.text
	.align	32
	#Procedure 0x404120

	.globl do_copy
	.type do_copy, @function
do_copy:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x1d0
	mov	al, cl
	nop	
	mov	r9b, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	qword ptr [rbp - 0x28], r8
	mov	byte ptr [rbp - 0xb9], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xba], 1
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	test	byte ptr [rdx + 0x15], 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x162], r9b
	jne	.label_123
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0x16]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x162], cl
.label_123:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x162]
	and	al, 1
	mov	byte ptr [rbp - 0xbb], al
	mov	ecx, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	nop	
	setne	al
	xor	al, 0xff
	nop	
	and	al, 1
	lea	rsi, [rsi]
	movzx	edx, al
	cmp	ecx, edx
	jg	.label_143
	cmp	dword ptr [rbp - 4], 0
	jg	.label_147
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
	jmp	.label_152
.label_147:
	movabs	rdi, OFFSET FLAT:.str.102
	call	gettext
	nop	
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x170], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x174], edi
	mov	esi, dword ptr [rbp - 0x174]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_152:
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_143:
	test	byte ptr [rbp - 0x19], 1
	lea	rdi, [rdi]
	je	.label_135
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	je	.label_129
	movabs	rdi, OFFSET FLAT:.str.103
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_129:
	mov	eax, 2
	cmp	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	jge	.label_145
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.104
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x180], rax
	call	quotearg_style
	lea	rdi, [rdi]
	xor	edi, edi
	mov	dword ptr [rbp - 0x184], edi
	mov	esi, dword ptr [rbp - 0x184]
	mov	rdx, qword ptr [rbp - 0x180]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	nop	
	mov	edi, 1
	call	usage
.label_145:
	lea	rsi, [rbp - 0xb8]
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0xb9]
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	sub	eax, 1
	movsxd	rcx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + rcx*8]
	mov	r8b, byte ptr [rbp - 0xbb]
	and	r8b, 1
	movzx	ecx, r8b
	call	target_directory_operand
	nop	
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xbc], al
	lea	rdi, [rdi]
	jmp	.label_131
.label_135:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_134
	mov	eax, 2
	cmp	eax, dword ptr [rbp - 4]
	nop	
	jg	.label_138
	mov	rbp, rbp
	lea	rsi, [rbp - 0xb8]
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0xb9]
	nop	
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 1
	mov	rsp, rsp
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + rcx*8]
	mov	r8b, byte ptr [rbp - 0xbb]
	and	r8b, 1
	mov	rbp, rbp
	movzx	ecx, r8b
	mov	rbp, rbp
	call	target_directory_operand
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_141
	jmp	.label_138
.label_141:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	eax, -1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rdx + rcx*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rbp, rbp
	jmp	.label_139
.label_138:
	mov	eax, 2
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	jge	.label_120
	movabs	rdi, OFFSET FLAT:.str.28
	lea	rsi, [rsi]
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 4]
	mov	rbp, rbp
	sub	ecx, 1
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + rdx*8]
	mov	qword ptr [rbp - 0x190], rax
	call	quotearg_style
	mov	edi, 1
	xor	esi, esi
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x190]
	nop	
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_120:
	jmp	.label_139
.label_139:
	nop	
	jmp	.label_134
.label_134:
	jmp	.label_131
.label_131:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_142
	mov	rbp, rbp
	mov	eax, 2
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_144
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	call	dest_info_init
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	call	src_info_init
.label_144:
	nop	
	mov	dword ptr [rbp - 0xc0], 0
.label_132:
	mov	eax, dword ptr [rbp - 0xc0]
	cmp	eax, dword ptr [rbp - 4]
	jge	.label_149
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xc9], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe0], 0
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe8], rax
	mov	rsp, rsp
	test	byte ptr [byte ptr [remove_trailing_slashes]],  1
	nop	
	je	.label_153
	mov	rdi, qword ptr [rbp - 0xe8]
	nop	
	call	strip_trailing_slashes
	nop	
	mov	byte ptr [rbp - 0x191], al
.label_153:
	mov	rsp, rsp
	test	byte ptr [byte ptr [parents_option]],  1
	je	.label_125
	jmp	.label_130
.label_130:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xf8], rax
	mov	rdi, rax
	call	strlen
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	inc	rdi
	mov	qword ptr [rbp - 0x100], rdi
	lea	rdi, [rdi]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	lea	rdi, [rdi]
	mov	rdi, rsp
	sub	rdi, rax
	mov	rsp, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x108], rdi
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xf8]
	mov	rdx, qword ptr [rbp - 0x100]
	nop	
	mov	rdi, rax
	mov	qword ptr [rbp - 0x1a0], rax
	nop	
	call	memcpy
	mov	rax, qword ptr [rbp - 0x1a0]
	mov	qword ptr [rbp - 0x110], rax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0xf0], rdx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xf0]
	call	strip_trailing_slashes
	lea	rdx, [rbp - 0xe0]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	byte ptr [rbp - 0x1a1], al
	call	file_name_concat
	lea	rcx, [rbp - 0xd8]
	lea	r8, [rbp - 0xb9]
	xor	r9d, r9d
	mov	rbp, rbp
	mov	edx, r9d
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.105
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rbp - 0xe0]
	mov	r10, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	sub	rax, r10
	mov	r10, qword ptr [rbp - 0x28]
	mov	r11b, byte ptr [r10 + 0x2e]
	mov	rbp, rbp
	test	r11b, 1
	cmovne	rdx, rsi
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	make_dir_parents_private
	and	al, 1
	mov	byte ptr [rbp - 0xc9], al
	jmp	.label_150
.label_125:
	jmp	.label_122
.label_122:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	call	last_component
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x120], rax
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
	mov	qword ptr [rbp - 0x130], rdi
	mov	rax, qword ptr [rbp - 0x130]
	mov	rsi, qword ptr [rbp - 0x120]
	mov	rdx, qword ptr [rbp - 0x128]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x1b0], rax
	mov	rbp, rbp
	call	memcpy
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x138], rax
	nop	
	mov	rdx, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0x118], rdx
	mov	rdi, qword ptr [rbp - 0x118]
	mov	rsp, rsp
	call	strip_trailing_slashes
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x118]
	mov	ecx, OFFSET FLAT:.str.106
	mov	rsp, rsp
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1b1], al
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_128
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	xstrdup
	mov	qword ptr [rbp - 0x1c0], rax
	jmp	.label_140
.label_128:
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x118]
	mov	rsp, rsp
	call	file_name_concat
	mov	qword ptr [rbp - 0x1c0], rax
.label_140:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	qword ptr [rbp - 0xc8], rax
.label_150:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xc9], 1
	mov	rsp, rsp
	jne	.label_146
	mov	byte ptr [rbp - 0xba], 0
	jmp	.label_148
.label_146:
	lea	r8, [rbp - 0x139]
	xor	eax, eax
	mov	r9d, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xe8]
	nop	
	mov	rsi, qword ptr [rbp - 0xc8]
	mov	cl, byte ptr [rbp - 0xb9]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	and	cl, 1
	mov	rbp, rbp
	movzx	eax, cl
	mov	qword ptr [rbp - 0x1c8], rdx
	mov	rsp, rsp
	mov	edx, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x1c8]
	call	copy
	mov	rsp, rsp
	and	al, 1
	movzx	edx, al
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xba]
	and	al, 1
	movzx	r10d, al
	lea	rdi, [rdi]
	and	r10d, edx
	mov	rsp, rsp
	cmp	r10d, 0
	setne	al
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0xba], al
	test	byte ptr [byte ptr [parents_option]],  1
	je	.label_124
	mov	rdi, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xc8]
	sub	rax, rcx
	mov	rdx, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rsi, rax
	call	re_protect
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	r8d, al
	mov	al, byte ptr [rbp - 0xba]
	and	al, 1
	movzx	r9d, al
	mov	rsp, rsp
	and	r9d, r8d
	cmp	r9d, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0xba], al
.label_124:
	mov	rsp, rsp
	jmp	.label_148
.label_148:
	mov	rbp, rbp
	test	byte ptr [byte ptr [parents_option]],  1
	mov	rsp, rsp
	je	.label_127
	jmp	.label_126
.label_126:
	cmp	qword ptr [rbp - 0xd8], 0
	je	.label_133
	nop	
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x148], rax
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0xa0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	call	free
	nop	
	jmp	.label_126
.label_133:
	jmp	.label_127
.label_127:
	nop	
	mov	rdi, qword ptr [rbp - 0xc8]
	call	free
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xc0]
	add	eax, 1
	mov	dword ptr [rbp - 0xc0], eax
	jmp	.label_132
.label_149:
	nop	
	jmp	.label_136
.label_142:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x158], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x160], rax
	test	byte ptr [byte ptr [parents_option]],  1
	je	.label_137
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
.label_137:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x16], 1
	nop	
	je	.label_121
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_121
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x158]
	mov	rsi, qword ptr [rbp - 0x160]
	lea	rsi, [rsi]
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	jne	.label_121
	mov	rsp, rsp
	test	byte ptr [rbp - 0xb9], 1
	mov	rsp, rsp
	jne	.label_121
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa0]
	and	eax, 0xf000
	mov	rsp, rsp
	cmp	eax, 0x8000
	jne	.label_121
	lea	rsi, [rsi]
	mov	edi, 0xffffff9c
	mov	rsi, qword ptr [rbp - 0x160]
	mov	rax, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rax]
	lea	rsi, [rsi]
	call	find_backup_file_name
	nop	
	movabs	rsi, OFFSET FLAT:do_copy.x_tmp
	mov	rcx, rsi
	lea	rsi, [rsi]
	mov	edx, 0x50
	mov	qword ptr [rbp - 0x150], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1d0], rsi
	mov	rsi, rax
	call	memcpy
	mov	rsp, rsp
	mov	dword ptr [dword ptr [do_copy.x_tmp]],  0
	mov	rax, qword ptr [rbp - 0x1d0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_151
.label_121:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x160]
	mov	qword ptr [rbp - 0x150], rax
.label_151:
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	lea	r8, [rbp - 0x161]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	r9d, eax
	mov	rdi, qword ptr [rbp - 0x158]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x150]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	call	copy
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0xba], al
.label_136:
	mov	al, byte ptr [rbp - 0xba]
	and	al, 1
	movzx	eax, al
	mov	rsp, rbp
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x404b30

	.globl target_directory_operand
	.type target_directory_operand, @function
target_directory_operand:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, cl
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	stat
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	jne	.label_156
	xor	eax, eax
	nop	
	mov	dword ptr [rbp - 0x28], eax
	nop	
	jmp	.label_159
.label_156:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], ecx
.label_159:
	mov	eax, dword ptr [rbp - 0x28]
	xor	ecx, ecx
	mov	dl, cl
	mov	dword ptr [rbp - 0x20], eax
	cmp	dword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x29], dl
	jne	.label_157
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	nop	
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	mov	rsp, rsp
	sete	dl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x29], dl
.label_157:
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x20], 0
	je	.label_154
	nop	
	cmp	dword ptr [rbp - 0x20], 2
	jne	.label_160
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax], 1
	jmp	.label_155
.label_160:
	test	byte ptr [rbp - 0x19], 1
	je	.label_158
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rax + 0x18], 0
	jmp	.label_161
.label_158:
	movabs	rdi, OFFSET FLAT:.str.27
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x30], esi
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
	call	quotearg_style
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, rax
	nop	
	mov	al, 0
	call	error
.label_161:
	mov	rbp, rbp
	jmp	.label_155
.label_155:
	jmp	.label_154
.label_154:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x21]
	lea	rsi, [rsi]
	and	al, 1
	movzx	eax, al
	lea	rsi, [rsi]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c90

	.globl make_dir_parents_private
	.type make_dir_parents_private, @function
make_dir_parents_private:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x260
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	mov	qword ptr [rbp - 0x30], r8
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], r9
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xf0], rax
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	rdi, rax
	inc	rdi
	mov	qword ptr [rbp - 0xf8], rdi
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	mov	rsp, rsp
	mov	rdi, rsp
	lea	rsi, [rsi]
	sub	rdi, rax
	lea	rdi, [rdi]
	mov	rsp, rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x100], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x100]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	rdi, rax
	nop	
	mov	qword ptr [rbp - 0x1c8], rax
	nop	
	call	memcpy
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	qword ptr [rbp - 0x108], rax
	mov	rdx, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd0], rdx
	lea	rsi, [rbp - 0xc8]
	nop	
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd8], rax
	mov	rdi, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1d0], rsi
	nop	
	call	dir_len
	mov	qword ptr [rbp - 0xe8], rax
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
	mov	qword ptr [rbp - 0xe0], rcx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xe0]
	nop	
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xe8]
	call	memcpy
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsi, qword ptr [rbp - 0x1d0]
	call	stat
	mov	rbp, rbp
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_165
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x110], rax
.label_174:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x110]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_167
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	lea	rsi, [rsi]
	jmp	.label_174
.label_167:
	jmp	.label_180
.label_180:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 0x110]
	call	strchr
	mov	qword ptr [rbp - 0x110], rax
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_185
	mov	rbp, rbp
	lea	rsi, [rbp - 0xc8]
	mov	rax, qword ptr [rbp - 0x110]
	mov	byte ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0xd0]
	call	stat
	mov	rbp, rbp
	cmp	eax, 0
	mov	rbp, rbp
	setne	cl
	and	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x119], cl
	test	byte ptr [rbp - 0x119], 1
	mov	rsp, rsp
	jne	.label_182
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	test	byte ptr [rax + 0x1d], 1
	lea	rdi, [rdi]
	jne	.label_182
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x1e], 1
	jne	.label_182
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	test	byte ptr [rax + 0x1f], 1
	mov	rsp, rsp
	je	.label_199
.label_182:
	mov	rsp, rsp
	lea	rsi, [rbp - 0x1b0]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xd8]
	call	stat
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_166
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1d4], ecx
	nop	
	jmp	.label_170
.label_166:
	mov	eax, 0x14
	xor	ecx, ecx
	mov	edx, dword ptr [rbp - 0x198]
	and	edx, 0xf000
	cmp	edx, 0x4000
	mov	rsp, rsp
	cmove	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1d4], eax
.label_170:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1d4]
	nop	
	mov	dword ptr [rbp - 0x1b4], eax
	cmp	dword ptr [rbp - 0x1b4], 0
	nop	
	je	.label_183
	movabs	rdi, OFFSET FLAT:.str.108
	nop	
	mov	esi, dword ptr [rbp - 0x1b4]
	nop	
	mov	dword ptr [rbp - 0x1d8], esi
	call	gettext
	mov	rbp, rbp
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x1e0], rax
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x1d8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x1e0]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
	mov	rsp, rsp
	jmp	.label_173
.label_183:
	mov	eax, 0xa8
	mov	rbp, rbp
	mov	edi, eax
	mov	rbp, rbp
	call	xmalloc
	lea	rsi, [rsi]
	mov	ecx, 0x90
	mov	edx, ecx
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x1b0]
	mov	qword ptr [rbp - 0x118], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rbp - 0x1e8], rdi
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x1e8]
	mov	rsp, rsp
	call	memcpy
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x110]
	mov	rdx, qword ptr [rbp - 0xd0]
	sub	rax, rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x118]
	mov	qword ptr [rdx + 0x98], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	mov	byte ptr [rax + 0x90], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x118]
	mov	qword ptr [rdx + 0xa0], rax
	nop	
	mov	rax, qword ptr [rbp - 0x118]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx], rax
.label_199:
	mov	rdi, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xd0]
	test	byte ptr [rbp - 0x119], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1f0], rdi
	mov	qword ptr [rbp - 0x1f8], rsi
	je	.label_198
	mov	rax, qword ptr [rbp - 0x118]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x1fc], ecx
	jmp	.label_193
.label_198:
	mov	rbp, rbp
	xor	eax, eax
	mov	dword ptr [rbp - 0x1fc], eax
	mov	rsp, rsp
	jmp	.label_193
.label_193:
	mov	eax, dword ptr [rbp - 0x1fc]
	mov	cl, byte ptr [rbp - 0x119]
	nop	
	mov	r8, qword ptr [rbp - 0x38]
	nop	
	and	cl, 1
	mov	rdi, qword ptr [rbp - 0x1f0]
	mov	rsi, qword ptr [rbp - 0x1f8]
	mov	edx, eax
	lea	rsi, [rsi]
	movzx	ecx, cl
	call	set_process_security_ctx
	test	al, 1
	mov	rsp, rsp
	jne	.label_168
	mov	byte ptr [rbp - 1], 0
	jmp	.label_173
.label_168:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x119], 1
	je	.label_189
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	byte ptr [rax], 1
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x118]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x1b8], ecx
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x1b8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x1d], 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x200], ecx
	je	.label_179
	nop	
	mov	eax, 0x3f
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x204], eax
	nop	
	jmp	.label_190
.label_179:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, 0x12
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	sil, byte ptr [rdx + 0x1e]
	mov	rsp, rsp
	test	sil, 1
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x204], eax
.label_190:
	nop	
	mov	eax, dword ptr [rbp - 0x204]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x200]
	lea	rsi, [rsi]
	and	ecx, eax
	mov	dword ptr [rbp - 0x1bc], ecx
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	test	byte ptr [rdx + 0x20], 1
	je	.label_194
	lea	rdi, [rdi]
	mov	eax, 0x1ff
	mov	dword ptr [rbp - 0x208], eax
	mov	rbp, rbp
	jmp	.label_163
.label_194:
	mov	eax, dword ptr [rbp - 0x1b8]
	mov	dword ptr [rbp - 0x208], eax
.label_163:
	mov	eax, dword ptr [rbp - 0x208]
	mov	dword ptr [rbp - 0x1c0], eax
	mov	eax, dword ptr [rbp - 0x1bc]
	lea	rsi, [rsi]
	xor	eax, 0xffffffff
	and	eax, 0xfff
	lea	rsi, [rsi]
	and	eax, dword ptr [rbp - 0x1c0]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c0], eax
	mov	rdi, qword ptr [rbp - 0xd0]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x1c0]
	lea	rdi, [rdi]
	call	mkdir
	cmp	eax, 0
	je	.label_184
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.109
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x20c], esi
	lea	rdi, [rdi]
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x218], rax
	lea	rsi, [rsi]
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x20c]
	mov	rdx, qword ptr [rbp - 0x218]
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_173
.label_184:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_196
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x21c], eax
.label_196:
	jmp	.label_191
.label_191:
	lea	rsi, [rbp - 0xc8]
	mov	rdi, qword ptr [rbp - 0xd0]
	nop	
	call	__lstat
	cmp	eax, 0
	je	.label_171
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.108
	nop	
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x220], esi
	call	gettext
	nop	
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x228], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x220]
	mov	rdx, qword ptr [rbp - 0x228]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 0
	nop	
	jmp	.label_173
.label_171:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	test	byte ptr [rax + 0x1e], 1
	jne	.label_177
	nop	
	mov	eax, dword ptr [rbp - 0x1bc]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0xb0]
	xor	ecx, 0xffffffff
	and	eax, ecx
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_192
	call	cached_umask
	xor	eax, 0xffffffff
	nop	
	and	eax, dword ptr [rbp - 0x1bc]
	mov	dword ptr [rbp - 0x1bc], eax
.label_192:
	nop	
	mov	eax, dword ptr [rbp - 0x1bc]
	mov	ecx, dword ptr [rbp - 0xb0]
	mov	rsp, rsp
	xor	ecx, 0xffffffff
	and	eax, ecx
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_197
	mov	eax, dword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	and	eax, 0x1c0
	cmp	eax, 0x1c0
	je	.label_164
.label_197:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xb0]
	or	eax, dword ptr [rbp - 0x1bc]
	mov	rcx, qword ptr [rbp - 0x118]
	mov	dword ptr [rcx + 0x18], eax
	mov	rcx, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + 0x90], 1
.label_164:
	jmp	.label_177
.label_177:
	mov	eax, dword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	and	eax, 0x1c0
	cmp	eax, 0x1c0
	je	.label_178
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xd0]
	mov	eax, dword ptr [rbp - 0xb0]
	mov	rbp, rbp
	or	eax, 0x1c0
	mov	esi, eax
	call	chmod
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_186
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x22c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xd0]
	nop	
	mov	qword ptr [rbp - 0x238], rax
	nop	
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x22c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x238]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_173
.label_186:
	jmp	.label_178
.label_178:
	mov	rbp, rbp
	jmp	.label_172
.label_189:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	and	eax, 0xf000
	cmp	eax, 0x4000
	mov	rbp, rbp
	je	.label_162
	movabs	rdi, OFFSET FLAT:.str.111
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x240], rax
	call	quotearg_style
	lea	rsi, [rsi]
	xor	edi, edi
	mov	dword ptr [rbp - 0x244], edi
	mov	esi, dword ptr [rbp - 0x244]
	mov	rdx, qword ptr [rbp - 0x240]
	nop	
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	mov	rbp, rbp
	jmp	.label_173
.label_162:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	byte ptr [rax], 0
	nop	
	jmp	.label_172
.label_172:
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	test	byte ptr [rax], 1
	nop	
	jne	.label_176
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x21], 1
	nop	
	jne	.label_187
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x25], 1
	je	.label_176
.label_187:
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xd0]
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, byte ptr [rax + 0x25]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	and	cl, 1
	movzx	esi, cl
	mov	rcx, rax
	nop	
	call	set_file_security_ctx
	test	al, 1
	jne	.label_195
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x26], 1
	lea	rdi, [rdi]
	je	.label_195
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 0
	mov	rsp, rsp
	jmp	.label_173
.label_195:
	jmp	.label_176
.label_176:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x110]
	mov	rbp, rbp
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x110], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x2f
.label_175:
	mov	rax, qword ptr [rbp - 0x110]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	jne	.label_169
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	lea	rdi, [rdi]
	jmp	.label_175
.label_169:
	jmp	.label_180
.label_185:
	mov	rbp, rbp
	jmp	.label_181
.label_165:
	mov	eax, dword ptr [rbp - 0xb0]
	mov	rsp, rsp
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0x4000
	je	.label_188
	movabs	rdi, OFFSET FLAT:.str.111
	nop	
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x250], rax
	nop	
	call	quotearg_style
	xor	edi, edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x254], edi
	mov	esi, dword ptr [rbp - 0x254]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x250]
	mov	rcx, rax
	mov	al, 0
	call	error
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 0
	lea	rsi, [rsi]
	jmp	.label_173
.label_188:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	byte ptr [rax], 0
	mov	rsp, rsp
	jmp	.label_181
.label_181:
	mov	byte ptr [rbp - 1], 1
.label_173:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	mov	rbp, rbp
	mov	rsp, rbp
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405730

	.globl re_protect
	.type re_protect, @function
re_protect:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0xe0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, rax
	call	strlen
	mov	rdi, rax
	lea	rdi, [rdi]
	inc	rdi
	mov	qword ptr [rbp - 0x50], rdi
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	nop	
	mov	rdi, rsp
	lea	rsi, [rsi]
	sub	rdi, rax
	mov	rsp, rdi
	nop	
	mov	qword ptr [rbp - 0x58], rdi
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x50]
	nop	
	mov	rdi, rax
	mov	qword ptr [rbp - 0xb0], rax
	call	memcpy
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb0]
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rdx
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
.label_210:
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	je	.label_209
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x98]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x1f], 1
	je	.label_201
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	call	get_stat_atime
	mov	qword ptr [rbp - 0x90], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rdx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 0x80], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	call	get_stat_mtime
	lea	rsi, [rbp - 0x80]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rdx
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x68], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	call	utimens
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_203
	lea	rsi, [rsi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.112
	nop	
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xb4], esi
	nop	
	call	gettext
	nop	
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc0], rax
	nop	
	call	quotearg_style
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xb4]
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0
	jmp	.label_200
.label_203:
	lea	rdi, [rdi]
	jmp	.label_201
.label_201:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x1d], 1
	je	.label_202
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rax + 0x1c]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	edx, dword ptr [rax + 0x20]
	call	lchown
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_205
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	call	chown_failure_ok
	test	al, 1
	jne	.label_208
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.46
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc4], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd0], rax
	nop	
	call	quotearg_style
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0xc4]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	mov	rbp, rbp
	jmp	.label_200
.label_208:
	lea	rdi, [rdi]
	mov	esi, 0xffffffff
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rax + 0x20]
	call	lchown
	mov	dword ptr [rbp - 0xa4], eax
.label_205:
	lea	rdi, [rdi]
	jmp	.label_202
.label_202:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x1e], 1
	je	.label_211
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rcx + 0x18]
	nop	
	mov	esi, eax
	mov	ecx, eax
	call	copy_acl
	mov	rsp, rsp
	cmp	eax, 0
	nop	
	je	.label_204
	mov	byte ptr [rbp - 1], 0
	lea	rdi, [rdi]
	jmp	.label_200
.label_204:
	mov	rbp, rbp
	jmp	.label_206
.label_211:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x90], 1
	je	.label_207
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rax + 0x18]
	lea	rsi, [rsi]
	call	chmod
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_212
	mov	rbp, rbp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.114
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd4], esi
	nop	
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xe0], rax
	call	quotearg_style
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xd4]
	mov	rdx, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
	nop	
	mov	byte ptr [rbp - 1], 0
	jmp	.label_200
.label_212:
	jmp	.label_207
.label_207:
	mov	rsp, rsp
	jmp	.label_206
.label_206:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x98]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x2f
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0xa0]
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	jmp	.label_210
.label_209:
	mov	byte ptr [rbp - 1], 1
.label_200:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	movzx	eax, al
	mov	rsp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x405b50

	.globl set_process_security_ctx
	.type set_process_security_ctx, @function
set_process_security_ctx:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x70
	nop	
	mov	al, cl
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	and	al, 1
	mov	byte ptr [rbp - 0x1d], al
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], r8
	mov	rsi, qword ptr [rbp - 0x28]
	test	byte ptr [rsi + 0x25], 1
	lea	rsi, [rsi]
	je	.label_227
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	test	byte ptr [rcx + 0x23], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x39], al
	je	.label_215
	mov	rax, qword ptr [rbp - 0x28]
	mov	cl, byte ptr [rax + 0x26]
	mov	byte ptr [rbp - 0x39], cl
.label_215:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x39]
	xor	ecx, ecx
	mov	dl, cl
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	mov	rbp, rbp
	test	byte ptr [rbp - 0x29], 1
	mov	byte ptr [rbp - 0x3a], dl
	jne	.label_222
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x29]
	xor	cl, 0xff
	nop	
	mov	byte ptr [rbp - 0x3a], cl
.label_222:
	mov	al, byte ptr [rbp - 0x3a]
	lea	rsi, [rbp - 0x38]
	mov	rbp, rbp
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x2a], al
	mov	rdi, qword ptr [rbp - 0x10]
	call	lgetfilecon
	lea	rdi, [rdi]
	xor	ecx, ecx
	cmp	ecx, eax
	lea	rsi, [rsi]
	jg	.label_226
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	call	setfscreatecon
	nop	
	cmp	eax, 0
	mov	rsp, rsp
	jge	.label_217
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x29], 1
	nop	
	jne	.label_220
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x2a], 1
	mov	rbp, rbp
	je	.label_223
	call	__errno_location
	mov	rbp, rbp
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_223
.label_220:
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x40], esi
	lea	rdi, [rdi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	call	quote
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_223:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0x26], 1
	mov	rsp, rsp
	je	.label_225
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	call	freecon
	mov	byte ptr [rbp - 1], 0
	jmp	.label_216
.label_225:
	jmp	.label_217
.label_217:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	freecon
	jmp	.label_218
.label_226:
	nop	
	test	byte ptr [rbp - 0x29], 1
	lea	rdi, [rdi]
	jne	.label_228
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x2a], 1
	nop	
	je	.label_213
	mov	rbp, rbp
	call	__errno_location
	nop	
	mov	edi, dword ptr [rax]
	mov	rsp, rsp
	call	errno_unsupported
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_213
.label_228:
	lea	rsi, [rsi]
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.1_0
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x4c], esi
	mov	rsp, rsp
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, dword ptr [rbp - 0x4c]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
.label_213:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	test	byte ptr [rax + 0x26], 1
	lea	rdi, [rdi]
	je	.label_214
	nop	
	mov	byte ptr [rbp - 1], 0
	mov	rbp, rbp
	jmp	.label_216
.label_214:
	jmp	.label_218
.label_218:
	jmp	.label_219
.label_227:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x21], 1
	mov	rbp, rbp
	je	.label_221
	nop	
	test	byte ptr [rbp - 0x1d], 1
	nop	
	je	.label_224
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	call	defaultcon
	lea	rsi, [rsi]
	cmp	eax, 0
	jge	.label_224
	call	__errno_location
	lea	rsi, [rsi]
	mov	edi, dword ptr [rax]
	mov	rbp, rbp
	call	ignorable_ctx_err
	nop	
	test	al, 1
	nop	
	jne	.label_224
	lea	rdi, [rdi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.2_0
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], esi
	call	gettext
	nop	
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	call	quotearg_style
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
.label_224:
	jmp	.label_221
.label_221:
	nop	
	jmp	.label_219
.label_219:
	mov	byte ptr [rbp - 1], 1
.label_216:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x70
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405e90

	.globl errno_unsupported
	.type errno_unsupported, @function
errno_unsupported:
	push	rbp
	mov	rbp, rsp
	nop	
	mov	al, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 0x5f
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], al
	je	.label_229
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 0x3d
	sete	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], al
.label_229:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405ed0

	.globl defaultcon
	.type defaultcon, @function
defaultcon:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], esi
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
	#Procedure 0x405f10

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
	.section	.text
	.align	32
	#Procedure 0x405f50

	.globl set_file_security_ctx
	.type set_file_security_ctx, @function
set_file_security_ctx:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	mov	al, dl
	mov	r8b, sil
	lea	rsi, [rsi]
	mov	r9b, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	and	r8b, 1
	mov	byte ptr [rbp - 0x11], r8b
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0x12], al
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	test	byte ptr [rcx + 0x23], 1
	mov	byte ptr [rbp - 0x23], r9b
	mov	rbp, rbp
	je	.label_233
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 0x26]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x23], cl
.label_233:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x23]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	dl, cl
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], al
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x21], 1
	mov	byte ptr [rbp - 0x24], dl
	mov	rsp, rsp
	jne	.label_231
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax + 0x29]
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x24], cl
.label_231:
	mov	al, byte ptr [rbp - 0x24]
	and	al, 1
	mov	byte ptr [rbp - 0x22], al
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x12]
	mov	cl, byte ptr [rbp - 0x11]
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
	test	byte ptr [rbp - 0x21], 1
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
	mov	dword ptr [rbp - 0x28], esi
	nop	
	call	gettext
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	call	quotearg_n_style
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
.label_232:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_235
.label_234:
	nop	
	mov	byte ptr [rbp - 1], 1
.label_235:
	mov	al, byte ptr [rbp - 1]
	mov	rbp, rbp
	and	al, 1
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4060e0

	.globl restorecon
	.type restorecon, @function
restorecon:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	al, dl
	mov	rbp, rbp
	mov	cl, sil
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	and	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], cl
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0xa], al
	lea	rsi, [rsi]
	call	__errno_location
	xor	edx, edx
	mov	rbp, rbp
	mov	cl, dl
	mov	dword ptr [rax], 0x5f
	lea	rdi, [rdi]
	and	cl, 1
	movzx	eax, cl
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x406140

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
	.section	.text
	.align	32
	#Procedure 0x4061c0

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
	.section	.text
	.align	32
	#Procedure 0x406220

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
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], r9
	mov	rdi, qword ptr [rbp - 0x30]
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
	lea	rdx, [rbp - 0x41]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [top_level_src_name]],  rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [top_level_dst_name]],  rsi
	mov	byte ptr [rbp - 0x41], 0
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	r8b, byte ptr [rbp - 0x21]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	r11, qword ptr [rbp - 0x40]
	and	r8b, 1
	movzx	ebx, r8b
	mov	qword ptr [rbp - 0x50], rdx
	mov	edx, ebx
	mov	qword ptr [rbp - 0x58], rcx
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 1
	mov	r14, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], r10
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r11
	mov	dword ptr [rbp - 0x5c], eax
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
	.section	.text
	.align	32
	#Procedure 0x406350

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
	je	.label_243
	lea	rdi, [rdi]
	jmp	.label_251
.label_243:
	movabs	rdi, OFFSET FLAT:.str.6_0
	movabs	rsi, OFFSET FLAT:.str.5_0
	mov	edx, 0xb86
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	call	__assert_fail
.label_251:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax], 3
	ja	.label_252
	nop	
	jmp	.label_250
.label_252:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.7_0
	nop	
	movabs	rsi, OFFSET FLAT:.str.5_0
	mov	rsp, rsp
	mov	edx, 0xb87
	nop	
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	call	__assert_fail
.label_250:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0xc], 1
	mov	rbp, rbp
	je	.label_248
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0xc], 2
	mov	rbp, rbp
	je	.label_248
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0xc], 3
	jne	.label_242
.label_248:
	jmp	.label_246
.label_242:
	movabs	rdi, OFFSET FLAT:.str.8_0
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.5_0
	nop	
	mov	edx, 0xb88
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	mov	rsp, rsp
	call	__assert_fail
.label_246:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x38], 0
	je	.label_244
	mov	rax, qword ptr [rbp - 8]
	nop	
	cmp	dword ptr [rax + 0x38], 1
	je	.label_244
	nop	
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x38], 2
	mov	rsp, rsp
	jne	.label_253
.label_244:
	jmp	.label_241
.label_253:
	movabs	rdi, OFFSET FLAT:.str.9_0
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.5_0
	mov	edx, 0xb89
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	nop	
	call	__assert_fail
.label_241:
	mov	rax, qword ptr [rbp - 8]
	nop	
	test	byte ptr [rax + 0x17], 1
	lea	rdi, [rdi]
	je	.label_254
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x2c], 1
	nop	
	jne	.label_240
.label_254:
	lea	rsi, [rsi]
	jmp	.label_247
.label_240:
	movabs	rdi, OFFSET FLAT:.str.10_0
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.5_0
	mov	rbp, rbp
	mov	edx, 0xb8a
	nop	
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	nop	
	call	__assert_fail
.label_247:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x38], 2
	nop	
	jne	.label_245
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0xc], 2
	mov	rsp, rsp
	jne	.label_249
.label_245:
	jmp	.label_255
.label_249:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.11_0
	movabs	rsi, OFFSET FLAT:.str.5_0
	mov	edx, 0xb8d
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	call	__assert_fail
.label_255:
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
	.section	.text
	.align	32
	#Procedure 0x406590

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
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x28], rsi
	nop	
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	nop	
	mov	qword ptr [rbp - 0x38], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], r8
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], r9
	and	r14b, 1
	mov	byte ptr [rbp - 0x49], r14b
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rbx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], r11
	mov	qword ptr [rbp - 0x68], r10
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x199], 0
	mov	qword ptr [rbp - 0x1a8], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1b0], 0
	mov	byte ptr [rbp - 0x1b2], 0
	mov	byte ptr [rbp - 0x1b3], 0
	mov	byte ptr [rbp - 0x1b4], 0
	mov	rcx, qword ptr [rbp - 0x60]
	nop	
	mov	byte ptr [rcx], 0
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rcx + 0x34]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1b8], edx
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x18], 1
	je	.label_320
	nop	
	cmp	dword ptr [rbp - 0x1b8], 0
	nop	
	jge	.label_434
	mov	rbp, rbp
	mov	eax, 0xffffff9c
	mov	rsp, rsp
	mov	r8d, 1
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	edi, eax
	lea	rsi, [rsi]
	mov	edx, eax
	lea	rsi, [rsi]
	call	renameatu
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_442
	mov	rsp, rsp
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x4d8], ecx
	jmp	.label_268
.label_442:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4d8], eax
	jmp	.label_268
.label_268:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x4d8]
	mov	dword ptr [rbp - 0x1b8], eax
.label_434:
	cmp	dword ptr [rbp - 0x1b8], 0
	sete	al
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x29], al
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_450
	mov	al, byte ptr [rbp - 0x29]
	mov	rcx, qword ptr [rbp - 0x68]
	and	al, 1
	mov	byte ptr [rcx], al
.label_450:
	jmp	.label_320
.label_320:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x1b8], 0
	jne	.label_456
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	test	byte ptr [rax + 0x31], 1
	mov	rsp, rsp
	jne	.label_299
	nop	
	jmp	.label_361
.label_456:
	cmp	dword ptr [rbp - 0x1b8], 0x11
	jne	.label_361
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	dword ptr [rax + 8], 2
	lea	rsi, [rsi]
	je	.label_299
.label_361:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1b8], 0
	nop	
	jne	.label_467
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x4e0], rax
	jmp	.label_472
.label_467:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x4e0], rax
.label_472:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x4e0]
	nop	
	mov	qword ptr [rbp - 0x1c0], rax
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	cmp	dword ptr [rax + 4], 2
	jne	.label_476
	lea	rsi, [rbp - 0xf8]
	mov	rdi, qword ptr [rbp - 0x1c0]
	call	__lstat
	mov	dword ptr [rbp - 0x4e4], eax
	jmp	.label_480
.label_476:
	lea	rsi, [rbp - 0xf8]
	nop	
	mov	rdi, qword ptr [rbp - 0x1c0]
	mov	rbp, rbp
	call	stat
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4e4], eax
.label_480:
	mov	eax, dword ptr [rbp - 0x4e4]
	cmp	eax, 0
	je	.label_483
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.12_0
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4e8], esi
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x1c0]
	mov	qword ptr [rbp - 0x4f0], rax
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x4e8]
	mov	rdx, qword ptr [rbp - 0x4f0]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], 0
	lea	rsi, [rsi]
	jmp	.label_258
.label_483:
	mov	eax, dword ptr [rbp - 0xe0]
	nop	
	mov	dword ptr [rbp - 0x18c], eax
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_271
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	test	byte ptr [rax + 0x2a], 1
	jne	.label_271
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x19], 1
	nop	
	jne	.label_280
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.13_0
	call	gettext
	mov	qword ptr [rbp - 0x4f8], rax
	nop	
	jmp	.label_284
.label_280:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.14_0
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x4f8], rax
.label_284:
	mov	rax, qword ptr [rbp - 0x4f8]
	mov	rsp, rsp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x500], rax
	call	quotearg_style
	xor	edi, edi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x504], edi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x504]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	nop	
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_258
.label_271:
	jmp	.label_299
.label_299:
	test	byte ptr [rbp - 0x49], 1
	je	.label_302
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x48], 0
	je	.label_302
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18c]
	nop	
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_306
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0
	jne	.label_306
	lea	rdx, [rbp - 0xf8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x48]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	seen_file
	mov	rbp, rbp
	test	al, 1
	mov	rbp, rbp
	jne	.label_325
	lea	rsi, [rsi]
	jmp	.label_306
.label_325:
	movabs	rdi, OFFSET FLAT:.str.15_0
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x510], rax
	nop	
	call	quotearg_style
	xor	edi, edi
	nop	
	mov	dword ptr [rbp - 0x514], edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x514]
	nop	
	mov	rdx, qword ptr [rbp - 0x510]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_258
.label_306:
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0xf8]
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x48]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	call	record_file
.label_302:
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	lea	rdi, [rdi]
	movzx	esi, al
	lea	rsi, [rsi]
	call	should_dereference
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1c1], al
	test	byte ptr [rbp - 0x29], 1
	jne	.label_278
	cmp	dword ptr [rbp - 0x1b8], 0x11
	nop	
	jne	.label_334
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 8], 2
	je	.label_335
.label_334:
	nop	
	mov	eax, dword ptr [rbp - 0x18c]
	lea	rsi, [rsi]
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_337
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	test	byte ptr [rcx + 0x14], 1
	mov	byte ptr [rbp - 0x515], al
	je	.label_343
	mov	rbp, rbp
	mov	al, 1
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x18c]
	and	ecx, 0xf000
	nop	
	cmp	ecx, 0x4000
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x515], al
	lea	rsi, [rsi]
	je	.label_343
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x18c]
	nop	
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x515], al
	je	.label_343
.label_337:
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x18], 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x515], al
	mov	rbp, rbp
	jne	.label_343
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	test	byte ptr [rcx + 0x2c], 1
	mov	byte ptr [rbp - 0x515], al
	jne	.label_343
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x17], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x515], al
	mov	rbp, rbp
	jne	.label_343
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	dword ptr [rcx], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x515], al
	jne	.label_343
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	cl, byte ptr [rax + 0x15]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x515], cl
.label_343:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x515]
	mov	edi, 0xffffff9c
	lea	rdx, [rbp - 0x188]
	nop	
	xor	ecx, ecx
	mov	esi, 0x100
	nop	
	and	al, 1
	mov	byte ptr [rbp - 0x1c2], al
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x1c2]
	test	al, 1
	mov	rbp, rbp
	cmovne	ecx, esi
	mov	dword ptr [rbp - 0x1c8], ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rbp - 0x1c8]
	call	fstatat
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_473
	mov	al, byte ptr [rbp - 0x1c2]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1b4], al
	mov	dword ptr [rbp - 0x1b8], 0x11
	mov	rsp, rsp
	jmp	.label_381
.label_473:
	mov	rbp, rbp
	call	__errno_location
	cmp	dword ptr [rax], 0x28
	jne	.label_387
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x16], 1
	lea	rdi, [rdi]
	je	.label_387
	nop	
	jmp	.label_391
.label_387:
	lea	rsi, [rsi]
	call	__errno_location
	cmp	dword ptr [rax], 2
	je	.label_394
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.12_0
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x51c], esi
	lea	rsi, [rsi]
	call	gettext
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x528], rax
	nop	
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x51c]
	mov	rdx, qword ptr [rbp - 0x528]
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_258
.label_394:
	mov	byte ptr [rbp - 0x29], 1
	lea	rdi, [rdi]
	jmp	.label_391
.label_391:
	lea	rsi, [rsi]
	jmp	.label_381
.label_381:
	mov	rbp, rbp
	jmp	.label_335
.label_335:
	cmp	dword ptr [rbp - 0x1b8], 0x11
	jne	.label_368
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1c9], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 8], 2
	je	.label_409
	lea	rsi, [rbp - 0xf8]
	mov	rbp, rbp
	lea	rcx, [rbp - 0x188]
	lea	r9, [rbp - 0x1c9]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	r8, qword ptr [rbp - 0x48]
	call	same_file_ok
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_409
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.16_0
	mov	rsp, rsp
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x530], rax
	lea	rsi, [rsi]
	call	quotearg_n_style
	mov	rbp, rbp
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x538], rax
	call	quotearg_n_style
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edi, esi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x530]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x538]
	mov	rbp, rbp
	mov	r8, rax
	nop	
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_258
.label_409:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0x2d], 1
	je	.label_329
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	mov	rbp, rbp
	je	.label_329
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x48]
	test	byte ptr [rdx + 0x1f], 1
	nop	
	mov	byte ptr [rbp - 0x539], cl
	je	.label_425
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	test	byte ptr [rdx + 0x18], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x53a], cl
	je	.label_429
	nop	
	mov	rax, qword ptr [rbp - 0x188]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0xf8]
	sete	cl
	mov	byte ptr [rbp - 0x53a], cl
.label_429:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x53a]
	xor	al, 0xff
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x539], al
.label_425:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x539]
	nop	
	lea	rsi, [rbp - 0x188]
	mov	rsp, rsp
	lea	rdx, [rbp - 0xf8]
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	edi, 1
	test	al, 1
	nop	
	cmovne	ecx, edi
	nop	
	mov	dword ptr [rbp - 0x1d0], ecx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x1d0]
	nop	
	call	utimecmp
	nop	
	xor	ecx, ecx
	lea	rsi, [rsi]
	cmp	ecx, eax
	jg	.label_443
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_445
	mov	rax, qword ptr [rbp - 0x68]
	mov	byte ptr [rax], 1
.label_445:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xf8]
	call	remember_copied
	nop	
	mov	qword ptr [rbp - 0x1a8], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x1a8], 0
	nop	
	je	.label_296
	nop	
	mov	edx, 1
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x1a8]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x2e]
	mov	r8b, byte ptr [rbp - 0x1c1]
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
	jne	.label_461
	jmp	.label_272
.label_461:
	jmp	.label_296
.label_296:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], 1
	mov	rbp, rbp
	jmp	.label_258
.label_443:
	jmp	.label_329
.label_329:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_470
	lea	rdx, [rbp - 0x188]
	mov	rdi, qword ptr [rbp - 0x48]
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	abandon_move
	nop	
	test	al, 1
	jne	.label_475
	nop	
	jmp	.label_477
.label_475:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	je	.label_417
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	byte ptr [rax], 1
.label_417:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], 1
	lea	rdi, [rdi]
	jmp	.label_258
.label_477:
	jmp	.label_307
.label_470:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x18c]
	lea	rdi, [rdi]
	and	eax, 0xf000
	mov	rsp, rsp
	cmp	eax, 0x4000
	lea	rdi, [rdi]
	je	.label_263
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	dword ptr [rax + 8], 2
	mov	rsp, rsp
	je	.label_466
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 8], 3
	mov	rsp, rsp
	jne	.label_263
	lea	rdx, [rbp - 0x188]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	overwrite_ok
	mov	rsp, rsp
	test	al, 1
	jne	.label_263
.label_466:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_258
.label_263:
	lea	rsi, [rsi]
	jmp	.label_307
.label_307:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x1c9], 1
	lea	rsi, [rsi]
	je	.label_266
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_258
.label_266:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x170]
	and	eax, 0xf000
	lea	rdi, [rdi]
	cmp	eax, 0x4000
	je	.label_270
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	mov	rbp, rbp
	cmp	eax, 0x4000
	jne	.label_273
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x18], 1
	je	.label_277
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	cmp	dword ptr [rax], 0
	je	.label_277
	lea	rdi, [rdi]
	jmp	.label_282
.label_277:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.17_1
	call	gettext
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 4
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x548], rax
	call	quotearg_n_style
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x550], rax
	lea	rsi, [rsi]
	call	quotearg_n_style
	nop	
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x548]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x550]
	lea	rdi, [rdi]
	mov	r8, rax
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_258
.label_282:
	jmp	.label_273
.label_273:
	nop	
	test	byte ptr [rbp - 0x49], 1
	je	.label_298
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax], 3
	je	.label_298
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0x188]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x40]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	seen_file
	lea	rdi, [rdi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_289
	lea	rdi, [rdi]
	jmp	.label_298
.label_289:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.18_1
	mov	rsp, rsp
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x558], rax
	call	quotearg_n_style
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x560], rax
	call	quotearg_n_style
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edi, esi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x558]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x560]
	mov	r8, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_258
.label_298:
	jmp	.label_270
.label_270:
	mov	eax, dword ptr [rbp - 0x18c]
	nop	
	and	eax, 0xf000
	lea	rdi, [rdi]
	cmp	eax, 0x4000
	je	.label_303
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x170]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_326
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_332
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0
	mov	rsp, rsp
	je	.label_332
	jmp	.label_448
.label_332:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.19_0
	call	gettext
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x568], rax
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x56c], edi
	mov	esi, dword ptr [rbp - 0x56c]
	mov	rdx, qword ptr [rbp - 0x568]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	byte ptr [rbp - 0x11], 0
	lea	rsi, [rsi]
	jmp	.label_258
.label_448:
	lea	rsi, [rsi]
	jmp	.label_326
.label_326:
	lea	rsi, [rsi]
	jmp	.label_303
.label_303:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_350
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xe0]
	mov	rsp, rsp
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_351
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	and	eax, 0xf000
	nop	
	cmp	eax, 0x4000
	je	.label_351
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_351
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.20
	call	gettext
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x578], rax
	mov	rsp, rsp
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x580], rax
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rsp, rsp
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x578]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x580]
	mov	r8, rax
	nop	
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x11], 0
	lea	rdi, [rdi]
	jmp	.label_258
.label_351:
	jmp	.label_350
.label_350:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax], 0
	je	.label_378
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	call	last_component
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1d8], rax
	mov	rdi, rax
	call	dot_or_dotdot
	test	al, 1
	jne	.label_378
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	mov	rbp, rbp
	jne	.label_384
	mov	eax, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	and	eax, 0xf000
	nop	
	cmp	eax, 0x4000
	je	.label_378
.label_384:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax], 3
	lea	rsi, [rsi]
	je	.label_293
	lea	rsi, [rbp - 0xf8]
	nop	
	mov	rdi, qword ptr [rbp - 0x1d8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	source_is_dst_backup
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_396
	jmp	.label_293
.label_396:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	lea	rdi, [rdi]
	je	.label_399
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.21_0
	call	gettext
	mov	qword ptr [rbp - 0x588], rax
	mov	rbp, rbp
	jmp	.label_403
.label_399:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.22_0
	lea	rsi, [rsi]
	call	gettext
	mov	qword ptr [rbp - 0x588], rax
.label_403:
	mov	rax, qword ptr [rbp - 0x588]
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, 4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1e0], rax
	nop	
	mov	rdx, qword ptr [rbp - 0x1e0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x590], rdx
	nop	
	mov	rdx, rax
	mov	rsp, rsp
	call	quotearg_n_style
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x598], rax
	mov	rbp, rbp
	call	quotearg_n_style
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edi, esi
	nop	
	mov	rdx, qword ptr [rbp - 0x590]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x598]
	mov	rsp, rsp
	mov	r8, rax
	nop	
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_258
.label_293:
	lea	rdi, [rdi]
	mov	edi, 0xffffff9c
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x48]
	mov	edx, dword ptr [rax]
	nop	
	call	backup_file_rename
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1e8], rax
	nop	
	cmp	qword ptr [rbp - 0x1e8], 0
	mov	rsp, rsp
	je	.label_418
	jmp	.label_419
.label_419:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1e8]
	nop	
	mov	qword ptr [rbp - 0x1f0], rax
	mov	rdi, rax
	call	strlen
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	inc	rdi
	mov	qword ptr [rbp - 0x1f8], rdi
	add	rax, 0x10
	nop	
	and	rax, 0xfffffffffffffff0
	mov	rdi, rsp
	mov	rsp, rsp
	sub	rdi, rax
	mov	rsp, rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x200], rdi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x200]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x1f0]
	mov	rdx, qword ptr [rbp - 0x1f8]
	nop	
	mov	rdi, rax
	mov	qword ptr [rbp - 0x5a0], rax
	mov	rsp, rsp
	call	memcpy
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x5a0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x208], rax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x208]
	mov	qword ptr [rbp - 0x1b0], rdx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x1e8]
	call	free
	jmp	.label_432
.label_418:
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 2
	lea	rsi, [rsi]
	je	.label_433
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.23_0
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5a4], esi
	call	gettext
	nop	
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x5b0], rax
	nop	
	call	quotearg_style
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, dword ptr [rbp - 0x5a4]
	nop	
	mov	rdx, qword ptr [rbp - 0x5b0]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	byte ptr [rbp - 0x11], 0
	lea	rsi, [rsi]
	jmp	.label_258
.label_433:
	jmp	.label_432
.label_432:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x29], 1
	jmp	.label_275
.label_378:
	mov	eax, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0x4000
	lea	rdi, [rdi]
	je	.label_355
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	jne	.label_355
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	test	byte ptr [rax + 0x15], 1
	mov	rsp, rsp
	jne	.label_453
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x22], 1
	lea	rdi, [rdi]
	je	.label_340
	mov	rsp, rsp
	mov	eax, 1
	nop	
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x178]
	jb	.label_453
.label_340:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 4], 2
	mov	rsp, rsp
	jne	.label_355
	mov	eax, dword ptr [rbp - 0xe0]
	and	eax, 0xf000
	lea	rdi, [rdi]
	cmp	eax, 0x8000
	mov	rbp, rbp
	je	.label_355
.label_453:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	call	unlink
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_474
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 2
	lea	rsi, [rsi]
	je	.label_474
	lea	rsi, [rsi]
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.24_0
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x5b4], esi
	nop	
	call	gettext
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x5c0], rax
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x5b4]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x5c0]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], 0
	nop	
	jmp	.label_258
.label_474:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x29], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2e], 1
	mov	rsp, rsp
	je	.label_261
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.25_0
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x5c8], rax
	mov	rsp, rsp
	call	quotearg_style
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x5c8]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rsp, rsp
	mov	al, 0
	nop	
	call	printf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5cc], eax
.label_261:
	lea	rdi, [rdi]
	jmp	.label_355
.label_355:
	jmp	.label_275
.label_275:
	mov	rsp, rsp
	jmp	.label_368
.label_368:
	jmp	.label_278
.label_278:
	test	byte ptr [rbp - 0x49], 1
	nop	
	je	.label_279
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x40], 0
	je	.label_279
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	jne	.label_279
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	cmp	dword ptr [rax], 0
	nop	
	jne	.label_279
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x209], 1
	test	byte ptr [rbp - 0x1b4], 1
	mov	rbp, rbp
	je	.label_286
	lea	rax, [rbp - 0x188]
	nop	
	mov	qword ptr [rbp - 0x2a8], rax
	jmp	.label_288
.label_286:
	mov	rbp, rbp
	lea	rsi, [rbp - 0x2a0]
	mov	rdi, qword ptr [rbp - 0x28]
	call	__lstat
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_294
	lea	rax, [rbp - 0x2a0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2a8], rax
	lea	rsi, [rsi]
	jmp	.label_295
.label_294:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x209], 0
.label_295:
	lea	rdi, [rdi]
	jmp	.label_288
.label_288:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x209], 1
	je	.label_305
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x2a8]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	lea	rsi, [rsi]
	jne	.label_305
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 0x40]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x2a8]
	lea	rsi, [rsi]
	call	seen_file
	test	al, 1
	jne	.label_314
	jmp	.label_305
.label_314:
	movabs	rdi, OFFSET FLAT:.str.26_0
	call	gettext
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x5d8], rax
	call	quotearg_n_style
	mov	edi, 1
	nop	
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x5e0], rax
	call	quotearg_n_style
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x5d8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x5e0]
	mov	r8, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_258
.label_305:
	jmp	.label_279
.label_279:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2e], 1
	je	.label_330
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	jne	.label_330
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18c]
	lea	rsi, [rsi]
	and	eax, 0xf000
	cmp	eax, 0x4000
	lea	rdi, [rdi]
	je	.label_330
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x1b0]
	mov	rsp, rsp
	call	emit_verbose
.label_330:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1b8], 0
	jne	.label_341
	mov	qword ptr [rbp - 0x1a8], 0
	nop	
	jmp	.label_388
.label_341:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2a], 1
	lea	rsi, [rsi]
	je	.label_281
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0x4000
	nop	
	jne	.label_281
	test	byte ptr [rbp - 0x49], 1
	lea	rdi, [rdi]
	je	.label_349
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rdx, qword ptr [rbp - 0xf8]
	lea	rsi, [rsi]
	call	remember_copied
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1a8], rax
	nop	
	jmp	.label_354
.label_349:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsi, qword ptr [rbp - 0xf8]
	call	src_to_dest_lookup
	mov	qword ptr [rbp - 0x1a8], rax
.label_354:
	mov	rbp, rbp
	jmp	.label_360
.label_281:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	mov	rsp, rsp
	je	.label_362
	cmp	qword ptr [rbp - 0xe8], 1
	jne	.label_362
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xf8]
	lea	rsi, [rsi]
	call	src_to_dest_lookup
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1a8], rax
	jmp	.label_369
.label_362:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x22], 1
	je	.label_373
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x17], 1
	lea	rsi, [rsi]
	jne	.label_373
	lea	rsi, [rsi]
	mov	eax, 1
	mov	ecx, eax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0xe8]
	jb	.label_374
	test	byte ptr [rbp - 0x49], 1
	je	.label_377
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 4], 3
	je	.label_374
.label_377:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	dword ptr [rax + 4], 4
	jne	.label_373
.label_374:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xf8]
	nop	
	call	remember_copied
	mov	qword ptr [rbp - 0x1a8], rax
.label_373:
	jmp	.label_369
.label_369:
	jmp	.label_360
.label_360:
	lea	rdi, [rdi]
	jmp	.label_388
.label_388:
	cmp	qword ptr [rbp - 0x1a8], 0
	je	.label_389
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	mov	rsp, rsp
	cmp	eax, 0x4000
	lea	rdi, [rdi]
	jne	.label_392
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x1a8]
	call	same_name
	mov	rbp, rbp
	test	al, 1
	mov	rsp, rsp
	jne	.label_398
	jmp	.label_400
.label_398:
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
	mov	qword ptr [rbp - 0x5e8], rax
	call	quotearg_n_style
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, 4
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [top_level_dst_name]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x5f0], rax
	mov	rsp, rsp
	call	quotearg_n_style
	xor	esi, esi
	mov	edi, esi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x5e8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x5f0]
	mov	r8, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	byte ptr [rcx], 1
	jmp	.label_272
.label_400:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x1a8]
	call	same_name
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_412
	lea	rdi, [rdi]
	jmp	.label_454
.label_412:
	nop	
	movabs	rdi, OFFSET FLAT:.str.28_0
	nop	
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [top_level_src_name]]
	mov	qword ptr [rbp - 0x5f8], rax
	call	quotearg_style
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5fc], edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x5fc]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x5f8]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	test	byte ptr [rcx + 0x18], 1
	mov	rbp, rbp
	je	.label_301
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_301
	mov	rax, qword ptr [rbp - 0x68]
	mov	byte ptr [rax], 1
.label_301:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_258
.label_454:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 4], 4
	lea	rdi, [rdi]
	je	.label_421
	test	byte ptr [rbp - 0x49], 1
	lea	rdi, [rdi]
	je	.label_424
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	dword ptr [rax + 4], 3
	nop	
	jne	.label_424
.label_421:
	lea	rsi, [rsi]
	jmp	.label_428
.label_424:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.29_0
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x608], rax
	nop	
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x610], rax
	nop	
	call	quotearg_n_style
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edi, esi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x608]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x610]
	mov	r8, rax
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	jmp	.label_272
.label_428:
	nop	
	jmp	.label_437
.label_437:
	jmp	.label_439
.label_439:
	jmp	.label_440
.label_392:
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x1a8]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x2e]
	mov	r8b, byte ptr [rbp - 0x1c1]
	lea	rsi, [rsi]
	and	cl, 1
	and	r8b, 1
	movzx	ecx, cl
	movzx	r8d, r8b
	call	create_hard_link
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_447
	jmp	.label_272
.label_447:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], 1
	nop	
	jmp	.label_258
.label_440:
	jmp	.label_389
.label_389:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	test	byte ptr [rax + 0x18], 1
	nop	
	je	.label_449
	cmp	dword ptr [rbp - 0x1b8], 0x11
	lea	rsi, [rsi]
	jne	.label_452
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	rename
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_458
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	dword ptr [rbp - 0x614], eax
	lea	rsi, [rsi]
	jmp	.label_460
.label_458:
	mov	rsp, rsp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x614], ecx
.label_460:
	nop	
	mov	eax, dword ptr [rbp - 0x614]
	mov	dword ptr [rbp - 0x1b8], eax
.label_452:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x1b8], 0
	jne	.label_465
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2e], 1
	je	.label_471
	movabs	rdi, OFFSET FLAT:.str.30
	call	gettext
	mov	rdi, rax
	nop	
	mov	al, 0
	call	printf
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x1b0]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x618], eax
	mov	rbp, rbp
	call	emit_verbose
.label_471:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	test	byte ptr [rax + 0x21], 1
	lea	rsi, [rsi]
	je	.label_479
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 1
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	call	set_file_security_ctx
	mov	byte ptr [rbp - 0x619], al
.label_479:
	cmp	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	je	.label_462
	mov	rax, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	byte ptr [rax], 1
.label_462:
	test	byte ptr [rbp - 0x49], 1
	mov	rbp, rbp
	je	.label_256
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x31], 1
	nop	
	jne	.label_256
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0xf8]
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x40]
	mov	rsi, qword ptr [rbp - 0x28]
	call	record_file
.label_256:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], 1
	mov	rsp, rsp
	jmp	.label_258
.label_465:
	cmp	dword ptr [rbp - 0x1b8], 0x16
	jne	.label_265
	movabs	rdi, OFFSET FLAT:.str.31_0
	call	gettext
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, 4
	mov	rdx,  qword ptr [word ptr [top_level_src_name]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x628], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [top_level_dst_name]]
	mov	qword ptr [rbp - 0x630], rax
	mov	rbp, rbp
	call	quotearg_n_style
	xor	esi, esi
	mov	rbp, rbp
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x628]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x630]
	mov	r8, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	nop	
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	byte ptr [rcx], 1
	mov	byte ptr [rbp - 0x11], 1
	nop	
	jmp	.label_258
.label_265:
	cmp	dword ptr [rbp - 0x1b8], 0x12
	je	.label_285
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.32_0
	nop	
	mov	esi, dword ptr [rbp - 0x1b8]
	mov	dword ptr [rbp - 0x634], esi
	call	gettext
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x640], rax
	call	quotearg_n_style
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, 4
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x648], rax
	call	quotearg_n_style
	nop	
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x634]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x640]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x648]
	lea	rdi, [rdi]
	mov	r8, rax
	mov	rbp, rbp
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	nop	
	mov	rdi, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xf8]
	call	forget_created
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], 0
	lea	rdi, [rdi]
	jmp	.label_258
.label_285:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_312
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	rmdir
	nop	
	mov	dword ptr [rbp - 0x64c], eax
	mov	rbp, rbp
	jmp	.label_317
.label_312:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	unlink
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x64c], eax
.label_317:
	mov	eax, dword ptr [rbp - 0x64c]
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_318
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 2
	nop	
	je	.label_318
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.33_0
	nop	
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x650], esi
	lea	rdi, [rdi]
	call	gettext
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x658], rax
	call	quotearg_n_style
	mov	rsp, rsp
	mov	edi, 1
	mov	esi, 4
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x660], rax
	mov	rsp, rsp
	call	quotearg_n_style
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x650]
	mov	rdx, qword ptr [rbp - 0x658]
	mov	rcx, qword ptr [rbp - 0x660]
	nop	
	mov	r8, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	nop	
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	call	forget_created
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_258
.label_318:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2e], 1
	mov	rsp, rsp
	je	.label_347
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_347
	movabs	rdi, OFFSET FLAT:.str.34_0
	call	gettext
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	al, 0
	nop	
	call	printf
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x1b0]
	mov	dword ptr [rbp - 0x664], eax
	call	emit_verbose
.label_347:
	mov	byte ptr [rbp - 0x29], 1
.label_449:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2b], 1
	je	.label_357
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x10]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x668], ecx
	lea	rdi, [rdi]
	jmp	.label_358
.label_357:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x18c]
	mov	dword ptr [rbp - 0x668], eax
.label_358:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x668]
	and	eax, 0xfff
	mov	dword ptr [rbp - 0x194], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x194]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	test	byte ptr [rcx + 0x1d], 1
	mov	dword ptr [rbp - 0x66c], eax
	nop	
	je	.label_365
	mov	eax, 0x3f
	mov	dword ptr [rbp - 0x670], eax
	lea	rsi, [rsi]
	jmp	.label_451
.label_365:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, 0x12
	mov	edx, dword ptr [rbp - 0x18c]
	lea	rsi, [rsi]
	and	edx, 0xf000
	cmp	edx, 0x4000
	cmove	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x670], eax
.label_451:
	mov	eax, dword ptr [rbp - 0x670]
	mov	ecx, dword ptr [rbp - 0x66c]
	and	ecx, eax
	mov	dword ptr [rbp - 0x198], ecx
	mov	byte ptr [rbp - 0x1b1], 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rbp - 0x18c]
	mov	r8b, byte ptr [rbp - 0x29]
	mov	r9, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	and	r8b, 1
	movzx	ecx, r8b
	mov	r8, r9
	call	set_process_security_ctx
	mov	rsp, rsp
	test	al, 1
	mov	rbp, rbp
	jne	.label_386
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_258
.label_386:
	nop	
	mov	eax, dword ptr [rbp - 0x18c]
	mov	rsp, rsp
	and	eax, 0xf000
	nop	
	cmp	eax, 0x4000
	lea	rsi, [rsi]
	jne	.label_390
	lea	rdi, [rbp - 0xf8]
	mov	rsi, qword ptr [rbp - 0x40]
	nop	
	call	is_ancestor
	test	al, 1
	jne	.label_395
	lea	rsi, [rsi]
	jmp	.label_397
.label_395:
	movabs	rdi, OFFSET FLAT:.str.35_0
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x678], rax
	mov	rsp, rsp
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	dword ptr [rbp - 0x67c], edi
	mov	esi, dword ptr [rbp - 0x67c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x678]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
	mov	rsp, rsp
	jmp	.label_272
.label_397:
	mov	rax, rsp
	nop	
	add	rax, -0x20
	mov	rsp, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2b0], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x2b0]
	nop	
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0x2b0]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x2b0]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	test	byte ptr [rbp - 0x29], 1
	nop	
	jne	.label_408
	mov	eax, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_413
.label_408:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rbp - 0x194]
	mov	ecx, dword ptr [rbp - 0x198]
	lea	rsi, [rsi]
	xor	ecx, 0xffffffff
	lea	rdi, [rdi]
	and	eax, ecx
	lea	rsi, [rsi]
	mov	esi, eax
	call	mkdir
	cmp	eax, 0
	je	.label_416
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.36_0
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x680], esi
	lea	rsi, [rsi]
	call	gettext
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x688], rax
	call	quotearg_style
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x680]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x688]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
	jmp	.label_272
.label_416:
	lea	rsi, [rbp - 0x188]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	__lstat
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_427
	lea	rsi, [rsi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.12_0
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x68c], esi
	call	gettext
	mov	rbp, rbp
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x698], rax
	nop	
	call	quotearg_style
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x68c]
	mov	rdx, qword ptr [rbp - 0x698]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
	mov	rbp, rbp
	jmp	.label_272
.label_427:
	mov	eax, dword ptr [rbp - 0x170]
	and	eax, 0x1c0
	lea	rsi, [rsi]
	cmp	eax, 0x1c0
	nop	
	je	.label_435
	mov	eax, dword ptr [rbp - 0x170]
	mov	dword ptr [rbp - 0x190], eax
	mov	byte ptr [rbp - 0x199], 1
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rbp - 0x190]
	or	eax, 0x1c0
	lea	rdi, [rdi]
	mov	esi, eax
	call	chmod
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_444
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x69c], esi
	call	gettext
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x6a8], rax
	nop	
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x69c]
	mov	rdx, qword ptr [rbp - 0x6a8]
	mov	rcx, rax
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	jmp	.label_272
.label_444:
	jmp	.label_435
.label_435:
	jmp	.label_457
.label_457:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	test	byte ptr [rax], 1
	jne	.label_336
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x180]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x188]
	call	remember_copied
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	byte ptr [rdx], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x6b0], rax
.label_336:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x2e], 1
	nop	
	je	.label_468
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	test	byte ptr [rax + 0x18], 1
	je	.label_402
	movabs	rdi, OFFSET FLAT:.str.38_0
	lea	rdi, [rdi]
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x6b8], rax
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x6b8]
	mov	rsi, rax
	mov	rbp, rbp
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x6bc], eax
	jmp	.label_481
.label_402:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	emit_verbose
.label_481:
	mov	rsp, rsp
	jmp	.label_468
.label_468:
	jmp	.label_376
.label_413:
	mov	dword ptr [rbp - 0x198], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x21], 1
	jne	.label_485
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x25], 1
	mov	rsp, rsp
	je	.label_259
.label_485:
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0x25]
	mov	rax, qword ptr [rbp - 0x48]
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
	jne	.label_267
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x26], 1
	mov	rbp, rbp
	je	.label_269
	lea	rdi, [rdi]
	jmp	.label_272
.label_269:
	jmp	.label_267
.label_267:
	mov	rbp, rbp
	jmp	.label_259
.label_259:
	jmp	.label_376
.label_376:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x1c], 1
	mov	rbp, rbp
	je	.label_274
	cmp	qword ptr [rbp - 0x38], 0
	lea	rdi, [rdi]
	je	.label_274
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	nop	
	cmp	rax, qword ptr [rbp - 0xf8]
	je	.label_274
	jmp	.label_405
.label_274:
	lea	rcx, [rbp - 0xf8]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x2b0]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	mov	r10, qword ptr [rbp - 0x60]
	and	al, 1
	nop	
	sub	rsp, 0x10
	movzx	r11d, al
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x6c8], rdx
	lea	rdi, [rdi]
	mov	edx, r11d
	mov	rbx, qword ptr [rbp - 0x6c8]
	mov	qword ptr [rsp], rbx
	mov	qword ptr [rsp + 8], r10
	lea	rsi, [rsi]
	call	copy_dir
	add	rsp, 0x10
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1b1], al
.label_405:
	jmp	.label_297
.label_390:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2c], 1
	nop	
	je	.label_300
	mov	byte ptr [rbp - 0x1b3], 1
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x2f
	je	.label_304
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	call	dir_name
	mov	rbp, rbp
	mov	cl, 1
	mov	qword ptr [rbp - 0x3d8], rax
	mov	rsi, qword ptr [rbp - 0x3d8]
	mov	edx, OFFSET FLAT:.str.2_1
	mov	edi, edx
	mov	byte ptr [rbp - 0x6c9], cl
	lea	rsi, [rsi]
	call	strcmp
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	mov	cl, byte ptr [rbp - 0x6c9]
	mov	byte ptr [rbp - 0x6ca], cl
	lea	rsi, [rsi]
	je	.label_313
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.2_1
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x340]
	mov	rbp, rbp
	call	stat
	mov	cl, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0x6ca], cl
	lea	rsi, [rsi]
	jne	.label_313
	mov	rsp, rsp
	lea	rsi, [rbp - 0x3d0]
	nop	
	mov	rdi, qword ptr [rbp - 0x3d8]
	lea	rsi, [rsi]
	call	stat
	mov	rbp, rbp
	mov	cl, 1
	nop	
	cmp	eax, 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x6ca], cl
	mov	rbp, rbp
	jne	.label_313
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x338]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x3c8]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x6cb], cl
	jne	.label_322
	mov	rax, qword ptr [rbp - 0x340]
	cmp	rax, qword ptr [rbp - 0x3d0]
	lea	rsi, [rsi]
	sete	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x6cb], cl
.label_322:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x6cb]
	mov	byte ptr [rbp - 0x6ca], al
.label_313:
	mov	al, byte ptr [rbp - 0x6ca]
	nop	
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3d9], al
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x3d8]
	call	free
	test	byte ptr [rbp - 0x3d9], 1
	jne	.label_342
	nop	
	movabs	rdi, OFFSET FLAT:.str.40
	call	gettext
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x6d8], rax
	call	quotearg_n_style_colon
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x6d8]
	nop	
	mov	rcx, rax
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	lea	rdi, [rdi]
	jmp	.label_272
.label_342:
	mov	rsp, rsp
	jmp	.label_304
.label_304:
	mov	rbp, rbp
	mov	esi, 0xffffff9c
	lea	rsi, [rsi]
	mov	r8d, 0xffffffff
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x16]
	nop	
	and	cl, 1
	nop	
	movzx	ecx, cl
	call	force_symlinkat
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x3e0], eax
	mov	rsp, rsp
	cmp	ecx, dword ptr [rbp - 0x3e0]
	jge	.label_359
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.41_0
	mov	esi, dword ptr [rbp - 0x3e0]
	nop	
	mov	dword ptr [rbp - 0x6dc], esi
	mov	rsp, rsp
	call	gettext
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x6e8], rax
	mov	rsp, rsp
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x6f0], rax
	lea	rsi, [rsi]
	call	quotearg_n_style
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x6dc]
	mov	rdx, qword ptr [rbp - 0x6e8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x6f0]
	nop	
	mov	r8, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
	jmp	.label_272
.label_359:
	jmp	.label_348
.label_300:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x17], 1
	je	.label_379
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x16], 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x6f1], al
	mov	rsp, rsp
	jne	.label_382
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	cmp	dword ptr [rax + 8], 3
	sete	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x6f1], cl
.label_382:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x6f1]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x3e1], al
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	al, byte ptr [rbp - 0x3e1]
	lea	rsi, [rsi]
	mov	dl, byte ptr [rbp - 0x1c1]
	lea	rdi, [rdi]
	and	al, 1
	and	dl, 1
	mov	rbp, rbp
	movzx	r8d, al
	mov	byte ptr [rbp - 0x6f2], dl
	nop	
	mov	edx, r8d
	mov	al, byte ptr [rbp - 0x6f2]
	movzx	r8d, al
	call	create_hard_link
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_401
	lea	rsi, [rsi]
	jmp	.label_272
.label_401:
	jmp	.label_372
.label_379:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x8000
	mov	rbp, rbp
	je	.label_404
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x14], 1
	nop	
	je	.label_393
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x18c]
	nop	
	and	eax, 0xf000
	nop	
	cmp	eax, 0xa000
	mov	rsp, rsp
	je	.label_393
.label_404:
	lea	rdi, [rdi]
	lea	r9, [rbp - 0x29]
	lea	rax, [rbp - 0xf8]
	mov	byte ptr [rbp - 0x1b2], 1
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rbp - 0x194]
	and	ecx, 0x1ff
	mov	r8d, dword ptr [rbp - 0x198]
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	call	copy_reg
	add	rsp, 0x10
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_414
	lea	rdi, [rdi]
	jmp	.label_272
.label_414:
	mov	rsp, rsp
	jmp	.label_346
.label_393:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x1000
	jne	.label_415
	mov	rbp, rbp
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rbp - 0x18c]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x198]
	mov	rsp, rsp
	xor	ecx, 0xffffffff
	nop	
	and	eax, ecx
	mov	esi, eax
	call	__mknod
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_410
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x18c]
	mov	rsp, rsp
	and	eax, 0xffffefff
	mov	ecx, dword ptr [rbp - 0x198]
	xor	ecx, 0xffffffff
	mov	rbp, rbp
	and	eax, ecx
	mov	esi, eax
	call	mkfifo
	cmp	eax, 0
	je	.label_338
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.42_0
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x6f8], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x700], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x6f8]
	mov	rdx, qword ptr [rbp - 0x700]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	jmp	.label_272
.label_338:
	jmp	.label_410
.label_410:
	jmp	.label_345
.label_415:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x6000
	je	.label_431
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x2000
	je	.label_431
	nop	
	mov	eax, dword ptr [rbp - 0x18c]
	mov	rbp, rbp
	and	eax, 0xf000
	cmp	eax, 0xc000
	lea	rdi, [rdi]
	jne	.label_430
.label_431:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x18c]
	mov	ecx, dword ptr [rbp - 0x198]
	lea	rsi, [rsi]
	xor	ecx, 0xffffffff
	and	eax, ecx
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rbp, rbp
	mov	esi, eax
	lea	rsi, [rsi]
	call	__mknod
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_484
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.43_0
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x704], esi
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x710], rax
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x704]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x710]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	jmp	.label_272
.label_484:
	jmp	.label_344
.label_430:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0xa000
	jne	.label_459
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xc8]
	call	areadlink_with_size
	nop	
	mov	qword ptr [rbp - 0x3f0], rax
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1b3], 1
	cmp	qword ptr [rbp - 0x3f0], 0
	mov	rsp, rsp
	jne	.label_464
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.44_0
	nop	
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x714], esi
	call	gettext
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x720], rax
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x714]
	mov	rdx, qword ptr [rbp - 0x720]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	jmp	.label_272
.label_464:
	mov	esi, 0xffffff9c
	mov	rbp, rbp
	mov	r8d, 0xffffffff
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x3f0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x16]
	mov	rsp, rsp
	and	cl, 1
	movzx	ecx, cl
	call	force_symlinkat
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x3f4], eax
	mov	rbp, rbp
	cmp	ecx, dword ptr [rbp - 0x3f4]
	jge	.label_257
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	test	byte ptr [rax + 0x2d], 1
	je	.label_257
	test	byte ptr [rbp - 0x29], 1
	mov	rbp, rbp
	jne	.label_257
	mov	eax, dword ptr [rbp - 0x170]
	and	eax, 0xf000
	cmp	eax, 0xa000
	mov	rbp, rbp
	jne	.label_257
	mov	rax, qword ptr [rbp - 0x158]
	mov	rdi, qword ptr [rbp - 0x3f0]
	mov	qword ptr [rbp - 0x728], rax
	mov	rsp, rsp
	call	strlen
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x728]
	nop	
	cmp	rdi, rax
	jne	.label_257
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x158]
	call	areadlink_with_size
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x400], rax
	cmp	qword ptr [rbp - 0x400], 0
	je	.label_276
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x400]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x3f0]
	nop	
	call	strcmp
	cmp	eax, 0
	jne	.label_406
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3f4], 0
.label_406:
	mov	rdi, qword ptr [rbp - 0x400]
	call	free
.label_276:
	nop	
	jmp	.label_257
.label_257:
	mov	rdi, qword ptr [rbp - 0x3f0]
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x3f4]
	jge	.label_290
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.45
	mov	esi, dword ptr [rbp - 0x3f4]
	mov	dword ptr [rbp - 0x72c], esi
	lea	rsi, [rsi]
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x738], rax
	nop	
	call	quotearg_style
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x72c]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x738]
	mov	rcx, rax
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	jmp	.label_272
.label_290:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0x25], 1
	je	.label_308
	call	restore_default_fscreatecon_or_die
.label_308:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	test	byte ptr [rax + 0x1d], 1
	lea	rsi, [rsi]
	je	.label_310
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0xdc]
	mov	edx, dword ptr [rbp - 0xd8]
	call	lchown
	cmp	eax, 0
	je	.label_316
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	call	chown_failure_ok
	mov	rbp, rbp
	test	al, 1
	nop	
	jne	.label_316
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.46
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x73c], esi
	call	gettext
	xor	edi, edi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x73c]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x24], 1
	lea	rdi, [rdi]
	je	.label_321
	mov	rsp, rsp
	jmp	.label_272
.label_321:
	jmp	.label_328
.label_316:
	jmp	.label_328
.label_328:
	jmp	.label_310
.label_310:
	jmp	.label_331
.label_459:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.47
	nop	
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x748], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x74c], edi
	mov	esi, dword ptr [rbp - 0x74c]
	mov	rdx, qword ptr [rbp - 0x748]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	lea	rsi, [rsi]
	jmp	.label_272
.label_331:
	lea	rsi, [rsi]
	jmp	.label_344
.label_344:
	jmp	.label_345
.label_345:
	jmp	.label_346
.label_346:
	mov	rsp, rsp
	jmp	.label_372
.label_372:
	mov	rbp, rbp
	jmp	.label_348
.label_348:
	mov	rbp, rbp
	jmp	.label_297
.label_297:
	test	byte ptr [rbp - 0x29], 1
	lea	rdi, [rdi]
	jne	.label_311
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x14], 1
	jne	.label_311
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0x4000
	je	.label_311
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x21], 1
	nop	
	jne	.label_353
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	test	byte ptr [rax + 0x25], 1
	je	.label_311
.label_353:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x25]
	mov	rax, qword ptr [rbp - 0x48]
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
	jne	.label_363
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x26], 1
	je	.label_366
	lea	rdi, [rdi]
	jmp	.label_272
.label_366:
	mov	rbp, rbp
	jmp	.label_363
.label_363:
	jmp	.label_311
.label_311:
	test	byte ptr [rbp - 0x49], 1
	je	.label_370
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x40], 0
	mov	rbp, rbp
	je	.label_370
	lea	rsi, [rbp - 0x490]
	mov	rdi, qword ptr [rbp - 0x28]
	call	__lstat
	cmp	eax, 0
	jne	.label_375
	mov	rbp, rbp
	lea	rdx, [rbp - 0x490]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 0x40]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	call	record_file
.label_375:
	jmp	.label_370
.label_370:
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	test	byte ptr [rax + 0x17], 1
	je	.label_380
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	mov	rbp, rbp
	je	.label_380
	mov	al, byte ptr [rbp - 0x1b1]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11], al
	lea	rdi, [rdi]
	jmp	.label_258
.label_380:
	test	byte ptr [rbp - 0x1b2], 1
	nop	
	je	.label_455
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x1b1]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x11], al
	jmp	.label_258
.label_455:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0x1f], 1
	je	.label_315
	lea	rdi, [rbp - 0xf8]
	lea	rdi, [rdi]
	call	get_stat_atime
	lea	rdi, [rbp - 0xf8]
	mov	qword ptr [rbp - 0x4c0], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x4b8], rdx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x4c0]
	mov	qword ptr [rbp - 0x4b0], rax
	nop	
	mov	rax, qword ptr [rbp - 0x4b8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4a8], rax
	mov	rsp, rsp
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x4d0], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4c8], rdx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x4d0]
	mov	qword ptr [rbp - 0x4a0], rax
	nop	
	mov	rax, qword ptr [rbp - 0x4c8]
	mov	qword ptr [rbp - 0x498], rax
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x1b3], 1
	lea	rsi, [rsi]
	je	.label_407
	lea	rsi, [rbp - 0x4b0]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	utimens_symlink
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x750], eax
	jmp	.label_411
.label_407:
	lea	rsi, [rbp - 0x4b0]
	mov	rdi, qword ptr [rbp - 0x28]
	call	utimens
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x750], eax
.label_411:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x750]
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_422
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.48
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x754], esi
	mov	rsp, rsp
	call	gettext
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x760], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x754]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x760]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	nop	
	call	error
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	test	byte ptr [rcx + 0x24], 1
	lea	rdi, [rdi]
	je	.label_420
	mov	byte ptr [rbp - 0x11], 0
	mov	rbp, rbp
	jmp	.label_258
.label_420:
	jmp	.label_422
.label_422:
	jmp	.label_315
.label_315:
	test	byte ptr [rbp - 0x1b3], 1
	jne	.label_423
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x1d], 1
	je	.label_423
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x29], 1
	lea	rsi, [rsi]
	jne	.label_426
	mov	eax, dword ptr [rbp - 0xdc]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x16c]
	jne	.label_426
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd8]
	cmp	eax, dword ptr [rbp - 0x168]
	mov	rsp, rsp
	je	.label_423
.label_426:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x28]
	movzx	eax, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	and	eax, 1
	mov	edx, 0xffffffff
	mov	rsp, rsp
	lea	rcx, [rbp - 0xf8]
	lea	r9, [rbp - 0x188]
	mov	r8d, eax
	call	set_owner
	mov	rbp, rbp
	mov	edx, eax
	sub	eax, -1
	mov	dword ptr [rbp - 0x764], edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x768], eax
	je	.label_339
	jmp	.label_436
.label_436:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x764]
	test	eax, eax
	nop	
	je	.label_438
	jmp	.label_441
.label_339:
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_258
.label_438:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xfffff1ff
	mov	dword ptr [rbp - 0x18c], eax
.label_441:
	jmp	.label_423
.label_423:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x27], 1
	mov	rbp, rbp
	je	.label_446
	nop	
	mov	eax, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x48]
	mov	esi, eax
	nop	
	mov	ecx, eax
	call	copy_attr
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_446
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	test	byte ptr [rax + 0x28], 1
	lea	rdi, [rdi]
	je	.label_446
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_258
.label_446:
	test	byte ptr [rbp - 0x1b3], 1
	mov	rsp, rsp
	je	.label_323
	mov	al, byte ptr [rbp - 0x1b1]
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	nop	
	jmp	.label_258
.label_323:
	lea	rsi, [rsi]
	mov	esi, 0xffffffff
	nop	
	lea	rdx, [rbp - 0xf8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	set_author
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	test	byte ptr [rdx + 0x1e], 1
	jne	.label_463
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	lea	rdi, [rdi]
	je	.label_469
.label_463:
	mov	eax, 0xffffffff
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8d, dword ptr [rbp - 0x18c]
	lea	rsi, [rsi]
	mov	esi, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	call	copy_acl
	nop	
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_478
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	test	byte ptr [rax + 0x24], 1
	mov	rsp, rsp
	je	.label_478
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], 0
	nop	
	jmp	.label_258
.label_478:
	jmp	.label_352
.label_469:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	test	byte ptr [rax + 0x2b], 1
	je	.label_482
	mov	esi, 0xffffffff
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	edx, dword ptr [rax + 0x10]
	mov	rsp, rsp
	call	set_acl
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_486
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_258
.label_486:
	jmp	.label_260
.label_482:
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	test	byte ptr [rax + 0x20], 1
	je	.label_262
	test	byte ptr [rbp - 0x29], 1
	mov	rsp, rsp
	je	.label_262
	mov	al, 1
	nop	
	mov	ecx, dword ptr [rbp - 0x18c]
	mov	rsp, rsp
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	mov	byte ptr [rbp - 0x769], al
	lea	rdi, [rdi]
	je	.label_264
	mov	eax, dword ptr [rbp - 0x18c]
	lea	rsi, [rsi]
	and	eax, 0xf000
	mov	rsp, rsp
	cmp	eax, 0xc000
	sete	cl
	mov	byte ptr [rbp - 0x769], cl
.label_264:
	mov	al, byte ptr [rbp - 0x769]
	mov	ecx, 0x1b6
	mov	edx, 0x1ff
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	cmovne	ecx, edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4d4], ecx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x4d4]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x778], rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x77c], ecx
	mov	rsp, rsp
	call	cached_umask
	nop	
	mov	esi, 0xffffffff
	xor	eax, 0xffffffff
	mov	ecx, dword ptr [rbp - 0x77c]
	and	ecx, eax
	mov	rdi, qword ptr [rbp - 0x778]
	mov	edx, ecx
	mov	rbp, rbp
	call	set_acl
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_287
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], 0
	mov	rsp, rsp
	jmp	.label_258
.label_287:
	jmp	.label_291
.label_262:
	nop	
	cmp	dword ptr [rbp - 0x198], 0
	mov	rbp, rbp
	je	.label_292
	lea	rdi, [rdi]
	call	cached_umask
	nop	
	xor	eax, 0xffffffff
	and	eax, dword ptr [rbp - 0x198]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x198], eax
	cmp	dword ptr [rbp - 0x198], 0
	je	.label_324
	nop	
	test	byte ptr [rbp - 0x199], 1
	nop	
	jne	.label_324
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x29], 1
	mov	rsp, rsp
	je	.label_309
	lea	rsi, [rbp - 0x188]
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	__lstat
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_309
	lea	rsi, [rsi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.12_0
	nop	
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x780], esi
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x788], rax
	mov	rsp, rsp
	call	quotearg_style
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x780]
	mov	rdx, qword ptr [rbp - 0x788]
	lea	rdi, [rdi]
	mov	rcx, rax
	nop	
	mov	al, 0
	nop	
	call	error
	mov	byte ptr [rbp - 0x11], 0
	nop	
	jmp	.label_258
.label_309:
	mov	eax, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x190], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x198]
	mov	ecx, dword ptr [rbp - 0x190]
	xor	ecx, 0xffffffff
	mov	rsp, rsp
	and	eax, ecx
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_319
	mov	byte ptr [rbp - 0x199], 1
.label_319:
	jmp	.label_324
.label_324:
	mov	rsp, rsp
	jmp	.label_292
.label_292:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x199], 1
	nop	
	je	.label_327
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x190]
	or	eax, dword ptr [rbp - 0x198]
	mov	esi, eax
	nop	
	call	chmod
	mov	rbp, rbp
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_333
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.1_1
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x78c], esi
	call	gettext
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x798], rax
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x78c]
	mov	rdx, qword ptr [rbp - 0x798]
	nop	
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	nop	
	call	error
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	test	byte ptr [rcx + 0x24], 1
	nop	
	je	.label_283
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_258
.label_283:
	nop	
	jmp	.label_333
.label_333:
	lea	rdi, [rdi]
	jmp	.label_327
.label_327:
	lea	rdi, [rdi]
	jmp	.label_291
.label_291:
	lea	rdi, [rdi]
	jmp	.label_260
.label_260:
	jmp	.label_352
.label_352:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x1b1]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x11], al
	jmp	.label_258
.label_272:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x25], 1
	lea	rdi, [rdi]
	je	.label_356
	lea	rsi, [rsi]
	call	restore_default_fscreatecon_or_die
.label_356:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x1a8], 0
	lea	rdi, [rdi]
	jne	.label_364
	mov	rdi, qword ptr [rbp - 0xf0]
	nop	
	mov	rsi, qword ptr [rbp - 0xf8]
	lea	rdi, [rdi]
	call	forget_created
.label_364:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x1b0], 0
	je	.label_367
	mov	rdi, qword ptr [rbp - 0x1b0]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	rename
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_371
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.50
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x79c], esi
	mov	rbp, rbp
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x7a8], rax
	lea	rdi, [rdi]
	call	quotearg_style
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x79c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x7a8]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rbp, rbp
	jmp	.label_383
.label_371:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x2e], 1
	lea	rsi, [rsi]
	je	.label_385
	movabs	rdi, OFFSET FLAT:.str.51
	call	gettext
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x1b0]
	mov	qword ptr [rbp - 0x7b0], rax
	lea	rdi, [rdi]
	call	quotearg_n_style
	nop	
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x7b8], rax
	lea	rdi, [rdi]
	call	quotearg_n_style
	mov	rdi, qword ptr [rbp - 0x7b0]
	nop	
	mov	rsi, qword ptr [rbp - 0x7b8]
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	nop	
	call	printf
	nop	
	mov	dword ptr [rbp - 0x7bc], eax
.label_385:
	jmp	.label_383
.label_383:
	mov	rsp, rsp
	jmp	.label_367
.label_367:
	mov	byte ptr [rbp - 0x11], 0
.label_258:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
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
	.section	.text
	.align	32
	#Procedure 0x409cd0

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
	.section	.text
	.align	32
	#Procedure 0x409d40

	.globl chown_failure_ok
	.type chown_failure_ok, @function
chown_failure_ok:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	cmp	dword ptr [rax], 1
	je	.label_487
	mov	rsp, rsp
	call	__errno_location
	xor	ecx, ecx
	mov	dl, cl
	cmp	dword ptr [rax], 0x16
	mov	byte ptr [rbp - 9], dl
	jne	.label_488
.label_487:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0x1a]
	lea	rdi, [rdi]
	xor	cl, 0xff
	mov	byte ptr [rbp - 9], cl
.label_488:
	mov	al, byte ptr [rbp - 9]
	nop	
	and	al, 1
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409db0

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
	.section	.text
	.align	32
	#Procedure 0x409e10

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
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	nop	
	mov	byte ptr [rbp - 9], al
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	dword ptr [rdi + 4], 4
	mov	byte ptr [rbp - 0xa], cl
	mov	rsp, rsp
	je	.label_490
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	dword ptr [rdx + 4], 3
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb], cl
	mov	rbp, rbp
	jne	.label_491
	mov	al, byte ptr [rbp - 9]
	mov	byte ptr [rbp - 0xb], al
.label_491:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xb]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa], al
.label_490:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xa]
	and	al, 1
	movzx	eax, al
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409e90

	.globl same_file_ok
	.type same_file_ok, @function
same_file_ok:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x180
	xor	eax, eax
	mov	rsp, rsp
	mov	r10b, al
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x17a], r10b
	lea	rsi, [rsi]
	jne	.label_515
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	mov	rsp, rsp
	sete	dl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x17a], dl
.label_515:
	mov	al, byte ptr [rbp - 0x17a]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x16a], al
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	byte ptr [rcx], 0
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x16a], 1
	nop	
	je	.label_497
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0x17], 1
	lea	rdi, [rdi]
	je	.label_497
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	mov	byte ptr [rbp - 1], 1
	jmp	.label_496
.label_497:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 4], 2
	jne	.label_505
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x16a]
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x169], al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rcx + 0x18]
	and	edx, 0xf000
	lea	rsi, [rsi]
	cmp	edx, 0xa000
	jne	.label_508
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	mov	rsp, rsp
	cmp	ecx, 0xa000
	mov	rbp, rbp
	jne	.label_508
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	same_name
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x16b], al
	mov	rbp, rbp
	test	byte ptr [rbp - 0x16b], 1
	mov	rsp, rsp
	jne	.label_494
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_527
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_496
.label_527:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x169], 1
	lea	rsi, [rsi]
	je	.label_499
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x18]
	xor	cl, 0xff
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	jmp	.label_496
.label_499:
	nop	
	jmp	.label_494
.label_494:
	mov	al, byte ptr [rbp - 0x16b]
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 1], al
	lea	rsi, [rsi]
	jmp	.label_496
.label_508:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	jmp	.label_507
.label_505:
	test	byte ptr [rbp - 0x16a], 1
	jne	.label_513
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	jmp	.label_496
.label_513:
	mov	rsp, rsp
	lea	rsi, [rbp - 0xd8]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	__lstat
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_521
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x168]
	mov	rdi, qword ptr [rbp - 0x10]
	call	__lstat
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_525
.label_521:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_496
.label_525:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	lea	rdx, [rbp - 0xd8]
	lea	rsi, [rbp - 0x168]
	mov	qword ptr [rbp - 0x40], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsi, qword ptr [rbp - 0x48]
	cmp	rdx, qword ptr [rsi + 8]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x17b], cl
	mov	rbp, rbp
	jne	.label_526
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rcx]
	sete	dl
	mov	byte ptr [rbp - 0x17b], dl
.label_526:
	mov	al, byte ptr [rbp - 0x17b]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x169], al
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x18]
	and	edx, 0xf000
	cmp	edx, 0xa000
	lea	rdi, [rdi]
	jne	.label_503
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	lea	rdi, [rdi]
	cmp	ecx, 0xa000
	mov	rbp, rbp
	jne	.label_503
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x15], 1
	je	.label_503
	mov	byte ptr [rbp - 1], 1
	jmp	.label_496
.label_503:
	jmp	.label_507
.label_507:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax], 0
	je	.label_520
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x169], 1
	jne	.label_524
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0x18], 1
	jne	.label_498
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 4], 2
	je	.label_498
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	nop	
	cmp	ecx, 0xa000
	jne	.label_498
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rsp, rsp
	and	ecx, 0xf000
	lea	rsi, [rsi]
	cmp	ecx, 0xa000
	je	.label_498
	mov	byte ptr [rbp - 1], 0
	mov	rbp, rbp
	jmp	.label_496
.label_498:
	mov	byte ptr [rbp - 1], 1
	nop	
	jmp	.label_496
.label_524:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	same_name
	xor	al, 0xff
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 1], al
	lea	rdi, [rdi]
	jmp	.label_496
.label_520:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x18], 1
	mov	rbp, rbp
	jne	.label_509
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	test	byte ptr [rax + 0x15], 1
	nop	
	je	.label_502
.label_509:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	nop	
	cmp	ecx, 0xa000
	jne	.label_516
	nop	
	mov	byte ptr [rbp - 1], 1
	jmp	.label_496
.label_516:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x169], 1
	mov	rsp, rsp
	je	.label_492
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	jae	.label_492
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	same_name
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_492
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x18]
	xor	cl, 0xff
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	mov	rsp, rsp
	jmp	.label_496
.label_492:
	mov	rbp, rbp
	jmp	.label_502
.label_502:
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	lea	rdi, [rdi]
	cmp	ecx, 0xa000
	nop	
	je	.label_495
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	je	.label_495
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_506
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rcx]
	je	.label_528
.label_506:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_496
.label_528:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x17], 1
	je	.label_517
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	mov	byte ptr [rbp - 1], 1
	nop	
	jmp	.label_496
.label_517:
	jmp	.label_495
.label_495:
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x18], 1
	je	.label_514
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	mov	rsp, rsp
	cmp	ecx, 0xa000
	jne	.label_514
	mov	rbp, rbp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	rcx, qword ptr [rdx + 0x10]
	jae	.label_514
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	canonicalize_file_name
	mov	qword ptr [rbp - 0x178], rax
	cmp	qword ptr [rbp - 0x178], 0
	je	.label_500
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x178]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	same_name
	xor	al, 0xff
	nop	
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x179], al
	mov	rdi, qword ptr [rbp - 0x178]
	call	free
	nop	
	mov	al, byte ptr [rbp - 0x179]
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_496
.label_500:
	jmp	.label_514
.label_514:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x2c], 1
	je	.label_510
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_510
	mov	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	jmp	.label_496
.label_510:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 4], 2
	nop	
	jne	.label_519
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x18]
	lea	rsi, [rsi]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	je	.label_523
	nop	
	mov	eax, 0x90
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rsp, rsp
	lea	rcx, [rbp - 0x168]
	nop	
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	memcpy
	mov	rsp, rsp
	jmp	.label_493
.label_523:
	mov	rsp, rsp
	lea	rsi, [rbp - 0x168]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	stat
	cmp	eax, 0
	je	.label_501
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
	nop	
	jmp	.label_496
.label_501:
	mov	rbp, rbp
	jmp	.label_493
.label_493:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x18]
	lea	rsi, [rsi]
	and	ecx, 0xf000
	mov	rsp, rsp
	cmp	ecx, 0xa000
	je	.label_511
	mov	eax, 0x90
	mov	edx, eax
	lea	rcx, [rbp - 0xd8]
	nop	
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rcx
	call	memcpy
	jmp	.label_512
.label_511:
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0xd8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	stat
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_518
	mov	byte ptr [rbp - 1], 1
	lea	rsi, [rsi]
	jmp	.label_496
.label_518:
	jmp	.label_512
.label_512:
	nop	
	mov	rax, qword ptr [rbp - 0x160]
	nop	
	cmp	rax, qword ptr [rbp - 0xd0]
	lea	rdi, [rdi]
	jne	.label_522
	mov	rax, qword ptr [rbp - 0x168]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0xd8]
	je	.label_504
.label_522:
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	jmp	.label_496
.label_504:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0x17], 1
	mov	rbp, rbp
	je	.label_529
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rsp, rsp
	and	ecx, 0xf000
	lea	rdi, [rdi]
	cmp	ecx, 0xa000
	sete	dl
	xor	dl, 0xff
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	and	dl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rax], dl
	mov	byte ptr [rbp - 1], 1
	jmp	.label_496
.label_529:
	jmp	.label_519
.label_519:
	nop	
	mov	byte ptr [rbp - 1], 0
.label_496:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	add	rsp, 0x180
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a670

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
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	and	r10b, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x19], r10b
	mov	rsp, rsp
	and	r9b, 1
	mov	byte ptr [rbp - 0x1a], r9b
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1b], al
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x1b]
	nop	
	test	al, 1
	cmovne	r8d, r11d
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdi
	mov	edi, ecx
	mov	dword ptr [rbp - 0x2c], edx
	lea	rsi, [rsi]
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	movzx	r9d, al
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xffffffff
	call	force_linkat
	mov	rbp, rbp
	xor	edx, edx
	mov	dword ptr [rbp - 0x20], eax
	cmp	edx, dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jge	.label_532
	movabs	rdi, OFFSET FLAT:.str.52
	mov	esi, dword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x30], esi
	mov	rsp, rsp
	call	gettext
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, 4
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	call	quotearg_n_style
	mov	rsp, rsp
	mov	edi, 1
	mov	esi, 4
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	call	quotearg_n_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	r8, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
	mov	rbp, rbp
	jmp	.label_531
.label_532:
	cmp	dword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	jge	.label_530
	mov	rsp, rsp
	test	byte ptr [rbp - 0x1a], 1
	lea	rdi, [rdi]
	je	.label_530
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.25_0
	call	gettext
	mov	rbp, rbp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rax
	mov	rbp, rbp
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x4c], eax
.label_530:
	mov	byte ptr [rbp - 1], 1
.label_531:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x60
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a830

	.globl abandon_move
	.type abandon_move, @function
abandon_move:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	test	byte ptr [rdx + 0x18], 1
	lea	rdi, [rdi]
	je	.label_534
	jmp	.label_537
.label_534:
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
	mov	rcx, qword ptr [rbp - 8]
	cmp	dword ptr [rcx + 8], 2
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], al
	mov	rbp, rbp
	je	.label_536
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 8], 3
	lea	rsi, [rsi]
	je	.label_535
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	dword ptr [rdx + 8], 4
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1a], cl
	lea	rsi, [rsi]
	jne	.label_533
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	test	byte ptr [rdx + 0x2f], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1a], cl
	nop	
	je	.label_533
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
	mov	byte ptr [rbp - 0x1a], cl
	jne	.label_533
.label_535:
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	overwrite_ok
	xor	al, 0xff
	mov	byte ptr [rbp - 0x1a], al
.label_533:
	mov	al, byte ptr [rbp - 0x1a]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x19], al
.label_536:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a980

	.globl overwrite_ok
	.type overwrite_ok, @function
overwrite_ok:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rdx + 0x18]
	nop	
	call	writable_destination
	mov	rsp, rsp
	test	al, 1
	jne	.label_542
	lea	rsi, [rbp - 0x24]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rax + 0x18]
	call	strmode
	mov	byte ptr [rbp - 0x1a], 0
	mov	rdi,  qword ptr [word ptr [stderr]]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	test	byte ptr [rax + 0x18], 1
	nop	
	mov	qword ptr [rbp - 0x30], rdi
	lea	rsi, [rsi]
	jne	.label_540
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x15], 1
	nop	
	jne	.label_540
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	test	byte ptr [rax + 0x16], 1
	je	.label_539
.label_540:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.54
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	jmp	.label_538
.label_539:
	nop	
	movabs	rdi, OFFSET FLAT:.str.55_0
	mov	rsp, rsp
	call	gettext
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
.label_538:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	edi, 4
	nop	
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x48], rdx
	lea	rsi, [rsi]
	call	quotearg_style
	nop	
	lea	rdx, [rbp - 0x24]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rsi + 0x18]
	mov	rbp, rbp
	and	edi, 0xfff
	mov	edi, edi
	nop	
	mov	r8d, edi
	nop	
	add	rdx, 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rdx
	mov	rdx, rcx
	mov	rsp, rsp
	mov	rcx, rax
	mov	r9, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	mov	dword ptr [rbp - 0x54], eax
	lea	rsi, [rsi]
	jmp	.label_541
.label_542:
	movabs	rdi, OFFSET FLAT:.str.56_0
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	call	gettext
	nop	
	mov	edi, 4
	mov	rdx,  qword ptr [word ptr [program_name]]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x70], rdx
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	fprintf
	nop	
	mov	dword ptr [rbp - 0x74], eax
.label_541:
	lea	rsi, [rsi]
	call	yesno
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	add	rsp, 0x80
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ab70

	.globl dot_or_dotdot
	.type dot_or_dotdot, @function
dot_or_dotdot:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	movsx	eax, byte ptr [rdi]
	lea	rdi, [rdi]
	cmp	eax, 0x2e
	jne	.label_543
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + 1]
	lea	rsi, [rsi]
	cmp	edx, 0x2e
	sete	sil
	and	sil, 1
	movzx	edx, sil
	add	edx, 1
	mov	rsp, rsp
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	sil, byte ptr [rdi + rcx]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11], sil
	cmp	byte ptr [rbp - 0x11], 0
	mov	byte ptr [rbp - 0x12], al
	je	.label_544
	movsx	eax, byte ptr [rbp - 0x11]
	lea	rsi, [rsi]
	cmp	eax, 0x2f
	sete	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x12], cl
.label_544:
	mov	al, byte ptr [rbp - 0x12]
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], al
	lea	rdi, [rdi]
	jmp	.label_545
.label_543:
	mov	byte ptr [rbp - 1], 0
.label_545:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ac20

	.globl source_is_dst_backup
	.type source_is_dst_backup, @function
source_is_dst_backup:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x100
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	strlen
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	last_component
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	rdi,  qword ptr [word ptr [simple_backup_suffix]]
	lea	rsi, [rsi]
	call	strlen
	nop	
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x40]
	nop	
	cmp	rax, rdx
	lea	rsi, [rsi]
	jne	.label_546
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x38]
	call	memcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_546
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [simple_backup_suffix]]
	mov	rsp, rsp
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_549
.label_546:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_550
.label_549:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	strlen
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	xmalloc
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x48]
	call	mempcpy
	lea	rsi, [rbp - 0xe0]
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [simple_backup_suffix]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	qword ptr [rbp - 0xf0], rsi
	mov	rsi, rdx
	lea	rsi, [rsi]
	call	strcpy
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0xf8], rax
	mov	rsp, rsp
	call	stat
	nop	
	mov	dword ptr [rbp - 0xe4], eax
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xe4], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xf9], cl
	lea	rdi, [rdi]
	jne	.label_548
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xfa], cl
	lea	rsi, [rsi]
	jne	.label_547
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0xe0]
	nop	
	sete	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xfa], cl
.label_547:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xfa]
	mov	byte ptr [rbp - 0xf9], al
.label_548:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xf9]
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], al
.label_550:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	and	al, 1
	nop	
	movzx	eax, al
	nop	
	add	rsp, 0x100
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ae70

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
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	edi, eax
	mov	esi, ecx
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x20], rax
	call	quotearg_n_style
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.57_0
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	mov	rsp, rsp
	call	printf
	cmp	qword ptr [rbp - 0x18], 0
	mov	dword ptr [rbp - 0x24], eax
	je	.label_551
	movabs	rdi, OFFSET FLAT:.str.58_0
	call	gettext
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x30], rax
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rax
	mov	al, 0
	call	printf
	nop	
	mov	dword ptr [rbp - 0x34], eax
.label_551:
	nop	
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x38], eax
	mov	rsp, rsp
	add	rsp, 0x40
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40af50

	.globl is_ancestor
	.type is_ancestor, @function
is_ancestor:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
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
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jne	.label_552
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	jne	.label_552
	mov	byte ptr [rbp - 1], 1
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
	mov	byte ptr [rbp - 1], 0
.label_555:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40afe0

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
	sub	rsp, 0x118
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
	mov	qword ptr [rbp - 0x28], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rsi
	nop	
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x31], al
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], r8
	mov	qword ptr [rbp - 0x50], r9
	mov	qword ptr [rbp - 0x58], r11
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], r10
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	nop	
	mov	rdi, r15
	mov	rsi, rcx
	mov	dword ptr [rbp - 0xe0], edx
	mov	rbp, rbp
	mov	rdx, r14
	mov	rbp, rbp
	call	memcpy
	mov	byte ptr [rbp - 0xc1], 1
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0xe0]
	call	savedir
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x68], 0
	mov	rbp, rbp
	jne	.label_561
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.59_0
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe4], esi
	call	gettext
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xf0], rax
	call	quotearg_style
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xe4]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rcx, rax
	nop	
	mov	al, 0
	nop	
	call	error
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], 0
	mov	rbp, rbp
	jmp	.label_556
.label_561:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	dword ptr [rax + 4], 3
	jne	.label_559
	mov	dword ptr [rbp - 0xbc], 2
.label_559:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xc2], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x70], rax
.label_558:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_557
	xor	eax, eax
	nop	
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	file_name_concat
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	edx, ecx
	mov	qword ptr [rbp - 0xd0], rax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	call	file_name_concat
	mov	rbp, rbp
	lea	r9, [rbp - 0xc0]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	lea	rdx, [rbp - 0xd9]
	mov	rsp, rsp
	lea	rsi, [rbp - 0xc3]
	xor	r8d, r8d
	mov	edi, r8d
	mov	qword ptr [rbp - 0xd8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	r10b, byte ptr [rax]
	lea	rsi, [rsi]
	and	r10b, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xd9], r10b
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd0]
	nop	
	mov	r11, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	r10b, byte ptr [rbp - 0x31]
	nop	
	mov	rbx, qword ptr [rbp - 0x40]
	mov	r8, qword ptr [rbp - 0x48]
	and	r10b, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xf8], rdi
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x100], rsi
	mov	rsp, rsp
	mov	rsi, r11
	movzx	r14d, r10b
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x108], rdx
	mov	rsp, rsp
	mov	edx, r14d
	mov	dword ptr [rbp - 0x10c], ecx
	mov	rcx, rbx
	mov	rsp, rsp
	mov	dword ptr [rsp], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	r11, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], r11
	mov	qword ptr [rsp + 0x18], 0
	lea	rdi, [rdi]
	call	copy_internal
	mov	rsp, rsp
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	mov	al, byte ptr [rbp - 0xc1]
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
	mov	byte ptr [rbp - 0xc1], al
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xc3]
	and	al, 1
	movzx	edx, al
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
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
	mov	rdi, qword ptr [rbp - 0xd8]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xd0]
	call	free
	test	byte ptr [rbp - 0xc3], 1
	nop	
	je	.label_560
	jmp	.label_557
.label_560:
	mov	al, byte ptr [rbp - 0xd9]
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0xc2]
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	edx, al
	or	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xc2], al
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_558
.label_557:
	mov	rdi, qword ptr [rbp - 0x68]
	call	free
	nop	
	mov	al, byte ptr [rbp - 0xc2]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x58]
	and	al, 1
	mov	byte ptr [rdi], al
	mov	al, byte ptr [rbp - 0xc1]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x19], al
.label_556:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x118
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b3c0

	.globl copy_reg
	.type copy_reg, @function
copy_reg:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x4d8
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x10]
	xor	r10d, r10d
	mov	r11d, 0x20000
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	dword ptr [rbp - 0x2c], ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x30], r8d
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], r9
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], 0
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x68], ecx
	mov	byte ptr [rbp - 0x189], 1
	mov	rax, qword ptr [rbp - 0x28]
	mov	bl, byte ptr [rax + 0x23]
	and	bl, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x18a], bl
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	cmp	dword ptr [rax + 4], 2
	cmove	r10d, r11d
	nop	
	or	r10d, 0
	mov	esi, r10d
	mov	al, 0
	call	open_safer
	mov	dword ptr [rbp - 0x64], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x64], 0
	jge	.label_574
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.60_0
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c8], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x2d0], rax
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x2c8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x2d0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 9], 0
	mov	rbp, rbp
	jmp	.label_606
.label_574:
	lea	rsi, [rbp - 0x188]
	mov	edi, dword ptr [rbp - 0x64]
	mov	rbp, rbp
	call	__fstat
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_564
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.61
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x2d4], esi
	call	gettext
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x2e0], rax
	nop	
	call	quotearg_style
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x2d4]
	mov	rdx, qword ptr [rbp - 0x2e0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x189], 0
	lea	rdi, [rdi]
	jmp	.label_571
.label_564:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x180]
	nop	
	jne	.label_629
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x188]
	lea	rdi, [rdi]
	je	.label_600
.label_629:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.62
	call	gettext
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x2e8], rax
	call	quotearg_style
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2ec], edi
	mov	esi, dword ptr [rbp - 0x2ec]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x2e8]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	error
	mov	byte ptr [rbp - 0x189], 0
	lea	rdi, [rdi]
	jmp	.label_571
.label_600:
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax], 1
	jne	.label_582
	nop	
	xor	eax, eax
	nop	
	mov	ecx, 0x200
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	sil, byte ptr [rdx + 0x23]
	test	sil, 1
	nop	
	cmovne	eax, ecx
	lea	rdi, [rdi]
	or	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x190], eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x190]
	mov	rsp, rsp
	mov	al, 0
	call	open_safer
	mov	dword ptr [rbp - 0x5c], eax
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x60], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x21], 1
	mov	rbp, rbp
	jne	.label_583
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x25], 1
	mov	rsp, rsp
	je	.label_594
.label_583:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	jg	.label_594
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 0x25]
	mov	rax, qword ptr [rbp - 0x28]
	and	cl, 1
	movzx	esi, cl
	lea	rdi, [rdi]
	mov	rcx, rax
	call	set_file_security_ctx
	test	al, 1
	nop	
	jne	.label_603
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x26], 1
	je	.label_604
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_569
.label_604:
	jmp	.label_603
.label_603:
	mov	rsp, rsp
	jmp	.label_594
.label_594:
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_579
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x16], 1
	je	.label_579
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	unlink
	mov	rbp, rbp
	cmp	eax, 0
	nop	
	je	.label_622
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.24_0
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2f0], esi
	mov	rbp, rbp
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x2f8], rax
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x2f0]
	nop	
	mov	rdx, qword ptr [rbp - 0x2f8]
	nop	
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_571
.label_622:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x2e], 1
	mov	rbp, rbp
	je	.label_634
	movabs	rdi, OFFSET FLAT:.str.25_0
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x300], rax
	mov	rbp, rbp
	call	quotearg_style
	mov	rdi, qword ptr [rbp - 0x300]
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	al, 0
	nop	
	call	printf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x304], eax
.label_634:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x21], 1
	lea	rdi, [rdi]
	je	.label_575
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	r8, qword ptr [rbp - 0x28]
	and	cl, 1
	nop	
	movzx	ecx, cl
	lea	rsi, [rsi]
	call	set_process_security_ctx
	test	al, 1
	mov	rbp, rbp
	jne	.label_568
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_571
.label_568:
	nop	
	jmp	.label_575
.label_575:
	jmp	.label_579
.label_579:
	jmp	.label_582
.label_582:
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax], 1
	nop	
	je	.label_643
	jmp	.label_587
.label_587:
	mov	dword ptr [rbp - 0x194], 0x41
	mov	rdi, qword ptr [rbp - 0x20]
	mov	eax, dword ptr [rbp - 0x194]
	lea	rsi, [rsi]
	or	eax, 0x80
	nop	
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	edx, dword ptr [rbp - 0x30]
	xor	edx, 0xffffffff
	and	ecx, edx
	mov	esi, eax
	mov	edx, ecx
	mov	al, 0
	nop	
	call	open_safer
	nop	
	mov	dword ptr [rbp - 0x5c], eax
	nop	
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x60], ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x5c], 0
	nop	
	jge	.label_599
	cmp	dword ptr [rbp - 0x60], 0x11
	jne	.label_599
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x18], 1
	mov	rbp, rbp
	jne	.label_599
	lea	rsi, [rbp - 0x228]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	call	__lstat
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_610
	nop	
	mov	eax, dword ptr [rbp - 0x210]
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0xa000
	mov	rbp, rbp
	jne	.label_610
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x30], 1
	lea	rdi, [rdi]
	je	.label_632
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x194]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	mov	ecx, dword ptr [rbp - 0x30]
	mov	rbp, rbp
	xor	ecx, 0xffffffff
	and	eax, ecx
	mov	edx, eax
	mov	al, 0
	call	open_safer
	mov	dword ptr [rbp - 0x5c], eax
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x60], ecx
	jmp	.label_628
.label_632:
	nop	
	movabs	rdi, OFFSET FLAT:.str.63
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x310], rax
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	dword ptr [rbp - 0x314], edi
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x314]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x310]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x189], 0
	lea	rdi, [rdi]
	jmp	.label_571
.label_628:
	jmp	.label_610
.label_610:
	jmp	.label_599
.label_599:
	cmp	dword ptr [rbp - 0x5c], 0
	lea	rdi, [rdi]
	jge	.label_563
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x60], 0x15
	lea	rsi, [rsi]
	jne	.label_563
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_563
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	strlen
	sub	rax, 1
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	movsx	ecx, byte ptr [rdi + rax]
	nop	
	cmp	ecx, 0x2f
	jne	.label_563
	mov	dword ptr [rbp - 0x60], 0x14
.label_563:
	jmp	.label_620
.label_643:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x30], 0
.label_620:
	cmp	dword ptr [rbp - 0x5c], 0
	lea	rdi, [rdi]
	jge	.label_572
	nop	
	cmp	dword ptr [rbp - 0x60], 2
	nop	
	jne	.label_578
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax], 1
	jne	.label_578
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	test	byte ptr [rax + 0x18], 1
	jne	.label_578
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	byte ptr [rax], 1
	jmp	.label_587
.label_578:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.64
	mov	esi, dword ptr [rbp - 0x60]
	mov	dword ptr [rbp - 0x318], esi
	lea	rdi, [rdi]
	call	gettext
	mov	rbp, rbp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x320], rax
	call	quotearg_style
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x318]
	mov	rdx, qword ptr [rbp - 0x320]
	mov	rcx, rax
	nop	
	mov	al, 0
	nop	
	call	error
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x189], 0
	nop	
	jmp	.label_571
.label_572:
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0xf8]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x5c]
	nop	
	call	__fstat
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_617
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.61
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x324], esi
	call	gettext
	nop	
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x330], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x324]
	mov	rdx, qword ptr [rbp - 0x330]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	mov	byte ptr [rbp - 0x189], 0
	lea	rdi, [rdi]
	jmp	.label_569
.label_617:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x18a], 1
	je	.label_592
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 0x38], 0
	je	.label_592
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x5c]
	mov	esi, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	call	clone_file
	lea	rsi, [rsi]
	cmp	eax, 0
	sete	cl
	and	cl, 1
	nop	
	mov	byte ptr [rbp - 0x229], cl
	test	byte ptr [rbp - 0x229], 1
	jne	.label_636
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 0x38], 2
	lea	rsi, [rsi]
	jne	.label_589
.label_636:
	test	byte ptr [rbp - 0x229], 1
	mov	rbp, rbp
	jne	.label_640
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.65
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x334], esi
	nop	
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x340], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x348], rax
	nop	
	call	quotearg_n_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x334]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x340]
	mov	rcx, qword ptr [rbp - 0x348]
	mov	rbp, rbp
	mov	r8, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x189], 0
	lea	rdi, [rdi]
	jmp	.label_569
.label_640:
	nop	
	mov	byte ptr [rbp - 0x18a], 0
.label_589:
	nop	
	jmp	.label_592
.label_592:
	test	byte ptr [rbp - 0x18a], 1
	mov	rbp, rbp
	je	.label_596
	mov	rsp, rsp
	call	getpagesize
	mov	rbp, rbp
	lea	rcx, [rbp - 0xf8]
	movsxd	rdx, eax
	mov	qword ptr [rbp - 0x238], rdx
	mov	rdx, rsp
	mov	rsp, rsp
	mov	eax, 0x12
	mov	rsp, rsp
	mov	esi, eax
	lea	rdi, [rbp - 0xf8]
	mov	qword ptr [rbp - 0x350], rcx
	mov	rcx, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x358], rdi
	mov	rdi, rdx
	mov	rsi, qword ptr [rbp - 0x358]
	rep movsq	qword ptr [rdi], qword ptr [rsi]
	mov	rsp, rsp
	call	io_blksize
	lea	rdi, [rdi]
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	ecx, r8d
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x240], rax
	cmp	rcx, qword ptr [rbp - 0xc0]
	jge	.label_613
	movabs	rax, 0x2000000000000000
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xc0], rax
	mov	rbp, rbp
	ja	.label_613
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x360], rax
	jmp	.label_625
.label_613:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0x360], rcx
	jmp	.label_625
.label_625:
	nop	
	mov	rax, qword ptr [rbp - 0x360]
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	ecx, 2
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x248], rax
	mov	edi, dword ptr [rbp - 0x64]
	mov	rsi, rdx
	lea	rdi, [rdi]
	call	fdadvise
	lea	rdi, [rbp - 0x188]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x249], 0
	lea	rdi, [rdi]
	call	is_probably_sparse
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x24a], al
	mov	ecx, dword ptr [rbp - 0xe0]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	nop	
	jne	.label_562
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0xc], 3
	jne	.label_639
	mov	byte ptr [rbp - 0x249], 1
.label_639:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0xc], 2
	nop	
	jne	.label_624
	test	byte ptr [rbp - 0x24a], 1
	mov	rsp, rsp
	je	.label_624
	mov	byte ptr [rbp - 0x249], 1
.label_624:
	lea	rsi, [rsi]
	jmp	.label_562
.label_562:
	test	byte ptr [rbp - 0x249], 1
	jne	.label_565
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x188]
	mov	rbp, rbp
	movabs	rcx, 0x7fffffffffffffff
	sub	rcx, qword ptr [rbp - 0x238]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x258], rcx
	mov	rcx, rsp
	nop	
	mov	edx, 0x12
	mov	esi, edx
	nop	
	lea	rdi, [rbp - 0x188]
	mov	qword ptr [rbp - 0x368], rcx
	nop	
	mov	rcx, rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x368]
	mov	qword ptr [rbp - 0x370], rdi
	mov	rsp, rsp
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x370]
	rep movsq	qword ptr [rdi], qword ptr [rsi]
	mov	qword ptr [rbp - 0x378], rax
	lea	rsi, [rsi]
	call	io_blksize
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x240]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	buffer_lcm
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x260], rax
	mov	r8d, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	and	r8d, 0xf000
	cmp	r8d, 0x8000
	jne	.label_602
	mov	rax, qword ptr [rbp - 0x158]
	nop	
	cmp	rax, qword ptr [rbp - 0x240]
	lea	rsi, [rsi]
	jae	.label_602
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x158]
	nop	
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x240], rax
.label_602:
	mov	rax, qword ptr [rbp - 0x260]
	sub	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x240]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x240], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x240]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x260]
	mov	rsi, qword ptr [rbp - 0x240]
	sub	rsi, rdx
	mov	qword ptr [rbp - 0x240], rsi
	cmp	qword ptr [rbp - 0x240], 0
	lea	rsi, [rsi]
	je	.label_627
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	rax, qword ptr [rbp - 0x240]
	jae	.label_631
.label_627:
	mov	rax, qword ptr [rbp - 0x260]
	mov	qword ptr [rbp - 0x240], rax
.label_631:
	lea	rdi, [rdi]
	jmp	.label_565
.label_565:
	mov	rax, qword ptr [rbp - 0x240]
	add	rax, qword ptr [rbp - 0x238]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x50]
	nop	
	mov	rsi, qword ptr [rbp - 0x238]
	call	ptr_align
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x24a], 1
	je	.label_605
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x64]
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x240]
	mov	r8, qword ptr [rbp - 0x248]
	mov	r9, qword ptr [rbp - 0x158]
	mov	rbp, rbp
	test	byte ptr [rbp - 0x249], 1
	mov	dword ptr [rbp - 0x37c], edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x380], esi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x388], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x390], rcx
	mov	qword ptr [rbp - 0x398], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x3a0], r9
	lea	rdi, [rdi]
	je	.label_641
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0xc]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3a4], ecx
	mov	rbp, rbp
	jmp	.label_585
.label_641:
	mov	eax, 1
	nop	
	mov	dword ptr [rbp - 0x3a4], eax
	lea	rdi, [rdi]
	jmp	.label_585
.label_585:
	mov	eax, dword ptr [rbp - 0x3a4]
	lea	rcx, [rbp - 0x261]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x37c]
	mov	r8d, dword ptr [rbp - 0x380]
	mov	qword ptr [rbp - 0x3b0], rsi
	mov	esi, r8d
	lea	rsi, [rsi]
	mov	r9, qword ptr [rbp - 0x388]
	mov	qword ptr [rbp - 0x3b8], rdx
	nop	
	mov	rdx, r9
	mov	r10, qword ptr [rbp - 0x390]
	mov	qword ptr [rbp - 0x3c0], rcx
	mov	rbp, rbp
	mov	rcx, r10
	mov	r8, qword ptr [rbp - 0x398]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x3a0]
	mov	dword ptr [rsp], eax
	mov	r11, qword ptr [rbp - 0x3b8]
	mov	qword ptr [rsp + 8], r11
	mov	r11, qword ptr [rbp - 0x3b0]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], r11
	mov	r11, qword ptr [rbp - 0x3c0]
	mov	qword ptr [rsp + 0x18], r11
	call	extent_copy
	test	al, 1
	jne	.label_621
	jmp	.label_593
.label_621:
	jmp	.label_623
.label_593:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x261], 1
	jne	.label_638
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_569
.label_638:
	jmp	.label_605
.label_605:
	mov	edi, dword ptr [rbp - 0x64]
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x240]
	test	byte ptr [rbp - 0x249], 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c4], edi
	mov	dword ptr [rbp - 0x3c8], esi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x3d0], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x3d8], rcx
	mov	rsp, rsp
	je	.label_626
	mov	rax, qword ptr [rbp - 0x248]
	mov	qword ptr [rbp - 0x3e0], rax
	nop	
	jmp	.label_637
.label_626:
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x3e0], rcx
	jmp	.label_637
.label_637:
	nop	
	mov	rax, qword ptr [rbp - 0x3e0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	dword ptr [rcx + 0xc], 3
	nop	
	sete	dl
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdi, rsp
	lea	rdi, [rdi]
	lea	r8, [rbp - 0x271]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x20], r8
	lea	rsi, [rsi]
	lea	r8, [rbp - 0x270]
	mov	qword ptr [rdi + 0x18], r8
	mov	qword ptr [rdi + 8], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rdi], rcx
	mov	qword ptr [rdi + 0x10], -1
	and	dl, 1
	mov	rsp, rsp
	movzx	r9d, dl
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x3c4]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x3c8]
	mov	rdx, qword ptr [rbp - 0x3d0]
	mov	rcx, qword ptr [rbp - 0x3d8]
	mov	r8, rax
	lea	rdi, [rdi]
	call	sparse_copy
	test	al, 1
	jne	.label_633
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_569
.label_633:
	test	byte ptr [rbp - 0x271], 1
	mov	rsp, rsp
	je	.label_590
	mov	edi, dword ptr [rbp - 0x5c]
	nop	
	mov	rsi, qword ptr [rbp - 0x270]
	lea	rsi, [rsi]
	call	ftruncate
	cmp	eax, 0
	nop	
	jge	.label_590
	mov	rsp, rsp
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.66
	nop	
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x3e4], esi
	mov	rsp, rsp
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x3f0], rax
	lea	rdi, [rdi]
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x3e4]
	mov	rdx, qword ptr [rbp - 0x3f0]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	nop	
	call	error
	nop	
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_569
.label_590:
	jmp	.label_611
.label_611:
	mov	rsp, rsp
	jmp	.label_596
.label_596:
	mov	rbp, rbp
	jmp	.label_623
.label_623:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x1f], 1
	mov	rsp, rsp
	je	.label_581
	nop	
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	call	get_stat_atime
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2b0], rax
	mov	qword ptr [rbp - 0x2a8], rdx
	nop	
	mov	rax, qword ptr [rbp - 0x2b0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2a0], rax
	mov	rax, qword ptr [rbp - 0x2a8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x298], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	get_stat_mtime
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x2a0]
	mov	qword ptr [rbp - 0x2c0], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x2b8], rdx
	mov	rax, qword ptr [rbp - 0x2c0]
	nop	
	mov	qword ptr [rbp - 0x290], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2b8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x288], rax
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x3f8], rdi
	mov	edi, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x3f8]
	lea	rsi, [rsi]
	call	fdutimens
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_576
	mov	rsp, rsp
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.48
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x3fc], esi
	mov	rsp, rsp
	call	gettext
	nop	
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x408], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x3fc]
	mov	rdx, qword ptr [rbp - 0x408]
	mov	rcx, rax
	nop	
	mov	al, 0
	nop	
	call	error
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	test	byte ptr [rcx + 0x24], 1
	je	.label_567
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x189], 0
	mov	rbp, rbp
	jmp	.label_569
.label_567:
	lea	rdi, [rdi]
	jmp	.label_576
.label_576:
	mov	rsp, rsp
	jmp	.label_581
.label_581:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	test	byte ptr [rax + 0x1d], 1
	lea	rdi, [rdi]
	je	.label_591
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	ecx, dword ptr [rax + 0x1c]
	cmp	ecx, dword ptr [rbp - 0xdc]
	jne	.label_588
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x20]
	mov	rbp, rbp
	cmp	ecx, dword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	je	.label_591
.label_588:
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	movzx	r8d, byte ptr [rax]
	mov	rbp, rbp
	and	r8d, 1
	lea	r9, [rbp - 0xf8]
	lea	rdi, [rdi]
	call	set_owner
	lea	rsi, [rsi]
	mov	edx, eax
	sub	eax, -1
	nop	
	mov	dword ptr [rbp - 0x40c], edx
	mov	dword ptr [rbp - 0x410], eax
	lea	rdi, [rdi]
	je	.label_608
	jmp	.label_612
.label_612:
	mov	eax, dword ptr [rbp - 0x40c]
	test	eax, eax
	mov	rbp, rbp
	je	.label_614
	jmp	.label_618
.label_608:
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_569
.label_614:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x68]
	and	eax, 0xfffff1ff
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x68], eax
.label_618:
	jmp	.label_591
.label_591:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	test	byte ptr [rax + 0x27], 1
	lea	rdi, [rdi]
	je	.label_597
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x2c1], 0
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	and	eax, 0x80
	mov	rbp, rbp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_616
	call	geteuid
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_616
	lea	rdi, [rdi]
	mov	edx, 0x180
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	fchmod_or_lchmod
	lea	rdi, [rdi]
	cmp	eax, 0
	sete	cl
	and	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x2c1], cl
.label_616:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x64]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	r8, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	copy_attr
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_615
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x28], 1
	nop	
	je	.label_615
	mov	byte ptr [rbp - 0x189], 0
.label_615:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x2c1], 1
	nop	
	je	.label_642
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	eax, dword ptr [rbp - 0x2c]
	mov	ecx, dword ptr [rbp - 0x30]
	mov	rsp, rsp
	xor	ecx, 0xffffffff
	and	eax, ecx
	lea	rsi, [rsi]
	mov	edx, eax
	lea	rdi, [rdi]
	call	fchmod_or_lchmod
	mov	dword ptr [rbp - 0x414], eax
.label_642:
	jmp	.label_597
.label_597:
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x5c]
	nop	
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	call	set_author
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	test	byte ptr [rdx + 0x1e], 1
	nop	
	jne	.label_635
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	test	byte ptr [rax + 0x18], 1
	je	.label_584
.label_635:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x64]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	r8d, dword ptr [rbp - 0x68]
	call	copy_acl
	cmp	eax, 0
	je	.label_595
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	test	byte ptr [rax + 0x24], 1
	nop	
	je	.label_595
	mov	byte ptr [rbp - 0x189], 0
.label_595:
	lea	rsi, [rsi]
	jmp	.label_580
.label_584:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x2b], 1
	je	.label_601
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rax + 0x10]
	call	set_acl
	nop	
	cmp	eax, 0
	je	.label_619
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x189], 0
.label_619:
	lea	rdi, [rdi]
	jmp	.label_577
.label_601:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x20], 1
	mov	rsp, rsp
	je	.label_598
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	test	byte ptr [rax], 1
	je	.label_598
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x5c]
	mov	qword ptr [rbp - 0x420], rdi
	mov	dword ptr [rbp - 0x424], esi
	call	cached_umask
	xor	eax, 0xffffffff
	mov	rsp, rsp
	and	eax, 0x1b6
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x420]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x424]
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rdi, [rdi]
	call	set_acl
	cmp	eax, 0
	je	.label_607
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x189], 0
.label_607:
	mov	rsp, rsp
	jmp	.label_573
.label_598:
	cmp	dword ptr [rbp - 0x30], 0
	je	.label_630
	call	cached_umask
	nop	
	xor	eax, 0xffffffff
	mov	rbp, rbp
	and	eax, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x30], eax
	cmp	dword ptr [rbp - 0x30], 0
	mov	rbp, rbp
	je	.label_570
	mov	edi, dword ptr [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x2c]
	nop	
	call	fchmod_or_lchmod
	nop	
	cmp	eax, 0
	je	.label_570
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.1_1
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x428], esi
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x430], rax
	call	quotearg_style
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, dword ptr [rbp - 0x428]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x430]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
	mov	rcx, qword ptr [rbp - 0x28]
	test	byte ptr [rcx + 0x24], 1
	lea	rdi, [rdi]
	je	.label_566
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x189], 0
.label_566:
	jmp	.label_570
.label_570:
	jmp	.label_630
.label_630:
	jmp	.label_573
.label_573:
	jmp	.label_577
.label_577:
	jmp	.label_580
.label_580:
	mov	rbp, rbp
	jmp	.label_569
.label_569:
	mov	edi, dword ptr [rbp - 0x5c]
	nop	
	call	close
	lea	rsi, [rsi]
	cmp	eax, 0
	jge	.label_586
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.67
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x434], esi
	nop	
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x440], rax
	call	quotearg_style
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x434]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x440]
	nop	
	mov	rcx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x189], 0
.label_586:
	jmp	.label_571
.label_571:
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x64]
	call	close
	mov	rbp, rbp
	cmp	eax, 0
	jge	.label_609
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.67
	mov	rsp, rsp
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x444], esi
	call	gettext
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x450], rax
	call	quotearg_style
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x444]
	nop	
	mov	rdx, qword ptr [rbp - 0x450]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	nop	
	mov	byte ptr [rbp - 0x189], 0
.label_609:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	call	free
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	call	free
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x189]
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 9], al
.label_606:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 9]
	lea	rsi, [rsi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	add	rsp, 0x4d8
	pop	rbx
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c9a0

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
	.section	.text
	.align	32
	#Procedure 0x40ca10

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
	.section	.text
	.align	32
	#Procedure 0x40ca80

	.globl set_owner
	.type set_owner, @function
set_owner:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x90
	mov	al, r8b
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	mov	qword ptr [rbp - 0x38], r9
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rcx + 0x1c]
	mov	dword ptr [rbp - 0x3c], edx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	edx, dword ptr [rcx + 0x20]
	mov	dword ptr [rbp - 0x40], edx
	test	byte ptr [rbp - 0x29], 1
	jne	.label_646
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x1e], 1
	nop	
	jne	.label_661
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x18], 1
	lea	rdi, [rdi]
	jne	.label_661
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	test	byte ptr [rax + 0x2b], 1
	lea	rsi, [rsi]
	je	.label_646
.label_661:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x44], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x1e], 1
	nop	
	jne	.label_648
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	test	byte ptr [rax + 0x18], 1
	mov	rbp, rbp
	je	.label_654
.label_648:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x60], ecx
	lea	rdi, [rdi]
	jmp	.label_658
.label_654:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x10]
	mov	dword ptr [rbp - 0x60], ecx
.label_658:
	mov	eax, dword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x48], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x44]
	nop	
	and	eax, dword ptr [rbp - 0x48]
	and	eax, 0x1c0
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x44]
	and	eax, 0xfff
	mov	ecx, dword ptr [rbp - 0x48]
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
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x1c]
	mov	edx, dword ptr [rbp - 0x4c]
	call	qset_acl
	nop	
	cmp	eax, 0
	nop	
	je	.label_660
	mov	rdi, qword ptr [rbp - 0x10]
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
	mov	dword ptr [rbp - 0x64], esi
	mov	rsp, rsp
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	call	quotearg_style
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x64]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_662:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dl, byte ptr [rcx + 0x24]
	mov	rsp, rsp
	and	dl, 1
	movzx	esi, dl
	sub	eax, esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	jmp	.label_650
.label_660:
	jmp	.label_646
.label_646:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x1c], -1
	mov	rbp, rbp
	je	.label_663
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0x3c]
	mov	edx, dword ptr [rbp - 0x40]
	call	fchown
	cmp	eax, 0
	jne	.label_647
	mov	dword ptr [rbp - 4], 1
	jmp	.label_650
.label_647:
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 1
	mov	rsp, rsp
	je	.label_653
	lea	rsi, [rsi]
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_656
.label_653:
	call	__errno_location
	mov	esi, 0xffffffff
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x50], ecx
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	fchown
	nop	
	mov	dword ptr [rbp - 0x54], eax
	mov	eax, dword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0x74], eax
	mov	rsp, rsp
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rbp - 0x74]
	mov	dword ptr [rax], ecx
.label_656:
	jmp	.label_649
.label_663:
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	call	lchown
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_651
	nop	
	mov	dword ptr [rbp - 4], 1
	jmp	.label_650
.label_651:
	call	__errno_location
	cmp	dword ptr [rax], 1
	lea	rdi, [rdi]
	je	.label_655
	lea	rdi, [rdi]
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	lea	rsi, [rsi]
	jne	.label_659
.label_655:
	mov	rsp, rsp
	call	__errno_location
	mov	esi, 0xffffffff
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x58], ecx
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x40]
	call	lchown
	nop	
	mov	dword ptr [rbp - 0x5c], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x58]
	mov	dword ptr [rbp - 0x78], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	dword ptr [rax], ecx
.label_659:
	lea	rdi, [rdi]
	jmp	.label_649
.label_649:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	chown_failure_ok
	test	al, 1
	mov	rsp, rsp
	jne	.label_652
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.46
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], esi
	lea	rdi, [rdi]
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x88], rax
	lea	rsi, [rsi]
	call	quotearg_style
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	test	byte ptr [rcx + 0x24], 1
	lea	rdi, [rdi]
	je	.label_657
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rbp, rbp
	jmp	.label_650
.label_657:
	lea	rdi, [rdi]
	jmp	.label_652
.label_652:
	mov	dword ptr [rbp - 4], 0
.label_650:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	rsp, 0x90
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ce60

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
	mov	dword ptr [rbp - 0x1c], ecx
	nop	
	mov	qword ptr [rbp - 0x28], r8
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cea0

	.globl set_author
	.type set_author, @function
set_author:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cec0

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
	mov	dword ptr [rbp - 0xc], esi
	mov	esi, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	and	esi, 0xf000
	cmp	esi, 0xa000
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xd], al
	je	.label_664
	mov	rsp, rsp
	call	can_write_any_file
	mov	rsp, rsp
	mov	cl, 1
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xd], cl
	jne	.label_664
	mov	rsp, rsp
	mov	esi, 2
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	euidaccess
	cmp	eax, 0
	mov	rsp, rsp
	sete	cl
	mov	byte ptr [rbp - 0xd], cl
.label_664:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xd]
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
	.section	.text
	.align	32
	#Procedure 0x40cf60

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
	.section	.text
	.align	32
	#Procedure 0x40cfa0

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
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jge	.label_665
	nop	
	movabs	rax, 0x2000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 0x38], rax
	mov	rbp, rbp
	ja	.label_665
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rbp, rbp
	jmp	.label_666
.label_665:
	mov	rbp, rbp
	mov	eax, 0x200
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_666
.label_666:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, 0x20000
	mov	edx, ecx
	nop	
	cmp	rdx, rax
	mov	rbp, rbp
	jle	.label_670
	mov	eax, 0x20000
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rcx
	nop	
	jmp	.label_668
.label_670:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdx + 0x38]
	jge	.label_667
	mov	rbp, rbp
	movabs	rax, 0x2000000000000000
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 0x38], rax
	mov	rbp, rbp
	ja	.label_667
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 0x38]
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	lea	rsi, [rsi]
	jmp	.label_669
.label_667:
	mov	eax, 0x200
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	jmp	.label_669
.label_669:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x18], rax
.label_668:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d0c0

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
	mov	byte ptr [rbp - 9], cl
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
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	cqo	
	idiv	rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rcx, rax
	mov	rbp, rbp
	setl	dil
	mov	byte ptr [rbp - 9], dil
.label_671:
	mov	al, byte ptr [rbp - 9]
	nop	
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d150

	.globl ptr_align
	.type ptr_align, @function
ptr_align:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsi, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rdi, [rdi]
	div	qword ptr [rbp - 0x10]
	sub	rcx, rdx
	nop	
	add	rsi, rcx
	mov	rsp, rsp
	mov	rax, rsi
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d1c0

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
	sub	rsp, 0x198
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x28]
	lea	rsi, [rsi]
	mov	r10, qword ptr [rbp + 0x20]
	mov	r11, qword ptr [rbp + 0x18]
	mov	ebx, dword ptr [rbp + 0x10]
	lea	rsi, [rsi]
	lea	r14, [rbp - 0x98]
	nop	
	mov	dword ptr [rbp - 0x20], edi
	nop	
	mov	dword ptr [rbp - 0x24], esi
	mov	qword ptr [rbp - 0x30], rdx
	mov	qword ptr [rbp - 0x38], rcx
	mov	qword ptr [rbp - 0x40], r8
	mov	qword ptr [rbp - 0x48], r9
	mov	dword ptr [rbp - 0x4c], ebx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], r11
	nop	
	mov	qword ptr [rbp - 0x60], r10
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0xa0], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb0], 0
	mov	edi, dword ptr [rbp - 0x20]
	mov	rsi, r14
	mov	rsp, rsp
	call	extent_scan_init
	mov	rax, qword ptr [rbp - 0x68]
	mov	byte ptr [rax], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb1], 1
.label_689:
	lea	rdi, [rbp - 0x98]
	lea	rsi, [rsi]
	call	extent_scan_read
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0xb2], al
	test	byte ptr [rbp - 0xb2], 1
	jne	.label_691
	mov	rbp, rbp
	test	byte ptr [rbp - 0x77], 1
	mov	rsp, rsp
	je	.label_696
	mov	rsp, rsp
	jmp	.label_699
.label_696:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x78], 1
	mov	rbp, rbp
	je	.label_704
	mov	rax, qword ptr [rbp - 0x68]
	mov	byte ptr [rax], 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_677
.label_704:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.68
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe8], esi
	lea	rsi, [rsi]
	call	gettext
	xor	edi, edi
	mov	esi, 3
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], rax
	call	quotearg_n_style_colon
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, dword ptr [rbp - 0xe8]
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_677
.label_691:
	nop	
	mov	byte ptr [rbp - 0xb3], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xb8], 0
.label_685:
	lea	rdi, [rdi]
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mov	edx, ecx
	cmp	rdx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xf1], al
	jb	.label_672
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xb3]
	mov	byte ptr [rbp - 0xf1], al
.label_672:
	nop	
	mov	al, byte ptr [rbp - 0xf1]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_694
	lea	rdi, [rdi]
	jmp	.label_682
.label_694:
	mov	eax, dword ptr [rbp - 0xb8]
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	jae	.label_701
	mov	eax, dword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rbp, rbp
	imul	rcx, rcx, 0x18
	nop	
	add	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	nop	
	mov	qword ptr [rbp - 0xc0], rcx
	mov	eax, dword ptr [rbp - 0xb8]
	mov	ecx, eax
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	qword ptr [rbp - 0xc8], rcx
	jmp	.label_703
.label_701:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xb8]
	add	eax, -1
	mov	dword ptr [rbp - 0xb8], eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	edx, eax
	lea	rsi, [rsi]
	imul	rdx, rdx, 0x18
	mov	rsp, rsp
	add	rdx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx + 8]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc8], 0
.label_703:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0xc8]
	cmp	rax, rcx
	jge	.label_687
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	jge	.label_690
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc0], rax
.label_690:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0xc8], rax
.label_687:
	mov	rax, qword ptr [rbp - 0xc0]
	sub	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xd0], rax
	mov	byte ptr [rbp - 0xb1], 0
	cmp	qword ptr [rbp - 0xd0], 0
	nop	
	je	.label_688
	lea	rdi, [rdi]
	xor	edx, edx
	mov	edi, dword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	call	lseek
	lea	rsi, [rsi]
	cmp	rax, 0
	jge	.label_708
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.69
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xf8], esi
	call	gettext
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x100], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xf8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_675:
	lea	rdi, [rbp - 0x98]
	mov	rbp, rbp
	call	extent_scan_free
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], 0
	mov	rbp, rbp
	jmp	.label_677
.label_708:
	test	byte ptr [rbp - 0xb3], 1
	lea	rsi, [rsi]
	je	.label_693
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x4c], 3
	nop	
	je	.label_697
.label_693:
	test	byte ptr [rbp - 0xb3], 1
	jne	.label_705
	cmp	dword ptr [rbp - 0x4c], 1
	nop	
	je	.label_705
.label_697:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x60]
	cmp	dword ptr [rbp - 0x4c], 3
	nop	
	sete	al
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xd0]
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	lea	rsi, [rsi]
	call	create_hole
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_710
	mov	rbp, rbp
	jmp	.label_675
.label_710:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb1], 1
	lea	rsi, [rsi]
	jmp	.label_673
.label_705:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd8], rax
	test	byte ptr [rbp - 0xb3], 1
	lea	rsi, [rsi]
	je	.label_674
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0xd0]
	nop	
	jge	.label_681
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0xb0]
	nop	
	mov	qword ptr [rbp - 0x108], rax
	mov	rsp, rsp
	jmp	.label_686
.label_681:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x108], rax
.label_686:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	nop	
	mov	qword ptr [rbp - 0xd8], rax
.label_674:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0xd8]
	call	write_zeros
	test	al, 1
	mov	rbp, rbp
	jne	.label_702
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.70
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x10c], esi
	lea	rsi, [rsi]
	call	gettext
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x118], rax
	call	quotearg_n_style_colon
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x10c]
	nop	
	mov	rdx, qword ptr [rbp - 0x118]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	lea	rdi, [rdi]
	jmp	.label_675
.label_702:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	jge	.label_678
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x120], rax
	jmp	.label_680
.label_678:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x120], rax
.label_680:
	mov	rax, qword ptr [rbp - 0x120]
	nop	
	mov	qword ptr [rbp - 0xb0], rax
.label_673:
	jmp	.label_688
.label_688:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0xa0], rax
	mov	byte ptr [rbp - 0xb3], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xa8], rax
	mov	edi, dword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x24]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x4c], 3
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x124], edi
	nop	
	mov	dword ptr [rbp - 0x128], esi
	mov	qword ptr [rbp - 0x130], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x138], rcx
	jne	.label_695
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x140], rax
	jmp	.label_684
.label_695:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x140], rcx
	jmp	.label_684
.label_684:
	mov	rax, qword ptr [rbp - 0x140]
	mov	r9d, 1
	mov	rbp, rbp
	lea	rcx, [rbp - 0xe0]
	lea	rdx, [rbp - 0xe1]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	r10d, dword ptr [rbp - 0x124]
	nop	
	mov	qword ptr [rbp - 0x148], rdi
	lea	rdi, [rdi]
	mov	edi, r10d
	mov	r11d, dword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x150], rsi
	mov	esi, r11d
	mov	rbx, qword ptr [rbp - 0x130]
	mov	qword ptr [rbp - 0x158], rdx
	mov	rdx, rbx
	mov	r14, qword ptr [rbp - 0x138]
	nop	
	mov	qword ptr [rbp - 0x160], rcx
	lea	rsi, [rsi]
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x168], r8
	lea	rsi, [rsi]
	mov	r8, rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x150]
	nop	
	mov	qword ptr [rsp], rax
	nop	
	mov	rax, qword ptr [rbp - 0x148]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rbp - 0x168]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rbp - 0x160]
	mov	qword ptr [rsp + 0x18], rax
	lea	rsi, [rsi]
	mov	r15, qword ptr [rbp - 0x158]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], r15
	call	sparse_copy
	mov	rbp, rbp
	test	al, 1
	nop	
	jne	.label_707
	jmp	.label_675
.label_707:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc0]
	add	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xe0], 0
	mov	rbp, rbp
	je	.label_709
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xe1]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb1], al
.label_709:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x48]
	nop	
	jne	.label_679
	mov	byte ptr [rbp - 0x77], 1
	lea	rdi, [rdi]
	jmp	.label_682
.label_679:
	nop	
	jmp	.label_683
.label_683:
	mov	eax, dword ptr [rbp - 0xb8]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 0xb8], eax
	mov	rbp, rbp
	jmp	.label_685
.label_682:
	lea	rdi, [rbp - 0x98]
	call	extent_scan_free
	mov	al, byte ptr [rbp - 0x77]
	nop	
	xor	al, 0xff
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_689
.label_699:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0x48]
	jl	.label_692
	test	byte ptr [rbp - 0xb1], 1
	je	.label_698
.label_692:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x4c], 1
	je	.label_700
	mov	edi, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	call	ftruncate
	cmp	eax, 0
	nop	
	jne	.label_706
	jmp	.label_698
.label_700:
	mov	edi, dword ptr [rbp - 0x24]
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	mov	rsi, rax
	mov	rbp, rbp
	call	write_zeros
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_698
.label_706:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.66
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x16c], esi
	mov	rbp, rbp
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x178], rax
	lea	rsi, [rsi]
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x16c]
	mov	rdx, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x19], 0
	nop	
	jmp	.label_677
.label_698:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x4c], 3
	mov	rbp, rbp
	jne	.label_676
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	jge	.label_676
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0xb0]
	mov	rdx, rax
	mov	rbp, rbp
	call	punch_hole
	nop	
	cmp	eax, 0
	jge	.label_676
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.71
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x17c], esi
	lea	rsi, [rsi]
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x188], rax
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x17c]
	mov	rdx, qword ptr [rbp - 0x188]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_677
.label_676:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x19], 1
.label_677:
	nop	
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x198
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
	.section	.text
	.align	32
	#Procedure 0x40db60

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
	sub	rsp, 0xe8
	mov	al, r9b
	mov	r10, qword ptr [rbp + 0x30]
	mov	r11, qword ptr [rbp + 0x28]
	mov	rbx, qword ptr [rbp + 0x20]
	mov	r14, qword ptr [rbp + 0x18]
	nop	
	mov	r15, qword ptr [rbp + 0x10]
	mov	dword ptr [rbp - 0x20], edi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], esi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rcx
	mov	qword ptr [rbp - 0x40], r8
	mov	rsp, rsp
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x41], al
	nop	
	mov	qword ptr [rbp - 0x50], r15
	mov	qword ptr [rbp - 0x58], r14
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rbx
	nop	
	mov	qword ptr [rbp - 0x68], r11
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], r10
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	byte ptr [rcx], 0
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x71], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], 0
.label_717:
	cmp	qword ptr [rbp - 0x60], 0
	je	.label_711
	mov	edi, dword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0xa8], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rsi
	mov	rbp, rbp
	jae	.label_713
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_727
.label_713:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xb8], rax
.label_727:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	mov	edi, dword ptr [rbp - 0xa8]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	rdx, rax
	lea	rdi, [rdi]
	call	read
	mov	qword ptr [rbp - 0x88], rax
	cmp	qword ptr [rbp - 0x88], 0
	jge	.label_740
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 4
	jne	.label_714
	mov	rsp, rsp
	jmp	.label_717
.label_714:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.72
	nop	
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xbc], esi
	nop	
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xc8], rax
	lea	rsi, [rsi]
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xbc]
	mov	rdx, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	nop	
	mov	byte ptr [rbp - 0x19], 0
	mov	rbp, rbp
	jmp	.label_712
.label_740:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x88], 0
	mov	rbp, rbp
	jne	.label_715
	mov	rsp, rsp
	jmp	.label_711
.label_715:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	sub	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rcx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_725
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0xd0], rax
	jmp	.label_738
.label_725:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xd0], rax
.label_738:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x98], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rax
.label_741:
	cmp	qword ptr [rbp - 0x88], 0
	lea	rsi, [rsi]
	je	.label_729
	mov	al, byte ptr [rbp - 0x71]
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0xa1], al
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x90]
	cmp	rcx, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	jae	.label_732
	mov	rax, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rax
	lea	rsi, [rsi]
	jmp	.label_739
.label_732:
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0xd8], rax
.label_739:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rax
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_716
	cmp	qword ptr [rbp - 0x90], 0
	je	.label_716
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	call	is_nul
	and	al, 1
	mov	byte ptr [rbp - 0x71], al
.label_716:
	xor	eax, eax
	mov	cl, al
	nop	
	mov	dl, byte ptr [rbp - 0x71]
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
	mov	dl, byte ptr [rbp - 0xa1]
	and	dl, 1
	movzx	esi, dl
	cmp	eax, esi
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xd9], cl
	mov	rsp, rsp
	je	.label_736
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x80], 0
	setne	al
	nop	
	mov	byte ptr [rbp - 0xd9], al
.label_736:
	mov	al, byte ptr [rbp - 0xd9]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa2], al
	nop	
	mov	rcx, qword ptr [rbp - 0x88]
	nop	
	cmp	rcx, qword ptr [rbp - 0x90]
	jne	.label_722
	mov	al, 1
	mov	rbp, rbp
	test	byte ptr [rbp - 0x71], 1
	mov	byte ptr [rbp - 0xda], al
	je	.label_734
.label_722:
	cmp	qword ptr [rbp - 0x90], 0
	mov	rbp, rbp
	setne	al
	lea	rsi, [rsi]
	xor	al, 0xff
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xda], al
.label_734:
	nop	
	mov	al, byte ptr [rbp - 0xda]
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0xa3], al
	test	byte ptr [rbp - 0xa2], 1
	jne	.label_743
	test	byte ptr [rbp - 0xa3], 1
	je	.label_719
.label_743:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa2], 1
	lea	rsi, [rsi]
	jne	.label_724
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_724:
	test	byte ptr [rbp - 0xa1], 1
	jne	.label_735
	mov	edi, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x80]
	nop	
	call	full_write
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	je	.label_742
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.73
	nop	
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xe0], esi
	call	gettext
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0xe8], rax
	mov	rsp, rsp
	call	quotearg_style
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xe0]
	mov	rdx, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	nop	
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_712
.label_742:
	mov	rbp, rbp
	jmp	.label_718
.label_735:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	al, byte ptr [rbp - 0x41]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	movzx	edx, al
	mov	rsp, rsp
	call	create_hole
	test	al, 1
	nop	
	jne	.label_721
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_712
.label_721:
	mov	rsp, rsp
	jmp	.label_718
.label_718:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x80], rax
	test	byte ptr [rbp - 0xa3], 1
	je	.label_728
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x90], 0
	jne	.label_737
	mov	qword ptr [rbp - 0x88], 0
.label_737:
	test	byte ptr [rbp - 0xa2], 1
	je	.label_726
	nop	
	mov	qword ptr [rbp - 0x90], 0
	mov	rsp, rsp
	jmp	.label_733
.label_726:
	mov	qword ptr [rbp - 0x80], 0
.label_733:
	jmp	.label_728
.label_728:
	jmp	.label_723
.label_719:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x80]
	sub	rax, qword ptr [rbp - 0x90]
	cmp	rcx, rax
	lea	rsi, [rsi]
	ja	.label_731
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
	mov	rbp, rbp
	jmp	.label_720
.label_731:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.74
	mov	rsp, rsp
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xf0], rax
	mov	rbp, rbp
	call	quotearg_style
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xf4], edi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0xf4]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x19], 0
	mov	rsp, rsp
	jmp	.label_712
.label_720:
	nop	
	jmp	.label_723
.label_723:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x88]
	sub	rcx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	jmp	.label_741
.label_729:
	mov	al, byte ptr [rbp - 0x71]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rcx], al
	jmp	.label_717
.label_711:
	test	byte ptr [rbp - 0x71], 1
	lea	rsi, [rsi]
	je	.label_730
	nop	
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	al, byte ptr [rbp - 0x41]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x80]
	and	al, 1
	movzx	edx, al
	call	create_hole
	mov	rsp, rsp
	test	al, 1
	jne	.label_730
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_712
.label_730:
	mov	byte ptr [rbp - 0x19], 1
.label_712:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	add	rsp, 0xe8
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
	.section	.text
	.align	32
	#Procedure 0x40e230

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
	mov	dword ptr [rbp - 8], edi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	cmp	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	jg	.label_744
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x14]
	call	fchmod
	nop	
	mov	dword ptr [rbp - 4], eax
	jmp	.label_745
.label_744:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	call	chmod
	nop	
	mov	dword ptr [rbp - 4], eax
.label_745:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e2a0

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
	.section	.text
	.align	32
	#Procedure 0x40e2f0

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
	mov	dword ptr [rbp - 8], edi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11], al
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	jge	.label_748
	mov	rbp, rbp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.69
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x2c], esi
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x38], rax
	call	quotearg_style
	nop	
	xor	edi, edi
	nop	
	mov	esi, dword ptr [rbp - 0x2c]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, rax
	nop	
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	mov	rbp, rbp
	jmp	.label_746
.label_748:
	nop	
	test	byte ptr [rbp - 0x11], 1
	lea	rsi, [rsi]
	je	.label_747
	mov	edi, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, rax
	call	punch_hole
	lea	rdi, [rdi]
	cmp	eax, 0
	jge	.label_747
	lea	rsi, [rsi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.71
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x3c], esi
	mov	rbp, rbp
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, rax
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
	nop	
	jmp	.label_746
.label_747:
	mov	byte ptr [rbp - 1], 1
.label_746:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	and	al, 1
	movzx	eax, al
	nop	
	add	rsp, 0x50
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e450

	.globl write_zeros
	.type write_zeros, @function
write_zeros:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	cmp	qword ptr [word ptr [write_zeros.zeros]],  0
	jne	.label_752
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
	jne	.label_753
	movabs	rax, OFFSET FLAT:write_zeros.fallback
	nop	
	mov	qword ptr [word ptr [write_zeros.zeros]],  rax
	mov	qword ptr [word ptr [write_zeros.nz]],  0x400
.label_753:
	nop	
	jmp	.label_752
.label_752:
	jmp	.label_749
.label_749:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	je	.label_754
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [write_zeros.nz]]
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	jae	.label_750
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [write_zeros.nz]]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_756
.label_750:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
.label_756:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [write_zeros.zeros]]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	full_write
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	je	.label_751
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0
	jmp	.label_755
.label_751:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	lea	rdi, [rdi]
	jmp	.label_749
.label_754:
	mov	byte ptr [rbp - 1], 1
.label_755:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e5a0

	.globl punch_hole
	.type punch_hole, @function
punch_hole:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	eax, 3
	mov	dword ptr [rbp - 4], edi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
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
	.section	.text
	.align	32
	#Procedure 0x40e640

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
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 0x5f
	mov	byte ptr [rbp - 5], al
	nop	
	je	.label_759
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], cl
	lea	rsi, [rsi]
	jmp	.label_759
.label_759:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e680

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
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_760
	mov	byte ptr [rbp - 1], 1
	nop	
	jmp	.label_762
.label_760:
	jmp	.label_763
.label_763:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	and	rax, 0
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_769
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	byte ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_766
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_762
.label_766:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jne	.label_765
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_762
.label_765:
	jmp	.label_763
.label_769:
	jmp	.label_764
.label_764:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], cl
	nop	
	cmp	byte ptr [rbp - 0x21], 0
	lea	rdi, [rdi]
	je	.label_768
	nop	
	mov	byte ptr [rbp - 1], 0
	jmp	.label_762
.label_768:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	sub	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	jne	.label_761
	mov	byte ptr [rbp - 1], 1
	lea	rdi, [rdi]
	jmp	.label_762
.label_761:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	and	rax, 0xf
	nop	
	cmp	rax, 0
	jne	.label_770
	jmp	.label_767
.label_770:
	mov	rsp, rsp
	jmp	.label_764
.label_767:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
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
	.section	.text
	.align	32
	#Procedure 0x40e800

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
	#Procedure 0x40e860

	.globl forget_created
	.type forget_created, @function
forget_created:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	nop	
	lea	rax, [rbp - 0x28]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [src_to_dest]]
	mov	rsi, rax
	call	hash_delete
	nop	
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 0
	lea	rsi, [rsi]
	je	.label_773
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdi, rax
	call	src_to_dest_free
.label_773:
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e8e0

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
	.section	.text
	.align	32
	#Procedure 0x40e930

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
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
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
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_775
.label_774:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x38], rcx
	jmp	.label_775
.label_775:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e9c0

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
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	xmalloc
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	xstrdup
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	mov	rdi,  qword ptr [word ptr [src_to_dest]]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	hash_insert
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_777
	call	xalloc_die
.label_777:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	je	.label_778
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	src_to_dest_free
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_776
.label_778:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0
.label_776:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40eab0

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
	.section	.text
	.align	32
	#Procedure 0x40eb20

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
	.section	.text
	.align	32
	#Procedure 0x40eb60

	.globl src_to_dest_compare
	.type src_to_dest_compare, @function
src_to_dest_compare:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rdi]
	mov	byte ptr [rbp - 0x21], cl
	nop	
	jne	.label_780
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	sete	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x21], dl
.label_780:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x21]
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
	.section	.text
	.align	32
	#Procedure 0x40ec00
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
	.section	.text
	.align	32
	#Procedure 0x40ec20

	.globl extent_scan_init
	.type extent_scan_init, @function
extent_scan_init:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi], edi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rsi + 0x18], 0
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x28], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rsi + 8], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi + 0x20], 0
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi + 0x21], 0
	lea	rsi, [rsi]
	call	extent_need_sync
	xor	edi, edi
	mov	ecx, 1
	test	al, 1
	cmovne	edi, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi + 0x10], edi
	mov	rsp, rsp
	add	rsp, 0x10
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ecb0

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
	.section	.text
	.align	32
	#Procedure 0x40ecd0

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
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	dword ptr [rbp - 0x14], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 0x28]
	mov	qword ptr [rbp - 0x20], rdi
.label_786:
	mov	eax, 0xc020660b
	mov	esi, eax
	mov	rcx, -1
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, 0x1000
	nop	
	lea	rdi, [rbp - 0x1020]
	mov	r8, rdi
	mov	qword ptr [rbp - 0x1028], r8
	nop	
	mov	r8, qword ptr [rbp - 0x1028]
	nop	
	add	r8, 0x20
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1030], r8
	mov	qword ptr [rbp - 0x1058], rsi
	mov	esi, eax
	mov	qword ptr [rbp - 0x1060], rcx
	call	memset
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rbp - 0x1028]
	nop	
	mov	qword ptr [rdx], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rcx + 0x10]
	mov	rcx, qword ptr [rbp - 0x1028]
	mov	dword ptr [rcx + 0x10], eax
	mov	rcx, qword ptr [rbp - 0x1028]
	mov	dword ptr [rcx + 0x18], 0x48
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x1060]
	sub	rdx, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x1028]
	mov	qword ptr [rcx + 8], rdx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rcx]
	nop	
	mov	rdx, qword ptr [rbp - 0x1028]
	mov	rsi, qword ptr [rbp - 0x1058]
	lea	rdi, [rdi]
	mov	al, 0
	call	ioctl
	cmp	eax, 0
	jge	.label_798
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	jne	.label_800
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	byte ptr [rax + 0x20], 1
.label_800:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_784
.label_798:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1028]
	cmp	dword ptr [rax + 0x14], 0
	jne	.label_806
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x21], 1
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	jmp	.label_784
.label_806:
	mov	rax, -1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x1028]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rdx + 0x14]
	mov	edx, esi
	mov	rsp, rsp
	sub	rax, rdx
	cmp	rcx, rax
	lea	rsi, [rsi]
	ja	.label_793
	jmp	.label_804
.label_793:
	movabs	rdi, OFFSET FLAT:.str_3
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.1_2
	lea	rsi, [rsi]
	mov	edx, 0x7e
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.extent_scan_read
	call	__assert_fail
.label_804:
	mov	eax, 0x18
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x1028]
	mov	eax, dword ptr [rdx + 0x14]
	mov	rbp, rbp
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	add	rdx, qword ptr [rsi + 0x18]
	mov	rsp, rsp
	mov	qword ptr [rsi + 0x18], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0x28]
	lea	rdi, [rdi]
	sub	rdx, rsi
	nop	
	mov	rax, rdx
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x1038], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x18]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	xnrealloc
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x28]
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rbp - 0x1038], 0x18
	nop	
	add	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	dword ptr [rbp - 0x103c], 0
	nop	
	mov	dword ptr [rbp - 0x103c], 0
.label_791:
	mov	eax, dword ptr [rbp - 0x103c]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x1028]
	mov	rsp, rsp
	cmp	eax, dword ptr [rcx + 0x14]
	jae	.label_801
	movabs	rax, 0x7fffffffffffffff
	mov	ecx, dword ptr [rbp - 0x103c]
	mov	rbp, rbp
	mov	edx, ecx
	imul	rdx, rdx, 0x38
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x1030]
	nop	
	mov	rdx, qword ptr [rdx]
	mov	ecx, dword ptr [rbp - 0x103c]
	mov	rbp, rbp
	mov	esi, ecx
	imul	rsi, rsi, 0x38
	add	rsi, qword ptr [rbp - 0x1030]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rsi + 0x10]
	cmp	rdx, rax
	ja	.label_805
	jmp	.label_797
.label_805:
	movabs	rdi, OFFSET FLAT:.str.2_2
	movabs	rsi, OFFSET FLAT:.str.1_2
	mov	edx, 0x8d
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.extent_scan_read
	call	__assert_fail
.label_797:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	nop	
	je	.label_782
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	ecx, dword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x103c]
	mov	eax, edx
	imul	rax, rax, 0x38
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x1030]
	mov	rsp, rsp
	mov	edx, dword ptr [rax + 0x28]
	and	edx, 0xfffffffe
	cmp	ecx, edx
	mov	rbp, rbp
	jne	.label_782
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	add	rax, qword ptr [rcx + 8]
	mov	edx, dword ptr [rbp - 0x103c]
	lea	rdi, [rdi]
	mov	ecx, edx
	imul	rcx, rcx, 0x38
	nop	
	add	rcx, qword ptr [rbp - 0x1030]
	cmp	rax, qword ptr [rcx]
	jne	.label_782
	mov	eax, dword ptr [rbp - 0x103c]
	mov	ecx, eax
	mov	rsp, rsp
	imul	rcx, rcx, 0x38
	add	rcx, qword ptr [rbp - 0x1030]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx + 8]
	mov	qword ptr [rdx + 8], rcx
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x103c]
	mov	ecx, eax
	imul	rcx, rcx, 0x38
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x1030]
	mov	eax, dword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	dword ptr [rcx + 0x10], eax
	jmp	.label_783
.label_782:
	nop	
	cmp	dword ptr [rbp - 0x14], 0
	lea	rsi, [rsi]
	jne	.label_794
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x103c]
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsp, rsp
	imul	rdx, rdx, 0x38
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x1030]
	cmp	rax, qword ptr [rdx]
	lea	rsi, [rsi]
	ja	.label_788
.label_794:
	nop	
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_781
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	edx, dword ptr [rbp - 0x103c]
	mov	rbp, rbp
	mov	ecx, edx
	mov	rbp, rbp
	imul	rcx, rcx, 0x38
	add	rcx, qword ptr [rbp - 0x1030]
	cmp	rax, qword ptr [rcx]
	nop	
	jbe	.label_781
.label_788:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	mov	rbp, rbp
	jne	.label_796
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1048], rax
	mov	rsp, rsp
	jmp	.label_799
.label_796:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x1048], rax
.label_799:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1048]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x103c]
	mov	rsp, rsp
	mov	edx, ecx
	imul	rdx, rdx, 0x38
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x1030]
	sub	rax, qword ptr [rdx]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1050], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1050]
	mov	ecx, dword ptr [rbp - 0x103c]
	lea	rsi, [rsi]
	mov	edx, ecx
	imul	rdx, rdx, 0x38
	add	rdx, qword ptr [rbp - 0x1030]
	cmp	rax, qword ptr [rdx + 0x10]
	jae	.label_787
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	jne	.label_785
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x20], 1
.label_785:
	mov	byte ptr [rbp - 1], 0
	lea	rdi, [rdi]
	jmp	.label_784
.label_787:
	mov	rax, qword ptr [rbp - 0x1048]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x103c]
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	imul	rdx, rdx, 0x38
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x1030]
	mov	rbp, rbp
	mov	qword ptr [rdx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1050]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x103c]
	mov	edx, ecx
	imul	rdx, rdx, 0x38
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x1030]
	mov	rsi, qword ptr [rdx + 0x10]
	sub	rsi, rax
	mov	rbp, rbp
	mov	qword ptr [rdx + 0x10], rsi
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x103c]
	nop	
	add	ecx, -1
	mov	dword ptr [rbp - 0x103c], ecx
	jmp	.label_790
.label_781:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	edx, ecx
	imul	rdx, rdx, 0x18
	lea	rsi, [rsi]
	add	rax, rdx
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x103c]
	nop	
	mov	eax, ecx
	imul	rax, rax, 0x38
	nop	
	add	rax, qword ptr [rbp - 0x1030]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx], rax
	mov	ecx, dword ptr [rbp - 0x103c]
	mov	eax, ecx
	imul	rax, rax, 0x38
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x1030]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx + 8], rax
	mov	ecx, dword ptr [rbp - 0x103c]
	lea	rdi, [rdi]
	mov	eax, ecx
	mov	rbp, rbp
	imul	rax, rax, 0x38
	nop	
	add	rax, qword ptr [rbp - 0x1030]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x28]
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 0x10], ecx
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	ecx, 1
	nop	
	mov	dword ptr [rbp - 0x14], ecx
	jmp	.label_783
.label_783:
	mov	rsp, rsp
	jmp	.label_790
.label_790:
	mov	eax, dword ptr [rbp - 0x103c]
	add	eax, 1
	mov	dword ptr [rbp - 0x103c], eax
	jmp	.label_791
.label_801:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	ecx, dword ptr [rax + 0x10]
	mov	rsp, rsp
	and	ecx, 1
	cmp	ecx, 0
	nop	
	je	.label_795
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	byte ptr [rax + 0x21], 1
.label_795:
	cmp	dword ptr [rbp - 0x14], 0x48
	lea	rdi, [rdi]
	jbe	.label_803
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x21], 1
	jne	.label_803
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x28]
	mov	ecx, dword ptr [rbp - 0x14]
	add	ecx, -1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], ecx
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
	mov	qword ptr [rbp - 0x20], rax
.label_803:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x18], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	test	byte ptr [rcx + 0x21], 1
	je	.label_792
	lea	rsi, [rsi]
	jmp	.label_789
.label_792:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	cmp	dword ptr [rbp - 0x14], 0x48
	jb	.label_802
	mov	rbp, rbp
	jmp	.label_789
.label_802:
	jmp	.label_786
.label_789:
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 1
.label_784:
	nop	
	mov	al, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	and	al, 1
	nop	
	movzx	eax, al
	add	rsp, 0x1060
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f440

	.globl force_linkat
	.type force_linkat, @function
force_linkat:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x160
	lea	rdi, [rdi]
	mov	al, r9b
	nop	
	mov	r9d, dword ptr [rbp + 0x10]
	mov	dword ptr [rbp - 8], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	dword ptr [rbp - 0x14], edx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x25], al
	mov	dword ptr [rbp - 0x2c], r9d
	nop	
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_807
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x14]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rbp - 0x24]
	call	linkat
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_811
	mov	rsp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 0x158], eax
	lea	rdi, [rdi]
	jmp	.label_814
.label_811:
	nop	
	call	__errno_location
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x158], ecx
.label_814:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x158]
	mov	dword ptr [rbp - 0x2c], eax
.label_807:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x25], 1
	mov	rsp, rsp
	je	.label_810
	nop	
	cmp	dword ptr [rbp - 0x2c], 0x11
	nop	
	je	.label_813
.label_810:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_818
.label_813:
	lea	rsi, [rbp - 0x130]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	samedir_template
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x138], rax
	cmp	qword ptr [rbp - 0x138], 0
	lea	rsi, [rsi]
	jne	.label_809
	mov	rsp, rsp
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 4], ecx
	mov	rsp, rsp
	jmp	.label_818
.label_809:
	mov	rbp, rbp
	xor	esi, esi
	movabs	rcx, OFFSET FLAT:try_link
	mov	eax, 6
	lea	rdi, [rdi]
	mov	r8d, eax
	nop	
	lea	rdx, [rbp - 0x150]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x150], eax
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x148], rdi
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x140], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x13c], eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x138]
	mov	rsp, rsp
	call	try_tempname_len
	cmp	eax, 0
	je	.label_816
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x154], ecx
	jmp	.label_808
.label_816:
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x138]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	call	renameat
	cmp	eax, 0
	jne	.label_812
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x15c], eax
	lea	rsi, [rsi]
	jmp	.label_815
.label_812:
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x15c], ecx
.label_815:
	mov	eax, dword ptr [rbp - 0x15c]
	xor	edx, edx
	mov	dword ptr [rbp - 0x154], eax
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x138]
	call	unlinkat
	mov	dword ptr [rbp - 0x160], eax
.label_808:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x130]
	mov	rcx, qword ptr [rbp - 0x138]
	cmp	rcx, rax
	je	.label_817
	mov	rdi, qword ptr [rbp - 0x138]
	call	free
.label_817:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x154]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
.label_818:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x160
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f690

	.globl samedir_template
	.type samedir_template, @function
samedir_template:
	nop	
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	last_component
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rax, rsi
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rax, 9
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0x100
	lea	rsi, [rsi]
	ja	.label_821
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_819
.label_821:
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	call	malloc
	nop	
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_820
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_822
.label_820:
	mov	rbp, rbp
	jmp	.label_819
.label_819:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	call	mempcpy
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:simple_pattern
	mov	esi, ecx
	mov	rdi, rax
	call	strcpy
	mov	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rdx
	mov	qword ptr [rbp - 0x38], rax
.label_822:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f780

	.globl try_link
	.type try_link, @function
try_link:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rsi]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rax + 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	r8d, dword ptr [rax + 0x14]
	call	linkat
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f7e0

	.globl force_symlinkat
	.type force_symlinkat, @function
force_symlinkat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x160
	mov	al, cl
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	dword ptr [rbp - 0x28], r8d
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	jge	.label_828
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	symlinkat
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_833
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x150], eax
	nop	
	jmp	.label_825
.label_833:
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x150], ecx
.label_825:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x150]
	mov	dword ptr [rbp - 0x28], eax
.label_828:
	test	byte ptr [rbp - 0x21], 1
	je	.label_834
	cmp	dword ptr [rbp - 0x28], 0x11
	je	.label_831
.label_834:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_823
.label_831:
	lea	rsi, [rbp - 0x130]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	samedir_template
	mov	qword ptr [rbp - 0x138], rax
	cmp	qword ptr [rbp - 0x138], 0
	jne	.label_829
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], ecx
	lea	rsi, [rsi]
	jmp	.label_823
.label_829:
	lea	rdi, [rdi]
	xor	esi, esi
	movabs	rcx, OFFSET FLAT:try_symlink
	lea	rdi, [rdi]
	mov	eax, 6
	mov	rbp, rbp
	mov	r8d, eax
	lea	rdx, [rbp - 0x148]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x148], rdi
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x140], eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x138]
	call	try_tempname_len
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_826
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14c], ecx
	jmp	.label_830
.label_826:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x138]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	call	renameat
	cmp	eax, 0
	nop	
	je	.label_827
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	xor	edx, edx
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14c], ecx
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x138]
	call	unlinkat
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x154], eax
	jmp	.label_824
.label_827:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14c], 0xffffffff
.label_824:
	jmp	.label_830
.label_830:
	lea	rax, [rbp - 0x130]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x138]
	mov	rsp, rsp
	cmp	rcx, rax
	je	.label_832
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x138]
	lea	rdi, [rdi]
	call	free
.label_832:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
.label_823:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x160
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fa00

	.globl try_symlink
	.type try_symlink, @function
try_symlink:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rsi + 8]
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	symlinkat
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fa50

	.globl copy_acl
	.type copy_acl, @function
copy_acl:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], ecx
	mov	dword ptr [rbp - 0x20], r8d
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	esi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x1c]
	call	qcopy_acl
	mov	dword ptr [rbp - 0x24], eax
	mov	ecx, eax
	sub	eax, -2
	mov	dword ptr [rbp - 0x28], ecx
	mov	dword ptr [rbp - 0x2c], eax
	je	.label_836
	mov	rbp, rbp
	jmp	.label_839
.label_839:
	mov	eax, dword ptr [rbp - 0x28]
	sub	eax, -1
	nop	
	mov	dword ptr [rbp - 0x30], eax
	je	.label_835
	lea	rdi, [rdi]
	jmp	.label_838
.label_836:
	call	__errno_location
	nop	
	mov	esi, dword ptr [rax]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], esi
	nop	
	call	quote
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_4
	mov	esi, dword ptr [rbp - 0x34]
	mov	rcx, rax
	mov	al, 0
	call	error
	nop	
	jmp	.label_837
.label_835:
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.1_1
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x38], esi
	lea	rdi, [rdi]
	call	gettext
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	call	quote
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, rax
	nop	
	mov	al, 0
	call	error
	nop	
	jmp	.label_837
.label_838:
	lea	rsi, [rsi]
	jmp	.label_837
.label_837:
	nop	
	mov	eax, dword ptr [rbp - 0x24]
	nop	
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fb60

	.globl set_acl
	.type set_acl, @function
set_acl:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	edx, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	qset_acl
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_840
	mov	rsp, rsp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_2
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x18], esi
	lea	rsi, [rsi]
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	call	quote
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
.label_840:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fc10

	.globl areadlink_with_size
	.type areadlink_with_size, @function
areadlink_with_size:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	qword ptr [rbp - 0x20], 0x400
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], 0x2000
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rsi, qword ptr [rbp - 0x28]
	jae	.label_846
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_843
.label_846:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
.label_843:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	jae	.label_851
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_844
.label_851:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x68], rax
.label_844:
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
.label_849:
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	mov	rsp, rsp
	jne	.label_841
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	nop	
	jmp	.label_842
.label_841:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	readlink
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x40], 0
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
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	ecx, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x6c], ecx
	mov	rsp, rsp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jmp	.label_842
.label_848:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_847
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_842
.label_847:
	mov	rdi, qword ptr [rbp - 0x50]
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
	mov	qword ptr [rbp - 8], 0
	jmp	.label_842
.label_852:
	jmp	.label_845
.label_845:
	lea	rdi, [rdi]
	jmp	.label_849
.label_842:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fe50

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
	.align	32
	#Procedure 0x40fe70

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
.label_858:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_854
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
	jne	.label_855
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	jne	.label_859
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_861
.label_859:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_864
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_856
.label_864:
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_860
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
	je	.label_862
.label_860:
	nop	
	mov	byte ptr [rbp - 0x41], 1
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
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_858
.label_854:
	test	byte ptr [rbp - 0x41], 1
	je	.label_863
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], -2
.label_2004:
	jmp	.label_861
.label_863:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_861:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x50
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410020

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
	jne	.label_866
	movabs	rdi, OFFSET FLAT:.str_5
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	nop	
	jmp	.label_867
.label_866:
	nop	
	movabs	rdi, OFFSET FLAT:.str.1_3
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_867:
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
	.align	32
	#Procedure 0x410100

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
.label_870:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rax*8], 0
	lea	rsi, [rsi]
	je	.label_871
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_872
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
	je	.label_869
.label_872:
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
	movabs	rsi, OFFSET FLAT:.str.3_1
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
	jmp	.label_873
.label_869:
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
	movabs	rsi, OFFSET FLAT:.str.4_1
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], eax
.label_873:
	jmp	.label_868
.label_868:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_870
.label_871:
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
	.align	32
	#Procedure 0x4102b0

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
	jl	.label_874
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_875
.label_874:
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
.label_875:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410370
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
.label_878:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	je	.label_880
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
	jne	.label_877
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_876
.label_877:
	lea	rdi, [rdi]
	jmp	.label_879
.label_879:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_878
.label_880:
	nop	
	mov	qword ptr [rbp - 8], 0
.label_876:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410440

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
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	call	last_component
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rdi, rax
	jne	.label_882
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_883
.label_882:
	movabs	rax, OFFSET FLAT:.str.1_4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_883
.label_883:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [simple_backup_suffix]],  rax
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410500

	.globl backupfile_internal
	.type backupfile_internal, @function
backupfile_internal:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rsi, [rsi]
	mov	al, cl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	and	al, 1
	mov	byte ptr [rbp - 0x1d], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	last_component
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	sub	rax, rsi
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, qword ptr [rbp - 0x28]
	mov	rdi, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
	lea	rdi, [rdi]
	call	strlen
	nop	
	mov	rsi, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	add	rsi, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rsi
	cmp	qword ptr [word ptr [simple_backup_suffix]],  0
	jne	.label_898
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edi, eax
	lea	rdi, [rdi]
	call	set_simple_backup_suffix
.label_898:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [simple_backup_suffix]]
	lea	rdi, [rdi]
	call	strlen
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 9
	jae	.label_888
	mov	qword ptr [rbp - 0x40], 9
.label_888:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x48]
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	nop	
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_900
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_884
.label_900:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], 0xffffffff
	mov	qword ptr [rbp - 0x68], 0
.label_889:
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	lea	rdi, [rdi]
	mov	rdx, rax
	call	memcpy
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x1c], 1
	nop	
	jne	.label_896
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rsi,  qword ptr [word ptr [simple_backup_suffix]]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	memcpy
	lea	rsi, [rsi]
	jmp	.label_885
.label_896:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, rsp
	lea	rsi, [rbp - 0x5c]
	mov	qword ptr [rax], rsi
	mov	rbp, rbp
	lea	rsi, [rbp - 0x50]
	lea	rsi, [rsi]
	lea	r9, [rbp - 0x58]
	mov	rbp, rbp
	call	numbered_backup
	mov	edi, eax
	nop	
	mov	ecx, edi
	mov	rbp, rbp
	sub	eax, 3
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rcx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x84], eax
	lea	rsi, [rsi]
	ja	.label_894
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_899]]
	lea	rdi, [rdi]
	jmp	rcx
.label_1989:
	lea	rdi, [rdi]
	jmp	.label_894
.label_1990:
	nop	
	cmp	dword ptr [rbp - 0x1c], 2
	jne	.label_901
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 1
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x30]
	mov	rsi,  qword ptr [word ptr [simple_backup_suffix]]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	memcpy
.label_901:
	jmp	.label_893
.label_893:
	mov	rbp, rbp
	mov	edx, 0x7e
	lea	rdi, [rdi]
	lea	r8, [rbp - 0x68]
	nop	
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x5c]
	call	check_extension
	jmp	.label_894
.label_1991:
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xc
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 0
	jmp	.label_884
.label_894:
	lea	rdi, [rdi]
	jmp	.label_885
.label_885:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x1d], 1
	nop	
	jne	.label_886
	mov	rsp, rsp
	jmp	.label_887
.label_886:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_890
	nop	
	mov	dword ptr [rbp - 0x5c], 0xffffff9c
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], 0
.label_890:
	mov	edi, 0xffffff9c
	mov	eax, 1
	xor	ecx, ecx
	nop	
	cmp	dword ptr [rbp - 0x1c], 1
	lea	rsi, [rsi]
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x6c], eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x5c]
	mov	r8, qword ptr [rbp - 0x50]
	nop	
	add	r8, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rbp - 0x6c]
	mov	rsp, rsp
	mov	rcx, r8
	lea	rdi, [rdi]
	mov	r8d, eax
	lea	rdi, [rdi]
	call	renameatu
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_897
	mov	rbp, rbp
	jmp	.label_887
.label_897:
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x70], ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x70], 0x11
	lea	rsi, [rsi]
	je	.label_892
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_895
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	call	closedir
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x88], eax
.label_895:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x8c], eax
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x8c]
	mov	rsp, rsp
	mov	dword ptr [rax], ecx
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 0
	jmp	.label_884
.label_892:
	jmp	.label_889
.label_887:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_891
	mov	rdi, qword ptr [rbp - 0x58]
	call	closedir
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x90], eax
.label_891:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_884:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0xa0
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4108f0

	.globl numbered_backup
	.type numbered_backup, @function
numbered_backup:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0xc0
	nop	
	mov	rax, qword ptr [rbp + 0x10]
	nop	
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	qword ptr [rbp - 0x38], rax
	mov	dword ptr [rbp - 0x3c], 2
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x58], rax
	mov	qword ptr [rbp - 0x60], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 0x68]
	call	base_len
	nop	
	mov	qword ptr [rbp - 0x70], rax
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_920
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	call	rewinddir
	jmp	.label_903
.label_920:
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	cx, word ptr [rax]
	mov	word ptr [rbp - 0x72], cx
	mov	rdi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.2_1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xac], edx
	call	strcpy
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	edx, dword ptr [rbp - 0xac]
	mov	qword ptr [rbp - 0xb8], rax
	nop	
	call	opendirat
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_916
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	jne	.label_916
	mov	dword ptr [rbp - 0x3c], 3
.label_916:
	mov	rax, qword ptr [rbp - 0x68]
	mov	cx, word ptr [rbp - 0x72]
	nop	
	mov	word ptr [rax], cx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, qword ptr [rbp - 0x70]
	mov	edx, OFFSET FLAT:.str.3_2
	nop	
	mov	esi, edx
	mov	rdi, rax
	call	strcpy
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x48], 0
	mov	qword ptr [rbp - 0xc0], rax
	jne	.label_911
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_918
.label_911:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
.label_903:
	jmp	.label_912
.label_912:
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	readdir
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_910
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 0x13
	mov	rdi, rax
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x70]
	nop	
	add	rdi, 4
	lea	rsi, [rsi]
	cmp	rax, rdi
	jae	.label_906
	jmp	.label_912
.label_906:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	add	rcx, 0x13
	mov	rdx, qword ptr [rbp - 0x70]
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
	je	.label_919
	jmp	.label_912
.label_919:
	nop	
	mov	eax, 0x31
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rcx, 0x13
	add	rcx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	add	rcx, 2
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rcx
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx]
	lea	rsi, [rsi]
	cmp	eax, edx
	jg	.label_921
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x39
	lea	rdi, [rdi]
	jle	.label_913
.label_921:
	lea	rsi, [rsi]
	jmp	.label_912
.label_913:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x39
	lea	rsi, [rsi]
	sete	dl
	mov	rbp, rbp
	and	dl, 1
	nop	
	mov	byte ptr [rbp - 0x89], dl
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], 1
.label_909:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	nop	
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	sub	edx, 0x30
	lea	rdi, [rdi]
	cmp	edx, 9
	ja	.label_902
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	movsx	edx, byte ptr [rcx + rax]
	nop	
	cmp	edx, 0x39
	mov	rsp, rsp
	sete	sil
	nop	
	and	sil, 1
	lea	rsi, [rsi]
	movzx	edx, sil
	mov	sil, byte ptr [rbp - 0x89]
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
	mov	byte ptr [rbp - 0x89], sil
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	jmp	.label_909
.label_902:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x80]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x7e
	jne	.label_907
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	cmp	byte ptr [rcx + rax + 1], 0
	lea	rdi, [rdi]
	jne	.label_907
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x98]
	jb	.label_905
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x98]
	jne	.label_907
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x20]
	add	rax, 2
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x80]
	nop	
	mov	rdx, qword ptr [rbp - 0x98]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	call	memcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	nop	
	jle	.label_905
.label_907:
	jmp	.label_912
.label_905:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	dl, byte ptr [rbp - 0x89]
	mov	rbp, rbp
	and	dl, 1
	lea	rsi, [rsi]
	movzx	esi, dl
	mov	rbp, rbp
	mov	edi, esi
	add	rdi, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x60], rdi
	mov	dl, byte ptr [rbp - 0x89]
	test	dl, 1
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x3c], eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rdi, 2
	mov	rsp, rsp
	add	rdi, qword ptr [rbp - 0x60]
	add	rdi, 2
	mov	qword ptr [rbp - 0xa0], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	cmp	rdi, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	jae	.label_917
	movabs	rax, 0x3fffffffffffffff
	cmp	rax, qword ptr [rbp - 0xa0]
	nop	
	jb	.label_914
	mov	rax, qword ptr [rbp - 0xa0]
	nop	
	shl	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
.label_914:
	mov	rdi, qword ptr [rbp - 0x58]
	nop	
	mov	rsi, qword ptr [rbp - 0xa0]
	call	realloc
	nop	
	mov	qword ptr [rbp - 0xa8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xa8], 0
	jne	.label_908
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 3
	lea	rsi, [rsi]
	jmp	.label_918
.label_908:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
.label_917:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x88], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x88], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0x2e
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, rax
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], 0x7e
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	byte ptr [rax], 0x30
	mov	dl, byte ptr [rbp - 0x89]
	and	dl, 1
	movzx	esi, dl
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	movsxd	rcx, esi
	add	rax, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	add	rax, 2
	lea	rdi, [rdi]
	mov	rdx, rax
	nop	
	call	memcpy
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x88], rax
.label_915:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, rax
	add	rcx, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], rcx
	movsx	edx, byte ptr [rax - 1]
	cmp	edx, 0x39
	lea	rsi, [rsi]
	jne	.label_904
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	byte ptr [rax], 0x30
	lea	rdi, [rdi]
	jmp	.label_915
.label_904:
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	add	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [rax], cl
	jmp	.label_912
.label_910:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edx
.label_918:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410f20

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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], al
	mov	dword ptr [rbp - 0x18], ecx
	nop	
	mov	qword ptr [rbp - 0x20], r8
	mov	rdi, qword ptr [rbp - 8]
	call	last_component
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	call	base_len
	lea	rdi, [rdi]
	mov	ecx, 0xe
	mov	rbp, rbp
	mov	esi, ecx
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x38], 0xff
	cmp	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	jae	.label_927
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	mov	rsp, rsp
	jne	.label_922
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jge	.label_924
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	cx, word ptr [rax]
	lea	rsi, [rsi]
	mov	word ptr [rbp - 0x42], cx
	mov	rdi, qword ptr [rbp - 0x28]
	mov	edx, OFFSET FLAT:.str.2_1
	nop	
	mov	esi, edx
	call	strcpy
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	call	__errno_location
	mov	esi, 3
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	pathconf
	mov	qword ptr [rbp - 0x40], rax
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
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	sub	rdi, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rdi
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	cx, word ptr [rbp - 0x42]
	mov	word ptr [rax], cx
	nop	
	jmp	.label_929
.label_924:
	call	__errno_location
	lea	rdi, [rdi]
	mov	esi, 3
	mov	dword ptr [rax], 0
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	fpathconf
	mov	qword ptr [rbp - 0x40], rax
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
	mov	rdx, qword ptr [rbp - 0x40]
	sub	rdx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rdx
.label_929:
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x40]
	jg	.label_925
	cmp	qword ptr [rbp - 0x40], -1
	ja	.label_925
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_928
.label_925:
	lea	rdi, [rdi]
	mov	rax, -1
	lea	rdi, [rdi]
	mov	ecx, 0xe
	mov	edx, ecx
	cmp	qword ptr [rbp - 0x40], -1
	mov	rbp, rbp
	cmovl	rax, rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
.label_928:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_922:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
.label_927:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	jae	.label_923
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	sub	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	ja	.label_926
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
.label_926:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x11]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	byte ptr [rdx + rcx], al
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	byte ptr [rdx + rcx + 1], 0
.label_923:
	nop	
	add	rsp, 0x60
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4111a0

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
	.section	.text
	.align	32
	#Procedure 0x4111e0

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
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	dword ptr [rbp - 0x14], edx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	call	backupfile_internal
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jne	.label_930
	call	xalloc_die
.label_930:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411240

	.globl get_version
	.type get_version, @function
get_version:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
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
	mov	dword ptr [rbp - 4], 2
	jmp	.label_933
.label_932:
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:backup_args
	movabs	rax, OFFSET FLAT:backup_types
	lea	rdi, [rdi]
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rbp, rbp
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + backup_types]]
	mov	dword ptr [rbp - 4], r10d
.label_933:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4112f0

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
	.section	.text
	.align	32
	#Procedure 0x411390

	.globl buffer_lcm
	.type buffer_lcm, @function
buffer_lcm:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_942
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_940
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_938
.label_940:
	mov	eax, 0x2000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x58], rcx
	jmp	.label_938
.label_938:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_944
.label_942:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_936
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
.label_943:
	mov	rax, qword ptr [rbp - 0x38]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x50], rdx
	cmp	rdx, 0
	je	.label_947
	jmp	.label_945
.label_945:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_943
.label_947:
	mov	rax, qword ptr [rbp - 0x10]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	imul	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_941
	mov	rax, qword ptr [rbp - 0x30]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_941
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_937
.label_941:
	jmp	.label_936
.label_936:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_944:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_939
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_946
.label_939:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x60], rax
.label_946:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 8], rax
.label_937:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4114c0
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
	.section	.text
	.align	32
	#Procedure 0x4114f0

	.globl close_stdin
	.type close_stdin, @function
close_stdin:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	nop	
	mov	byte ptr [rbp - 1], 0
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	freadahead
	cmp	rax, 0
	jbe	.label_950
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
	jne	.label_951
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_951
	mov	byte ptr [rbp - 1], 1
.label_951:
	jmp	.label_950
.label_950:
	mov	rdi,  qword ptr [word ptr [stdin]]
	nop	
	call	close_stream
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_954
	mov	byte ptr [rbp - 1], 1
.label_954:
	test	byte ptr [rbp - 1], 1
	je	.label_948
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_8
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_952
	mov	rbp, rbp
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0x14], esi
	call	quotearg_colon
	lea	rsi, [rsi]
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str.1_6
	nop	
	mov	r8, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_949
.label_952:
	nop	
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_4
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_949:
	lea	rsi, [rsi]
	jmp	.label_948
.label_948:
	call	close_stdout
	test	byte ptr [rbp - 1], 1
	nop	
	je	.label_953
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	lea	rsi, [rsi]
	call	_exit
.label_953:
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x411660
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
	.section	.text
	.align	32
	#Procedure 0x411690
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
	.align	32
	#Procedure 0x4116c0

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
	je	.label_957
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_955
.label_957:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_9
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name_0]],  0
	je	.label_958
	nop	
	call	__errno_location
	nop	
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name_0]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str.1_6
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_959
.label_958:
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_4
	mov	esi, dword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_959:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_955:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_956
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_956:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4117f0

	.globl dir_name
	.type dir_name, @function
dir_name:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	mdir_name
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	jne	.label_960
	lea	rsi, [rsi]
	call	xalloc_die
.label_960:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411840

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 0
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_961
	xor	eax, eax
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	jmp	.label_964
.label_961:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x2f
	nop	
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x1c], eax
.label_964:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1c]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rcx
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	last_component
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	sub	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
.label_965:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x18]
	nop	
	jae	.label_966
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
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
	.section	.text
	.align	32
	#Procedure 0x411930

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	dir_len
	mov	rsp, rsp
	mov	cl, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	nop	
	mov	byte ptr [rbp - 0x29], cl
	je	.label_968
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	lea	rdi, [rdi]
	jmp	.label_968
.label_968:
	mov	al, byte ptr [rbp - 0x29]
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rbp - 0x19]
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
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_970
	nop	
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jmp	.label_967
.label_970:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcpy
	test	byte ptr [rbp - 0x19], 1
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
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0x2e
.label_969:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 8], rax
.label_967:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x411a50

	.globl last_component
	.type last_component, @function
last_component:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
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
	mov	qword ptr [rbp - 0x18], rax
.label_976:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_971
	mov	rax, qword ptr [rbp - 0x18]
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
	mov	rax, qword ptr [rbp - 0x18]
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
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_976
.label_971:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411b20

	.globl base_len
	.type base_len, @function
base_len:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
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
	mov	byte ptr [rbp - 0x19], cl
	mov	rsp, rsp
	jae	.label_979
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	nop	
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x19], sil
.label_979:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x19]
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
	.section	.text
	.align	32
	#Procedure 0x411be0

	.globl strip_trailing_slashes
	.type strip_trailing_slashes, @function
strip_trailing_slashes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	last_component
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_984
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
.label_984:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	call	base_len
	mov	rdi, qword ptr [rbp - 0x28]
	add	rdi, rax
	mov	qword ptr [rbp - 0x18], rdi
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	setne	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x19], dl
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax], 0
	mov	dl, byte ptr [rbp - 0x19]
	and	dl, 1
	movzx	eax, dl
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411c60

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x1c]
	call	posix_fadvise
	nop	
	mov	dword ptr [rbp - 0x20], eax
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411ca0
	.globl fadvise
	.type fadvise, @function
fadvise:

	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	je	.label_985
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	fileno
	xor	ecx, ecx
	mov	edi, ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	qword ptr [rbp - 0x18], rdi
	mov	edi, eax
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	call	fdadvise
.label_985:
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411d00

	.globl open_safer
	.type open_safer, @function
open_safer:
	mov	rsp, rsp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x1b0
	lea	rdi, [rdi]
	test	al, al
	movaps	xmmword ptr [rbp - 0xf0], xmm7
	movaps	xmmword ptr [rbp - 0x100], xmm6
	movaps	xmmword ptr [rbp - 0x110], xmm5
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x120], xmm4
	nop	
	movaps	xmmword ptr [rbp - 0x130], xmm3
	movaps	xmmword ptr [rbp - 0x140], xmm2
	movaps	xmmword ptr [rbp - 0x150], xmm1
	movaps	xmmword ptr [rbp - 0x160], xmm0
	mov	qword ptr [rbp - 0x168], rdi
	mov	qword ptr [rbp - 0x170], r9
	mov	qword ptr [rbp - 0x178], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x180], rcx
	nop	
	mov	qword ptr [rbp - 0x188], rdx
	mov	dword ptr [rbp - 0x18c], esi
	je	.label_986
	movaps	xmm0, xmmword ptr [rbp - 0x160]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xb0], xmm0
	mov	rbp, rbp
	movaps	xmm1, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm1
	mov	rsp, rsp
	movaps	xmm2, xmmword ptr [rbp - 0x140]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x90], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x80], xmm3
	lea	rsi, [rsi]
	movaps	xmm4, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x60], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm6
	lea	rsi, [rsi]
	movaps	xmm7, xmmword ptr [rbp - 0xf0]
	movaps	xmmword ptr [rbp - 0x40], xmm7
.label_986:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x180]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rsi, qword ptr [rbp - 0x188]
	nop	
	mov	qword ptr [rbp - 0xd0], rsi
	mov	edi, dword ptr [rbp - 0x18c]
	mov	r8, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 8], r8
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], 0
	mov	edi, dword ptr [rbp - 0xc]
	and	edi, 0x40
	mov	rbp, rbp
	cmp	edi, 0
	lea	rdi, [rdi]
	je	.label_987
	mov	rbp, rbp
	lea	rax, [rbp - 0x30]
	mov	rcx, rax
	nop	
	lea	rdx, [rbp - 0xe0]
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
	mov	qword ptr [rbp - 0x198], rax
	mov	dword ptr [rbp - 0x19c], esi
	mov	rsp, rsp
	ja	.label_989
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x19c]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x198]
	nop	
	add	rcx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1a8], rcx
	jmp	.label_988
.label_989:
	mov	rax, qword ptr [rbp - 0x198]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1a8], rdx
.label_988:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x30]
	mov	rsp, rsp
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_987:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x10]
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
	add	rsp, 0x1b0
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x411f80

	.globl record_file
	.type record_file, @function
record_file:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_990
	jmp	.label_992
.label_990:
	nop	
	mov	eax, 0x18
	mov	edi, eax
	call	xmalloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	xstrdup
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x10], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	call	hash_insert
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_991
	mov	rbp, rbp
	call	xalloc_die
.label_991:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
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
	.section	.text
	.align	32
	#Procedure 0x412060

	.globl seen_file
	.type seen_file, @function
seen_file:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_993
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_994
.label_993:
	lea	rax, [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rdi, qword ptr [rbp - 0x10]
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
	mov	byte ptr [rbp - 1], dl
.label_994:
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	lea	rdi, [rdi]
	add	rsp, 0x40
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x412100

	.globl strmode
	.type strmode, @function
strmode:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 4]
	mov	rbp, rbp
	call	ftypelet
	mov	edi, 0x2d
	mov	ecx, 0x77
	lea	rdi, [rdi]
	mov	edx, 0x72
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	byte ptr [rsi], al
	mov	rbp, rbp
	mov	r8d, dword ptr [rbp - 4]
	and	r8d, 0x100
	cmp	r8d, 0
	nop	
	mov	r8d, edi
	cmovne	r8d, edx
	mov	al, r8b
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi + 1], al
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	and	edx, 0x80
	mov	rbp, rbp
	cmp	edx, 0
	lea	rdi, [rdi]
	cmovne	edi, ecx
	mov	al, dil
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi + 2], al
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 4]
	and	ecx, 0x800
	mov	rbp, rbp
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_996
	mov	eax, 0x53
	mov	ecx, 0x73
	mov	edx, dword ptr [rbp - 4]
	mov	rsp, rsp
	and	edx, 0x40
	mov	rbp, rbp
	cmp	edx, 0
	nop	
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	jmp	.label_997
.label_996:
	lea	rsi, [rsi]
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 4]
	and	edx, 0x40
	cmp	edx, 0
	cmovne	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x14], eax
.label_997:
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, 0x2d
	lea	rsi, [rsi]
	mov	edx, 0x77
	mov	esi, 0x72
	mov	dil, al
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 3], dil
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	and	eax, 0x20
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rbp, rbp
	mov	eax, ecx
	lea	rdi, [rdi]
	cmovne	eax, esi
	mov	dil, al
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 4], dil
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	and	eax, 0x10
	lea	rdi, [rdi]
	cmp	eax, 0
	cmovne	ecx, edx
	mov	dil, cl
	nop	
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 5], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 0x400
	cmp	eax, 0
	je	.label_999
	mov	eax, 0x53
	mov	rsp, rsp
	mov	ecx, 0x73
	mov	edx, dword ptr [rbp - 4]
	and	edx, 8
	nop	
	cmp	edx, 0
	lea	rsi, [rsi]
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x18], eax
	lea	rsi, [rsi]
	jmp	.label_1000
.label_999:
	nop	
	mov	eax, 0x2d
	mov	rsp, rsp
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	and	edx, 8
	lea	rsi, [rsi]
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x18], eax
.label_1000:
	mov	eax, dword ptr [rbp - 0x18]
	nop	
	mov	ecx, 0x2d
	mov	edx, 0x77
	mov	esi, 0x72
	mov	dil, al
	nop	
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 6], dil
	nop	
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	and	eax, 4
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	mov	eax, ecx
	lea	rdi, [rdi]
	cmovne	eax, esi
	mov	dil, al
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 7], dil
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	and	eax, 2
	cmp	eax, 0
	cmovne	ecx, edx
	mov	rbp, rbp
	mov	dil, cl
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 8], dil
	mov	eax, dword ptr [rbp - 4]
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
	mov	edx, dword ptr [rbp - 4]
	and	edx, 1
	mov	rsp, rsp
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	jmp	.label_998
.label_995:
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 4]
	and	edx, 1
	cmp	edx, 0
	nop	
	cmovne	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x1c], eax
.label_998:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 9], cl
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 0xa], 0x20
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	byte ptr [rdx + 0xb], 0
	mov	rsp, rsp
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4123a0

	.globl ftypelet
	.type ftypelet, @function
ftypelet:
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	mov	dword ptr [rbp - 8], edi
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 8]
	and	edi, 0xf000
	lea	rdi, [rdi]
	cmp	edi, 0x8000
	jne	.label_1001
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0x2d
	jmp	.label_1002
.label_1001:
	mov	eax, dword ptr [rbp - 8]
	nop	
	and	eax, 0xf000
	cmp	eax, 0x4000
	lea	rsi, [rsi]
	jne	.label_1004
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0x64
	nop	
	jmp	.label_1002
.label_1004:
	mov	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	and	eax, 0xf000
	cmp	eax, 0x6000
	jne	.label_1007
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0x62
	nop	
	jmp	.label_1002
.label_1007:
	mov	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	and	eax, 0xf000
	cmp	eax, 0x2000
	jne	.label_1006
	mov	byte ptr [rbp - 1], 0x63
	jmp	.label_1002
.label_1006:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	mov	rbp, rbp
	cmp	eax, 0xa000
	nop	
	jne	.label_1005
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0x6c
	jmp	.label_1002
.label_1005:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	nop	
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0x1000
	jne	.label_1008
	mov	byte ptr [rbp - 1], 0x70
	mov	rbp, rbp
	jmp	.label_1002
.label_1008:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	and	eax, 0xf000
	mov	rsp, rsp
	cmp	eax, 0xc000
	jne	.label_1003
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0x73
	lea	rsi, [rsi]
	jmp	.label_1002
.label_1003:
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0x3f
.label_1002:
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rbp - 1]
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4124c0
	.globl filemodestring
	.type filemodestring, @function
filemodestring:

	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsi + 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	call	strmode
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, dword ptr [rsi + 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	sub	edi, dword ptr [rsi + 0x18]
	lea	rsi, [rsi]
	cmp	edi, 0
	je	.label_1014
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], 0x46
	jmp	.label_1010
.label_1014:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_1012
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	byte ptr [rax], 0x51
	jmp	.label_1009
.label_1012:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	ecx, dword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_1013
	nop	
	mov	rax, qword ptr [rbp - 0x10]
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
	.section	.text
	.align	32
	#Procedure 0x4125a0

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
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	call	mfile_name_concat
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	jne	.label_1015
	lea	rsi, [rsi]
	call	xalloc_die
.label_1015:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x412610

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	last_component
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	base_len
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	sub	rax, rdx
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	mov	qword ptr [rbp - 0x40], rax
	mov	byte ptr [rbp - 0x41], 0
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1021
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
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
	mov	byte ptr [rbp - 0x41], 0x2f
.label_1018:
	jmp	.label_1017
.label_1021:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_1019
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x41], 0x2e
.label_1019:
	jmp	.label_1017
.label_1017:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rbp - 0x41]
	nop	
	cmp	ecx, 0
	setne	dl
	lea	rdi, [rdi]
	and	dl, 1
	movzx	ecx, dl
	movsxd	rsi, ecx
	add	rax, rsi
	add	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	lea	rdi, [rdi]
	mov	rdi, rax
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_1022
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jmp	.label_1016
.label_1022:
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x38]
	nop	
	call	mempcpy
	mov	qword ptr [rbp - 0x58], rax
	nop	
	mov	cl, byte ptr [rbp - 0x41]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], cl
	movsx	r8d, byte ptr [rbp - 0x41]
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
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_1020
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rcx], rax
.label_1020:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	call	mempcpy
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], 0
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
.label_1016:
	nop	
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4127f0

	.globl full_write
	.type full_write, @function
full_write:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rdx
.label_1023:
	cmp	qword ptr [rbp - 0x18], 0
	jbe	.label_1025
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	call	safe_write
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1026
	jmp	.label_1025
.label_1026:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1024
	call	__errno_location
	mov	dword ptr [rax], 0x1c
	jmp	.label_1025
.label_1024:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_1023
.label_1025:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4128a0

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
	.section	.text
	.align	32
	#Procedure 0x4128c0

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
	.section	.text
	.align	32
	#Procedure 0x4128e0

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
	.section	.text
	.align	32
	#Procedure 0x412900

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
.label_1032:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	jae	.label_1027
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1029
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], 1
.label_1033:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1028
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	nop	
	jmp	.label_1033
.label_1028:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	jbe	.label_1030
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
.label_1030:
	jmp	.label_1029
.label_1029:
	mov	rbp, rbp
	jmp	.label_1031
.label_1031:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1032
.label_1027:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4129e0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
.label_1034:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jae	.label_1039
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_1038
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_1035:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1036
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_1035
.label_1036:
	jmp	.label_1038
.label_1038:
	jmp	.label_1041
.label_1041:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_1034
.label_1039:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	jne	.label_1040
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_1040
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1037
.label_1040:
	mov	byte ptr [rbp - 1], 0
.label_1037:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x412b10
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
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	call	hash_get_n_entries
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	hash_get_n_buckets
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	hash_get_n_buckets_used
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	hash_get_max_bucket_length
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
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
	mov	byte ptr [rbp - 0x39], r8b
	call	fprintf
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	ecx, OFFSET FLAT:.str.1_7
	mov	esi, ecx
	mov	r8b, byte ptr [rbp - 0x39]
	mov	dword ptr [rbp - 0x40], eax
	mov	al, r8b
	mov	rsp, rsp
	call	fprintf
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
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
	movq	xmm0, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	punpckldq	xmm0, xmm1
	subpd	xmm0, xmm2
	pshufd	xmm1, xmm0, 0x4e
	mov	rbp, rbp
	addpd	xmm1, xmm0
	mov	rbp, rbp
	divsd	xmm3, xmm1
	mov	rsi, qword ptr [rbp - 0x38]
	nop	
	movaps	xmm0, xmm3
	mov	dword ptr [rbp - 0x44], eax
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	call	fprintf
	movabs	rsi, OFFSET FLAT:.str.3_3
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x48], eax
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
	add	rsp, 0x50
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x412c90

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	call	safe_hasher
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	jne	.label_1051
	mov	qword ptr [rbp - 8], 0
	nop	
	jmp	.label_1049
.label_1051:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_1048:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1046
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	je	.label_1045
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rcx]
	nop	
	call	rax
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1045
	mov	rsp, rsp
	jmp	.label_1047
.label_1045:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1049
.label_1047:
	nop	
	jmp	.label_1050
.label_1050:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1048
.label_1046:
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
.label_1049:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412d80

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 0x30]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	nop	
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
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
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	shl	rcx, 4
	nop	
	add	rax, rcx
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412e10
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
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1056
.label_1053:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
.label_1055:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jb	.label_1054
	lea	rsi, [rsi]
	call	abort
.label_1054:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_1057
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1056
.label_1057:
	jmp	.label_1058
.label_1058:
	nop	
	jmp	.label_1059
.label_1059:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1055
.label_1056:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x412ed0
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	call	safe_hasher
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x28], rax
.label_1063:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax]
	nop	
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_1061
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], 0
	je	.label_1061
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1065
.label_1061:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	jne	.label_1063
	jmp	.label_1060
.label_1060:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1064
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_1062
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_1065
.label_1062:
	jmp	.label_1060
.label_1064:
	mov	qword ptr [rbp - 8], 0
.label_1065:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412fd0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	nop
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	mov	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x30], rdx
.label_1070:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jae	.label_1066
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	nop	
	je	.label_1068
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
.label_1067:
	cmp	qword ptr [rbp - 0x38], 0
	nop	
	je	.label_1073
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_1069
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1072
.label_1069:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdx, rcx
	add	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_1067
.label_1073:
	lea	rsi, [rsi]
	jmp	.label_1068
.label_1068:
	jmp	.label_1071
.label_1071:
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	jmp	.label_1070
.label_1066:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1072:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4130e0
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], 0
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x30], rdx
.label_1079:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jae	.label_1078
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_1075
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
.label_1077:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1081
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rcx]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	call	rax
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_1076
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1080
.label_1076:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1077
.label_1081:
	mov	rbp, rbp
	jmp	.label_1075
.label_1075:
	nop	
	jmp	.label_1074
.label_1074:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1079
.label_1078:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1080:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4131f0
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
	.section	.text
	.align	32
	#Procedure 0x413260
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
	.section	.text
	.align	32
	#Procedure 0x4132b0

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], r8
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1092
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:raw_hasher
	mov	qword ptr [rbp - 0x20], rax
.label_1092:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1094
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:raw_comparator
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
.label_1094:
	mov	eax, 0x50
	mov	rsp, rsp
	mov	edi, eax
	mov	rsp, rsp
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1091
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1087
.label_1091:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1089
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x18], rax
.label_1089:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	call	check_tuning
	test	al, 1
	mov	rbp, rbp
	jne	.label_1086
	jmp	.label_1088
.label_1086:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	compute_bucket_size
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	jne	.label_1090
	mov	rsp, rsp
	jmp	.label_1088
.label_1090:
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
	jne	.label_1093
	jmp	.label_1088
.label_1093:
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
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x48], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_1087
.label_1088:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 0
.label_1087:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4134d0

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
	.section	.text
	.align	32
	#Procedure 0x413520

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	cmp	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	sete	al
	nop	
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413550

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
	jne	.label_1098
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1095
.label_1098:
	movss	xmm0,  dword ptr [dword ptr [label_1096]]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_1097
	mov	rsp, rsp
	movss	xmm0,  dword ptr [dword ptr [label_1099]]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	mov	rsp, rsp
	subss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	jbe	.label_1097
	nop	
	movss	xmm0,  dword ptr [dword ptr [label_1099]]
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
	movss	xmm0,  dword ptr [dword ptr [label_1099]]
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
	jmp	.label_1095
.label_1097:
	nop	
	movabs	rax, OFFSET FLAT:default_tuning
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x28], rax
	mov	byte ptr [rbp - 1], 0
.label_1095:
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4136c0

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	test	byte ptr [rsi + 0x10], 1
	mov	rbp, rbp
	jne	.label_1100
	lea	rsi, [rsi]
	movss	xmm0,  dword ptr [dword ptr [label_1101]]
	mov	rax, qword ptr [rbp - 0x10]
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
	movss	dword ptr [rbp - 0x20], xmm0
	movss	dword ptr [rbp - 0x24], xmm2
	lea	rdi, [rdi]
	movss	dword ptr [rbp - 0x28], xmm1
	mov	rbp, rbp
	js	.label_1102
	movss	xmm0, dword ptr [rbp - 0x24]
	movss	dword ptr [rbp - 0x28], xmm0
.label_1102:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x18]
	divss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	xmm1, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	ucomiss	xmm0, xmm1
	lea	rdi, [rdi]
	jb	.label_1106
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1104
.label_1106:
	nop	
	movss	xmm0, dword ptr [rbp - 0x1c]
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
	mov	qword ptr [rbp - 0x10], rax
.label_1100:
	mov	rdi, qword ptr [rbp - 0x10]
	call	next_prime
	lea	rsi, [rsi]
	movabs	rdi, 0xfffffffffffffff
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	cmp	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_1103
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1104
.label_1103:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_1104:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x413830
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
.label_1113:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jae	.label_1112
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_1109
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
.label_1107:
	cmp	qword ptr [rbp - 0x18], 0
	nop	
	je	.label_1110
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x40], 0
	lea	rdi, [rdi]
	je	.label_1114
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rcx]
	call	rax
.label_1114:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1107
.label_1110:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1111
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx]
	nop	
	call	rax
.label_1111:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
.label_1109:
	jmp	.label_1108
.label_1108:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1113
.label_1112:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], 0
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 0
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4139a0

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
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x40], 0
	lea	rdi, [rdi]
	je	.label_1117
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], 0
	lea	rsi, [rsi]
	je	.label_1117
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
.label_1124:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jae	.label_1126
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	je	.label_1116
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_1120:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1122
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	call	rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_1120
.label_1122:
	jmp	.label_1116
.label_1116:
	jmp	.label_1127
.label_1127:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1124
.label_1126:
	jmp	.label_1117
.label_1117:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_1125:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1118
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_1119:
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	je	.label_1121
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1119
.label_1121:
	jmp	.label_1128
.label_1128:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1125
.label_1118:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x48]
	nop	
	mov	qword ptr [rbp - 0x18], rax
.label_1115:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1123
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1115
.label_1123:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413b90

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	call	compute_bucket_size
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x78], 0
	nop	
	jne	.label_1129
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1130
.label_1129:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_1132
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	jmp	.label_1130
.label_1132:
	nop	
	mov	eax, 0x10
	mov	esi, eax
	mov	rsp, rsp
	lea	rcx, [rbp - 0x68]
	mov	qword ptr [rbp - 0x70], rcx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x78]
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
	jne	.label_1134
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
	mov	rsp, rsp
	jmp	.label_1130
.label_1134:
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
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
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x38], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	call	transfer_entries
	test	al, 1
	mov	rbp, rbp
	jne	.label_1133
	lea	rsi, [rsi]
	jmp	.label_1137
.label_1133:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x18], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x48], rax
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1130
.label_1137:
	mov	rsp, rsp
	mov	edx, 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	rax, qword ptr [rax + 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	transfer_entries
	test	al, 1
	jne	.label_1135
	mov	rbp, rbp
	jmp	.label_1136
.label_1135:
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	call	transfer_entries
	nop	
	test	al, 1
	jne	.label_1131
.label_1136:
	call	abort
.label_1131:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	nop	
	mov	byte ptr [rbp - 1], 0
.label_1130:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x80
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413e60

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, dl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x19], al
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
.label_1149:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1140
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_1147
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
.label_1143:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1139
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x40]
	call	safe_hasher
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	nop	
	je	.label_1151
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rcx + 8], rax
	jmp	.label_1142
.label_1151:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 0x18]
	mov	rsp, rsp
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	call	free_entry
.label_1142:
	mov	rbp, rbp
	jmp	.label_1138
.label_1138:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1143
.label_1139:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rax + 8], 0
	test	byte ptr [rbp - 0x19], 1
	mov	rbp, rbp
	je	.label_1146
	jmp	.label_1148
.label_1146:
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x40]
	nop	
	call	safe_hasher
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax], 0
	nop	
	je	.label_1144
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	allocate_entry
	mov	qword ptr [rbp - 0x50], rax
	nop	
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_1150
	mov	byte ptr [rbp - 1], 0
	mov	rbp, rbp
	jmp	.label_1141
.label_1150:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	jmp	.label_1145
.label_1144:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
.label_1145:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rax], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	add	rcx, -1
	mov	rbp, rbp
	mov	qword ptr [rax + 0x18], rcx
.label_1147:
	jmp	.label_1148
.label_1148:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rax, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_1149
.label_1140:
	mov	byte ptr [rbp - 1], 1
.label_1141:
	mov	al, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x50
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4140f0

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1165
	lea	rsi, [rsi]
	call	abort
.label_1165:
	mov	rbp, rbp
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	hash_find_entry
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_1170
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1167
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1167:
	nop	
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1160
.label_1170:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
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
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rcx
	movss	dword ptr [rbp - 0x5c], xmm1
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x60], xmm0
	js	.label_1152
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_1152:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x58]
	shr	rcx, 1
	nop	
	mov	rdx, qword ptr [rbp - 0x58]
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
	movss	dword ptr [rbp - 0x64], xmm0
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x68], xmm1
	movss	dword ptr [rbp - 0x6c], xmm3
	movss	dword ptr [rbp - 0x70], xmm2
	mov	rsp, rsp
	js	.label_1163
	movss	xmm0, dword ptr [rbp - 0x6c]
	nop	
	movss	dword ptr [rbp - 0x70], xmm0
.label_1163:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0x70]
	movss	xmm1, dword ptr [rbp - 0x68]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm0, xmm1
	jbe	.label_1159
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	check_tuning
	mov	rdi, qword ptr [rbp - 0x10]
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
	mov	byte ptr [rbp - 0x71], al
	nop	
	mov	qword ptr [rbp - 0x80], rdi
	nop	
	mov	qword ptr [rbp - 0x88], rcx
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x8c], xmm1
	mov	rbp, rbp
	movss	dword ptr [rbp - 0x90], xmm0
	js	.label_1156
	movss	xmm0, dword ptr [rbp - 0x8c]
	nop	
	movss	dword ptr [rbp - 0x90], xmm0
.label_1156:
	movss	xmm0, dword ptr [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x88]
	shr	rcx, 1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x88]
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
	movss	dword ptr [rbp - 0x94], xmm0
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0x98], xmm1
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0x9c], xmm3
	movss	dword ptr [rbp - 0xa0], xmm2
	js	.label_1157
	lea	rdi, [rdi]
	movss	xmm0, dword ptr [rbp - 0x9c]
	movss	dword ptr [rbp - 0xa0], xmm0
.label_1157:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	mulss	xmm1, xmm0
	lea	rsi, [rsi]
	movss	xmm0, dword ptr [rbp - 0x94]
	ucomiss	xmm0, xmm1
	nop	
	jbe	.label_1155
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x10], 1
	mov	rsp, rsp
	je	.label_1154
	nop	
	mov	rax, qword ptr [rbp - 0x10]
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
	movss	dword ptr [rbp - 0xa4], xmm1
	movss	dword ptr [rbp - 0xa8], xmm0
	nop	
	js	.label_1162
	movss	xmm0, dword ptr [rbp - 0xa4]
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1162:
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xac], xmm0
	mov	rbp, rbp
	jmp	.label_1169
.label_1154:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
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
	movss	dword ptr [rbp - 0xb0], xmm1
	nop	
	movss	dword ptr [rbp - 0xb4], xmm0
	lea	rdi, [rdi]
	js	.label_1164
	movss	xmm0, dword ptr [rbp - 0xb0]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0xb4], xmm0
.label_1164:
	movss	xmm0, dword ptr [rbp - 0xb4]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 8]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xac], xmm0
.label_1169:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xac]
	lea	rdi, [rdi]
	movss	xmm1,  dword ptr [dword ptr [label_1101]]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x3c], xmm0
	movss	xmm0, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	lea	rsi, [rsi]
	jb	.label_1153
	mov	dword ptr [rbp - 4], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_1160
.label_1153:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x3c]
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
	jne	.label_1158
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1160
.label_1158:
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1168
	call	abort
.label_1168:
	jmp	.label_1155
.label_1155:
	lea	rdi, [rdi]
	jmp	.label_1159
.label_1159:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1161
	mov	rdi, qword ptr [rbp - 0x10]
	call	allocate_entry
	nop	
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x48], 0
	mov	rsp, rsp
	jne	.label_1166
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_1160
.label_1166:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, 1
	mov	qword ptr [rax + 0x20], rcx
	mov	dword ptr [rbp - 4], 1
	lea	rdi, [rdi]
	jmp	.label_1160
.label_1161:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], rcx
	mov	dword ptr [rbp - 4], 1
.label_1160:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xc0
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4146c0

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, cl
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	safe_hasher
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx], rax
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	jne	.label_1182
	nop	
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1172
.label_1182:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx]
	je	.label_1176
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x38]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rcx]
	nop	
	call	rax
	mov	rsp, rsp
	test	al, 1
	jne	.label_1176
	jmp	.label_1179
.label_1176:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x21], 1
	mov	rsp, rsp
	je	.label_1174
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_1171
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax], rdx
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	free_entry
	nop	
	jmp	.label_1177
.label_1171:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
.label_1177:
	jmp	.label_1174
.label_1174:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1172
.label_1179:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_1178:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_1183
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	je	.label_1175
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx]
	nop	
	call	rax
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1175
	lea	rsi, [rsi]
	jmp	.label_1180
.label_1175:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_1181
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	call	free_entry
.label_1181:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1172
.label_1180:
	mov	rbp, rbp
	jmp	.label_1173
.label_1173:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_1178
.label_1183:
	mov	qword ptr [rbp - 8], 0
.label_1172:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x414900

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
	.section	.text
	.align	32
	#Procedure 0x414980

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	lea	rdx, [rbp - 0x18]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	call	hash_insert_if_absent
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1c], -1
	lea	rdi, [rdi]
	jne	.label_1188
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	jmp	.label_1186
.label_1188:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1c], 0
	lea	rsi, [rsi]
	jne	.label_1189
	nop	
	mov	rax, qword ptr [rbp - 0x18]
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
	mov	qword ptr [rbp - 0x28], rax
.label_1186:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414a20

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	lea	rdx, [rbp - 0x28]
	nop	
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	hash_find_entry
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1194
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1201
.label_1194:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, -1
	nop	
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	jne	.label_1193
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	dec	rcx
	mov	qword ptr [rax + 0x18], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
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
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rcx
	movss	dword ptr [rbp - 0x5c], xmm1
	movss	dword ptr [rbp - 0x60], xmm0
	lea	rsi, [rsi]
	js	.label_1195
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_1195:
	movss	xmm0, dword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x58]
	shr	rcx, 1
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x58]
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
	movss	dword ptr [rbp - 0x64], xmm0
	movss	dword ptr [rbp - 0x68], xmm1
	movss	dword ptr [rbp - 0x6c], xmm3
	lea	rdi, [rdi]
	movss	dword ptr [rbp - 0x70], xmm2
	lea	rsi, [rsi]
	js	.label_1190
	movss	xmm0, dword ptr [rbp - 0x6c]
	movss	dword ptr [rbp - 0x70], xmm0
.label_1190:
	movss	xmm0, dword ptr [rbp - 0x70]
	mov	rsp, rsp
	movss	xmm1, dword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm1, xmm0
	jbe	.label_1191
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	check_tuning
	mov	rdi, qword ptr [rbp - 0x10]
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
	mov	byte ptr [rbp - 0x71], al
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rdi
	mov	qword ptr [rbp - 0x88], rcx
	movss	dword ptr [rbp - 0x8c], xmm1
	movss	dword ptr [rbp - 0x90], xmm0
	nop	
	js	.label_1202
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	dword ptr [rbp - 0x90], xmm0
.label_1202:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rax + 0x28]
	nop	
	movss	xmm1, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x88]
	shr	rcx, 1
	nop	
	mov	rdx, qword ptr [rbp - 0x88]
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
	movss	dword ptr [rbp - 0x94], xmm0
	movss	dword ptr [rbp - 0x98], xmm1
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x9c], xmm3
	movss	dword ptr [rbp - 0xa0], xmm2
	js	.label_1198
	movss	xmm0, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0xa0], xmm0
.label_1198:
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x94]
	mov	rbp, rbp
	ucomiss	xmm1, xmm0
	jbe	.label_1197
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x28]
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x10], 1
	je	.label_1196
	mov	rax, qword ptr [rbp - 0x10]
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
	movss	dword ptr [rbp - 0xa4], xmm1
	nop	
	movss	dword ptr [rbp - 0xa8], xmm0
	lea	rsi, [rsi]
	js	.label_1204
	movss	xmm0, dword ptr [rbp - 0xa4]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1204:
	lea	rdi, [rdi]
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mulss	xmm0, dword ptr [rax + 4]
	movss	dword ptr [rbp - 0xac], xmm0
	jmp	.label_1192
.label_1196:
	mov	rax, qword ptr [rbp - 0x10]
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
	movss	dword ptr [rbp - 0xb0], xmm1
	movss	dword ptr [rbp - 0xb4], xmm0
	js	.label_1205
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xb0]
	movss	dword ptr [rbp - 0xb4], xmm0
.label_1205:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xb4]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 4]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mulss	xmm0, dword ptr [rax + 8]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0xac], xmm0
.label_1192:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xac]
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
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	call	hash_rehash
	test	al, 1
	jne	.label_1200
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x40], rax
.label_1203:
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_1199
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1203
.label_1199:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x48], 0
.label_1200:
	lea	rsi, [rsi]
	jmp	.label_1197
.label_1197:
	jmp	.label_1191
.label_1191:
	nop	
	jmp	.label_1193
.label_1193:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1201:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414ef0

	.globl next_prime
	.type next_prime, @function
next_prime:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0xa
	jae	.label_1206
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0xa
.label_1206:
	mov	rax, qword ptr [rbp - 8]
	or	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_1210:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	rdx, -1
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 9], cl
	mov	rbp, rbp
	je	.label_1208
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	is_prime
	nop	
	xor	al, 0xff
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], al
.label_1208:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 9]
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1209
	jmp	.label_1207
.label_1209:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 2
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_1210
.label_1207:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414fa0

	.globl is_prime
	.type is_prime, @function
is_prime:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], 3
	mov	rdi, qword ptr [rbp - 0x10]
	imul	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
.label_1212:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 0x19], cl
	mov	rbp, rbp
	jae	.label_1211
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	div	qword ptr [rbp - 0x10]
	cmp	rdx, 0
	setne	sil
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x19], sil
.label_1211:
	mov	al, byte ptr [rbp - 0x19]
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1214
	jmp	.label_1213
.label_1214:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 2
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_1212
.label_1213:
	xor	eax, eax
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x20], eax
	mov	rsp, rsp
	mov	rax, rdx
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, esi
	mov	rsp, rsp
	div	qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rdx, 0
	mov	esi, dword ptr [rbp - 0x20]
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
	.section	.text
	.align	32
	#Procedure 0x4150a0

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
	.section	.text
	.align	32
	#Procedure 0x4150f0

	.globl triple_hash
	.type triple_hash, @function
triple_hash:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	hash_pjw
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	xor	rax, qword ptr [rsi + 8]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	mov	rsp, rsp
	div	qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, rdx
	nop	
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415160

	.globl triple_hash_no_name
	.type triple_hash_no_name, @function
triple_hash_no_name:
	nop
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rsi + 8]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, rdx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4151a0

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
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 8]
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rdi + 8]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_1215
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_1215
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	same_name
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x21], al
.label_1215:
	mov	al, byte ptr [rbp - 0x21]
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
	.section	.text
	.align	32
	#Procedure 0x415260
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
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	cmp	rsi, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x21], cl
	lea	rsi, [rsi]
	jne	.label_1216
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x21], cl
	lea	rdi, [rdi]
	jne	.label_1216
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0x21], cl
.label_1216:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x21]
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
	.section	.text
	.align	32
	#Procedure 0x415340

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
	.section	.text
	.align	32
	#Procedure 0x415390

	.globl opendirat
	.type opendirat, @function
opendirat:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 0xc], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	mov	edx, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	or	edx, 0x90900
	mov	dword ptr [rbp - 0x2c], edx
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x2c]
	mov	al, 0
	lea	rsi, [rsi]
	call	openat_safer
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x30], eax
	cmp	dword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	jge	.label_1219
	nop	
	mov	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jmp	.label_1218
.label_1219:
	mov	edi, dword ptr [rbp - 0x30]
	call	fdopendir
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x38], 0
	lea	rsi, [rsi]
	je	.label_1217
	nop	
	mov	eax, dword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dword ptr [rcx], eax
	jmp	.label_1220
.label_1217:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], ecx
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x30]
	call	close
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x40], eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], ecx
	nop	
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x44]
	mov	dword ptr [rax], ecx
.label_1220:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
.label_1218:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415490

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
	jne	.label_1223
	movabs	rdi, OFFSET FLAT:.str_11
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	call	abort
.label_1223:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1221
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1225
.label_1221:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_1225:
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
	jl	.label_1224
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_8
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
	jne	.label_1224
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.2_5
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
	jne	.label_1222
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_1222:
	jmp	.label_1224
.label_1224:
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
	.align	32
	#Procedure 0x415610

	.globl qcopy_acl
	.type qcopy_acl, @function
qcopy_acl:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	lea	rax, [rbp - 0x30]
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], ecx
	mov	dword ptr [rbp - 0x28], r8d
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x14]
	mov	edx, dword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, rax
	call	get_permissions
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	je	.label_1226
	mov	dword ptr [rbp - 4], 0xfffffffe
	nop	
	jmp	.label_1227
.label_1226:
	lea	rdi, [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x24]
	call	set_permissions
	lea	rdi, [rbp - 0x30]
	mov	dword ptr [rbp - 0x34], eax
	call	free_permission_context
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
.label_1227:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4156b0

	.globl qset_acl
	.type qset_acl, @function
qset_acl:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	rsp, rsp
	lea	rax, [rbp - 0x18]
	xor	ecx, ecx
	mov	r8d, 4
	mov	rsp, rsp
	mov	r9d, r8d
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	rdi, rax
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	call	memset
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rbp - 0x18], ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	call	set_permissions
	lea	rdi, [rbp - 0x18]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	call	free_permission_context
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x415730
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
	je	.label_1228
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_1229
.label_1228:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_1229
.label_1229:
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
	.align	32
	#Procedure 0x4157e0
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
	je	.label_1230
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_1231
.label_1230:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1231
.label_1231:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415840
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
	je	.label_1232
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1233
.label_1232:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_1233
.label_1233:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4158a0

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
	je	.label_1234
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_1235
.label_1234:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_1235
.label_1235:
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
	.align	32
	#Procedure 0x4159a0
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
	jne	.label_1236
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_1236:
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
	.align	32
	#Procedure 0x415a00

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
	jne	.label_1237
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_1237:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 0x10], 0
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
	.align	32
	#Procedure 0x415aa0
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
	je	.label_1240
	mov	rax, qword ptr [rbp - 0x28]
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
	.align	32
	#Procedure 0x415ba0

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
.label_1410:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_1268
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1272]]
	jmp	rcx
.label_2019:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_2018:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_1278
	jmp	.label_1281
.label_1281:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_1299
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1299:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_1278
.label_1278:
	movabs	rax, OFFSET FLAT:.str.10_1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_1293
.label_2020:
	nop	
	mov	byte ptr [rbp - 0x79], 1
	nop	
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_1293
.label_2021:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_1303
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.11_1
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	call	gettext_quote
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.12_1
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_1303:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_1318
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_1342:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_1326
	jmp	.label_1329
.label_1329:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_1331
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_1331:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1338
.label_1338:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1342
.label_1326:
	mov	rbp, rbp
	jmp	.label_1318
.label_1318:
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
	jmp	.label_1293
.label_2016:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x79], 1
.label_2015:
	mov	byte ptr [rbp - 0x7b], 1
.label_2017:
	nop	
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_1357
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
.label_1357:
	jmp	.label_1360
.label_1360:
	mov	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1362
	jmp	.label_1367
.label_1367:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_1388
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1388:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1362
.label_1362:
	movabs	rax, OFFSET FLAT:.str.12_1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	mov	rsp, rsp
	jmp	.label_1293
.label_2014:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_1293
.label_1268:
	call	abort
.label_1293:
	mov	qword ptr [rbp - 0x58], 0
.label_1359:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1389
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
	jmp	.label_1390
.label_1389:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], edx
.label_1390:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1405
	mov	rbp, rbp
	jmp	.label_1413
.label_1405:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x81], 0
	nop	
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_1256
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	je	.label_1256
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_1256
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	lea	rsi, [rsi]
	jne	.label_1314
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_1314
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_1436
.label_1314:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_1436:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_1256
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
	jne	.label_1256
	nop	
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	je	.label_1259
	jmp	.label_1255
.label_1259:
	nop	
	mov	byte ptr [rbp - 0x81], 1
.label_1256:
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
	ja	.label_1263
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1274]]
	nop	
	jmp	rcx
.label_2034:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	je	.label_1276
	mov	rsp, rsp
	jmp	.label_1280
.label_1280:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1284
	jmp	.label_1255
.label_1284:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x82], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1286
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7c], 1
	mov	rbp, rbp
	jne	.label_1286
	nop	
	jmp	.label_1422
.label_1422:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1294
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_1294:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1302
.label_1302:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_1308
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_1308:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_1315
.label_1315:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1324
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1324:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1286:
	lea	rsi, [rsi]
	jmp	.label_1347
.label_1347:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1334
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_1334:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1339
.label_1339:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_1345
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1345
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_1345
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_1345
	nop	
	jmp	.label_1328
.label_1328:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_1361
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_1361:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1368
.label_1368:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1373
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_1373:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1345
.label_1345:
	mov	byte ptr [rbp - 0x7f], 0x30
	nop	
	jmp	.label_1307
.label_1276:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x38]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_1385
	mov	rbp, rbp
	jmp	.label_1316
.label_1385:
	jmp	.label_1307
.label_1307:
	jmp	.label_1246
.label_2045:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	nop	
	mov	dword ptr [rbp - 0x100], ecx
	mov	rsp, rsp
	je	.label_1391
	mov	rbp, rbp
	jmp	.label_1397
.label_1397:
	mov	eax, dword ptr [rbp - 0xfc]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x104], eax
	lea	rsi, [rsi]
	je	.label_1399
	jmp	.label_1406
.label_1391:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_1409
	jmp	.label_1255
.label_1409:
	jmp	.label_1321
.label_1399:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_1317
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jae	.label_1317
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_1317
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
	je	.label_1243
	nop	
	jmp	.label_1432
.label_1432:
	nop	
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	mov	rsp, rsp
	jb	.label_1243
	jmp	.label_1438
.label_1438:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x108]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	mov	rsp, rsp
	je	.label_1243
	jmp	.label_1242
.label_1242:
	mov	eax, dword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x118], eax
	je	.label_1243
	jmp	.label_1288
.label_1288:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	lea	rdi, [rdi]
	ja	.label_1253
	jmp	.label_1243
.label_1243:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_1336
	jmp	.label_1255
.label_1336:
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
	jae	.label_1266
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_1266:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1441
.label_1441:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1283
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_1283:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1290
.label_1290:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1292
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_1292:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1301
.label_1301:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1394
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_1394:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1311
.label_1253:
	jmp	.label_1311
.label_1311:
	jmp	.label_1317
.label_1317:
	jmp	.label_1321
.label_1406:
	jmp	.label_1321
.label_1321:
	jmp	.label_1246
.label_2035:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_1325
.label_2036:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_1325
.label_2040:
	mov	byte ptr [rbp - 0x80], 0x66
	lea	rdi, [rdi]
	jmp	.label_1325
.label_2038:
	mov	byte ptr [rbp - 0x80], 0x6e
	mov	rbp, rbp
	jmp	.label_1332
.label_2041:
	mov	byte ptr [rbp - 0x80], 0x72
	mov	rbp, rbp
	jmp	.label_1332
.label_2037:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_1332
.label_2039:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_1325
.label_2046:
	mov	al, byte ptr [rbp - 0x7f]
	nop	
	mov	byte ptr [rbp - 0x80], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1383
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_1341
	nop	
	jmp	.label_1255
.label_1341:
	lea	rsi, [rsi]
	jmp	.label_1244
.label_1383:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1350
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_1350
	nop	
	cmp	qword ptr [rbp - 0x78], 0
	mov	rbp, rbp
	je	.label_1350
	jmp	.label_1244
.label_1350:
	jmp	.label_1332
.label_1332:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	jne	.label_1356
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1356
	jmp	.label_1255
.label_1356:
	mov	rsp, rsp
	jmp	.label_1325
.label_1325:
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_1365
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_1271
.label_1365:
	jmp	.label_1246
.label_2047:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1370
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_1379
	jmp	.label_1377
.label_1370:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_1379
.label_1377:
	nop	
	jmp	.label_1246
.label_1379:
	jmp	.label_1442
.label_1442:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	je	.label_1260
	lea	rsi, [rsi]
	jmp	.label_1246
.label_1260:
	nop	
	jmp	.label_1340
.label_1340:
	mov	byte ptr [rbp - 0x83], 1
.label_2042:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1323
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_1323
	jmp	.label_1255
.label_1323:
	lea	rsi, [rsi]
	jmp	.label_1246
.label_2044:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_1396
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_1403
	jmp	.label_1255
.label_1403:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1408
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jne	.label_1408
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_1408:
	jmp	.label_1416
.label_1416:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_1418
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_1418:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1424
.label_1424:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_1335
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_1335:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_1434
.label_1434:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_1437
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1437:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1396:
	lea	rsi, [rsi]
	jmp	.label_1246
.label_2043:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_1246
.label_1263:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7a], 1
	je	.label_1254
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
	jmp	.label_1355
.label_1254:
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
	jne	.label_1279
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_1279:
	jmp	.label_1251
.label_1251:
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
	jne	.label_1304
	jmp	.label_1257
.label_1304:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_1312
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_1257
.label_1312:
	nop	
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_1319
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_1344:
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
	jae	.label_1300
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_1300:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_1392
	jmp	.label_1343
.label_1392:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1344
.label_1343:
	jmp	.label_1257
.label_1319:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1351
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_1351
	mov	qword ptr [rbp - 0xb8], 1
.label_1395:
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	cmp	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	jae	.label_1291
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
	jb	.label_1358
	jmp	.label_1374
.label_1374:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x138], eax
	je	.label_1358
	jmp	.label_1381
.label_1381:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x13c], eax
	mov	rsp, rsp
	je	.label_1358
	jmp	.label_1386
.label_1386:
	mov	eax, dword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_1387
	mov	rsp, rsp
	jmp	.label_1358
.label_1358:
	mov	rsp, rsp
	jmp	.label_1255
.label_1387:
	jmp	.label_1393
.label_1393:
	mov	rsp, rsp
	jmp	.label_1337
.label_1337:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_1395
.label_1291:
	mov	rbp, rbp
	jmp	.label_1351
.label_1351:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_1407
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_1407:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1411
.label_1411:
	lea	rsi, [rsi]
	jmp	.label_1261
.label_1261:
	jmp	.label_1419
.label_1419:
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
	jne	.label_1251
.label_1257:
	jmp	.label_1355
.label_1355:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	nop	
	jb	.label_1429
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_1404
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	mov	rsp, rsp
	jne	.label_1404
.label_1429:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 0xc0], rax
.label_1412:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	nop	
	je	.label_1245
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	jne	.label_1245
	jmp	.label_1249
.label_1249:
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_1252
	jmp	.label_1255
.label_1252:
	mov	byte ptr [rbp - 0x82], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_1258
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1258
	lea	rdi, [rdi]
	jmp	.label_1264
.label_1264:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1267
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1267:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_1270
.label_1270:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1275
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1275:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_1285
.label_1285:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1439
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1439:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1258:
	jmp	.label_1296
.label_1296:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_1298
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_1298:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1305
.label_1305:
	jmp	.label_1309
.label_1309:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1310
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
.label_1310:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_1289
.label_1289:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_1327
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
.label_1327:
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
	jmp	.label_1333
.label_1245:
	test	byte ptr [rbp - 0x81], 1
	lea	rsi, [rsi]
	je	.label_1349
	lea	rdi, [rdi]
	jmp	.label_1352
.label_1352:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_1353
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1353:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x81], 0
.label_1349:
	nop	
	jmp	.label_1333
.label_1333:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_1363
	jmp	.label_1369
.label_1363:
	lea	rsi, [rsi]
	jmp	.label_1380
.label_1380:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_1372
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x82], 1
	jne	.label_1372
	lea	rsi, [rsi]
	jmp	.label_1376
.label_1376:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1378
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_1378:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_1384
.label_1384:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_1295
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_1295:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1372:
	nop	
	jmp	.label_1398
.label_1398:
	mov	rsp, rsp
	jmp	.label_1400
.label_1400:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_1430
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_1430:
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
	jmp	.label_1412
.label_1369:
	mov	rsp, rsp
	jmp	.label_1244
.label_1404:
	lea	rsi, [rsi]
	jmp	.label_1246
.label_1246:
	test	byte ptr [rbp - 0x79], 1
	mov	rbp, rbp
	je	.label_1425
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1428
.label_1425:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1431
.label_1428:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_1431
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
	jne	.label_1371
.label_1431:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x81], 1
	lea	rdi, [rdi]
	jne	.label_1371
	mov	rsp, rsp
	jmp	.label_1244
.label_1371:
	nop	
	jmp	.label_1271
.label_1271:
	jmp	.label_1277
.label_1277:
	test	byte ptr [rbp - 0x7b], 1
	mov	rbp, rbp
	je	.label_1248
	jmp	.label_1255
.label_1248:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_1306
	test	byte ptr [rbp - 0x7c], 1
	lea	rdi, [rdi]
	jne	.label_1306
	lea	rdi, [rdi]
	jmp	.label_1262
.label_1262:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_1265
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_1265:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1269
.label_1269:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1427
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_1427:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1282
.label_1282:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_1287
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_1287:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1306:
	jmp	.label_1297
.label_1297:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1364
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_1364:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1402
.label_1402:
	nop	
	jmp	.label_1244
.label_1244:
	jmp	.label_1435
.label_1435:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7c], 1
	je	.label_1313
	test	byte ptr [rbp - 0x82], 1
	jne	.label_1313
	lea	rdi, [rdi]
	jmp	.label_1320
.label_1320:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1322
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1322:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1330
.label_1330:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_1354
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_1354:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1313:
	jmp	.label_1417
.label_1417:
	nop	
	jmp	.label_1346
.label_1346:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1348
	mov	al, byte ptr [rbp - 0x7f]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_1348:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x83], 1
	jne	.label_1273
	mov	byte ptr [rbp - 0x7e], 0
.label_1273:
	mov	rbp, rbp
	jmp	.label_1316
.label_1316:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_1359
.label_1413:
	cmp	qword ptr [rbp - 0x60], 0
	mov	rbp, rbp
	jne	.label_1366
	cmp	dword ptr [rbp - 0x34], 2
	nop	
	jne	.label_1366
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_1366
	nop	
	jmp	.label_1255
.label_1366:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1375
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_1375
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7d], 1
	je	.label_1375
	test	byte ptr [rbp - 0x7e], 1
	je	.label_1382
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
	jmp	.label_1247
.label_1382:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jne	.label_1401
	cmp	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	je	.label_1401
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_1410
.label_1401:
	jmp	.label_1414
.label_1414:
	mov	rbp, rbp
	jmp	.label_1375
.label_1375:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_1415
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1415
	mov	rbp, rbp
	jmp	.label_1420
.label_1420:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_1421
	lea	rdi, [rdi]
	jmp	.label_1423
.label_1423:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_1426
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_1426:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1433
.label_1433:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1420
.label_1421:
	jmp	.label_1415
.label_1415:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1440
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_1440:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1247
.label_1255:
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_1250
	mov	rsp, rsp
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_1250
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], 4
.label_1250:
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
.label_1247:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4174c0
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
	.align	32
	#Procedure 0x417530

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
	je	.label_1443
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_1444
.label_1443:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_1444
.label_1444:
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
	je	.label_1445
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1445:
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
	.align	32
	#Procedure 0x417700
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
	.section	.text
	.align	32
	#Procedure 0x417810

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
	.align	32
	#Procedure 0x417860

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
	jge	.label_1452
	call	abort
.label_1452:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_1455
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
	jge	.label_1456
	call	xalloc_die
.label_1456:
	test	byte ptr [rbp - 0x31], 1
	je	.label_1457
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_1453
.label_1457:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_1453:
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
	je	.label_1451
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_1446]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_1451:
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
.label_1455:
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
	ja	.label_1458
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
	je	.label_1454
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	free
.label_1454:
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
.label_1458:
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
	.align	32
	#Procedure 0x417b90

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
	.align	32
	#Procedure 0x417bd0
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
	.align	32
	#Procedure 0x417c00
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
	.align	32
	#Procedure 0x417c40

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
	.align	32
	#Procedure 0x417ca0

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
	jne	.label_1459
	call	abort
.label_1459:
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
	.align	32
	#Procedure 0x417d40

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
	.align	32
	#Procedure 0x417db0

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
	.align	32
	#Procedure 0x417df0
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
	.align	32
	#Procedure 0x417e30

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
	.align	32
	#Procedure 0x417ee0

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
	.align	32
	#Procedure 0x417f20

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
	.align	32
	#Procedure 0x417f50
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
	.align	32
	#Procedure 0x417f90

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
	.align	32
	#Procedure 0x418080

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
	.align	32
	#Procedure 0x4180d0

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
	.align	32
	#Procedure 0x418170
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
	.align	32
	#Procedure 0x4181c0
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
	.align	32
	#Procedure 0x418220

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
	.align	32
	#Procedure 0x418260
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
	.align	32
	#Procedure 0x4182a0

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
	.align	32
	#Procedure 0x4182e0

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
	.align	32
	#Procedure 0x418320

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
	je	.label_1463
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1461
.label_1463:
	call	locale_charset
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.13_1
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
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
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1461
.label_1462:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_1
	mov	rdi, qword ptr [rbp - 0x28]
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
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_1461
.label_1460:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_1
	movabs	rcx, OFFSET FLAT:.str.10_1
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_1461:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418460

	.globl renameatu
	.type renameatu, @function
renameatu:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x180
	mov	eax, 0x13c
	mov	rsp, rsp
	mov	r9d, eax
	mov	dword ptr [rbp - 8], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], edx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], r8d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x28], 0xffffffff
	mov	dword ptr [rbp - 0x2c], 0x16
	nop	
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	r8, qword ptr [rbp - 0x20]
	mov	eax, dword ptr [rbp - 0x24]
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
	mov	dword ptr [rbp - 0x28], ecx
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], ecx
	cmp	dword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	jge	.label_1478
	cmp	dword ptr [rbp - 0x2c], 0x16
	je	.label_1464
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0x26
	mov	rbp, rbp
	je	.label_1464
	cmp	dword ptr [rbp - 0x2c], 0x5f
	lea	rsi, [rsi]
	je	.label_1464
.label_1478:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_1466
.label_1464:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	dword ptr [rbp - 0x58], 0x14
	mov	byte ptr [rbp - 0x179], 0
	cmp	dword ptr [rbp - 0x24], 0
	lea	rsi, [rsi]
	je	.label_1465
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x24]
	nop	
	and	eax, 0xfffffffe
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_1481
	mov	rbp, rbp
	mov	edi, 0x5f
	mov	rsp, rsp
	call	errno_fail
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1466
.label_1481:
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x178]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	lstatat
	cmp	eax, 0
	je	.label_1475
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x4b
	jne	.label_1486
.label_1475:
	lea	rsi, [rsi]
	mov	edi, 0x11
	lea	rdi, [rdi]
	call	errno_fail
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1466
.label_1486:
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 2
	lea	rdi, [rdi]
	je	.label_1484
	nop	
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1466
.label_1484:
	mov	byte ptr [rbp - 0x179], 1
	jmp	.label_1465
.label_1465:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	strlen
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x38], 0
	lea	rdi, [rdi]
	je	.label_1474
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_1480
.label_1474:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	call	renameat
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1466
.label_1480:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	sub	rax, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	edx, byte ptr [rcx + rax]
	nop	
	cmp	edx, 0x2f
	sete	sil
	mov	rbp, rbp
	and	sil, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x51], sil
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	and	sil, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x52], sil
	mov	rsp, rsp
	test	byte ptr [rbp - 0x51], 1
	jne	.label_1483
	test	byte ptr [rbp - 0x52], 1
	jne	.label_1483
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	call	renameat
	nop	
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1466
.label_1483:
	mov	rbp, rbp
	lea	rdx, [rbp - 0xe8]
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	lstatat
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_1485
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_1466
.label_1485:
	test	byte ptr [rbp - 0x179], 1
	je	.label_1476
	mov	eax, dword ptr [rbp - 0xd0]
	lea	rdi, [rdi]
	and	eax, 0xf000
	cmp	eax, 0x4000
	lea	rsi, [rsi]
	je	.label_1479
	mov	edi, 2
	call	errno_fail
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1466
.label_1479:
	mov	rbp, rbp
	jmp	.label_1469
.label_1476:
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x178]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x20]
	call	lstatat
	mov	rbp, rbp
	cmp	eax, 0
	nop	
	je	.label_1467
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 2
	mov	rsp, rsp
	jne	.label_1472
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd0]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_1477
.label_1472:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rbp, rbp
	jmp	.label_1466
.label_1477:
	jmp	.label_1482
.label_1467:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x160]
	and	eax, 0xf000
	cmp	eax, 0x4000
	lea	rdi, [rdi]
	je	.label_1471
	mov	edi, 0x14
	nop	
	call	errno_fail
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	jmp	.label_1466
.label_1471:
	mov	eax, dword ptr [rbp - 0xd0]
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0x4000
	mov	rbp, rbp
	je	.label_1468
	mov	rsp, rsp
	mov	edi, 0x15
	call	errno_fail
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	jmp	.label_1466
.label_1468:
	jmp	.label_1473
.label_1473:
	lea	rdi, [rdi]
	jmp	.label_1482
.label_1482:
	jmp	.label_1469
.label_1469:
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	edx, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	call	renameat
	mov	dword ptr [rbp - 0x28], eax
	call	__errno_location
	mov	rsp, rsp
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x58], edx
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	je	.label_1487
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	nop	
	call	free
.label_1487:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	je	.label_1470
	nop	
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
.label_1470:
	mov	eax, dword ptr [rbp - 0x58]
	nop	
	mov	dword ptr [rbp - 0x180], eax
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x180]
	nop	
	mov	dword ptr [rax], ecx
	mov	ecx, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], ecx
.label_1466:
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	rsp, 0x180
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4188f0

	.globl errno_fail
	.type errno_fail, @function
errno_fail:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	dword ptr [rbp - 4], edi
	nop	
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], edi
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	edi, 0xffffffff
	mov	ecx, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dword ptr [rax], ecx
	lea	rsi, [rsi]
	mov	eax, edi
	add	rsp, 0x10
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x418930

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
.label_1494:
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0xc]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	call	write
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jg	.label_1495
	mov	rax, qword ptr [rbp - 0x28]
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
	cmp	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_1488
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], 0x7ff00000
	jmp	.label_1489
.label_1488:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
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
	.section	.text
	.align	32
	#Procedure 0x418a10

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
	.section	.text
	.align	32
	#Procedure 0x418a60

	.globl same_nameat
	.type same_nameat, @function
same_nameat:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x190
	nop	
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	dword ptr [rbp - 0x14], edx
	mov	qword ptr [rbp - 0x20], rcx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	last_component
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	last_component
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	call	base_len
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x30]
	call	base_len
	xor	edx, edx
	mov	r8b, dl
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x181], r8b
	lea	rsi, [rsi]
	jne	.label_1496
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x40]
	call	memcmp
	nop	
	cmp	eax, 0
	sete	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x181], cl
.label_1496:
	mov	al, byte ptr [rbp - 0x181]
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x42], al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x43], 0
	test	byte ptr [rbp - 0x42], 1
	lea	rsi, [rsi]
	je	.label_1497
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	dir_name
	lea	rdx, [rbp - 0xd8]
	mov	qword ptr [rbp - 0x170], rax
	mov	dword ptr [rbp - 0x174], 0x100
	nop	
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x174]
	call	fstatat
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_1500
	call	__errno_location
	mov	rbp, rbp
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_4
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x170]
	mov	rbp, rbp
	mov	al, 0
	call	error
.label_1500:
	nop	
	mov	rdi, qword ptr [rbp - 0x170]
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	call	dir_name
	lea	rdx, [rbp - 0x168]
	mov	qword ptr [rbp - 0x180], rax
	nop	
	mov	edi, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x180]
	mov	ecx, dword ptr [rbp - 0x174]
	call	fstatat
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_1499
	call	__errno_location
	mov	rsp, rsp
	mov	edi, 1
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_4
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x180]
	nop	
	mov	al, 0
	nop	
	call	error
.label_1499:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xd0]
	cmp	rdx, qword ptr [rbp - 0x160]
	mov	byte ptr [rbp - 0x182], cl
	lea	rdi, [rdi]
	jne	.label_1498
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x168]
	mov	rsp, rsp
	sete	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x182], cl
.label_1498:
	mov	al, byte ptr [rbp - 0x182]
	and	al, 1
	mov	byte ptr [rbp - 0x43], al
	nop	
	mov	rdi, qword ptr [rbp - 0x180]
	mov	rbp, rbp
	call	free
.label_1497:
	mov	al, byte ptr [rbp - 0x43]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x190
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418cc0

	.globl streamsavedir
	.type streamsavedir, @function
streamsavedir:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], esi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], 0
	nop	
	mov	qword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x48], 0
	mov	esi, dword ptr [rbp - 0x14]
	mov	edi, esi
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [+ (rdi * 8) + comparison_function_table]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rdi
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1511
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1502
.label_1511:
	jmp	.label_1512
.label_1512:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	readdir
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_1516
	jmp	.label_1518
.label_1516:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 0x13
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x68]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	je	.label_1519
	mov	rsp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 0x94], eax
	lea	rdi, [rdi]
	jmp	.label_1505
.label_1519:
	mov	eax, 2
	mov	ecx, 1
	nop	
	mov	rdx, qword ptr [rbp - 0x68]
	nop	
	movsx	esi, byte ptr [rdx + 1]
	mov	rsp, rsp
	cmp	esi, 0x2e
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x94], eax
.label_1505:
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x68]
	movsx	eax, byte ptr [rdx + rcx]
	cmp	eax, 0
	je	.label_1514
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 0x13
	mov	rdi, rax
	call	strlen
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	nop	
	cmp	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	je	.label_1520
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	cmp	rax, qword ptr [rbp - 0x40]
	nop	
	jne	.label_1504
	lea	rsi, [rbp - 0x78]
	mov	eax, 0x10
	mov	edx, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdi, rcx
	call	x2nrealloc
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
.label_1504:
	mov	rdi, qword ptr [rbp - 0x68]
	call	xstrdup
	mov	rdi, qword ptr [rbp - 0x40]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	nop	
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rdi + 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1517
.label_1520:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	ja	.label_1507
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x80], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	cmp	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	jae	.label_1501
	call	xalloc_die
.label_1501:
	mov	rsp, rsp
	lea	rsi, [rbp - 0x80]
	mov	eax, 1
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	x2nrealloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
.label_1507:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rdi, rax
	call	memcpy
.label_1517:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
.label_1514:
	jmp	.label_1512
.label_1518:
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x4c], ecx
	cmp	dword ptr [rbp - 0x4c], 0
	nop	
	je	.label_1513
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rdi, rax
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	call	free
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x98], ecx
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x98]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jmp	.label_1502
.label_1513:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x58], 0
	lea	rdi, [rdi]
	je	.label_1508
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1510
	mov	rbp, rbp
	mov	eax, 0x10
	nop	
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0xa0], rdi
	nop	
	mov	rdi, rcx
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	call	qsort
.label_1510:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], 0
	nop	
	mov	qword ptr [rbp - 0x88], 0
.label_1509:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x40]
	jae	.label_1506
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0x88]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	call	stpcpy
	mov	rsi, qword ptr [rbp - 0x90]
	sub	rax, rsi
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	shl	rax, 4
	nop	
	add	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rdi, qword ptr [rax]
	call	free
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_1509
.label_1506:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	jmp	.label_1503
.label_1508:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jne	.label_1515
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rsp, rsp
	call	xrealloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
.label_1515:
	mov	rbp, rbp
	jmp	.label_1503
.label_1503:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1502:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419150

	.globl savedir
	.type savedir, @function
savedir:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	opendir_safer
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	jne	.label_1523
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1521
.label_1523:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x14]
	call	streamsavedir
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	closedir
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_1522
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	call	free
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x30], ecx
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x30]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1521
.label_1522:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 8], rax
.label_1521:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419210

	.globl direntry_cmp_name
	.type direntry_cmp_name, @function
direntry_cmp_name:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rsi]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi]
	call	strcmp
	lea	rdi, [rdi]
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419260

	.globl direntry_cmp_inode
	.type direntry_cmp_inode, @function
direntry_cmp_inode:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rsi + 8]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rsi, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	jae	.label_1524
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x24], eax
	lea	rdi, [rdi]
	jmp	.label_1525
.label_1524:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 8]
	seta	dl
	and	dl, 1
	lea	rdi, [rdi]
	movzx	esi, dl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], esi
.label_1525:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x24]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4192f0
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
	.align	32
	#Procedure 0x419320

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
	#Procedure 0x419330
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
	.align	32
	#Procedure 0x419360

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
	.align	32
	#Procedure 0x4193a0
	.globl matchpathcon
	.type matchpathcon, @function
matchpathcon:

	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdx
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
	#Procedure 0x4193e0
	.globl getfilecon
	.type getfilecon, @function
getfilecon:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
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
	.align	32
	#Procedure 0x419420

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
	.align	32
	#Procedure 0x419460
	.globl fgetfilecon
	.type fgetfilecon, @function
fgetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
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
	.align	32
	#Procedure 0x4194a0
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
	.align	32
	#Procedure 0x4194e0
	.globl lsetfilecon
	.type lsetfilecon, @function
lsetfilecon:

	nop
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
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
	.align	32
	#Procedure 0x419520
	.globl fsetfilecon
	.type fsetfilecon, @function
fsetfilecon:

	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
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
	.align	32
	#Procedure 0x419560
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
	.align	32
	#Procedure 0x4195a0
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
	.align	32
	#Procedure 0x4195e0
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
	.align	32
	#Procedure 0x419620
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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	word ptr [rbp - 0x12], ax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
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
	.align	32
	#Procedure 0x419670
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
	#Procedure 0x4196a0
	.globl matchpathcon_init_prefix
	.type matchpathcon_init_prefix, @function
matchpathcon_init_prefix:

	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
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
	.align	32
	#Procedure 0x4196e0

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
	.section	.text
	.align	32
	#Procedure 0x419700

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
	.section	.text
	.align	32
	#Procedure 0x419720

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
	.section	.text
	.align	32
	#Procedure 0x419740
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
	.section	.text
	.align	32
	#Procedure 0x419760

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
	.section	.text
	.align	32
	#Procedure 0x419790
	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x68]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4197c0

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rdi + 0x58]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4197f0
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x28], -1
	mov	qword ptr [rbp - 0x20], -1
	movups	xmm0, xmmword ptr [rbp - 0x28]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419830
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x419850
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
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	call	fstatat
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419890

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
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	call	fstatat
	mov	rsp, rsp
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4198e0

	.globl try_tempname_len
	.type try_tempname_len, @function
try_tempname_len:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x48], 0xffffffff
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4c], esi
	nop	
	mov	dword ptr [rbp - 0x5c], 0x3a2f8
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	strlen
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	add	rcx, rdx
	lea	rdi, [rdi]
	cmp	rax, rcx
	mov	rsp, rsp
	jb	.label_1534
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	sub	rax, qword ptr [rbp - 0x30]
	movsxd	rcx, dword ptr [rbp - 0x14]
	sub	rax, rcx
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x30]
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
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	sub	rcx, rdx
	add	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rsi, qword ptr [rbp - 0x30]
	nop	
	call	randint_all_new
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x58], 0
	lea	rdi, [rdi]
	jne	.label_1529
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rbp, rbp
	jmp	.label_1528
.label_1529:
	mov	dword ptr [rbp - 0x44], 0
.label_1533:
	nop	
	mov	eax, dword ptr [rbp - 0x44]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x5c]
	jae	.label_1532
	mov	qword ptr [rbp - 0x68], 0
.label_1537:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	jae	.label_1531
	mov	eax, 0x3d
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x58]
	call	randint_genmax
	mov	cl,  byte ptr [byte ptr [+ (rax * 1) + letters]]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x40]
	mov	byte ptr [rsi + rax], cl
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	nop	
	jmp	.label_1537
.label_1531:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x48], eax
	cmp	dword ptr [rbp - 0x48], 0
	nop	
	jl	.label_1536
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x70], eax
	lea	rsi, [rsi]
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x70]
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
	mov	dword ptr [rbp - 0x48], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_1526
.label_1535:
	jmp	.label_1530
.label_1530:
	jmp	.label_1527
.label_1527:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	add	eax, 1
	mov	dword ptr [rbp - 0x44], eax
	mov	rbp, rbp
	jmp	.label_1533
.label_1532:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	call	randint_all_free
	mov	dword ptr [rbp - 0x74], eax
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
	mov	rdi, qword ptr [rbp - 0x58]
	call	randint_all_free
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rbp - 0x78], eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], ecx
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	dword ptr [rax], ecx
	mov	ecx, dword ptr [rbp - 0x48]
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
	.section	.text
	.align	32
	#Procedure 0x419b70

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
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, rax
	call	strspn
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
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
	.section	.text
	.align	32
	#Procedure 0x419bd0

	.globl gen_tempname_len
	.type gen_tempname_len, @function
gen_tempname_len:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
	mov	qword ptr [rbp - 0x20], r8
	mov	ecx, dword ptr [rbp - 0x14]
	test	ecx, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], ecx
	je	.label_1544
	mov	rsp, rsp
	jmp	.label_1540
.label_1540:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 1
	nop	
	mov	dword ptr [rbp - 0x30], eax
	je	.label_1543
	jmp	.label_1542
.label_1542:
	nop	
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	sub	eax, 2
	mov	dword ptr [rbp - 0x34], eax
	je	.label_1539
	mov	rbp, rbp
	jmp	.label_1545
.label_1544:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:try_file
	mov	qword ptr [rbp - 0x28], rax
	nop	
	jmp	.label_1541
.label_1543:
	movabs	rax, OFFSET FLAT:try_dir
	nop	
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1541
.label_1539:
	movabs	rax, OFFSET FLAT:try_nocreate
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1541
.label_1545:
	movabs	rdi, OFFSET FLAT:.str_12
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.1_9
	mov	edx, 0x147
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.gen_tempname_len
	call	__assert_fail
.label_1541:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, rax
	call	try_tempname_len
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x419ce0

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
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
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
	.section	.text
	.align	32
	#Procedure 0x419d40

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
	.section	.text
	.align	32
	#Procedure 0x419d80

	.globl try_nocreate
	.type try_nocreate, @function
try_nocreate:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0xa0
	lea	rax, [rbp - 0xa0]
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
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
	.section	.text
	.align	32
	#Procedure 0x419e00
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
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	nop	
	mov	dword ptr [rbp - 0x10], edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x10]
	nop	
	mov	ecx, dword ptr [rbp - 0x14]
	call	gen_tempname_len
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x419e50
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
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	try_tempname_len
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x419eb0

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
	mov	dword ptr [rbp - 8], eax
	call	__errno_location
	nop	
	mov	edi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	edi, dword ptr [rbp - 4]
	call	close
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], edi
	lea	rsi, [rsi]
	call	__errno_location
	nop	
	mov	edi, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], edi
	mov	edi, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
.label_1548:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419f40

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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	edi, eax
	call	utimecmpat
	lea	rdi, [rdi]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419fa0

	.globl utimecmpat
	.type utimecmpat, @function
utimecmpat:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x1d0
	mov	dword ptr [rbp - 8], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x58]
	nop	
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x58]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rcx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	get_stat_mtime_ns
	mov	r8d, eax
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	get_stat_mtime_ns
	mov	rsp, rsp
	mov	r8d, eax
	mov	dword ptr [rbp - 0x40], r8d
	mov	r8d, dword ptr [rbp - 0x24]
	and	r8d, 1
	lea	rsi, [rsi]
	cmp	r8d, 0
	je	.label_1550
	mov	qword ptr [rbp - 0x48], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	nop	
	jne	.label_1554
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x40]
	jne	.label_1554
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rdi]
	jmp	.label_1562
.label_1554:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 2
	cmp	rax, rcx
	nop	
	jg	.label_1567
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1562
.label_1567:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	sub	rcx, 2
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jg	.label_1581
	mov	dword ptr [rbp - 4], 1
	lea	rdi, [rdi]
	jmp	.label_1562
.label_1581:
	nop	
	cmp	qword ptr [word ptr [utimecmpat.ht]],  0
	jne	.label_1586
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
.label_1586:
	cmp	qword ptr [word ptr [utimecmpat.ht]],  0
	je	.label_1549
	nop	
	cmp	qword ptr [word ptr [utimecmpat.new_dst_res]],  0
	jne	.label_1551
	mov	eax, 0x10
	lea	rsi, [rsi]
	mov	edi, eax
	call	malloc
	nop	
	mov	qword ptr [word ptr [utimecmpat.new_dst_res]],  rax
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [utimecmpat.new_dst_res]],  0
	jne	.label_1587
	mov	rsp, rsp
	jmp	.label_1565
.label_1587:
	mov	rax,  qword ptr [word ptr [utimecmpat.new_dst_res]]
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], 0x77359400
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [utimecmpat.new_dst_res]]
	mov	byte ptr [rax + 0xc], 0
.label_1551:
	mov	rax, qword ptr [rbp - 0x18]
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
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_1583
	mov	rbp, rbp
	jmp	.label_1565
.label_1583:
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	cmp	rax,  qword ptr [word ptr [utimecmpat.new_dst_res]]
	lea	rsi, [rsi]
	jne	.label_1580
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [utimecmpat.new_dst_res]],  0
.label_1580:
	nop	
	jmp	.label_1570
.label_1549:
	jmp	.label_1565
.label_1565:
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [utimecmpat.ht]],  0
	je	.label_1582
	lea	rax, [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [utimecmpat.ht]]
	mov	rsi, rax
	mov	rbp, rbp
	call	hash_lookup
	mov	qword ptr [rbp - 0x48], rax
.label_1582:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_1557
	lea	rax, [rbp - 0x58]
	mov	qword ptr [rbp - 0x48], rax
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	dword ptr [rax + 8], 0x77359400
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	byte ptr [rax + 0xc], 0
.label_1557:
	mov	rsp, rsp
	jmp	.label_1570
.label_1570:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], ecx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	test	byte ptr [rax + 0xc], 1
	lea	rdi, [rdi]
	jne	.label_1573
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rax
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rbp - 0x78], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	get_stat_atime_ns
	mov	ecx, eax
	mov	dword ptr [rbp - 0x7c], ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	get_stat_ctime_ns
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x80], ecx
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x84], ecx
	mov	rax, qword ptr [rbp - 0x68]
	or	rax, qword ptr [rbp - 0x70]
	or	rax, qword ptr [rbp - 0x78]
	and	rax, 1
	cmp	rax, 0
	setne	dl
	mov	rbp, rbp
	and	dl, 1
	mov	byte ptr [rbp - 0x85], dl
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x8c], ecx
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x90], ecx
	mov	ecx, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x94], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x98], 1
	imul	ecx, dword ptr [rbp - 0x98], 0xa
	mov	dword ptr [rbp - 0x98], ecx
	nop	
	mov	eax, dword ptr [rbp - 0x8c]
	mov	rsp, rsp
	cdq	
	idiv	dword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x90]
	mov	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x168], edx
	cdq	
	idiv	dword ptr [rbp - 0x98]
	mov	ecx, dword ptr [rbp - 0x168]
	or	ecx, edx
	nop	
	mov	edx, dword ptr [rbp - 0x94]
	mov	eax, edx
	lea	rdi, [rdi]
	cdq	
	lea	rdi, [rdi]
	idiv	dword ptr [rbp - 0x98]
	or	ecx, edx
	nop	
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_1589
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], 1
	jmp	.label_1585
.label_1589:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], eax
	nop	
	mov	eax, dword ptr [rbp - 0x98]
	mov	ecx, dword ptr [rbp - 0x8c]
	nop	
	mov	dword ptr [rbp - 0x16c], eax
	lea	rsi, [rsi]
	mov	eax, ecx
	mov	rbp, rbp
	cdq	
	mov	ecx, dword ptr [rbp - 0x16c]
	mov	rbp, rbp
	idiv	ecx
	mov	dword ptr [rbp - 0x8c], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x90]
	mov	dword ptr [rbp - 0x170], eax
	lea	rdi, [rdi]
	mov	eax, esi
	mov	rbp, rbp
	cdq	
	mov	esi, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	idiv	esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x90], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x98]
	mov	edi, dword ptr [rbp - 0x94]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x174], eax
	nop	
	mov	eax, edi
	cdq	
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x174]
	lea	rsi, [rsi]
	idiv	edi
	mov	dword ptr [rbp - 0x94], eax
.label_1561:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	eax, dword ptr [rdx + 8]
	mov	byte ptr [rbp - 0x175], cl
	jge	.label_1572
	mov	rsp, rsp
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x8c]
	mov	dword ptr [rbp - 0x17c], eax
	nop	
	mov	eax, ecx
	mov	rbp, rbp
	cdq	
	mov	ecx, dword ptr [rbp - 0x17c]
	nop	
	idiv	ecx
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x90]
	mov	eax, esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x180], edx
	cdq	
	nop	
	idiv	ecx
	mov	esi, dword ptr [rbp - 0x180]
	lea	rsi, [rsi]
	or	esi, edx
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x94]
	mov	eax, edx
	cdq	
	idiv	ecx
	nop	
	or	esi, edx
	cmp	esi, 0
	mov	rbp, rbp
	sete	dil
	mov	byte ptr [rbp - 0x175], dil
.label_1572:
	mov	al, byte ptr [rbp - 0x175]
	test	al, 1
	jne	.label_1590
	jmp	.label_1555
.label_1590:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x5c], 0x3b9aca00
	lea	rdi, [rdi]
	jne	.label_1577
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x85], 1
	jne	.label_1564
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x5c]
	nop	
	shl	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], eax
.label_1564:
	jmp	.label_1555
.label_1577:
	jmp	.label_1559
.label_1559:
	mov	eax, 0xa
	mov	rbp, rbp
	imul	ecx, dword ptr [rbp - 0x5c], 0xa
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], ecx
	mov	ecx, dword ptr [rbp - 0x8c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x184], eax
	mov	rsp, rsp
	mov	eax, ecx
	mov	rsp, rsp
	cdq	
	mov	ecx, dword ptr [rbp - 0x184]
	nop	
	idiv	ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x8c], eax
	mov	eax, dword ptr [rbp - 0x90]
	mov	rsp, rsp
	cdq	
	mov	rbp, rbp
	idiv	ecx
	mov	dword ptr [rbp - 0x90], eax
	nop	
	mov	eax, dword ptr [rbp - 0x94]
	nop	
	cdq	
	lea	rdi, [rdi]
	idiv	ecx
	nop	
	mov	dword ptr [rbp - 0x94], eax
	lea	rsi, [rsi]
	jmp	.label_1561
.label_1555:
	mov	rsp, rsp
	jmp	.label_1585
.label_1585:
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x5c]
	nop	
	mov	rdx, qword ptr [rbp - 0x48]
	mov	dword ptr [rdx + 8], ecx
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	jge	.label_1584
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, 1
	mov	edx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x188], eax
	mov	eax, edx
	cdq	
	idiv	ecx
	nop	
	mov	esi, dword ptr [rbp - 0x40]
	sub	esi, edx
	mov	dword ptr [rbp - 0x40], esi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x5c], 0x77359400
	mov	edx, dword ptr [rbp - 0x188]
	cmove	edx, ecx
	lea	rdi, [rdi]
	xor	edx, 0xffffffff
	movsxd	r8, edx
	mov	rsp, rsp
	and	rdi, r8
	mov	qword ptr [rbp - 0x158], rdi
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmp	rdi, qword ptr [rbp - 0x30]
	jl	.label_1588
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	jne	.label_1558
	mov	eax, dword ptr [rbp - 0x40]
	nop	
	cmp	eax, dword ptr [rbp - 0x3c]
	jg	.label_1558
.label_1588:
	nop	
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1562
.label_1558:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x158]
	mov	rsp, rsp
	jl	.label_1569
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x158]
	lea	rdi, [rdi]
	jne	.label_1576
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x3c]
	mov	ecx, dword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x40]
	nop	
	mov	dword ptr [rbp - 0x18c], eax
	mov	eax, edx
	cdq	
	idiv	dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	sub	ecx, edx
	mov	edx, dword ptr [rbp - 0x18c]
	cmp	edx, ecx
	jge	.label_1576
.label_1569:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1562
.label_1576:
	lea	rdi, [rdi]
	mov	ecx, 0x100
	lea	rdx, [rbp - 0xc0]
	mov	eax, 9
	mov	rsi, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xc0], rsi
	movsxd	rsi, dword ptr [rbp - 0x7c]
	mov	qword ptr [rbp - 0xb8], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x5c], 0x77359400
	sete	dil
	and	dil, 1
	movzx	r8d, dil
	nop	
	movsxd	r9, r8d
	mov	rsp, rsp
	or	rsi, r9
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rsi
	nop	
	mov	r8d, dword ptr [rbp - 0x84]
	mov	r10d, dword ptr [rbp - 0x5c]
	nop	
	mov	dword ptr [rbp - 0x190], eax
	mov	eax, r10d
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x198], rdx
	cdq	
	mov	r10d, dword ptr [rbp - 0x190]
	mov	rbp, rbp
	idiv	r10d
	add	r8d, eax
	mov	rsp, rsp
	movsxd	rsi, r8d
	mov	qword ptr [rbp - 0xa8], rsi
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	r9, qword ptr [rbp - 0x198]
	mov	rdx, r9
	call	utimensat
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_1578
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0xfffffffe
	jmp	.label_1562
.label_1578:
	lea	rdx, [rbp - 0x150]
	mov	ecx, 0x100
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	fstatat
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x150]
	mov	dword ptr [rbp - 0x15c], eax
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rbp - 0x15c]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xf8]
	mov	rbp, rbp
	xor	rsi, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	or	rdx, rsi
	mov	qword ptr [rbp - 0x1a0], rdx
	lea	rdi, [rdi]
	call	get_stat_mtime_ns
	movsxd	rdx, dword ptr [rbp - 0x84]
	xor	rax, rdx
	mov	rdx, qword ptr [rbp - 0x1a0]
	lea	rdi, [rdi]
	or	rdx, rax
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_1591
	mov	ecx, 0x100
	mov	rsp, rsp
	lea	rdx, [rbp - 0xc0]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xb0], rax
	movsxd	rax, dword ptr [rbp - 0x84]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	utimensat
	mov	dword ptr [rbp - 0x1a4], eax
.label_1591:
	nop	
	cmp	dword ptr [rbp - 0x15c], 0
	je	.label_1553
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0xfffffffe
	jmp	.label_1562
.label_1553:
	lea	rdi, [rbp - 0x150]
	nop	
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 0x160], eax
	nop	
	mov	rcx, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	and	rcx, 1
	mov	rbp, rbp
	imul	rcx, rcx, 0x3b9aca00
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1b0], rcx
	call	get_stat_mtime_ns
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x1b0]
	add	rcx, rax
	mov	rsp, rsp
	mov	edx, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x164], edx
	mov	dword ptr [rbp - 0x5c], 1
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x5c]
	nop	
	mov	eax, dword ptr [rbp - 0x164]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1b4], edx
	cdq	
	mov	esi, dword ptr [rbp - 0x1b4]
	idiv	esi
	nop	
	mov	dword ptr [rbp - 0x164], eax
.label_1579:
	lea	rsi, [rsi]
	mov	eax, 0xa
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x164]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1b8], eax
	lea	rsi, [rsi]
	mov	eax, ecx
	lea	rdi, [rdi]
	cdq	
	nop	
	mov	ecx, dword ptr [rbp - 0x1b8]
	lea	rdi, [rdi]
	idiv	ecx
	cmp	edx, 0
	lea	rsi, [rsi]
	jne	.label_1575
	cmp	dword ptr [rbp - 0x5c], 0x3b9aca00
	mov	rsp, rsp
	jne	.label_1560
	mov	eax, dword ptr [rbp - 0x5c]
	shl	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], eax
	mov	rbp, rbp
	jmp	.label_1575
.label_1560:
	nop	
	imul	eax, dword ptr [rbp - 0x5c], 0xa
	mov	dword ptr [rbp - 0x5c], eax
	mov	eax, dword ptr [rbp - 0x5c]
	nop	
	cmp	eax, dword ptr [rbp - 0x160]
	mov	rbp, rbp
	jne	.label_1568
	jmp	.label_1575
.label_1568:
	mov	rbp, rbp
	jmp	.label_1571
.label_1571:
	mov	eax, 0xa
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x164]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1bc], eax
	mov	rbp, rbp
	mov	eax, ecx
	cdq	
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x1bc]
	lea	rsi, [rsi]
	idiv	ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x164], eax
	mov	rbp, rbp
	jmp	.label_1579
.label_1575:
	jmp	.label_1584
.label_1584:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	dword ptr [rcx + 8], eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + 0xc], 1
.label_1573:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, 1
	cmp	dword ptr [rbp - 0x5c], 0x77359400
	cmove	eax, ecx
	xor	eax, 0xffffffff
	movsxd	rdx, eax
	mov	rbp, rbp
	and	rdx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rdx
	mov	eax, dword ptr [rbp - 0x40]
	nop	
	cdq	
	nop	
	idiv	dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x40]
	sub	ecx, edx
	nop	
	mov	dword ptr [rbp - 0x40], ecx
.label_1550:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x38]
	nop	
	jge	.label_1552
	mov	eax, 0xffffffff
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c0], eax
	mov	rbp, rbp
	jmp	.label_1556
.label_1552:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x38]
	jle	.label_1563
	mov	rbp, rbp
	mov	eax, 1
	nop	
	mov	dword ptr [rbp - 0x1c4], eax
	jmp	.label_1592
.label_1563:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x40]
	jge	.label_1574
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x1c8], eax
	mov	rsp, rsp
	jmp	.label_1566
.label_1574:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	cmp	eax, dword ptr [rbp - 0x40]
	setg	cl
	mov	rbp, rbp
	and	cl, 1
	movzx	eax, cl
	nop	
	mov	dword ptr [rbp - 0x1c8], eax
.label_1566:
	mov	eax, dword ptr [rbp - 0x1c8]
	nop	
	mov	dword ptr [rbp - 0x1c4], eax
.label_1592:
	mov	eax, dword ptr [rbp - 0x1c4]
	mov	dword ptr [rbp - 0x1c0], eax
.label_1556:
	mov	eax, dword ptr [rbp - 0x1c0]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
.label_1562:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x1d0
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41aae0

	.globl dev_info_hash
	.type dev_info_hash, @function
dev_info_hash:
	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rsi]
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, rdx
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ab20

	.globl dev_info_compare
	.type dev_info_compare, @function
dev_info_compare:
	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rdi]
	sete	al
	lea	rsi, [rsi]
	and	al, 1
	movzx	eax, al
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ab70
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
	.section	.text
	.align	32
	#Procedure 0x41abb0

	.globl fdutimens
	.type fdutimens, @function
fdutimens:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x1b0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	je	.label_1594
	lea	rax, [rbp - 0x40]
	mov	qword ptr [rbp - 0x188], rax
	jmp	.label_1628
.label_1594:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x188], rcx
	lea	rsi, [rsi]
	jmp	.label_1628
.label_1628:
	mov	rax, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0x48], rax
	mov	dword ptr [rbp - 0x4c], 0
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1595
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rcx
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rcx
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x48]
	call	validate_timespec
	mov	dword ptr [rbp - 0x4c], eax
.label_1595:
	cmp	dword ptr [rbp - 0x4c], 0
	mov	rbp, rbp
	jge	.label_1615
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1597
.label_1615:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 8], 0
	jge	.label_1621
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jne	.label_1621
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 9
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1597
.label_1621:
	xor	eax, eax
	cmp	eax,  dword ptr [dword ptr [utimensat_works_really]]
	jg	.label_1609
	cmp	dword ptr [rbp - 0x4c], 2
	jne	.label_1624
	cmp	dword ptr [rbp - 8], 0
	nop	
	jge	.label_1627
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0xe0]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	call	stat
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_1629
	mov	rbp, rbp
	jmp	.label_1596
.label_1627:
	lea	rsi, [rbp - 0xe0]
	mov	edi, dword ptr [rbp - 8]
	call	__fstat
	cmp	eax, 0
	je	.label_1596
.label_1629:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1597
.label_1596:
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	cmp	qword ptr [rax + 8], 0x3ffffffe
	lea	rdi, [rdi]
	jne	.label_1606
	lea	rdi, [rbp - 0xe0]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x190], rax
	call	get_stat_atime
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf8], rax
	mov	qword ptr [rbp - 0xf0], rdx
	nop	
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x190]
	nop	
	mov	qword ptr [rdx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rdx + 8], rax
	mov	rsp, rsp
	jmp	.label_1603
.label_1606:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	mov	rsp, rsp
	jne	.label_1623
	lea	rdi, [rbp - 0xe0]
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x198], rax
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x108], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x100], rdx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x198]
	mov	qword ptr [rdx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	qword ptr [rdx + 0x18], rax
.label_1623:
	jmp	.label_1603
.label_1603:
	mov	eax, dword ptr [rbp - 0x4c]
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], eax
.label_1624:
	nop	
	cmp	dword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	jge	.label_1600
	mov	edi, 0xffffff9c
	xor	ecx, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 0x48]
	call	utimensat
	nop	
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xe4], eax
	cmp	ecx, dword ptr [rbp - 0xe4]
	nop	
	jge	.label_1608
	lea	rsi, [rsi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x26
.label_1608:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xe4], 0
	nop	
	je	.label_1612
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x26
	mov	rsp, rsp
	je	.label_1618
.label_1612:
	mov	dword ptr [dword ptr [utimensat_works_really]],  1
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xe4]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1597
.label_1618:
	mov	rsp, rsp
	jmp	.label_1600
.label_1600:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 8]
	mov	rsp, rsp
	jg	.label_1613
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	call	futimens
	mov	rsp, rsp
	xor	edi, edi
	mov	dword ptr [rbp - 0xe4], eax
	nop	
	cmp	edi, dword ptr [rbp - 0xe4]
	mov	rbp, rbp
	jge	.label_1625
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x26
.label_1625:
	cmp	dword ptr [rbp - 0xe4], 0
	je	.label_1630
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x26
	mov	rbp, rbp
	je	.label_1599
.label_1630:
	mov	dword ptr [dword ptr [utimensat_works_really]],  1
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xe4]
	nop	
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1597
.label_1599:
	mov	rbp, rbp
	jmp	.label_1613
.label_1613:
	jmp	.label_1609
.label_1609:
	mov	rbp, rbp
	mov	dword ptr [dword ptr [utimensat_works_really]],  0xffffffff
	mov	dword ptr [dword ptr [lutimensat_works_really]],  0xffffffff
	nop	
	cmp	dword ptr [rbp - 0x4c], 0
	je	.label_1601
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x4c], 3
	je	.label_1616
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jge	.label_1626
	mov	rbp, rbp
	lea	rsi, [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	stat
	cmp	eax, 0
	jne	.label_1622
	mov	rsp, rsp
	jmp	.label_1616
.label_1626:
	nop	
	lea	rsi, [rbp - 0xe0]
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 8]
	mov	rsp, rsp
	call	__fstat
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_1616
.label_1622:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1597
.label_1616:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1598
	lea	rdi, [rbp - 0xe0]
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x48]
	mov	rsp, rsp
	call	update_timespec
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1593
	jmp	.label_1598
.label_1593:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1597
.label_1598:
	jmp	.label_1601
.label_1601:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x48], 0
	mov	rsp, rsp
	je	.label_1602
	lea	rax, [rbp - 0x130]
	mov	ecx, 0x3e8
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x130], rsi
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rsi + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1a0], rax
	mov	rbp, rbp
	mov	rax, rsi
	mov	qword ptr [rbp - 0x1a8], rdx
	mov	rbp, rbp
	cqo	
	mov	rsi, qword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	idiv	rsi
	mov	qword ptr [rbp - 0x128], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x120], rax
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rax + 0x18]
	mov	rsp, rsp
	cqo	
	idiv	rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x118], rax
	mov	rax, qword ptr [rbp - 0x1a0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x138], rax
	jmp	.label_1607
.label_1602:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x138], 0
.label_1607:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 8], 0
	jge	.label_1614
	mov	edi, 0xffffff9c
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x138]
	call	futimesat
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1597
.label_1614:
	xor	eax, eax
	mov	esi, eax
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x138]
	lea	rdi, [rdi]
	call	futimesat
	cmp	eax, 0
	jne	.label_1604
	cmp	qword ptr [rbp - 0x138], 0
	nop	
	je	.label_1611
	mov	eax, 0x7a120
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x138]
	cmp	rcx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	setle	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x139], sil
	mov	rdx, qword ptr [rbp - 0x138]
	cmp	rcx, qword ptr [rdx + 0x18]
	lea	rsi, [rsi]
	setle	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x13a], sil
	mov	rbp, rbp
	mov	sil, byte ptr [rbp - 0x139]
	and	sil, 1
	movzx	eax, sil
	mov	sil, byte ptr [rbp - 0x13a]
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
	lea	rsi, [rbp - 0xe0]
	mov	edi, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	__fstat
	lea	rdi, [rdi]
	cmp	eax, 0
	jne	.label_1610
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x138]
	sub	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x148], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	mov	rcx, qword ptr [rbp - 0x138]
	mov	rbp, rbp
	sub	rax, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x150], rax
	mov	qword ptr [rbp - 0x158], 0
	mov	rax, qword ptr [rbp - 0x138]
	mov	rcx, qword ptr [rax]
	mov	qword ptr [rbp - 0x180], rcx
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x178], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x138]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x170], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x168], rax
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x139], 1
	lea	rdi, [rdi]
	je	.label_1619
	cmp	qword ptr [rbp - 0x148], 1
	mov	rbp, rbp
	jne	.label_1619
	lea	rdi, [rbp - 0xe0]
	mov	rsp, rsp
	call	get_stat_atime_ns
	lea	rdi, [rdi]
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_1619
	lea	rax, [rbp - 0x180]
	nop	
	mov	qword ptr [rbp - 0x158], rax
	mov	rax, qword ptr [rbp - 0x158]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], 0
.label_1619:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x13a], 1
	nop	
	je	.label_1631
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x150], 1
	jne	.label_1631
	lea	rdi, [rbp - 0xe0]
	call	get_stat_mtime_ns
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_1631
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x180]
	nop	
	mov	qword ptr [rbp - 0x158], rax
	mov	rax, qword ptr [rbp - 0x158]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], 0
.label_1631:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x158], 0
	je	.label_1605
	xor	eax, eax
	nop	
	mov	esi, eax
	nop	
	mov	edi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x158]
	call	futimesat
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1ac], eax
.label_1605:
	nop	
	jmp	.label_1610
.label_1610:
	lea	rdi, [rdi]
	jmp	.label_1611
.label_1611:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1597
.label_1604:
	lea	rsi, [rsi]
	jmp	.label_1617
.label_1617:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1620
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rbp, rbp
	jmp	.label_1597
.label_1620:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x138]
	call	utimes
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
.label_1597:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x1b0
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b3d0

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
	mov	dword ptr [rbp - 0x14], 0
	mov	dword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rdi + 8], 0x3fffffff
	je	.label_1637
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0x3ffffffe
	mov	rbp, rbp
	je	.label_1637
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rdx + 8]
	jg	.label_1638
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0x3b9aca00
	lea	rsi, [rsi]
	jge	.label_1638
.label_1637:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax + 0x18], 0x3fffffff
	mov	rsp, rsp
	je	.label_1634
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	mov	rsp, rsp
	je	.label_1634
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	cmp	rcx, qword ptr [rdx + 0x18]
	lea	rsi, [rsi]
	jg	.label_1638
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0x3b9aca00
	mov	rbp, rbp
	jl	.label_1634
.label_1638:
	nop	
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x16
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1640
.label_1634:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax + 8], 0x3fffffff
	mov	rbp, rbp
	je	.label_1632
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0x3ffffffe
	jne	.label_1636
.label_1632:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax], 0
	mov	dword ptr [rbp - 0x14], 1
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0x3ffffffe
	jne	.label_1641
	mov	eax, dword ptr [rbp - 0x18]
	add	eax, 1
	mov	dword ptr [rbp - 0x18], eax
.label_1641:
	jmp	.label_1636
.label_1636:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax + 0x18], 0x3fffffff
	je	.label_1639
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	nop	
	jne	.label_1633
.label_1639:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], 0
	mov	dword ptr [rbp - 0x14], 1
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	jne	.label_1635
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	eax, 1
	mov	dword ptr [rbp - 0x18], eax
.label_1635:
	mov	rbp, rbp
	jmp	.label_1633
.label_1633:
	mov	eax, dword ptr [rbp - 0x14]
	cmp	dword ptr [rbp - 0x18], 1
	sete	cl
	mov	rsp, rsp
	and	cl, 1
	movzx	edx, cl
	add	eax, edx
	mov	dword ptr [rbp - 4], eax
.label_1640:
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b5c0

	.globl update_timespec
	.type update_timespec, @function
update_timespec:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
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
	jne	.label_1642
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	mov	rbp, rbp
	jne	.label_1642
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_1649
.label_1642:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	cmp	qword ptr [rax + 8], 0x3fffffff
	lea	rsi, [rsi]
	jne	.label_1643
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x18], 0x3fffffff
	mov	rbp, rbp
	jne	.label_1643
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rax], 0
	mov	byte ptr [rbp - 1], 0
	mov	rbp, rbp
	jmp	.label_1649
.label_1643:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0x3ffffffe
	mov	rsp, rsp
	jne	.label_1647
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	call	get_stat_atime
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx + 8], rax
	lea	rdi, [rdi]
	jmp	.label_1646
.label_1647:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax + 8], 0x3fffffff
	nop	
	jne	.label_1644
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	gettime
.label_1644:
	jmp	.label_1646
.label_1646:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	jne	.label_1648
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x50], rax
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x38], rdx
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rdx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + 0x18], rax
	mov	rbp, rbp
	jmp	.label_1645
.label_1648:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x18], 0x3fffffff
	jne	.label_1650
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, 0x10
	lea	rdi, [rdi]
	mov	rdi, rax
	call	gettime
.label_1650:
	nop	
	jmp	.label_1645
.label_1645:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 0
.label_1649:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	add	rsp, 0x50
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b7a0

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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
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
	#Procedure 0x41b7e0

	.globl lutimens
	.type lutimens, @function
lutimens:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x120
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1667
	mov	rsp, rsp
	lea	rax, [rbp - 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x110], rax
	mov	rsp, rsp
	jmp	.label_1656
.label_1667:
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x110], rcx
	lea	rsi, [rsi]
	jmp	.label_1656
.label_1656:
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x48], rax
	mov	dword ptr [rbp - 0x4c], 0
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1660
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	call	validate_timespec
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], eax
.label_1660:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1655
	nop	
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_1654
.label_1655:
	xor	eax, eax
	cmp	eax,  dword ptr [dword ptr [lutimensat_works_really]]
	nop	
	jg	.label_1659
	cmp	dword ptr [rbp - 0x4c], 2
	lea	rsi, [rsi]
	jne	.label_1661
	mov	rbp, rbp
	lea	rsi, [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	__lstat
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_1666
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rbp, rbp
	jmp	.label_1654
.label_1666:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 8], 0x3ffffffe
	jne	.label_1670
	lea	rdi, [rbp - 0xe0]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x118], rax
	call	get_stat_atime
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf8], rax
	mov	qword ptr [rbp - 0xf0], rdx
	mov	rax, qword ptr [rbp - 0xf8]
	nop	
	mov	rdx, qword ptr [rbp - 0x118]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	qword ptr [rdx + 8], rax
	mov	rsp, rsp
	jmp	.label_1651
.label_1670:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	nop	
	jne	.label_1668
	mov	rsp, rsp
	lea	rdi, [rbp - 0xe0]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0x120], rax
	mov	rsp, rsp
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x108], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x100], rdx
	mov	rax, qword ptr [rbp - 0x108]
	mov	rdx, qword ptr [rbp - 0x120]
	mov	qword ptr [rdx + 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	qword ptr [rdx + 0x18], rax
.label_1668:
	nop	
	jmp	.label_1651
.label_1651:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
.label_1661:
	mov	rsp, rsp
	mov	edi, 0xffffff9c
	mov	rsp, rsp
	mov	ecx, 0x100
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	call	utimensat
	xor	ecx, ecx
	mov	dword ptr [rbp - 0xe4], eax
	cmp	ecx, dword ptr [rbp - 0xe4]
	mov	rsp, rsp
	jge	.label_1653
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0x26
.label_1653:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xe4], 0
	je	.label_1658
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	mov	rsp, rsp
	je	.label_1662
.label_1658:
	nop	
	mov	dword ptr [dword ptr [utimensat_works_really]],  1
	mov	rbp, rbp
	mov	dword ptr [dword ptr [lutimensat_works_really]],  1
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xe4]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_1654
.label_1662:
	mov	rsp, rsp
	jmp	.label_1659
.label_1659:
	mov	dword ptr [dword ptr [lutimensat_works_really]],  0xffffffff
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x4c], 0
	lea	rsi, [rsi]
	je	.label_1652
	nop	
	cmp	dword ptr [rbp - 0x4c], 3
	je	.label_1665
	lea	rsi, [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x10]
	call	__lstat
	nop	
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_1665
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_1654
.label_1665:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x48], 0
	mov	rsp, rsp
	je	.label_1663
	lea	rdi, [rbp - 0xe0]
	lea	rsi, [rbp - 0x48]
	call	update_timespec
	mov	rbp, rbp
	test	al, 1
	mov	rbp, rbp
	jne	.label_1669
	jmp	.label_1663
.label_1669:
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0
	mov	rsp, rsp
	jmp	.label_1654
.label_1663:
	mov	rsp, rsp
	jmp	.label_1652
.label_1652:
	cmp	dword ptr [rbp - 0x4c], 0
	jne	.label_1657
	lea	rsi, [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x10]
	call	__lstat
	cmp	eax, 0
	je	.label_1657
	nop	
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1654
.label_1657:
	mov	eax, dword ptr [rbp - 0xc8]
	and	eax, 0xf000
	cmp	eax, 0xa000
	mov	rsp, rsp
	je	.label_1664
	mov	edi, 0xffffffff
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x48]
	nop	
	call	fdutimens
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1654
.label_1664:
	nop	
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x26
	mov	dword ptr [rbp - 4], 0xffffffff
.label_1654:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x120
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41bbc0

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
	je	.label_1671
	movabs	rsi, OFFSET FLAT:.str_13
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
	jmp	.label_1675
.label_1671:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_10
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_1675:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:.str.2_7
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
	mov	ecx, OFFSET FLAT:.str.3_4
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
	ja	.label_1674
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1673]]
	jmp	rcx
.label_2023:
	jmp	.label_1672
.label_2024:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.4_2
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
	jmp	.label_1672
.label_2025:
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
	jmp	.label_1672
.label_2026:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6_1
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
	jmp	.label_1672
.label_2027:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.7_1
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
	jmp	.label_1672
.label_2028:
	nop	
	movabs	rdi, OFFSET FLAT:.str.8_1
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
	jmp	.label_1672
.label_2029:
	nop	
	movabs	rdi, OFFSET FLAT:.str.9_1
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
	jmp	.label_1672
.label_2030:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.10_2
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
	jmp	.label_1672
.label_2031:
	movabs	rdi, OFFSET FLAT:.str.11_2
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
	jmp	.label_1672
.label_2032:
	movabs	rdi, OFFSET FLAT:.str.12_2
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
	jmp	.label_1672
.label_1674:
	movabs	rdi, OFFSET FLAT:.str.13_2
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
.label_1672:
	lea	rdi, [rdi]
	add	rsp, 0x180
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c330
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
.label_1676:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1677
	mov	rbp, rbp
	jmp	.label_1678
.label_1678:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_1676
.label_1677:
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
	.align	32
	#Procedure 0x41c3e0

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
.label_1685:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_1684
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_1680
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
	jmp	.label_1681
.label_1680:
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_1681:
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
.label_1684:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x81]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_1683
	mov	rsp, rsp
	jmp	.label_1679
.label_1683:
	jmp	.label_1682
.label_1682:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1685
.label_1679:
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
	.align	32
	#Procedure 0x41c540

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
	je	.label_1686
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
.label_1686:
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
	.align	32
	#Procedure 0x41c6f0
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
	.align	32
	#Procedure 0x41c7a0

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
	.section	.text
	.align	32
	#Procedure 0x41c810
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
	.section	.text
	.align	32
	#Procedure 0x41c870

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
	jne	.label_1689
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_1689
	lea	rdi, [rdi]
	call	xalloc_die
.label_1689:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c8d0

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
	jae	.label_1690
	mov	rsp, rsp
	call	xalloc_die
.label_1690:
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
	.align	32
	#Procedure 0x41c950

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
	jne	.label_1691
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_1691
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1693
.label_1691:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_1692
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_1692
	lea	rsi, [rsi]
	call	xalloc_die
.label_1692:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_1693:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ca00

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
	jne	.label_1694
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1696
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
.label_1696:
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
	div	qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_1695
	call	xalloc_die
.label_1695:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_1697:
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
	.align	32
	#Procedure 0x41cb30

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
	.align	32
	#Procedure 0x41cb60
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
	.align	32
	#Procedure 0x41cba0
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
	.align	32
	#Procedure 0x41cbf0
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
	jb	.label_1699
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_1700
.label_1699:
	lea	rsi, [rsi]
	call	xalloc_die
.label_1700:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41cc60

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
	.align	32
	#Procedure 0x41ccb0

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
	.align	32
	#Procedure 0x41cd10

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
	.section	.text
	.align	32
	#Procedure 0x41cd70

	.globl yesno
	.type yesno, @function
yesno:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rbp - 0x10]
	mov	rbp, rbp
	lea	rsi, [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], 0
	mov	qword ptr [rbp - 0x18], 0
	mov	rdx,  qword ptr [word ptr [stdin]]
	call	getline
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jg	.label_1702
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1701
.label_1702:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0xa
	jne	.label_1703
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx + rax], 0
.label_1703:
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	rpmatch
	nop	
	xor	ecx, ecx
	nop	
	cmp	ecx, eax
	mov	rsp, rsp
	setl	dl
	and	dl, 1
	mov	byte ptr [rbp - 1], dl
.label_1701:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ce40

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
	je	.label_1704
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_1705
.label_1704:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_1706
.label_1705:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_1706:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ceb0

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
	je	.label_1707
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
.label_1707:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41cf10

	.globl freadahead
	.type freadahead, @function
freadahead:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rdi, qword ptr [rax + 0x20]
	nop	
	jbe	.label_1708
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1710
.label_1708:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	nop	
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rcx]
	and	edx, 0x100
	mov	rbp, rbp
	cmp	edx, 0
	mov	qword ptr [rbp - 0x18], rax
	je	.label_1709
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x48]
	sub	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_1711
.label_1709:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	mov	rbp, rbp
	jmp	.label_1711
.label_1711:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rcx
.label_1710:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41cfe0

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
	jne	.label_1712
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_1712
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1712
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
	jne	.label_1713
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1714
.label_1713:
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
	jmp	.label_1714
.label_1712:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
.label_1714:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d0f0

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
	jne	.label_1715
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_1715:
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
	ja	.label_1716
	nop	
	cmp	qword ptr [rbp - 0x20], 0
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
	jmp	.label_1717
.label_1716:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_1717:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d1e0

	.globl free_permission_context
	.type free_permission_context, @function
free_permission_context:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d1f0

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
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	qword ptr [rbp - 0x18], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdi, rcx
	mov	esi, eax
	lea	rdi, [rdi]
	mov	rdx, r9
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	call	memset
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	dword ptr [rcx], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d260

	.globl chmod_or_fchmod
	.type chmod_or_fchmod, @function
chmod_or_fchmod:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], esi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], edx
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x14], -1
	mov	rsp, rsp
	je	.label_1718
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x18]
	call	fchmod
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_1719
.label_1718:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	chmod
	mov	dword ptr [rbp - 4], eax
.label_1719:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d2d0

	.globl set_permissions
	.type set_permissions, @function
set_permissions:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], edx
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1d], 0
	mov	byte ptr [rbp - 0x1f], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], 0
	mov	byte ptr [rbp - 0x1e], 1
	test	byte ptr [rbp - 0x1e], 1
	je	.label_1724
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	edx, dword ptr [rax]
	lea	rsi, [rsi]
	call	chmod_or_fchmod
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x24], 0
	nop	
	je	.label_1723
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1721
.label_1723:
	mov	rbp, rbp
	jmp	.label_1724
.label_1724:
	test	byte ptr [rbp - 0x1f], 1
	nop	
	je	.label_1720
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x1e], 1
	nop	
	jne	.label_1720
	cmp	dword ptr [rbp - 0x24], 0
	je	.label_1725
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	jmp	.label_1722
.label_1725:
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	mov	rbp, rbp
	jmp	.label_1722
.label_1722:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x28], eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx]
	call	chmod_or_fchmod
	nop	
	mov	dword ptr [rbp - 0x24], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	je	.label_1726
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x30], eax
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x24], 0xffffffff
.label_1726:
	jmp	.label_1720
.label_1720:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
.label_1721:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d410
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], esi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0xc]
	mov	ecx, esi
	shl	rdi, cl
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0xc]
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
	.section	.text
	.align	32
	#Procedure 0x41d460
	.globl rotr64
	.type rotr64, @function
rotr64:

	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	eax, 0x40
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], esi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	ecx, esi
	nop	
	shr	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	eax, eax
	mov	ecx, eax
	mov	rbp, rbp
	shl	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d4b0
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
	.section	.text
	.align	32
	#Procedure 0x41d500
	.globl rotr32
	.type rotr32, @function
rotr32:

	nop
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x20
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], esi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 8]
	mov	rsp, rsp
	shr	esi, cl
	mov	edi, dword ptr [rbp - 4]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, eax
	shl	edi, cl
	or	esi, edi
	mov	eax, esi
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d540
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
	.section	.text
	.align	32
	#Procedure 0x41d5a0

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	nop	
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 0xc]
	mov	edx, eax
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsp, rsp
	mov	rcx, rdx
	lea	rdi, [rdi]
	shr	rdi, cl
	nop	
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	movsxd	r8, dword ptr [rbp - 0xc]
	mov	r9, qword ptr [rbp - 0x18]
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
	.section	.text
	.align	32
	#Procedure 0x41d600
	.globl rotl16
	.type rotl16, @function
rotl16:

	push	rbp
	mov	rbp, rsp
	mov	ax, di
	lea	rsi, [rsi]
	mov	edi, 0x10
	mov	rsp, rsp
	mov	word ptr [rbp - 2], ax
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], esi
	movzx	esi, word ptr [rbp - 2]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 8]
	mov	rbp, rbp
	shl	esi, cl
	movzx	edx, word ptr [rbp - 2]
	sub	edi, dword ptr [rbp - 8]
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
	.section	.text
	.align	32
	#Procedure 0x41d650
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
	.section	.text
	.align	32
	#Procedure 0x41d6a0
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
	mov	byte ptr [rbp - 1], al
	nop	
	mov	dword ptr [rbp - 8], esi
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rbp - 1]
	mov	ecx, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	shl	esi, cl
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rbp - 1]
	mov	rsp, rsp
	sub	edi, dword ptr [rbp - 8]
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
	.section	.text
	.align	32
	#Procedure 0x41d700
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
	.section	.text
	.align	32
	#Procedure 0x41d750

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
	jne	.label_1727
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_1730
.label_1727:
	mov	rbp, rbp
	jmp	.label_1728
.label_1728:
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
	jne	.label_1729
	jmp	.label_1731
.label_1729:
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
	je	.label_1728
.label_1731:
	movzx	eax, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x2a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_1730:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d840

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
	jne	.label_1734
	test	byte ptr [rbp - 0x13], 1
	je	.label_1733
	test	byte ptr [rbp - 0x11], 1
	lea	rsi, [rsi]
	jne	.label_1734
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_1733
.label_1734:
	nop	
	test	byte ptr [rbp - 0x13], 1
	mov	rsp, rsp
	jne	.label_1732
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1732:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1735
.label_1733:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
.label_1735:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d920

	.globl opendir_safer
	.type opendir_safer, @function
opendir_safer:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	opendir
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	je	.label_1737
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	dirfd
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x14], eax
	nop	
	cmp	ecx, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	jg	.label_1736
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 2
	lea	rdi, [rdi]
	jg	.label_1736
	mov	esi, 0x406
	mov	edx, 3
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	al, 0
	call	rpl_fcntl
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	jge	.label_1739
	lea	rsi, [rsi]
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
	mov	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	jmp	.label_1738
.label_1739:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x28]
	call	fdopendir
	mov	qword ptr [rbp - 0x20], rax
	call	__errno_location
	lea	rdi, [rdi]
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], edi
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1740
	mov	edi, dword ptr [rbp - 0x28]
	call	close
	mov	dword ptr [rbp - 0x2c], eax
.label_1740:
	nop	
	jmp	.label_1738
.label_1738:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	closedir
	nop	
	mov	ecx, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x30], eax
	mov	dword ptr [rbp - 0x34], ecx
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	mov	dword ptr [rax], ecx
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
.label_1736:
	jmp	.label_1737
.label_1737:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x40
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41da50

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
	.section	.text
	.align	32
	#Procedure 0x41da90
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
	lea	rdi, [rbp - 0x20]
	call	gettime
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rbp - 0x20]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41dae0

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
	je	.label_1742
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_14
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_1743
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_12
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1741
.label_1743:
	mov	byte ptr [rbp - 5], 0
.label_1741:
	jmp	.label_1742
.label_1742:
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
	.align	32
	#Procedure 0x41db80

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], 0
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
.label_1745:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_1744
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
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
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1745
.label_1744:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41dc10

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
	.section	.text
	.align	32
	#Procedure 0x41dc90

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x1b0
	test	al, al
	movaps	xmmword ptr [rbp - 0xf0], xmm7
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x100], xmm6
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x110], xmm5
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x120], xmm4
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x130], xmm3
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x140], xmm2
	movaps	xmmword ptr [rbp - 0x150], xmm1
	movaps	xmmword ptr [rbp - 0x160], xmm0
	mov	dword ptr [rbp - 0x164], edi
	mov	qword ptr [rbp - 0x170], r9
	mov	qword ptr [rbp - 0x178], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x180], rcx
	mov	dword ptr [rbp - 0x184], edx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x190], rsi
	mov	rbp, rbp
	je	.label_1748
	lea	rsi, [rsi]
	movaps	xmm0, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x150]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0xa0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x130]
	nop	
	movaps	xmmword ptr [rbp - 0x80], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x120]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x70], xmm4
	mov	rbp, rbp
	movaps	xmm5, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm5
	lea	rsi, [rsi]
	movaps	xmm6, xmmword ptr [rbp - 0x100]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x50], xmm6
	lea	rdi, [rdi]
	movaps	xmm7, xmmword ptr [rbp - 0xf0]
	movaps	xmmword ptr [rbp - 0x40], xmm7
.label_1748:
	mov	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0xb8], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rdx, qword ptr [rbp - 0x180]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x184]
	mov	rdi, qword ptr [rbp - 0x190]
	nop	
	mov	r8d, dword ptr [rbp - 0x164]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], r8d
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18], 0
	mov	esi, dword ptr [rbp - 0x14]
	and	esi, 0x40
	lea	rsi, [rsi]
	cmp	esi, 0
	je	.label_1749
	lea	rax, [rbp - 0x30]
	mov	rcx, rax
	mov	rsp, rsp
	lea	rdx, [rbp - 0xe0]
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
	mov	esi, dword ptr [rbp - 0x30]
	cmp	esi, 0x28
	mov	qword ptr [rbp - 0x198], rax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x19c], esi
	lea	rsi, [rsi]
	ja	.label_1750
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x19c]
	mov	rsp, rsp
	movsxd	rcx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x198]
	mov	rbp, rbp
	add	rcx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	add	eax, 8
	mov	rbp, rbp
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1a8], rcx
	mov	rsp, rsp
	jmp	.label_1751
.label_1750:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x198]
	mov	rcx, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1a8], rdx
.label_1751:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1a8]
	lea	rcx, [rbp - 0x30]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_1749:
	mov	edi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	ecx, dword ptr [rbp - 0x18]
	xor	eax, eax
	mov	r8b, al
	mov	al, r8b
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0x1b0
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41df10

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
	.section	.text
	.align	32
	#Procedure 0x41df70

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	call	randread_new
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	nop	
	je	.label_1753
	mov	rdi, qword ptr [rbp - 0x18]
	call	randint_new
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1752
.label_1753:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rcx
	lea	rsi, [rsi]
	jmp	.label_1752
.label_1752:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41dfe0
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
	.section	.text
	.align	32
	#Procedure 0x41e000

	.globl randint_genmax
	.type randint_genmax, @function
randint_genmax:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	nop	
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rsi, 1
	nop	
	mov	qword ptr [rbp - 0x38], rsi
.label_1754:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1760
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
.label_1757:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	call	shift_left
	add	rax, 0xff
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x18]
	jb	.label_1757
	lea	rsi, [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rbp - 0x40]
	nop	
	call	randread
	mov	qword ptr [rbp - 0x40], 0
.label_1756:
	mov	rdi, qword ptr [rbp - 0x28]
	call	shift_left
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp + rdi - 0x50]
	lea	rsi, [rsi]
	mov	edi, ecx
	add	rax, rdi
	mov	qword ptr [rbp - 0x28], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	call	shift_left
	nop	
	add	rax, 0xff
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jb	.label_1756
	jmp	.label_1760
.label_1760:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_1759
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1755
.label_1759:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rbp - 0x60], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	sub	rdx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rax, rdx
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	div	qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rdx
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x68]
	ja	.label_1758
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 8], rax
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_1755
.label_1758:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x60]
	sub	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	jmp	.label_1754
.label_1755:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x70
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e260

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
	.section	.text
	.align	32
	#Procedure 0x41e280

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
	.section	.text
	.align	32
	#Procedure 0x41e2c0

	.globl randint_all_free
	.type randint_all_free, @function
randint_all_free:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	call	randread_free
	mov	dword ptr [rbp - 0xc], eax
	lea	rsi, [rsi]
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], ecx
	mov	rdi, qword ptr [rbp - 8]
	call	randint_free
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x14], ecx
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e320

	.globl randread_new
	.type randread_new, @function
randread_new:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jne	.label_1761
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdi, rcx
	nop	
	mov	rsi, rcx
	call	simple_new
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1762
.label_1761:
	nop	
	mov	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_1763
	nop	
	movabs	rsi, OFFSET FLAT:.str_15
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	fopen_safer
	nop	
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jne	.label_1767
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jmp	.label_1762
.label_1767:
	mov	rsp, rsp
	jmp	.label_1763
.label_1763:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	call	simple_new
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1765
	mov	eax, 0x1000
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rdx, 0x18
	cmp	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rdi
	mov	rbp, rbp
	jae	.label_1764
	lea	rdi, [rdi]
	mov	eax, 0x1000
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x40], rcx
	mov	rsp, rsp
	jmp	.label_1766
.label_1764:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
.label_1766:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rcx, rax
	mov	rbp, rbp
	call	setvbuf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1768
.label_1765:
	lea	rdi, [rdi]
	mov	eax, 0x800
	mov	esi, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x18], 0
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 0x18
	nop	
	add	rcx, 8
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	get_nonce
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 0x18
	lea	rsi, [rsi]
	add	rcx, 8
	lea	rsi, [rsi]
	mov	rdi, rcx
	call	isaac_seed
.label_1768:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_1762:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e4e0

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
	.section	.text
	.align	32
	#Procedure 0x41e560

	.globl get_nonce
	.type get_nonce, @function
get_nonce:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x100
	movabs	rax, OFFSET FLAT:.str.3_5
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], 0
	nop	
	mov	rdi, rax
	nop	
	mov	esi, ecx
	mov	al, 0
	call	open
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	cmp	ecx, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	jg	.label_1777
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x2c]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x8c], edi
	mov	qword ptr [rbp - 0x98], rsi
	nop	
	jae	.label_1780
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_1785
.label_1780:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
.label_1785:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x8c]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdx, rax
	call	read
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jge	.label_1778
	mov	qword ptr [rbp - 0x28], 0
.label_1778:
	mov	edi, dword ptr [rbp - 0x2c]
	call	close
	mov	dword ptr [rbp - 0xa4], eax
.label_1777:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_1782
	lea	rdi, [rdi]
	mov	eax, 0x10
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jae	.label_1786
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0xb0], rcx
	mov	rbp, rbp
	jmp	.label_1775
.label_1786:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0xb0], rax
.label_1775:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rdi, [rbp - 0x40]
	xor	ecx, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x48], rax
	call	gettimeofday
	lea	rsi, [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	add	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x48]
	nop	
	mov	dword ptr [rbp - 0xb4], eax
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x48]
	add	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rdx
.label_1782:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	jae	.label_1770
	nop	
	mov	eax, 4
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	sub	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rcx, rdx
	mov	rsp, rsp
	jae	.label_1773
	mov	rsp, rsp
	mov	eax, 4
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rsp, rsp
	jmp	.label_1779
.label_1773:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc0], rax
.label_1779:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	lea	rsi, [rsi]
	call	getpid
	nop	
	lea	rcx, [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rsi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0xc8], rsi
	nop	
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0xc8]
	call	memcpy
	nop	
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
.label_1770:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	jae	.label_1781
	mov	eax, 4
	nop	
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	sub	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	jae	.label_1784
	mov	eax, 4
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0xd0], rcx
	jmp	.label_1769
.label_1784:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xd0], rax
.label_1769:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x68], rax
	call	getppid
	lea	rcx, [rbp - 0x5c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0xd8], rsi
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0xd8]
	nop	
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x68]
	add	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rcx
.label_1781:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1787
	mov	eax, 4
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	mov	rbp, rbp
	jae	.label_1771
	lea	rdi, [rdi]
	mov	eax, 4
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0xe0], rcx
	jmp	.label_1776
.label_1771:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe0], rax
.label_1776:
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rax
	call	getuid
	mov	rsp, rsp
	lea	rcx, [rbp - 0x6c]
	mov	dword ptr [rbp - 0x6c], eax
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdi, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], rsi
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xe8]
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x78]
	nop	
	add	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rcx
.label_1787:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1772
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	sub	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	rcx, rdx
	jae	.label_1774
	mov	rsp, rsp
	mov	eax, 4
	mov	rsp, rsp
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0xf0], rcx
	mov	rbp, rbp
	jmp	.label_1783
.label_1774:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xf0], rax
.label_1783:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0x88], rax
	nop	
	call	getgid
	lea	rcx, [rbp - 0x7c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], eax
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rdi, rdx
	nop	
	mov	qword ptr [rbp - 0xf8], rsi
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	rbp, rbp
	call	memcpy
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x88]
	add	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
.label_1772:
	add	rsp, 0x100
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ea10
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
	.section	.text
	.align	32
	#Procedure 0x41ea40
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
	.section	.text
	.align	32
	#Procedure 0x41ea60

	.globl randread
	.type randread, @function
randread:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rdx], 0
	mov	rbp, rbp
	je	.label_1788
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	call	readsource
	jmp	.label_1789
.label_1788:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
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
	.section	.text
	.align	32
	#Procedure 0x41eae0

	.globl readsource
	.type readsource, @function
readsource:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_1794:
	nop	
	mov	eax, 1
	nop	
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	call	fread_unlocked
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	call	__errno_location
	mov	rbp, rbp
	mov	r8d, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x24], r8d
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x18], rcx
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1791
	jmp	.label_1792
.label_1791:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	lea	rdi, [rdi]
	call	ferror_unlocked
	lea	rsi, [rsi]
	cmp	eax, 0
	nop	
	je	.label_1793
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_1790
.label_1793:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_1790
.label_1790:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	call	rax
	jmp	.label_1794
.label_1792:
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ebf0

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
.label_1797:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	ja	.label_1801
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
	jmp	.label_1800
.label_1801:
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
	jne	.label_1795
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
.label_1798:
	lea	rdi, [rdi]
	mov	eax, 0x800
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	ja	.label_1799
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
	jne	.label_1796
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rax], 0
	mov	rbp, rbp
	jmp	.label_1800
.label_1796:
	lea	rdi, [rdi]
	jmp	.label_1798
.label_1799:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
.label_1795:
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
	jmp	.label_1797
.label_1800:
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41edf0

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
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	call	explicit_bzero
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rsi
	call	free
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1802
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	rpl_fclose
	nop	
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	jmp	.label_1803
.label_1802:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	jmp	.label_1803
.label_1803:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ee80

	.globl randread_error
	.type randread_error, @function
randread_error:
	mov	rsp, rsp
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	nop	
	je	.label_1804
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	nop	
	mov	dword ptr [rbp - 0xc], edi
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], esi
	call	__errno_location
	cmp	dword ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_1806
	movabs	rdi, OFFSET FLAT:.str.1_14
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	jmp	.label_1805
.label_1806:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.2_8
	nop	
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
.label_1805:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	call	quote
	mov	edi, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x10]
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
	.section	.text
	.align	32
	#Procedure 0x41ef40

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rsi + 0x800]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x808]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x810]
	add	rax, 1
	mov	qword ptr [rdi + 0x810], rax
	add	rsi, rax
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_1808:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 0x15
	xor	rax, rcx
	xor	rax, 0xffffffffffffffff
	xor	rax, 0
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	add	rax, qword ptr [rcx + 0x400]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	shr	rax, 8
	mov	rsp, rsp
	mov	rsi, rax
	lea	rdi, [rdi]
	call	ind
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rdi, rax
	nop	
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rbp, rbp
	call	just
	shr	rax, 5
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	xor	rcx, rax
	xor	rcx, 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rax + 0x408]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	call	ind
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x50], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x50]
	shr	rax, 8
	mov	rsi, rax
	mov	rsp, rsp
	call	ind
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
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
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx + 0x410]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	qword ptr [rbp - 0x58], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x58]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x10], rax
	nop	
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	shr	rax, 8
	mov	rsi, rax
	lea	rsi, [rsi]
	call	ind
	add	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0xc0], rax
	call	just
	nop	
	shr	rax, 0x21
	mov	rcx, qword ptr [rbp - 0xc0]
	xor	rcx, rax
	mov	rsp, rsp
	xor	rcx, 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rax + 0x418]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x68]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x70], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x18], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	shr	rax, 8
	mov	rsi, rax
	lea	rsi, [rsi]
	call	ind
	add	rax, qword ptr [rbp - 0x68]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	just
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	add	rax, 0x20
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rax, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rcx, qword ptr [rbp - 8]
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
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	add	rax, qword ptr [rcx - 0x400]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x80], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x78]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	just
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rax
	lea	rdi, [rdi]
	call	just
	shr	rax, 5
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	xor	rcx, rax
	lea	rdi, [rdi]
	xor	rcx, 0
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rax - 0x3f8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x88]
	call	ind
	nop	
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x90], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x90]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x88]
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	call	just
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	shl	rcx, 0xc
	xor	rax, rcx
	mov	rbp, rbp
	xor	rax, 0
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx - 0x3f0]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x98], rax
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa0], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rcx + 0x10], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0xa0]
	shr	rax, 8
	mov	rsp, rsp
	mov	rsi, rax
	mov	rbp, rbp
	call	ind
	add	rax, qword ptr [rbp - 0x98]
	mov	rdi, rax
	call	just
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xd0], rax
	lea	rdi, [rdi]
	call	just
	mov	rsp, rsp
	shr	rax, 0x21
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	rsp, rsp
	xor	rcx, rax
	xor	rcx, 0
	mov	rax, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rax - 0x3e8]
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa8], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xa8]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x18], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	shr	rax, 8
	mov	rsi, rax
	lea	rdi, [rdi]
	call	ind
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	rdi, rax
	call	just
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rcx + 0x18], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x20
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rcx, 0x800
	cmp	rax, rcx
	jb	.label_1807
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x800], rax
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x808], rax
	lea	rsi, [rsi]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41f5e0

	.globl ind
	.type ind, @function
ind:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	and	rdi, 0x7f8
	lea	rdi, [rdi]
	add	rsi, rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rax, qword ptr [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41f650

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
	.section	.text
	.align	32
	#Procedure 0x41f680

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x50
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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], r11
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], r10
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], r9
	mov	qword ptr [rbp - 0x28], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x38], rdx
	mov	qword ptr [rbp - 0x40], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4c], 0
.label_1812:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x4c], 0x100
	mov	rbp, rbp
	jge	.label_1811
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x4c]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	add	edx, 1
	movsxd	rax, edx
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	nop	
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 2
	movsxd	rax, edx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 3
	movsxd	rax, edx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	add	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	nop	
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 4
	movsxd	rax, edx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	add	edx, 5
	mov	rbp, rbp
	movsxd	rax, edx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	rsp, rsp
	add	edx, 6
	movsxd	rax, edx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	edx, dword ptr [rbp - 0x4c]
	nop	
	add	edx, 7
	nop	
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rcx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	call	just
	nop	
	shr	rax, 9
	lea	rsi, [rsi]
	xor	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x18], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 9
	xor	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x20], rcx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	just
	shr	rax, 0x17
	xor	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 0xf
	xor	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rdi, qword ptr [rbp - 0x28]
	call	just
	lea	rdi, [rdi]
	shr	rax, 0xe
	xor	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	sub	rcx, rax
	mov	qword ptr [rbp - 0x38], rcx
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	shl	rax, 0x14
	xor	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	call	just
	shr	rax, 0x11
	xor	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x48], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	shl	rax, 0xe
	xor	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 0x4c]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x4c]
	lea	rdi, [rdi]
	add	edx, 1
	mov	rsp, rsp
	movsxd	rcx, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rdi + rcx*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 2
	mov	rbp, rbp
	movsxd	rcx, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	add	edx, 3
	lea	rsi, [rsi]
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 4
	mov	rbp, rbp
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 5
	movsxd	rcx, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	edx, dword ptr [rbp - 0x4c]
	lea	rdi, [rdi]
	add	edx, 6
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	add	edx, 7
	nop	
	movsxd	rcx, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	nop	
	mov	eax, dword ptr [rbp - 0x4c]
	add	eax, 8
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_1812
.label_1811:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x50], 0
.label_1810:
	cmp	dword ptr [rbp - 0x50], 0x100
	mov	rsp, rsp
	jge	.label_1809
	movsxd	rax, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	edx, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	edx, 1
	lea	rsi, [rsi]
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 2
	lea	rsi, [rsi]
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 3
	lea	rsi, [rsi]
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x50]
	nop	
	add	edx, 4
	movsxd	rax, edx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 5
	movsxd	rax, edx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	mov	edx, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	edx, 6
	movsxd	rax, edx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	edx, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	edx, 7
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	call	just
	lea	rdi, [rdi]
	shr	rax, 9
	nop	
	xor	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	sub	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 9
	lea	rsi, [rsi]
	xor	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rcx, rax
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	call	just
	mov	rsp, rsp
	shr	rax, 0x17
	mov	rbp, rbp
	xor	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	sub	rcx, rax
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 0xf
	xor	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x30], rcx
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	call	just
	lea	rsi, [rsi]
	shr	rax, 0xe
	lea	rsi, [rsi]
	xor	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x38], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	shl	rax, 0x14
	mov	rsp, rsp
	xor	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rcx
	mov	rdi, qword ptr [rbp - 0x38]
	call	just
	mov	rbp, rbp
	shr	rax, 0x11
	mov	rsp, rsp
	xor	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x48], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 0xe
	xor	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	edx, 1
	mov	rbp, rbp
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + rcx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 2
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rbp - 0x50]
	nop	
	add	edx, 3
	mov	rsp, rsp
	movsxd	rcx, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rdi + rcx*8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 4
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 5
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rdi + rcx*8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	edx, dword ptr [rbp - 0x50]
	nop	
	add	edx, 6
	movsxd	rcx, edx
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	rsp, rsp
	movsxd	rcx, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rcx*8], rax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x50]
	nop	
	add	eax, 8
	mov	dword ptr [rbp - 0x50], eax
	mov	rbp, rbp
	jmp	.label_1810
.label_1809:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x810], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x808], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x800], 0
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ff40

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
	.section	.text
	.align	32
	#Procedure 0x41ff80

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	esi, eax
	lea	rsi, [rsi]
	call	memset
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ffc0

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
	jge	.label_1816
	mov	rdi, qword ptr [rbp - 0x10]
.label_2005:
	call	fclose
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_1814
.label_1816:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_1813
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
	je	.label_1815
.label_1813:
	mov	rdi, qword ptr [rbp - 0x10]
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
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_1817
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
.label_1817:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_1814:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4200e0

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
	movaps	xmmword ptr [rbp - 0x100], xmm7
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmmword ptr [rbp - 0x140], xmm3
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x150], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	dword ptr [rbp - 0x174], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x180], r9
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x188], r8
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	nop	
	mov	dword ptr [rbp - 0x19c], esi
	nop	
	je	.label_1818
	mov	rbp, rbp
	movaps	xmm0, xmmword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	nop	
	movaps	xmm1, xmmword ptr [rbp - 0x160]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xb0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x150]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	lea	rsi, [rsi]
	movaps	xmm3, xmmword ptr [rbp - 0x140]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x90], xmm3
	lea	rsi, [rsi]
	movaps	xmm4, xmmword ptr [rbp - 0x130]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x80], xmm4
	mov	rbp, rbp
	movaps	xmm5, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm5
	mov	rsp, rsp
	movaps	xmm6, xmmword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x60], xmm6
	mov	rsp, rsp
	movaps	xmm7, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm7
.label_1818:
	mov	rax, qword ptr [rbp - 0x180]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x188]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rdx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x198]
	mov	qword ptr [rbp - 0xe0], rsi
	mov	edi, dword ptr [rbp - 0x19c]
	mov	r8d, dword ptr [rbp - 0x174]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], r8d
	mov	dword ptr [rbp - 8], edi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], 0xffffffff
	lea	rsi, [rsi]
	lea	r9, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x10], r9
	lea	r9, [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], r9
	mov	dword ptr [rbp - 0x1c], 0x30
	mov	dword ptr [rbp - 0x20], 0x10
	mov	edi, dword ptr [rbp - 8]
	test	edi, edi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1a0], edi
	mov	rsp, rsp
	je	.label_1837
	nop	
	jmp	.label_1826
.label_1826:
	nop	
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_1827
	jmp	.label_1832
.label_1837:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	nop	
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_1834
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1b4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	lea	rsi, [rsi]
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1c0], rcx
	lea	rsi, [rsi]
	jmp	.label_1842
.label_1834:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rcx, 8
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_1842:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1836
.label_1827:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x20]
	nop	
	mov	ecx, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	ecx, 0x28
	nop	
	mov	qword ptr [rbp - 0x1c8], rax
	mov	dword ptr [rbp - 0x1cc], ecx
	mov	rsp, rsp
	ja	.label_1839
	mov	eax, dword ptr [rbp - 0x1cc]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1d8], rcx
	mov	rsp, rsp
	jmp	.label_1848
.label_1839:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_1848:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1d8]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x2c]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1836
.label_1832:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	nop	
	mov	dword ptr [rbp - 0x1dc], eax
	lea	rdi, [rdi]
	je	.label_1819
	nop	
	jmp	.label_1820
.label_1820:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1e0], eax
	mov	rsp, rsp
	je	.label_1822
	jmp	.label_1830
.label_1830:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1e4], eax
	mov	rsp, rsp
	je	.label_1819
	nop	
	jmp	.label_1838
.label_1838:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	nop	
	mov	dword ptr [rbp - 0x1e8], eax
	lea	rdi, [rdi]
	je	.label_1822
	nop	
	jmp	.label_1846
.label_1846:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1ec], eax
	nop	
	je	.label_1819
	lea	rsi, [rsi]
	jmp	.label_1824
.label_1824:
	mov	eax, dword ptr [rbp - 0x1dc]
	mov	rbp, rbp
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	mov	rsp, rsp
	je	.label_1819
	lea	rsi, [rsi]
	jmp	.label_1831
.label_1831:
	mov	eax, dword ptr [rbp - 0x1dc]
	lea	rsi, [rsi]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_1822
	mov	rsp, rsp
	jmp	.label_1840
.label_1840:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_1819
	jmp	.label_1847
.label_1847:
	mov	eax, dword ptr [rbp - 0x1dc]
	lea	rdi, [rdi]
	sub	eax, 0xb
	nop	
	mov	dword ptr [rbp - 0x1fc], eax
	nop	
	je	.label_1822
	lea	rsi, [rsi]
	jmp	.label_1823
.label_1823:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x200], eax
	lea	rdi, [rdi]
	je	.label_1819
	jmp	.label_1833
.label_1833:
	nop	
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_1822
	mov	rsp, rsp
	jmp	.label_1841
.label_1841:
	mov	eax, dword ptr [rbp - 0x1dc]
	nop	
	sub	eax, 0x402
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x208], eax
	mov	rsp, rsp
	je	.label_1819
	lea	rsi, [rsi]
	jmp	.label_1843
.label_1843:
	mov	eax, dword ptr [rbp - 0x1dc]
	mov	rsp, rsp
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_1819
	nop	
	jmp	.label_1828
.label_1828:
	nop	
	mov	eax, dword ptr [rbp - 0x1dc]
	lea	rdi, [rdi]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	lea	rdi, [rdi]
	jne	.label_1829
	lea	rdi, [rdi]
	jmp	.label_1822
.label_1822:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	fcntl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	lea	rsi, [rsi]
	jmp	.label_1821
.label_1819:
	nop	
	lea	rax, [rbp - 0x20]
	nop	
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x21c], ecx
	lea	rsi, [rsi]
	ja	.label_1845
	mov	eax, dword ptr [rbp - 0x21c]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x218]
	add	rcx, qword ptr [rdx + 0x10]
	nop	
	add	eax, 8
	mov	rbp, rbp
	mov	dword ptr [rdx], eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x228], rcx
	mov	rbp, rbp
	jmp	.label_1825
.label_1845:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x228], rdx
.label_1825:
	nop	
	mov	rax, qword ptr [rbp - 0x228]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x30], ecx
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	esi, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x30]
	nop	
	mov	al, 0
	call	fcntl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1821
.label_1829:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	ecx, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x230], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x234], ecx
	lea	rdi, [rdi]
	ja	.label_1844
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x234]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x230]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x240], rcx
	mov	rsp, rsp
	jmp	.label_1835
.label_1844:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x240], rdx
.label_1835:
	mov	rax, qword ptr [rbp - 0x240]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x38]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
.label_1821:
	jmp	.label_1836
.label_1836:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	add	rsp, 0x240
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x420760

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
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	esi, eax
	nop	
	mov	al, 0
	mov	rsp, rsp
	call	fcntl
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4207b0

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], esi
	lea	rsi, [rsi]
	cmp	eax,  dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]]
	jg	.label_1857
	lea	rsi, [rsi]
	mov	esi, 0x406
	nop	
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	dword ptr [rbp - 0xc], eax
	nop	
	cmp	edx, dword ptr [rbp - 0xc]
	jle	.label_1856
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_1849
.label_1856:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_1851
.label_1849:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xc], 0
	mov	rbp, rbp
	jl	.label_1855
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_1855:
	mov	rbp, rbp
	jmp	.label_1851
.label_1851:
	jmp	.label_1853
.label_1857:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
.label_1853:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_1852
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	mov	rsp, rsp
	jne	.label_1852
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	nop	
	mov	dword ptr [rbp - 0x10], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_1854
	mov	esi, 2
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	or	eax, 1
	lea	rdi, [rdi]
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_1850
.label_1854:
	lea	rdi, [rdi]
	call	__errno_location
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], ecx
	mov	edi, dword ptr [rbp - 0xc]
	call	close
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x18], eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], ecx
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x1c]
	nop	
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0xc], 0xffffffff
.label_1850:
	jmp	.label_1852
.label_1852:
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x420930

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
	jmp	.label_1859
.label_1859:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1860
.label_1858:
	lea	rsi, [rsi]
	jmp	.label_1860
.label_1860:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x420990
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
	jb	.label_1861
	jmp	.label_1864
.label_1864:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1861
	jmp	.label_1862
.label_1862:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1863
	jmp	.label_1861
.label_1861:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1865
.label_1863:
	mov	byte ptr [rbp - 1], 0
.label_1865:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x420a00
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
	jb	.label_1866
	jmp	.label_1869
.label_1869:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_1867
	jmp	.label_1866
.label_1866:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1868
.label_1867:
	mov	byte ptr [rbp - 1], 0
.label_1868:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x420a50
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1870
	jmp	.label_1871
.label_1871:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1872
.label_1870:
	mov	byte ptr [rbp - 1], 0
.label_1872:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x420a80
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_1873
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_1873:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x420ab0
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
	jb	.label_1874
	jmp	.label_1876
.label_1876:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1877
	jmp	.label_1874
.label_1874:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1875
.label_1877:
	mov	byte ptr [rbp - 1], 0
.label_1875:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x420b00
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1878
	jmp	.label_1880
.label_1880:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1879
.label_1878:
	mov	byte ptr [rbp - 1], 0
.label_1879:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x420b40
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1881
	jmp	.label_1883
.label_1883:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1882
.label_1881:
	mov	byte ptr [rbp - 1], 0
.label_1882:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x420b80
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1884
	jmp	.label_1886
.label_1886:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1885
.label_1884:
	mov	byte ptr [rbp - 1], 0
.label_1885:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x420bc0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1887
	jmp	.label_1889
.label_1889:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1888
.label_1887:
	mov	byte ptr [rbp - 1], 0
.label_1888:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x420c00
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
	jb	.label_1890
	jmp	.label_1893
.label_1893:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x3a
	sub	eax, 7
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1890
	jmp	.label_1894
.label_1894:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x5b
	sub	eax, 6
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_1890
	jmp	.label_1892
.label_1892:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x7b
	sub	eax, 3
	mov	dword ptr [rbp - 0x1c], eax
	ja	.label_1895
	jmp	.label_1890
.label_1890:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1891
.label_1895:
	mov	byte ptr [rbp - 1], 0
.label_1891:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x420c80
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
	jb	.label_1896
	jmp	.label_1898
.label_1898:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1899
	jmp	.label_1896
.label_1896:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1897
.label_1899:
	mov	byte ptr [rbp - 1], 0
.label_1897:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x420cd0
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1900
	jmp	.label_1902
.label_1902:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1901
.label_1900:
	mov	byte ptr [rbp - 1], 0
.label_1901:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x420d10
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
	jb	.label_1903
	jmp	.label_1906
.label_1906:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1903
	jmp	.label_1904
.label_1904:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1905
	jmp	.label_1903
.label_1903:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1907
.label_1905:
	mov	byte ptr [rbp - 1], 0
.label_1907:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x420d80

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1908
	jmp	.label_1910
.label_1910:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1909
.label_1908:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1909:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x420dc0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1911
	jmp	.label_1913
.label_1913:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1912
.label_1911:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1912:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x420e00

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fopen
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1916
	mov	rdi, qword ptr [rbp - 0x20]
	call	fileno
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	cmp	ecx, dword ptr [rbp - 0x24]
	jg	.label_1915
	cmp	dword ptr [rbp - 0x24], 2
	lea	rsi, [rsi]
	jg	.label_1915
	mov	edi, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	call	dup_safer
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jge	.label_1914
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	rdi, qword ptr [rbp - 0x20]
	call	rpl_fclose
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x34], eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x38], ecx
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x38]
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1919
.label_1914:
	mov	rdi, qword ptr [rbp - 0x20]
	call	rpl_fclose
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_1917
	mov	edi, dword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	fdopen
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	mov	rsp, rsp
	jne	.label_1918
.label_1917:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x30], ecx
	nop	
	mov	edi, dword ptr [rbp - 0x28]
	call	close
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	dword ptr [rbp - 0x40], ecx
	lea	rsi, [rsi]
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	nop	
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1919
.label_1918:
	jmp	.label_1915
.label_1915:
	jmp	.label_1916
.label_1916:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1919:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x421030

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x421040

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	.section	.text
	.align	32
	#Procedure 0x421050

	.globl __lstat
	.type __lstat, @function
__lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section	.text
	.align	32
	#Procedure 0x421060

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
	.section	.text
	.align	32
	#Procedure 0x421080

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