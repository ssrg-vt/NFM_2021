	.section	.text
	.align	16
	#Procedure 0x401930

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x170
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_66
	jmp	.label_72
.label_72:
	movabs	rdi, OFFSET FLAT:label_73
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_86
.label_66:
	movabs	rdi, OFFSET FLAT:label_88
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rcx,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_96
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:label_105
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_9
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_15
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_23
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_28
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_35
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_41
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_48
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_52
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_60
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_67
	mov	dword ptr [rbp - 0x44], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_76
	mov	dword ptr [rbp - 0x48], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_80
	mov	dword ptr [rbp - 0x4c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_91
	mov	dword ptr [rbp - 0x50], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_97
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_104
	mov	dword ptr [rbp - 0x58], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_109
	mov	dword ptr [rbp - 0x5c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_14
	mov	dword ptr [rbp - 0x60], eax
	call	gettext
	cmp	dword ptr [dword ptr [tcsetattr_options]],  1
	mov	qword ptr [rbp - 0x68], rax
	jne	.label_19
	movabs	rdi, OFFSET FLAT:label_29
	call	gettext
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_25
.label_19:
	movabs	rdi, OFFSET FLAT:label_17
	call	gettext
	mov	qword ptr [rbp - 0x70], rax
.label_25:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_57
	mov	dword ptr [rbp - 0x74], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_39
	mov	dword ptr [rbp - 0x78], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_46
	mov	dword ptr [rbp - 0x7c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_51
	mov	dword ptr [rbp - 0x80], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_58
	mov	dword ptr [rbp - 0x84], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_65
	mov	dword ptr [rbp - 0x88], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_75
	mov	dword ptr [rbp - 0x8c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_81
	mov	dword ptr [rbp - 0x90], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_92
	mov	dword ptr [rbp - 0x94], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_98
	mov	dword ptr [rbp - 0x98], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_106
	mov	dword ptr [rbp - 0x9c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_11
	mov	dword ptr [rbp - 0xa0], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_18
	mov	dword ptr [rbp - 0xa4], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_10
	mov	dword ptr [rbp - 0xa8], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_32
	mov	dword ptr [rbp - 0xac], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_38
	mov	dword ptr [rbp - 0xb0], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_37
	mov	dword ptr [rbp - 0xb4], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_85
	mov	dword ptr [rbp - 0xb8], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_59
	mov	dword ptr [rbp - 0xbc], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_68
	mov	dword ptr [rbp - 0xc0], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_12
	mov	dword ptr [rbp - 0xc4], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_99
	mov	dword ptr [rbp - 0xc8], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_102
	mov	dword ptr [rbp - 0xcc], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_43
	mov	dword ptr [rbp - 0xd0], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_90
	mov	dword ptr [rbp - 0xd4], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_63
	mov	dword ptr [rbp - 0xd8], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_20
	mov	dword ptr [rbp - 0xdc], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_26
	mov	dword ptr [rbp - 0xe0], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_33
	mov	dword ptr [rbp - 0xe4], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_40
	mov	dword ptr [rbp - 0xe8], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_47
	mov	dword ptr [rbp - 0xec], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_53
	mov	dword ptr [rbp - 0xf0], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_61
	mov	dword ptr [rbp - 0xf4], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_69
	mov	dword ptr [rbp - 0xf8], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_77
	mov	dword ptr [rbp - 0xfc], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_87
	mov	dword ptr [rbp - 0x100], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_94
	mov	dword ptr [rbp - 0x104], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_101
	mov	dword ptr [rbp - 0x108], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_107
	mov	dword ptr [rbp - 0x10c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_13
	mov	dword ptr [rbp - 0x110], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_22
	mov	dword ptr [rbp - 0x114], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_27
	mov	dword ptr [rbp - 0x118], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_34
	mov	dword ptr [rbp - 0x11c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_42
	mov	dword ptr [rbp - 0x120], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_45
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_49
	mov	dword ptr [rbp - 0x124], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_56
	mov	dword ptr [rbp - 0x128], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_64
	mov	dword ptr [rbp - 0x12c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_71
	mov	dword ptr [rbp - 0x130], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_79
	mov	dword ptr [rbp - 0x134], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_89
	mov	dword ptr [rbp - 0x138], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_95
	mov	dword ptr [rbp - 0x13c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_103
	mov	dword ptr [rbp - 0x140], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_108
	mov	dword ptr [rbp - 0x144], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_30
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_16
	mov	dword ptr [rbp - 0x148], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_21
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_24
	mov	dword ptr [rbp - 0x14c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_31
	mov	dword ptr [rbp - 0x150], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_36
	mov	dword ptr [rbp - 0x154], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_44
	mov	dword ptr [rbp - 0x158], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_50
	mov	dword ptr [rbp - 0x15c], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_54
	movabs	rdx, OFFSET FLAT:label_55
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_62
	mov	dword ptr [rbp - 0x160], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_70
	mov	dword ptr [rbp - 0x164], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_74
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_78
	mov	dword ptr [rbp - 0x168], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_82
	movabs	rdx, OFFSET FLAT:label_83
	movabs	rcx, OFFSET FLAT:label_84
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_93
	mov	dword ptr [rbp - 0x16c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_100
	mov	dword ptr [rbp - 0x170], eax
	call	emit_ancillary_info
.label_86:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x4025f0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_110
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
	#Procedure 0x402620

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
.label_113:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_112
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_112:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_120
	jmp	.label_125
.label_120:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_113
.label_125:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_115
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_115:
	movabs	rdi, OFFSET FLAT:label_119
	call	gettext
	movabs	rsi, OFFSET FLAT:label_121
	movabs	rdx, OFFSET FLAT:label_114
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
	je	.label_116
	movabs	rsi, OFFSET FLAT:label_124
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_116
	movabs	rdi, OFFSET FLAT:label_117
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_116:
	movabs	rdi, OFFSET FLAT:label_111
	call	gettext
	movabs	rsi, OFFSET FLAT:label_114
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_118
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_122
	movabs	rsi, OFFSET FLAT:label_123
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
	#Procedure 0x4027c0

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x1c], 0
	mov	dword ptr [rbp - 0x20], 1
	mov	byte ptr [rbp - 0x25], 1
	mov	qword ptr [rbp - 0x30], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_122
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_133
	movabs	rsi, OFFSET FLAT:label_134
	mov	qword ptr [rbp - 0x48], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_133
	mov	qword ptr [rbp - 0x50], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x58], rax
	call	atexit
	mov	dword ptr [rbp - 0x14], 0
	mov	byte ptr [rbp - 0x23], 0
	mov	byte ptr [rbp - 0x24], 0
	mov	dword ptr [dword ptr [opterr]],  0
	mov	dword ptr [rbp - 0x5c], eax
.label_152:
	movabs	rdx, OFFSET FLAT:label_149
	movabs	rcx, OFFSET FLAT:longopts
	xor	eax, eax
	mov	r8d, eax
	mov	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x1c]
	mov	rsi, qword ptr [rbp - 0x10]
	movsxd	rdi, dword ptr [rbp - 0x1c]
	shl	rdi, 3
	add	rsi, rdi
	mov	edi, eax
	call	getopt_long
	mov	dword ptr [rbp - 0x18], eax
	cmp	eax, -1
	je	.label_160
	mov	eax, dword ptr [rbp - 0x18]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x60], eax
	mov	dword ptr [rbp - 0x64], ecx
	je	.label_163
	jmp	.label_166
.label_166:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x68], eax
	je	.label_161
	jmp	.label_142
.label_142:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x46
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_170
	jmp	.label_174
.label_174:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x70], eax
	je	.label_168
	jmp	.label_128
.label_128:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x74], eax
	je	.label_132
	jmp	.label_135
.label_168:
	mov	byte ptr [rbp - 0x23], 1
	mov	dword ptr [rbp - 0x14], 1
	jmp	.label_136
.label_132:
	mov	byte ptr [rbp - 0x24], 1
	mov	dword ptr [rbp - 0x14], 2
	jmp	.label_136
.label_170:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_140
	movabs	rdi, OFFSET FLAT:label_144
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_140:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_136
.label_161:
	xor	edi, edi
	call	usage
.label_163:
	movabs	rsi, OFFSET FLAT:label_100
	movabs	rdx, OFFSET FLAT:label_121
	movabs	r8, OFFSET FLAT:label_155
	xor	eax, eax
	mov	r9d, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_135:
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, dword ptr [rbp - 0x20]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx + rcx*8]
	mov	eax, OFFSET FLAT:label_165
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_147
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, dword ptr [rbp - 0x20]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx + rcx*8]
	mov	eax, OFFSET FLAT:label_171
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_147
	mov	byte ptr [rbp - 0x25], 0
.label_147:
	mov	eax, dword ptr [rbp - 0x20]
	add	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x1c], eax
	mov	dword ptr [rbp - 0x20], 1
	mov	dword ptr [dword ptr [optind]],  0
.label_136:
	jmp	.label_138
.label_138:
	mov	eax, dword ptr [rbp - 0x20]
	cmp	eax,  dword ptr [dword ptr [optind]]
	jge	.label_139
	mov	eax, dword ptr [rbp - 0x1c]
	mov	ecx, dword ptr [rbp - 0x20]
	mov	edx, ecx
	add	edx, 1
	mov	dword ptr [rbp - 0x20], edx
	add	eax, ecx
	movsxd	rsi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + rsi*8], 0
	jmp	.label_138
.label_139:
	jmp	.label_152
.label_160:
	test	byte ptr [rbp - 0x23], 1
	je	.label_148
	test	byte ptr [rbp - 0x24], 1
	je	.label_148
	movabs	rdi, OFFSET FLAT:label_154
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_148:
	test	byte ptr [rbp - 0x25], 1
	jne	.label_157
	test	byte ptr [rbp - 0x23], 1
	jne	.label_162
	test	byte ptr [rbp - 0x24], 1
	je	.label_157
.label_162:
	movabs	rdi, OFFSET FLAT:label_176
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_157:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_169
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_156
.label_169:
	movabs	rdi, OFFSET FLAT:label_175
	call	gettext
	mov	qword ptr [rbp - 0x80], rax
.label_156:
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x38], rax
	test	byte ptr [rbp - 0x25], 1
	jne	.label_129
	test	byte ptr [rbp - 0x23], 1
	jne	.label_129
	test	byte ptr [rbp - 0x24], 1
	jne	.label_129
	mov	edi, 1
	movabs	r8, OFFSET FLAT:main.check_mode
	lea	r9, [rbp - 0x22]
	lea	rax, [rbp - 0x21]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 8]
	mov	qword ptr [rsp], rax
	call	apply_settings
.label_129:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_143
	xor	eax, eax
	mov	edx, 0x800
	mov	rsi, qword ptr [rbp - 0x38]
	mov	edi, eax
	mov	ecx, eax
	call	fd_reopen
	cmp	eax, 0
	jge	.label_151
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x84], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_150
	mov	esi, dword ptr [rbp - 0x84]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_151:
	xor	edi, edi
	mov	esi, 3
	mov	al, 0
	call	rpl_fcntl
	mov	dword ptr [rbp - 0x3c], eax
	cmp	eax, -1
	je	.label_167
	xor	edi, edi
	mov	esi, 4
	mov	eax, dword ptr [rbp - 0x3c]
	and	eax, 0xfffff7ff
	mov	edx, eax
	mov	al, 0
	call	rpl_fcntl
	cmp	eax, 0
	jge	.label_173
.label_167:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_126
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x88], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x90], rax
	call	quotearg_n_style_colon
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_173:
	jmp	.label_143
.label_143:
	xor	edi, edi
	movabs	rsi, OFFSET FLAT:main.mode
	call	tcgetattr
	cmp	eax, 0
	je	.label_146
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x94], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_150
	mov	esi, dword ptr [rbp - 0x94]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_146:
	test	byte ptr [rbp - 0x23], 1
	jne	.label_159
	test	byte ptr [rbp - 0x24], 1
	jne	.label_159
	test	byte ptr [rbp - 0x25], 1
	je	.label_164
.label_159:
	call	screen_columns
	movabs	rsi, OFFSET FLAT:main.mode
	mov	dword ptr [dword ptr [max_col]],  eax
	mov	dword ptr [dword ptr [current_col]],  0
	mov	edi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x38]
	call	display_settings
	mov	dword ptr [rbp - 4], 0
	jmp	.label_172
.label_164:
	xor	edi, edi
	movabs	r8, OFFSET FLAT:main.mode
	lea	r9, [rbp - 0x22]
	lea	rax, [rbp - 0x21]
	mov	byte ptr [rbp - 0x22], 0
	mov	byte ptr [rbp - 0x21], 0
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 8]
	mov	qword ptr [rsp], rax
	call	apply_settings
	test	byte ptr [rbp - 0x21], 1
	je	.label_137
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:main.mode
	mov	esi,  dword ptr [dword ptr [tcsetattr_options]]
	call	tcsetattr
	cmp	eax, 0
	je	.label_145
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x98], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_150
	mov	esi, dword ptr [rbp - 0x98]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_145:
	xor	edi, edi
	movabs	rsi, OFFSET FLAT:main.new_mode
	call	tcgetattr
	cmp	eax, 0
	je	.label_158
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x9c], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_150
	mov	esi, dword ptr [rbp - 0x9c]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_158:
	mov	eax, OFFSET FLAT:main.mode
	mov	edi, eax
	mov	eax, OFFSET FLAT:main.new_mode
	mov	esi, eax
	mov	eax, 0x3c
	mov	edx, eax
	call	memcmp
	cmp	eax, 0
	je	.label_127
	mov	eax,  dword ptr [dword ptr [label_130]]
	and	eax, 0xeff0ffff
	mov	dword ptr [dword ptr [label_130]],  eax
	test	byte ptr [rbp - 0x22], 1
	jne	.label_131
	mov	eax, OFFSET FLAT:main.mode
	mov	edi, eax
	mov	eax, OFFSET FLAT:main.new_mode
	mov	esi, eax
	mov	eax, 0x3c
	mov	edx, eax
	call	memcmp
	cmp	eax, 0
	je	.label_141
.label_131:
	movabs	rdi, OFFSET FLAT:label_153
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xa8], rax
	call	quotearg_n_style_colon
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_141:
	jmp	.label_127
.label_127:
	jmp	.label_137
.label_137:
	mov	dword ptr [rbp - 4], 0
.label_172:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402eb0

	.globl apply_settings
	.type apply_settings, @function
apply_settings:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	al, dil
	mov	r10, qword ptr [rbp + 0x10]
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	qword ptr [rbp - 0x38], r10
	mov	dword ptr [rbp - 0x3c], 1
.label_230:
	mov	eax, dword ptr [rbp - 0x3c]
	cmp	eax, dword ptr [rbp - 0x1c]
	jge	.label_249
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rax
	mov	byte ptr [rbp - 0x49], 0
	mov	byte ptr [rbp - 0x4a], 0
	mov	byte ptr [rbp - 0x4b], 0
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_232
	jmp	.label_178
.label_232:
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_187
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	byte ptr [rbp - 0x4b], 1
.label_187:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_171
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_202
	mov	eax, 1
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x4b]
	test	dl, 1
	cmovne	eax, ecx
	mov	dword ptr [dword ptr [tcsetattr_options]],  eax
	jmp	.label_178
.label_202:
	mov	dword ptr [rbp - 0x50], 0
.label_195:
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0x50]
	shl	rcx, 5
	add	rax, rcx
	cmp	qword ptr [rax], 0
	je	.label_181
	movabs	rax, OFFSET FLAT:mode_info
	mov	rdi, qword ptr [rbp - 0x48]
	movsxd	rcx, dword ptr [rbp - 0x50]
	shl	rcx, 5
	add	rax, rcx
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	jne	.label_207
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0x50]
	shl	rcx, 5
	add	rax, rcx
	movsx	edx, byte ptr [rax + 0xc]
	and	edx, 0x10
	cmp	edx, 0
	jne	.label_240
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0x50]
	shl	rcx, 5
	add	rax, rcx
	mov	dl, byte ptr [rbp - 0x4b]
	mov	rcx, qword ptr [rbp - 0x28]
	and	dl, 1
	mov	rdi, rax
	movzx	esi, dl
	mov	rdx, rcx
	call	set_mode
	and	al, 1
	mov	byte ptr [rbp - 0x49], al
	mov	rcx, qword ptr [rbp - 0x38]
	mov	byte ptr [rcx], 1
	jmp	.label_182
.label_240:
	mov	byte ptr [rbp - 0x4a], 1
	mov	byte ptr [rbp - 0x49], 1
.label_182:
	jmp	.label_181
.label_207:
	jmp	.label_210
.label_210:
	mov	eax, dword ptr [rbp - 0x50]
	add	eax, 1
	mov	dword ptr [rbp - 0x50], eax
	jmp	.label_195
.label_181:
	test	byte ptr [rbp - 0x49], 1
	jne	.label_200
	test	byte ptr [rbp - 0x4b], 1
	je	.label_200
	movabs	rdi, OFFSET FLAT:label_191
	call	gettext
	mov	rdi, qword ptr [rbp - 0x48]
	add	rdi, -1
	mov	qword ptr [rbp - 0x60], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_200:
	test	byte ptr [rbp - 0x49], 1
	jne	.label_228
	mov	dword ptr [rbp - 0x50], 0
.label_234:
	movabs	rax, OFFSET FLAT:control_info
	movsxd	rcx, dword ptr [rbp - 0x50]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	cmp	qword ptr [rax], 0
	je	.label_194
	movabs	rax, OFFSET FLAT:control_info
	mov	rdi, qword ptr [rbp - 0x48]
	movsxd	rcx, dword ptr [rbp - 0x50]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	jne	.label_250
	jmp	.label_252
.label_252:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	ecx, dword ptr [rbp - 0x1c]
	sub	ecx, 1
	cmp	eax, ecx
	je	.label_255
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx + rcx*8], 0
	jne	.label_179
.label_255:
	movabs	rdi, OFFSET FLAT:label_183
	call	gettext
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x68], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_179:
	jmp	.label_256
.label_256:
	movabs	rax, OFFSET FLAT:control_info
	mov	byte ptr [rbp - 0x49], 1
	mov	ecx, dword ptr [rbp - 0x3c]
	add	ecx, 1
	mov	dword ptr [rbp - 0x3c], ecx
	movsxd	rdx, dword ptr [rbp - 0x50]
	imul	rdx, rdx, 0x18
	add	rax, rdx
	movsxd	rdx, dword ptr [rbp - 0x3c]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + rdx*8]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	set_control_char
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	jmp	.label_194
.label_250:
	jmp	.label_231
.label_231:
	mov	eax, dword ptr [rbp - 0x50]
	add	eax, 1
	mov	dword ptr [rbp - 0x50], eax
	jmp	.label_234
.label_194:
	jmp	.label_228
.label_228:
	test	byte ptr [rbp - 0x49], 1
	je	.label_239
	test	byte ptr [rbp - 0x4a], 1
	je	.label_226
.label_239:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_242
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_246
	jmp	.label_251
.label_251:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	ecx, dword ptr [rbp - 0x1c]
	sub	ecx, 1
	cmp	eax, ecx
	je	.label_227
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx + rcx*8], 0
	jne	.label_257
.label_227:
	movabs	rdi, OFFSET FLAT:label_183
	call	gettext
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_257:
	jmp	.label_204
.label_204:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	test	byte ptr [rbp - 1], 1
	je	.label_206
	jmp	.label_178
.label_206:
	xor	edi, edi
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rcx + rax*8]
	mov	rdx, qword ptr [rbp - 0x28]
	call	set_speed
	mov	rax, qword ptr [rbp - 0x30]
	mov	byte ptr [rax], 1
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	jmp	.label_222
.label_246:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_212
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_233
	jmp	.label_235
.label_235:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	ecx, dword ptr [rbp - 0x1c]
	sub	ecx, 1
	cmp	eax, ecx
	je	.label_237
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx + rcx*8], 0
	jne	.label_241
.label_237:
	movabs	rdi, OFFSET FLAT:label_183
	call	gettext
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x78], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_241:
	jmp	.label_184
.label_184:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	test	byte ptr [rbp - 1], 1
	je	.label_188
	jmp	.label_178
.label_188:
	mov	edi, 1
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rcx + rax*8]
	mov	rdx, qword ptr [rbp - 0x28]
	call	set_speed
	mov	rax, qword ptr [rbp - 0x30]
	mov	byte ptr [rax], 1
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	jmp	.label_203
.label_233:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_205
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_215
	jmp	.label_219
.label_219:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	ecx, dword ptr [rbp - 0x1c]
	sub	ecx, 1
	cmp	eax, ecx
	je	.label_221
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx + rcx*8], 0
	jne	.label_225
.label_221:
	movabs	rdi, OFFSET FLAT:label_183
	call	gettext
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x80], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_225:
	jmp	.label_248
.label_248:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	test	byte ptr [rbp - 1], 1
	je	.label_253
	jmp	.label_178
.label_253:
	mov	eax, 0x7fffffff
	mov	esi, eax
	movsxd	rcx, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdx + rcx*8]
	call	integer_arg
	mov	esi, 0xffffffff
	mov	r8d, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, r8d
	call	set_window_size
	jmp	.label_208
.label_215:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_193
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_199
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_201
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_209
.label_199:
	jmp	.label_211
.label_211:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	ecx, dword ptr [rbp - 0x1c]
	sub	ecx, 1
	cmp	eax, ecx
	je	.label_216
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx + rcx*8], 0
	jne	.label_217
.label_216:
	movabs	rdi, OFFSET FLAT:label_183
	call	gettext
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x88], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_217:
	jmp	.label_243
.label_243:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	test	byte ptr [rbp - 1], 1
	je	.label_180
	jmp	.label_178
.label_180:
	mov	eax, 0x7fffffff
	mov	esi, eax
	movsxd	rcx, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdx + rcx*8]
	call	integer_arg
	mov	edi, 0xffffffff
	mov	r8d, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	esi, r8d
	call	set_window_size
	jmp	.label_185
.label_209:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_189
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_192
	test	byte ptr [rbp - 1], 1
	je	.label_197
	jmp	.label_178
.label_197:
	call	screen_columns
	xor	edi, edi
	mov	dword ptr [dword ptr [max_col]],  eax
	mov	dword ptr [dword ptr [current_col]],  0
	mov	rsi, qword ptr [rbp - 0x10]
	call	display_window_size
	jmp	.label_218
.label_192:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_213
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_220
	jmp	.label_223
.label_223:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	ecx, dword ptr [rbp - 0x1c]
	sub	ecx, 1
	cmp	eax, ecx
	je	.label_196
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx + rcx*8], 0
	jne	.label_236
.label_196:
	movabs	rdi, OFFSET FLAT:label_183
	call	gettext
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x90], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_236:
	jmp	.label_238
.label_238:
	mov	rsi, -1
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	movsxd	rcx, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdx + rcx*8]
	call	integer_arg
	mov	qword ptr [rbp - 0x58], rax
	mov	r8b, al
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax + 0x10], r8b
	mov	rax, qword ptr [rbp - 0x28]
	movzx	r9d, byte ptr [rax + 0x10]
	mov	eax, r9d
	cmp	rax, qword ptr [rbp - 0x58]
	je	.label_186
	movabs	rdi, OFFSET FLAT:label_198
	call	gettext
	movsxd	rdi, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rdi*8]
	mov	qword ptr [rbp - 0x98], rax
	call	quote
	xor	edx, edx
	mov	edi, edx
	mov	esi, edx
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_186:
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	jmp	.label_254
.label_220:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:label_224
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_229
	test	byte ptr [rbp - 1], 1
	je	.label_245
	jmp	.label_178
.label_245:
	call	screen_columns
	xor	esi, esi
	mov	dword ptr [dword ptr [max_col]],  eax
	mov	rdi, qword ptr [rbp - 0x28]
	call	display_speed
	jmp	.label_214
.label_229:
	mov	rdi, qword ptr [rbp - 0x48]
	call	string_to_baud
	cmp	eax, -1
	je	.label_244
	test	byte ptr [rbp - 1], 1
	je	.label_247
	jmp	.label_178
.label_247:
	mov	edi, 2
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	call	set_speed
	mov	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rdx], 1
	mov	rdx, qword ptr [rbp - 0x38]
	mov	byte ptr [rdx], 1
	jmp	.label_177
.label_244:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x28]
	call	recover_mode
	test	al, 1
	jne	.label_190
	movabs	rdi, OFFSET FLAT:label_191
	call	gettext
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0xa0], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_190:
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
.label_177:
	jmp	.label_214
.label_214:
	jmp	.label_254
.label_254:
	jmp	.label_218
.label_218:
	jmp	.label_185
.label_185:
	jmp	.label_208
.label_208:
	jmp	.label_203
.label_203:
	jmp	.label_222
.label_222:
	jmp	.label_226
.label_226:
	jmp	.label_178
.label_178:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_230
.label_249:
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4037c0

	.globl screen_columns
	.type screen_columns, @function
screen_columns:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	edi, 1
	lea	rsi, [rbp - 0x10]
	call	get_win_size
	cmp	eax, 0
	jne	.label_262
	xor	eax, eax
	movzx	ecx, word ptr [rbp - 0xe]
	cmp	eax, ecx
	jge	.label_262
	movzx	eax, word ptr [rbp - 0xe]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_260
.label_262:
	movabs	rdi, OFFSET FLAT:label_261
	call	getenv
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_258
	xor	eax, eax
	mov	esi, eax
	xor	edx, edx
	lea	rcx, [rbp - 0x20]
	movabs	r8, OFFSET FLAT:label_122
	mov	rdi, qword ptr [rbp - 0x18]
	call	xstrtol
	cmp	eax, 0
	jne	.label_258
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jge	.label_258
	cmp	qword ptr [rbp - 0x20], 0x7fffffff
	jle	.label_259
.label_258:
	mov	qword ptr [rbp - 0x20], 0x50
.label_259:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
.label_260:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403880

	.globl display_settings
	.type display_settings, @function
display_settings:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	test	edi, edi
	mov	dword ptr [rbp - 0x1c], edi
	je	.label_263
	jmp	.label_264
.label_264:
	mov	eax, dword ptr [rbp - 0x1c]
	sub	eax, 1
	mov	dword ptr [rbp - 0x20], eax
	je	.label_265
	jmp	.label_267
.label_267:
	mov	eax, dword ptr [rbp - 0x1c]
	sub	eax, 2
	mov	dword ptr [rbp - 0x24], eax
	je	.label_268
	jmp	.label_266
.label_263:
	mov	rdi, qword ptr [rbp - 0x10]
	call	display_changed
	jmp	.label_266
.label_265:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	display_all
	jmp	.label_266
.label_268:
	mov	rdi, qword ptr [rbp - 0x10]
	call	display_recoverable
.label_266:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403900

	.globl set_mode
	.type set_mode, @function
set_mode:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, sil
	mov	qword ptr [rbp - 0x10], rdi
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	qword ptr [rbp - 0x20], rdx
	test	byte ptr [rbp - 0x11], 1
	je	.label_269
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 0xc]
	and	ecx, 4
	cmp	ecx, 0
	jne	.label_269
	mov	byte ptr [rbp - 1], 0
	jmp	.label_285
.label_269:
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 8]
	mov	rsi, qword ptr [rbp - 0x20]
	call	mode_type_flag
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_295
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_331
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	je	.label_322
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_335
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_314
.label_322:
	test	byte ptr [rbp - 0x11], 1
	je	.label_316
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xfffffeff
	and	ecx, 0xffffffcf
	or	ecx, 0x30
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 8], ecx
	jmp	.label_319
.label_316:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xfffffdff
	and	ecx, 0xffffffcf
	or	ecx, 0x100
	or	ecx, 0x20
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 8], ecx
.label_319:
	jmp	.label_300
.label_314:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_336
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_328
	test	byte ptr [rbp - 0x11], 1
	je	.label_270
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xfffffeff
	and	ecx, 0xffffffcf
	or	ecx, 0x30
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 8], ecx
	jmp	.label_275
.label_270:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffffcf
	or	ecx, 0x20
	or	ecx, 0x200
	or	ecx, 0x100
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 8], ecx
.label_275:
	jmp	.label_292
.label_328:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_294
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_299
	test	byte ptr [rbp - 0x11], 1
	je	.label_302
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	or	ecx, 0x100
	and	ecx, 0xffffffbf
	and	ecx, 0xffffff7f
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	or	ecx, 4
	and	ecx, 0xfffffff7
	and	ecx, 0xffffffdf
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 4], ecx
	jmp	.label_305
.label_302:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xfffffeff
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	and	ecx, 0xfffffffb
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 4], ecx
.label_305:
	jmp	.label_298
.label_299:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_330
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_337
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 0x13], 0x7f
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 0x14], 0x15
	jmp	.label_297
.label_337:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_272
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_277
	mov	rdi, qword ptr [rbp - 0x20]
	call	sane_mode
	jmp	.label_290
.label_277:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_283
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_289
	test	byte ptr [rbp - 0x11], 1
	je	.label_313
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0xc]
	or	ecx, 2
	mov	dword ptr [rax + 0xc], ecx
	jmp	.label_342
.label_313:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0xc]
	and	ecx, 0xfffffffd
	mov	dword ptr [rax + 0xc], ecx
.label_342:
	jmp	.label_293
.label_289:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_307
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_312
	test	byte ptr [rbp - 0x11], 1
	je	.label_315
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffffcf
	or	ecx, 0x20
	or	ecx, 0x100
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	or	ecx, 0x20
	mov	dword ptr [rax], ecx
	jmp	.label_318
.label_315:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xfffffeff
	and	ecx, 0xffffffcf
	or	ecx, 0x30
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffdf
	mov	dword ptr [rax], ecx
.label_318:
	jmp	.label_291
.label_312:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_340
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_273
	test	byte ptr [rbp - 0x11], 1
	je	.label_276
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffffcf
	or	ecx, 0x20
	or	ecx, 0x100
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	or	ecx, 0x20
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	or	ecx, 1
	mov	dword ptr [rax + 4], ecx
	jmp	.label_278
.label_276:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xfffffeff
	and	ecx, 0xffffffcf
	or	ecx, 0x30
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffdf
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	and	ecx, 0xfffffffe
	mov	dword ptr [rax + 4], ecx
.label_278:
	jmp	.label_288
.label_273:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_310
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	je	.label_317
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_320
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_323
.label_317:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x72
	jne	.label_326
	test	byte ptr [rbp - 0x11], 1
	jne	.label_338
.label_326:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x63
	jne	.label_334
	test	byte ptr [rbp - 0x11], 1
	jne	.label_334
.label_338:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	or	ecx, 0x526
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	or	ecx, 1
	mov	dword ptr [rax + 4], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0xc]
	or	ecx, 3
	mov	dword ptr [rax + 0xc], ecx
	jmp	.label_341
.label_334:
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	and	ecx, 0xfffffffe
	mov	dword ptr [rax + 4], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0xc]
	and	ecx, 0xfffffff8
	mov	dword ptr [rax + 0xc], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 0x17], 1
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 0x16], 0
.label_341:
	jmp	.label_287
.label_323:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_284
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_304
	test	byte ptr [rbp - 0x11], 1
	je	.label_308
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	or	ecx, 0x800
	mov	dword ptr [rax], ecx
	jmp	.label_309
.label_308:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xfffff7ff
	mov	dword ptr [rax], ecx
.label_309:
	jmp	.label_296
.label_304:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_343
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_325
	test	byte ptr [rbp - 0x11], 1
	je	.label_327
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	and	ecx, 0xffffe7ff
	or	ecx, 0x1800
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 4], ecx
	jmp	.label_329
.label_327:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	and	ecx, 0xffffe7ff
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 4], ecx
.label_329:
	jmp	.label_271
.label_325:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_274
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	je	.label_279
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_280
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_286
.label_279:
	test	byte ptr [rbp - 0x11], 1
	je	.label_311
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0xc]
	and	ecx, 0xfffffffb
	mov	dword ptr [rax + 0xc], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xfffffdff
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	and	ecx, 0xfffffffd
	mov	dword ptr [rax + 4], ecx
	jmp	.label_321
.label_311:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0xc]
	or	ecx, 4
	mov	dword ptr [rax + 0xc], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	or	ecx, 0x200
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	or	ecx, 2
	mov	dword ptr [rax + 4], ecx
.label_321:
	jmp	.label_282
.label_286:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_333
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_324
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0xc]
	or	ecx, 0xa10
	mov	dword ptr [rax + 0xc], ecx
	jmp	.label_281
.label_324:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_332
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_339
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 0x11], 3
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 0x13], 0x7f
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 0x14], 0x15
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0xc]
	or	ecx, 0xa10
	mov	dword ptr [rax + 0xc], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xfffff7ff
	mov	dword ptr [rax], ecx
.label_339:
	jmp	.label_281
.label_281:
	jmp	.label_282
.label_282:
	jmp	.label_271
.label_271:
	jmp	.label_296
.label_296:
	jmp	.label_287
.label_287:
	jmp	.label_288
.label_288:
	jmp	.label_291
.label_291:
	jmp	.label_293
.label_293:
	jmp	.label_290
.label_290:
	jmp	.label_297
.label_297:
	jmp	.label_298
.label_298:
	jmp	.label_292
.label_292:
	jmp	.label_300
.label_300:
	jmp	.label_301
.label_295:
	test	byte ptr [rbp - 0x11], 1
	je	.label_303
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	mov	eax, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x18]
	xor	rdx, 0xffffffffffffffff
	and	rax, rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	xor	rdx, 0xffffffffffffffff
	and	rax, rdx
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax], ecx
	jmp	.label_306
.label_303:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	mov	eax, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x18]
	xor	rdx, 0xffffffffffffffff
	and	rax, rdx
	mov	rdx, qword ptr [rbp - 0x10]
	or	rax, qword ptr [rdx + 0x10]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax], ecx
.label_306:
	jmp	.label_301
.label_301:
	mov	byte ptr [rbp - 1], 1
.label_285:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ff0

	.globl set_control_char
	.type set_control_char, @function
set_control_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx]
	mov	eax, OFFSET FLAT:label_357
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_351
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_352
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_359
.label_351:
	mov	eax, 0xff
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	integer_arg
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_347
.label_359:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_350
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	jne	.label_354
.label_350:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_345
.label_354:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_353
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_344
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_356
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_360
.label_344:
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_348
.label_360:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x5e
	jne	.label_349
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_349
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x3f
	jne	.label_358
	mov	qword ptr [rbp - 0x20], 0x7f
	jmp	.label_346
.label_358:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rax + 1]
	call	to_uchar
	movzx	edi, al
	and	edi, 0xffffff9f
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x20], rcx
.label_346:
	jmp	.label_355
.label_349:
	mov	eax, 0xff
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	integer_arg
	mov	qword ptr [rbp - 0x20], rax
.label_355:
	jmp	.label_348
.label_348:
	jmp	.label_345
.label_345:
	jmp	.label_347
.label_347:
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, al
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax + 0x11], cl
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404170

	.globl set_speed
	.type set_speed, @function
set_speed:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	call	string_to_baud
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 4], 0
	je	.label_364
	cmp	dword ptr [rbp - 4], 2
	jne	.label_362
.label_364:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	call	cfsetispeed
	mov	dword ptr [rbp - 0x20], eax
.label_362:
	cmp	dword ptr [rbp - 4], 1
	je	.label_361
	cmp	dword ptr [rbp - 4], 2
	jne	.label_363
.label_361:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	call	cfsetospeed
	mov	dword ptr [rbp - 0x24], eax
.label_363:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4041e0

	.globl set_window_size
	.type set_window_size, @function
set_window_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	lea	rcx, [rbp - 0x18]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	edi, eax
	mov	rsi, rcx
	call	get_win_size
	cmp	eax, 0
	je	.label_365
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_368
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x1c], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_150
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_368:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x18]
	mov	rdi, rcx
	call	memset
.label_365:
	cmp	dword ptr [rbp - 4], 0
	jl	.label_367
	mov	eax, dword ptr [rbp - 4]
	mov	cx, ax
	mov	word ptr [rbp - 0x18], cx
.label_367:
	cmp	dword ptr [rbp - 8], 0
	jl	.label_369
	mov	eax, dword ptr [rbp - 8]
	mov	cx, ax
	mov	word ptr [rbp - 0x16], cx
.label_369:
	xor	edi, edi
	mov	eax, 0x5414
	mov	esi, eax
	lea	rcx, [rbp - 0x18]
	mov	rdx, rcx
	mov	al, 0
	call	ioctl
	cmp	eax, 0
	je	.label_366
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x20], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_150
	mov	esi, dword ptr [rbp - 0x20]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_366:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4042f0

	.globl integer_arg
	.type integer_arg, @function
integer_arg:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	movabs	rax, OFFSET FLAT:label_370
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rax
	mov	qword ptr [rbp - 0x20], rcx
	call	gettext
	xor	esi, esi
	xor	edx, edx
	movabs	r8, OFFSET FLAT:label_371
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r9, rax
	mov	dword ptr [rsp], 0
	call	xnumtoumax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404350

	.globl display_window_size
	.type display_window_size, @function
display_window_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, dil
	xor	edi, edi
	lea	rcx, [rbp - 0x18]
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, rcx
	call	get_win_size
	cmp	eax, 0
	je	.label_376
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_372
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x1c], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_150
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_372:
	test	byte ptr [rbp - 1], 1
	jne	.label_379
	movabs	rdi, OFFSET FLAT:label_378
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	call	quotearg_n_style_colon
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_379:
	jmp	.label_375
.label_376:
	movabs	rax, OFFSET FLAT:label_373
	movabs	rcx, OFFSET FLAT:label_374
	mov	dl, byte ptr [rbp - 1]
	test	dl, 1
	cmovne	rax, rcx
	movzx	esi, word ptr [rbp - 0x18]
	movzx	edx, word ptr [rbp - 0x16]
	mov	rdi, rax
	mov	al, 0
	call	wrapf
	test	byte ptr [rbp - 1], 1
	jne	.label_377
	mov	dword ptr [dword ptr [current_col]],  0
.label_377:
	jmp	.label_375
.label_375:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404460

	.globl display_speed
	.type display_speed, @function
display_speed:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 8]
	call	cfgetispeed
	cmp	eax, 0
	je	.label_387
	mov	rdi, qword ptr [rbp - 8]
	call	cfgetispeed
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x10], eax
	call	cfgetospeed
	mov	ecx, dword ptr [rbp - 0x10]
	cmp	ecx, eax
	jne	.label_386
.label_387:
	movabs	rax, OFFSET FLAT:label_382
	movabs	rcx, OFFSET FLAT:label_383
	mov	dl, byte ptr [rbp - 9]
	test	dl, 1
	cmovne	rax, rcx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	call	cfgetospeed
	mov	edi, eax
	call	baud_to_value
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rax
	mov	al, 0
	call	wrapf
	jmp	.label_380
.label_386:
	movabs	rax, OFFSET FLAT:label_384
	movabs	rcx, OFFSET FLAT:label_385
	mov	dl, byte ptr [rbp - 9]
	test	dl, 1
	cmovne	rax, rcx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	call	cfgetispeed
	mov	edi, eax
	call	baud_to_value
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
	call	cfgetospeed
	mov	edi, eax
	call	baud_to_value
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, rax
	mov	al, 0
	call	wrapf
.label_380:
	test	byte ptr [rbp - 9], 1
	jne	.label_381
	mov	dword ptr [dword ptr [current_col]],  0
.label_381:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404560

	.globl string_to_baud
	.type string_to_baud, @function
string_to_baud:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], 0
.label_388:
	movabs	rax, OFFSET FLAT:speeds
	movsxd	rcx, dword ptr [rbp - 0x14]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	cmp	qword ptr [rax], 0
	je	.label_389
	movabs	rax, OFFSET FLAT:speeds
	mov	rdi, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 0x14]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	jne	.label_392
	movabs	rax, OFFSET FLAT:speeds
	movsxd	rcx, dword ptr [rbp - 0x14]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	mov	edx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_390
.label_392:
	jmp	.label_391
.label_391:
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_388
.label_389:
	mov	dword ptr [rbp - 4], 0xffffffff
.label_390:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404600

	.globl recover_mode
	.type recover_mode, @function
recover_mode:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rsi
	mov	qword ptr [rbp - 0x40], 0
.label_395:
	cmp	qword ptr [rbp - 0x40], 4
	jae	.label_393
	mov	esi, 0x10
	lea	rdx, [rbp - 0x48]
	mov	r8d, 0x3a
	lea	rax, [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rcx, 2
	add	rax, rcx
	mov	rcx, rax
	call	strtoul_tcflag_t
	cmp	eax, 0
	je	.label_398
	mov	byte ptr [rbp - 1], 0
	jmp	.label_394
.label_398:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_395
.label_393:
	mov	eax, dword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx], eax
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx + 4], eax
	mov	eax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx + 8], eax
	mov	eax, dword ptr [rbp - 0x24]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx + 0xc], eax
	mov	qword ptr [rbp - 0x40], 0
.label_396:
	cmp	qword ptr [rbp - 0x40], 0x20
	jae	.label_397
	mov	esi, 0x10
	lea	rdx, [rbp - 0x50]
	xor	eax, eax
	mov	ecx, 0x3a
	cmp	qword ptr [rbp - 0x40], 0x1f
	cmovb	eax, ecx
	mov	dil, al
	mov	byte ptr [rbp - 0x51], dil
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rbp - 0x18]
	add	r8, 0x11
	add	r8, qword ptr [rbp - 0x40]
	mov	rcx, r8
	movsx	r8d, byte ptr [rbp - 0x51]
	call	strtoul_cc_t
	cmp	eax, 0
	je	.label_399
	mov	byte ptr [rbp - 1], 0
	jmp	.label_394
.label_399:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_396
.label_397:
	mov	byte ptr [rbp - 1], 1
.label_394:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404740

	.globl mode_type_flag
	.type mode_type_flag, @function
mode_type_flag:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	edi, dword ptr [rbp - 0xc]
	mov	esi, edi
	mov	rax, rsi
	sub	rax, 4
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rax
	ja	.label_400
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_402]]
	jmp	rcx
.label_404777:
	mov     rax, qword ptr [rbp - 0x18]
	add     rax, 8
	mov     qword ptr [rbp - 8], rax
	jmp     .label_401
.label_1229:
	mov     rax, qword ptr [rbp - 0x18]
	mov     qword ptr [rbp - 8], rax
	jmp     .label_401
.label_1230:
	mov     rax, qword ptr [rbp - 0x18]
	add     rax, 4
	mov     qword ptr [rbp - 8], rax
	jmp     .label_401
.label_1231:
	mov     rax, qword ptr [rbp - 0x18]
	add     rax, 0xc
	mov     qword ptr [rbp - 8], rax
	jmp     .label_401
.label_1232:
	mov     qword ptr [rbp - 8], 0
	jmp     .label_401
.label_400:
	call    abort
.label_401:
	mov     rax, qword ptr [rbp - 8]
	add     rsp, 0x30
	pop     rbp
	ret
	.section	.text
	.align	16
	#Procedure 0x4047e0

	.globl sane_mode
	.type sane_mode, @function
sane_mode:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], 0
.label_410:
	movabs	rax, OFFSET FLAT:control_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	cmp	qword ptr [rax], 0
	je	.label_418
	movabs	rax, OFFSET FLAT:control_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	imul	rcx, rcx, 0x18
	mov	rdx, rax
	add	rdx, rcx
	mov	sil, byte ptr [rdx + 8]
	movsxd	rcx, dword ptr [rbp - 0xc]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	byte ptr [rcx + rax + 0x11], sil
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_410
.label_418:
	mov	dword ptr [rbp - 0xc], 0
.label_403:
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	add	rax, rcx
	cmp	qword ptr [rax], 0
	je	.label_408
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	add	rax, rcx
	movsx	edx, byte ptr [rax + 0xc]
	and	edx, 0x10
	cmp	edx, 0
	je	.label_417
	jmp	.label_409
.label_417:
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	add	rax, rcx
	movsx	edx, byte ptr [rax + 0xc]
	and	edx, 1
	cmp	edx, 0
	je	.label_411
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	add	rax, rcx
	mov	edi, dword ptr [rax + 8]
	mov	rsi, qword ptr [rbp - 8]
	call	mode_type_flag
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_413
	jmp	.label_416
.label_413:
	movabs	rdi, OFFSET FLAT:label_404
	movabs	rsi, OFFSET FLAT:label_405
	mov	edx, 0x8cb
	movabs	rcx, OFFSET FLAT:label_406
	call	__assert_fail
.label_416:
	movabs	rax, OFFSET FLAT:mode_info
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rcx]
	mov	ecx, edx
	movsxd	rsi, dword ptr [rbp - 0xc]
	shl	rsi, 5
	mov	rdi, rax
	add	rdi, rsi
	mov	rsi, qword ptr [rdi + 0x18]
	xor	rsi, 0xffffffffffffffff
	and	rcx, rsi
	movsxd	rsi, dword ptr [rbp - 0xc]
	shl	rsi, 5
	add	rax, rsi
	or	rcx, qword ptr [rax + 0x10]
	mov	edx, ecx
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], edx
	jmp	.label_412
.label_411:
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	add	rax, rcx
	movsx	edx, byte ptr [rax + 0xc]
	and	edx, 2
	cmp	edx, 0
	je	.label_414
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	add	rax, rcx
	mov	edi, dword ptr [rax + 8]
	mov	rsi, qword ptr [rbp - 8]
	call	mode_type_flag
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_415
	jmp	.label_407
.label_415:
	movabs	rdi, OFFSET FLAT:label_404
	movabs	rsi, OFFSET FLAT:label_405
	mov	edx, 0x8d1
	movabs	rcx, OFFSET FLAT:label_406
	call	__assert_fail
.label_407:
	movabs	rax, OFFSET FLAT:mode_info
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rcx]
	mov	ecx, edx
	movsxd	rsi, dword ptr [rbp - 0xc]
	shl	rsi, 5
	mov	rdi, rax
	add	rdi, rsi
	mov	rsi, qword ptr [rdi + 0x18]
	xor	rsi, 0xffffffffffffffff
	and	rcx, rsi
	movsxd	rsi, dword ptr [rbp - 0xc]
	shl	rsi, 5
	add	rax, rsi
	mov	rax, qword ptr [rax + 0x10]
	xor	rax, 0xffffffffffffffff
	and	rcx, rax
	mov	edx, ecx
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], edx
.label_414:
	jmp	.label_412
.label_412:
	jmp	.label_409
.label_409:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_403
.label_408:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404a60

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
	#Procedure 0x404a70

	.globl get_win_size
	.type get_win_size, @function
get_win_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 0x5413
	mov	ecx, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	al, 0
	call	ioctl
	mov	dword ptr [rbp - 0x14], eax
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ab0

	.globl wrapf
	.type wrapf, @function
wrapf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1b0
	test	al, al
	movaps	xmmword ptr [rbp - 0xf0], xmm7
	movaps	xmmword ptr [rbp - 0x100], xmm6
	movaps	xmmword ptr [rbp - 0x110], xmm5
	movaps	xmmword ptr [rbp - 0x120], xmm4
	movaps	xmmword ptr [rbp - 0x130], xmm3
	movaps	xmmword ptr [rbp - 0x140], xmm2
	movaps	xmmword ptr [rbp - 0x150], xmm1
	movaps	xmmword ptr [rbp - 0x160], xmm0
	mov	qword ptr [rbp - 0x168], rdi
	mov	qword ptr [rbp - 0x170], r9
	mov	qword ptr [rbp - 0x178], r8
	mov	qword ptr [rbp - 0x180], rcx
	mov	qword ptr [rbp - 0x188], rdx
	mov	qword ptr [rbp - 0x190], rsi
	je	.label_422
	movaps	xmm0, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0xf0]
	movaps	xmmword ptr [rbp - 0x40], xmm7
.label_422:
	mov	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rdx, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rsi, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rsi
	mov	rdi, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0xd8], rdi
	mov	r8, qword ptr [rbp - 0x168]
	lea	rdi, [rbp - 0x28]
	lea	r9, [rbp - 0x20]
	mov	qword ptr [rbp - 8], r8
	mov	r8, r9
	lea	r10, [rbp - 0xe0]
	mov	qword ptr [r8 + 0x10], r10
	lea	r10, [rbp + 0x10]
	mov	qword ptr [r8 + 8], r10
	mov	dword ptr [r8 + 4], 0x30
	mov	dword ptr [r8], 8
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, r9
	call	vasprintf
	lea	rcx, [rbp - 0x20]
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x198], rcx
	jge	.label_419
	call	xalloc_die
.label_419:
	xor	eax, eax
	cmp	eax,  dword ptr [dword ptr [current_col]]
	jge	.label_420
	mov	eax,  dword ptr [dword ptr [max_col]]
	sub	eax,  dword ptr [dword ptr [current_col]]
	cmp	eax, dword ptr [rbp - 0x2c]
	jge	.label_423
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [dword ptr [current_col]],  0
	mov	dword ptr [rbp - 0x19c], eax
	jmp	.label_421
.label_423:
	mov	edi, 0x20
	call	putchar_unlocked
	mov	edi,  dword ptr [dword ptr [current_col]]
	add	edi, 1
	mov	dword ptr [dword ptr [current_col]],  edi
	mov	dword ptr [rbp - 0x1a0], eax
.label_421:
	jmp	.label_420
.label_420:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	mov	rdi, qword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x1a4], eax
	call	free
	mov	eax, dword ptr [rbp - 0x2c]
	mov	ecx,  dword ptr [dword ptr [rip + current_col]]
	add	ecx, eax
	mov	dword ptr [dword ptr [rip + current_col]],  ecx
	add	rsp, 0x1b0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ce0

	.globl baud_to_value
	.type baud_to_value, @function
baud_to_value:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], 0
.label_428:
	movabs	rax, OFFSET FLAT:speeds
	movsxd	rcx, dword ptr [rbp - 0x10]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	cmp	qword ptr [rax], 0
	je	.label_425
	movabs	rax, OFFSET FLAT:speeds
	mov	ecx, dword ptr [rbp - 0xc]
	movsxd	rdx, dword ptr [rbp - 0x10]
	imul	rdx, rdx, 0x18
	add	rax, rdx
	cmp	ecx, dword ptr [rax + 8]
	jne	.label_426
	movabs	rax, OFFSET FLAT:speeds
	movsxd	rcx, dword ptr [rbp - 0x10]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_427
.label_426:
	jmp	.label_424
.label_424:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 1
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_428
.label_425:
	mov	qword ptr [rbp - 8], 0
.label_427:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d80

	.globl strtoul_tcflag_t
	.type strtoul_tcflag_t, @function
strtoul_tcflag_t:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, r8b
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	byte ptr [rbp - 0x29], al
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x14]
	call	strtoul
	mov	qword ptr [rbp - 0x38], rax
	call	__errno_location
	cmp	dword ptr [rax], 0
	jne	.label_429
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	movsx	edx, byte ptr [rbp - 0x29]
	cmp	ecx, edx
	jne	.label_429
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_429
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, eax
	mov	ecx, ecx
	mov	eax, ecx
	cmp	rax, qword ptr [rbp - 0x38]
	je	.label_431
.label_429:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_430
.label_431:
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 4], 0
.label_430:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404e30

	.globl strtoul_cc_t
	.type strtoul_cc_t, @function
strtoul_cc_t:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, r8b
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	byte ptr [rbp - 0x29], al
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x14]
	call	strtoul
	mov	qword ptr [rbp - 0x38], rax
	call	__errno_location
	cmp	dword ptr [rax], 0
	jne	.label_432
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	movsx	edx, byte ptr [rbp - 0x29]
	cmp	ecx, edx
	jne	.label_432
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_432
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, al
	movzx	edx, cl
	mov	eax, edx
	cmp	rax, qword ptr [rbp - 0x38]
	je	.label_434
.label_432:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_433
.label_434:
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, al
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax], cl
	mov	dword ptr [rbp - 4], 0
.label_433:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ee0

	.globl display_changed
	.type display_changed, @function
display_changed:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	esi, 1
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0x24], 0
	mov	rdi, qword ptr [rbp - 8]
	call	display_speed
	movabs	rdi, OFFSET FLAT:label_435
	mov	rax, qword ptr [rbp - 8]
	movzx	esi, byte ptr [rax + 0x10]
	mov	al, 0
	call	wrapf
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [dword ptr [current_col]],  0
	mov	byte ptr [rbp - 0xd], 1
	mov	dword ptr [rbp - 0xc], 0
	mov	dword ptr [rbp - 0x28], eax
.label_451:
	movabs	rax, OFFSET FLAT:control_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	mov	rdi, qword ptr [rax]
	mov	edx, OFFSET FLAT:label_357
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	sete	r8b
	xor	r8b, 0xff
	test	r8b, 1
	jne	.label_458
	jmp	.label_463
.label_458:
	movabs	rax, OFFSET FLAT:control_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	imul	rcx, rcx, 0x18
	mov	rdx, rax
	add	rdx, rcx
	mov	rcx, qword ptr [rdx + 0x10]
	mov	rdx, qword ptr [rbp - 8]
	movzx	esi, byte ptr [rdx + rcx + 0x11]
	movsxd	rcx, dword ptr [rbp - 0xc]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	movzx	edi, byte ptr [rax + 8]
	cmp	esi, edi
	jne	.label_464
	jmp	.label_452
.label_464:
	movabs	rax, OFFSET FLAT:control_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	mov	rdi, qword ptr [rax]
	mov	edx, OFFSET FLAT:label_449
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	jne	.label_457
	jmp	.label_452
.label_457:
	movabs	rax, OFFSET FLAT:control_info
	mov	byte ptr [rbp - 0xd], 0
	movsxd	rcx, dword ptr [rbp - 0xc]
	imul	rcx, rcx, 0x18
	mov	rdx, rax
	add	rdx, rcx
	mov	rsi, qword ptr [rdx]
	movsxd	rcx, dword ptr [rbp - 0xc]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movzx	edi, byte ptr [rcx + rax + 0x11]
	mov	qword ptr [rbp - 0x30], rsi
	call	visible
	movabs	rdi, OFFSET FLAT:label_446
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, rax
	mov	al, 0
	call	wrapf
.label_452:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_451
.label_463:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0xc]
	and	ecx, 2
	cmp	ecx, 0
	jne	.label_453
	movabs	rdi, OFFSET FLAT:label_460
	mov	rax, qword ptr [rbp - 8]
	movzx	ecx, byte ptr [rax + 0x17]
	mov	esi, ecx
	mov	rax, qword ptr [rbp - 8]
	movzx	ecx, byte ptr [rax + 0x16]
	mov	edx, ecx
	mov	al, 0
	call	wrapf
	jmp	.label_444
.label_453:
	test	byte ptr [rbp - 0xd], 1
	jne	.label_442
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x34], eax
.label_442:
	jmp	.label_444
.label_444:
	mov	dword ptr [dword ptr [current_col]],  0
	mov	byte ptr [rbp - 0xd], 1
	mov	dword ptr [rbp - 0xc], 0
.label_441:
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	add	rax, rcx
	cmp	qword ptr [rax], 0
	je	.label_450
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	add	rax, rcx
	movsx	edx, byte ptr [rax + 0xc]
	and	edx, 8
	cmp	edx, 0
	je	.label_459
	jmp	.label_438
.label_459:
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	add	rax, rcx
	mov	edx, dword ptr [rax + 8]
	cmp	edx, dword ptr [rbp - 0x24]
	je	.label_440
	test	byte ptr [rbp - 0xd], 1
	jne	.label_445
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [dword ptr [current_col]],  0
	mov	byte ptr [rbp - 0xd], 1
	mov	dword ptr [rbp - 0x38], eax
.label_445:
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	add	rax, rcx
	mov	edx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x24], edx
.label_440:
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	add	rax, rcx
	mov	edi, dword ptr [rax + 8]
	mov	rsi, qword ptr [rbp - 8]
	call	mode_type_flag
	movabs	rcx, OFFSET FLAT:mode_info
	mov	qword ptr [rbp - 0x18], rax
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 5
	add	rcx, rax
	cmp	qword ptr [rcx + 0x18], 0
	je	.label_455
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_447
.label_455:
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x40], rax
.label_447:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_461
	jmp	.label_436
.label_461:
	movabs	rdi, OFFSET FLAT:label_404
	movabs	rsi, OFFSET FLAT:label_405
	mov	edx, 0x7a2
	movabs	rcx, OFFSET FLAT:label_439
	call	__assert_fail
.label_436:
	movabs	rax, OFFSET FLAT:mode_info
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rcx]
	mov	ecx, edx
	and	rcx, qword ptr [rbp - 0x20]
	movsxd	rsi, dword ptr [rbp - 0xc]
	shl	rsi, 5
	add	rax, rsi
	cmp	rcx, qword ptr [rax + 0x10]
	jne	.label_462
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	add	rax, rcx
	movsx	edx, byte ptr [rax + 0xc]
	and	edx, 2
	cmp	edx, 0
	je	.label_456
	movabs	rdi, OFFSET FLAT:label_150
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	add	rax, rcx
	mov	rsi, qword ptr [rax]
	mov	al, 0
	call	wrapf
	mov	byte ptr [rbp - 0xd], 0
.label_456:
	jmp	.label_437
.label_462:
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	add	rax, rcx
	movsx	edx, byte ptr [rax + 0xc]
	and	edx, 5
	cmp	edx, 5
	jne	.label_448
	movabs	rdi, OFFSET FLAT:label_454
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	add	rax, rcx
	mov	rsi, qword ptr [rax]
	mov	al, 0
	call	wrapf
	mov	byte ptr [rbp - 0xd], 0
.label_448:
	jmp	.label_437
.label_437:
	jmp	.label_438
.label_438:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_441
.label_450:
	test	byte ptr [rbp - 0xd], 1
	jne	.label_443
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x44], eax
.label_443:
	mov	dword ptr [dword ptr [current_col]],  0
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405350

	.globl display_all
	.type display_all, @function
display_all:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	eax, 1
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x2c], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, eax
	call	display_speed
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x10]
	call	display_window_size
	movabs	rdi, OFFSET FLAT:label_435
	mov	rsi, qword ptr [rbp - 8]
	movzx	esi, byte ptr [rsi + 0x10]
	mov	al, 0
	call	wrapf
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [dword ptr [current_col]],  0
	mov	dword ptr [rbp - 0x14], 0
	mov	dword ptr [rbp - 0x30], eax
.label_466:
	movabs	rax, OFFSET FLAT:control_info
	movsxd	rcx, dword ptr [rbp - 0x14]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	mov	rdi, qword ptr [rax]
	mov	edx, OFFSET FLAT:label_357
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	sete	r8b
	xor	r8b, 0xff
	test	r8b, 1
	jne	.label_474
	jmp	.label_482
.label_474:
	movabs	rax, OFFSET FLAT:control_info
	movsxd	rcx, dword ptr [rbp - 0x14]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	mov	rdi, qword ptr [rax]
	mov	edx, OFFSET FLAT:label_449
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	jne	.label_473
	jmp	.label_478
.label_473:
	movabs	rax, OFFSET FLAT:control_info
	movsxd	rcx, dword ptr [rbp - 0x14]
	imul	rcx, rcx, 0x18
	mov	rdx, rax
	add	rdx, rcx
	mov	rsi, qword ptr [rdx]
	movsxd	rcx, dword ptr [rbp - 0x14]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movzx	edi, byte ptr [rcx + rax + 0x11]
	mov	qword ptr [rbp - 0x38], rsi
	call	visible
	movabs	rdi, OFFSET FLAT:label_446
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, rax
	mov	al, 0
	call	wrapf
.label_478:
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_466
.label_482:
	movabs	rdi, OFFSET FLAT:label_472
	mov	rax, qword ptr [rbp - 8]
	movzx	ecx, byte ptr [rax + 0x17]
	mov	esi, ecx
	mov	rax, qword ptr [rbp - 8]
	movzx	ecx, byte ptr [rax + 0x16]
	mov	edx, ecx
	mov	al, 0
	call	wrapf
	cmp	dword ptr [dword ptr [current_col]],  0
	je	.label_481
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x3c], eax
.label_481:
	mov	dword ptr [dword ptr [current_col]],  0
	mov	dword ptr [rbp - 0x14], 0
.label_480:
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0x14]
	shl	rcx, 5
	add	rax, rcx
	cmp	qword ptr [rax], 0
	je	.label_467
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0x14]
	shl	rcx, 5
	add	rax, rcx
	movsx	edx, byte ptr [rax + 0xc]
	and	edx, 8
	cmp	edx, 0
	je	.label_465
	jmp	.label_476
.label_465:
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0x14]
	shl	rcx, 5
	add	rax, rcx
	mov	edx, dword ptr [rax + 8]
	cmp	edx, dword ptr [rbp - 0x2c]
	je	.label_477
	mov	edi, 0xa
	call	putchar_unlocked
	movabs	rcx, OFFSET FLAT:mode_info
	mov	dword ptr [dword ptr [current_col]],  0
	movsxd	rdx, dword ptr [rbp - 0x14]
	shl	rdx, 5
	add	rcx, rdx
	mov	edi, dword ptr [rcx + 8]
	mov	dword ptr [rbp - 0x2c], edi
	mov	dword ptr [rbp - 0x40], eax
.label_477:
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0x14]
	shl	rcx, 5
	add	rax, rcx
	mov	edi, dword ptr [rax + 8]
	mov	rsi, qword ptr [rbp - 8]
	call	mode_type_flag
	movabs	rcx, OFFSET FLAT:mode_info
	mov	qword ptr [rbp - 0x20], rax
	movsxd	rax, dword ptr [rbp - 0x14]
	shl	rax, 5
	add	rcx, rax
	cmp	qword ptr [rcx + 0x18], 0
	je	.label_470
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0x14]
	shl	rcx, 5
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_469
.label_470:
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0x14]
	shl	rcx, 5
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x48], rax
.label_469:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_479
	jmp	.label_484
.label_479:
	movabs	rdi, OFFSET FLAT:label_404
	movabs	rsi, OFFSET FLAT:label_405
	mov	edx, 0x7f6
	movabs	rcx, OFFSET FLAT:label_471
	call	__assert_fail
.label_484:
	movabs	rax, OFFSET FLAT:mode_info
	mov	rcx, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rcx]
	mov	ecx, edx
	and	rcx, qword ptr [rbp - 0x28]
	movsxd	rsi, dword ptr [rbp - 0x14]
	shl	rsi, 5
	add	rax, rsi
	cmp	rcx, qword ptr [rax + 0x10]
	jne	.label_483
	movabs	rdi, OFFSET FLAT:label_150
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0x14]
	shl	rcx, 5
	add	rax, rcx
	mov	rsi, qword ptr [rax]
	mov	al, 0
	call	wrapf
	jmp	.label_468
.label_483:
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0x14]
	shl	rcx, 5
	add	rax, rcx
	movsx	edx, byte ptr [rax + 0xc]
	and	edx, 4
	cmp	edx, 0
	je	.label_475
	movabs	rdi, OFFSET FLAT:label_454
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0x14]
	shl	rcx, 5
	add	rax, rcx
	mov	rsi, qword ptr [rax]
	mov	al, 0
	call	wrapf
.label_475:
	jmp	.label_468
.label_468:
	jmp	.label_476
.label_476:
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_480
.label_467:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [dword ptr [current_col]],  0
	mov	dword ptr [rbp - 0x4c], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405720

	.globl display_recoverable
	.type display_recoverable, @function
display_recoverable:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, OFFSET FLAT:label_485
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rdi]
	mov	esi, ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rdi + 4]
	mov	edx, ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 8]
	mov	r8d, dword ptr [rdi + 0xc]
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	qword ptr [rbp - 0x10], 0
	mov	dword ptr [rbp - 0x14], eax
.label_486:
	cmp	qword ptr [rbp - 0x10], 0x20
	jae	.label_488
	movabs	rdi, OFFSET FLAT:label_487
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movzx	edx, byte ptr [rcx + rax + 0x11]
	mov	esi, edx
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x18], eax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_486
.label_488:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4057c0

	.globl visible
	.type visible, @function
visible:
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	movabs	rcx, OFFSET FLAT:visible.buf
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x18], rcx
	movzx	edi, byte ptr [rbp - 9]
	cmp	edi, 0
	jne	.label_489
	movabs	rax, OFFSET FLAT:label_493
	mov	qword ptr [rbp - 8], rax
	jmp	.label_494
.label_489:
	movzx	eax, byte ptr [rbp - 9]
	cmp	eax, 0x20
	jl	.label_500
	movzx	eax, byte ptr [rbp - 9]
	cmp	eax, 0x7f
	jge	.label_501
	mov	al, byte ptr [rbp - 9]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx], al
	jmp	.label_495
.label_501:
	movzx	eax, byte ptr [rbp - 9]
	cmp	eax, 0x7f
	jne	.label_497
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0x5e
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0x3f
	jmp	.label_491
.label_497:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0x4d
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0x2d
	movzx	edx, byte ptr [rbp - 9]
	cmp	edx, 0xa0
	jl	.label_490
	movzx	eax, byte ptr [rbp - 9]
	cmp	eax, 0xff
	jge	.label_499
	movzx	eax, byte ptr [rbp - 9]
	sub	eax, 0x80
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x18], rsi
	mov	byte ptr [rdx], cl
	jmp	.label_492
.label_499:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0x5e
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0x3f
.label_492:
	jmp	.label_496
.label_490:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0x5e
	movzx	edx, byte ptr [rbp - 9]
	sub	edx, 0x80
	add	edx, 0x40
	mov	sil, dl
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], sil
.label_496:
	jmp	.label_491
.label_491:
	jmp	.label_495
.label_495:
	jmp	.label_498
.label_500:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0x5e
	movzx	edx, byte ptr [rbp - 9]
	add	edx, 0x40
	mov	sil, dl
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], sil
.label_498:
	movabs	rax, OFFSET FLAT:visible.buf
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx], 0
	mov	qword ptr [rbp - 8], rax
.label_494:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405980
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
	#Procedure 0x4059a0
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
	#Procedure 0x4059c0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_505
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_508
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_505
.label_508:
	movabs	rdi, OFFSET FLAT:label_507
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_503
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_506
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_504
.label_503:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_150
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_504:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_505:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_502
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_502:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405ab0

	.globl fd_reopen
	.type fd_reopen, @function
fd_reopen:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	dword ptr [rbp - 0x18], ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	edx, dword ptr [rbp - 0x18]
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax, dword ptr [rbp - 8]
	je	.label_510
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_509
.label_510:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_511
.label_509:
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 8]
	call	dup2
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], esi
	mov	edi, dword ptr [rbp - 0x1c]
	call	close
	mov	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x28], eax
	mov	dword ptr [rbp - 0x2c], esi
	call	__errno_location
	mov	esi, dword ptr [rbp - 0x2c]
	mov	dword ptr [rax], esi
	mov	esi, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 4], esi
.label_511:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405b40

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_512
	movabs	rdi, OFFSET FLAT:label_518
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_512:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_513
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_516
.label_513:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_516:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_514
	movabs	rsi, OFFSET FLAT:label_515
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_514
	movabs	rsi, OFFSET FLAT:label_519
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_517
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_517:
	jmp	.label_514
.label_514:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405c60
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
	je	.label_520
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_521
.label_520:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_521
.label_521:
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
	#Procedure 0x405ce0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_522
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_523
.label_522:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_523
.label_523:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405d20
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
	je	.label_524
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_525
.label_524:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_525
.label_525:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405d70

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
	je	.label_526
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_527
.label_526:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_527
.label_527:
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
	#Procedure 0x405e20
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_528
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_528:
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
	#Procedure 0x405e60

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
	jne	.label_529
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_529:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_531
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_530
.label_531:
	call	abort
.label_530:
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
	#Procedure 0x405ed0
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
	je	.label_532
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_533
.label_532:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_533
.label_533:
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
	#Procedure 0x405fa0

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
.label_654:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_546
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_552]]
	jmp	rcx
.label_1170:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_1169:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_561
	jmp	.label_563
.label_563:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_564
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_564:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_561
.label_561:
	movabs	rax, OFFSET FLAT:label_576
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_577
.label_1171:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_577
.label_1172:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_585
	movabs	rdi, OFFSET FLAT:label_589
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_593
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_585:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_601
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_621:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_605
	jmp	.label_608
.label_608:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_610
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_610:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_615
.label_615:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_621
.label_605:
	jmp	.label_601
.label_601:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_577
.label_1167:
	mov	byte ptr [rbp - 0x79], 1
.label_1166:
	mov	byte ptr [rbp - 0x7b], 1
.label_1168:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_634
	mov	byte ptr [rbp - 0x79], 1
.label_634:
	jmp	.label_652
.label_652:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_646
	jmp	.label_639
.label_639:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_641
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_641:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_646
.label_646:
	movabs	rax, OFFSET FLAT:label_593
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_577
.label_1165:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_577
.label_546:
	call	abort
.label_577:
	mov	qword ptr [rbp - 0x58], 0
.label_618:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_659
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_662
.label_659:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_662:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_673
	jmp	.label_703
.label_673:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_680
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_680
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_680
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_689
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_689
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_631
.label_689:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_631:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_680
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_680
	test	byte ptr [rbp - 0x7b], 1
	je	.label_710
	jmp	.label_568
.label_710:
	mov	byte ptr [rbp - 0x81], 1
.label_680:
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
	ja	.label_714
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_718]]
	jmp	rcx
.label_1139:
	test	byte ptr [rbp - 0x79], 1
	je	.label_719
	jmp	.label_640
.label_640:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_647
	jmp	.label_568
.label_647:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_725
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_725
	jmp	.label_728
.label_728:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_729
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_729:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_732
.label_732:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_735
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_735:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_538
.label_538:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_543
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_543:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_725:
	jmp	.label_553
.label_553:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_555
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_555:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_688
.label_688:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_567
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_567
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_567
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_567
	jmp	.label_583
.label_583:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_596
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_596:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_592
.label_592:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_597
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_597:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_567
.label_567:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_609
.label_719:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_612
	jmp	.label_616
.label_612:
	jmp	.label_609
.label_609:
	jmp	.label_539
.label_1150:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_617
	jmp	.label_623
.label_623:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_624
	jmp	.label_627
.label_617:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_629
	jmp	.label_568
.label_629:
	jmp	.label_633
.label_624:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_637
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_637
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_637
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_643
	jmp	.label_653
.label_653:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_643
	jmp	.label_656
.label_656:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_643
	jmp	.label_663
.label_663:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_643
	jmp	.label_668
.label_668:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_669
	jmp	.label_643
.label_643:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_675
	jmp	.label_568
.label_675:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_679
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_679:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_687
.label_687:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_692
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_692:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_696
.label_696:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_700
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_700:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_705
.label_705:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_556
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_556:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_707
.label_669:
	jmp	.label_707
.label_707:
	jmp	.label_637
.label_637:
	jmp	.label_633
.label_627:
	jmp	.label_633
.label_633:
	jmp	.label_539
.label_1140:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_534
.label_1141:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_534
.label_1145:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_534
.label_1143:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_713
.label_1146:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_713
.label_1142:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_713
.label_1144:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_534
.label_1151:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_721
	test	byte ptr [rbp - 0x7b], 1
	je	.label_724
	jmp	.label_568
.label_724:
	jmp	.label_571
.label_721:
	test	byte ptr [rbp - 0x79], 1
	je	.label_726
	test	byte ptr [rbp - 0x7b], 1
	je	.label_726
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_726
	jmp	.label_571
.label_726:
	jmp	.label_713
.label_713:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_731
	test	byte ptr [rbp - 0x7b], 1
	je	.label_731
	jmp	.label_568
.label_731:
	jmp	.label_534
.label_534:
	test	byte ptr [rbp - 0x79], 1
	je	.label_535
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_537
.label_535:
	jmp	.label_539
.label_1152:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_541
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_544
	jmp	.label_548
.label_541:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_544
.label_548:
	jmp	.label_539
.label_544:
	jmp	.label_551
.label_551:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_554
	jmp	.label_539
.label_554:
	jmp	.label_558
.label_558:
	mov	byte ptr [rbp - 0x83], 1
.label_1147:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_562
	test	byte ptr [rbp - 0x7b], 1
	je	.label_562
	jmp	.label_568
.label_562:
	jmp	.label_539
.label_1149:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_569
	test	byte ptr [rbp - 0x7b], 1
	je	.label_575
	jmp	.label_568
.label_575:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_547
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_547
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_547:
	jmp	.label_587
.label_587:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_614
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_614:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_595
.label_595:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_600
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_600:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_607
.label_607:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_613
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_613:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_569:
	jmp	.label_539
.label_1148:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_539
.label_714:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_550
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
	jmp	.label_628
.label_550:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_645
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_645:
	jmp	.label_545
.label_545:
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
	jne	.label_666
	jmp	.label_671
.label_666:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_672
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_671
.label_672:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_677
	mov	byte ptr [rbp - 0x91], 0
.label_697:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_681
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_681:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_694
	jmp	.label_695
.label_694:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_697
.label_695:
	jmp	.label_671
.label_677:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_644
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_644
	mov	qword ptr [rbp - 0xb8], 1
.label_727:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_706
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
	jb	.label_566
	jmp	.label_716
.label_716:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_566
	jmp	.label_598
.label_598:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_566
	jmp	.label_720
.label_720:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_722
	jmp	.label_566
.label_566:
	jmp	.label_568
.label_722:
	jmp	.label_723
.label_723:
	jmp	.label_684
.label_684:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_727
.label_706:
	jmp	.label_644
.label_644:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_733
	mov	byte ptr [rbp - 0x91], 0
.label_733:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_737
.label_737:
	jmp	.label_572
.label_572:
	jmp	.label_540
.label_540:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_545
.label_671:
	jmp	.label_628
.label_628:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_549
	test	byte ptr [rbp - 0x79], 1
	je	.label_560
	test	byte ptr [rbp - 0x91], 1
	jne	.label_560
.label_549:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_704:
	test	byte ptr [rbp - 0x79], 1
	je	.label_570
	test	byte ptr [rbp - 0x91], 1
	jne	.label_570
	jmp	.label_734
.label_734:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_578
	jmp	.label_568
.label_578:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_581
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_581
	jmp	.label_586
.label_586:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_588
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_588:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_594
.label_594:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_599
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_599:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_606
.label_606:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_611
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_611:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_581:
	jmp	.label_620
.label_620:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_622
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_622:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_625
.label_625:
	jmp	.label_630
.label_630:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_632
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_632:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_638
.label_638:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_642
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_642:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_650
.label_570:
	test	byte ptr [rbp - 0x81], 1
	je	.label_655
	jmp	.label_658
.label_658:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_660
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_660:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_655:
	jmp	.label_650
.label_650:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_670
	jmp	.label_674
.label_670:
	jmp	.label_676
.label_676:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_678
	test	byte ptr [rbp - 0x82], 1
	jne	.label_678
	jmp	.label_682
.label_682:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_683
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_683:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_686
.label_686:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_690
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_690:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_678:
	jmp	.label_698
.label_698:
	jmp	.label_699
.label_699:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_701
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_701:
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
	jmp	.label_704
.label_674:
	jmp	.label_571
.label_560:
	jmp	.label_539
.label_539:
	test	byte ptr [rbp - 0x79], 1
	je	.label_711
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_712
.label_711:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_715
.label_712:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_715
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
	jne	.label_717
.label_715:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_717
	jmp	.label_571
.label_717:
	jmp	.label_537
.label_537:
	jmp	.label_657
.label_657:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_664
	jmp	.label_568
.label_664:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_702
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_702
	jmp	.label_708
.label_708:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_730
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_730:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_736
.label_736:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_536
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_536:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_542
.label_542:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_619
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_619:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_702:
	jmp	.label_557
.label_557:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_559
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_559:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_565
.label_565:
	jmp	.label_571
.label_571:
	jmp	.label_573
.label_573:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_574
	test	byte ptr [rbp - 0x82], 1
	jne	.label_574
	jmp	.label_579
.label_579:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_580
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_580:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_584
.label_584:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_590
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_590:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_574:
	jmp	.label_602
.label_602:
	jmp	.label_603
.label_603:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_604
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_604:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_709
	mov	byte ptr [rbp - 0x7e], 0
.label_709:
	jmp	.label_616
.label_616:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_618
.label_703:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_591
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_591
	test	byte ptr [rbp - 0x7b], 1
	je	.label_591
	jmp	.label_568
.label_591:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_626
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_626
	test	byte ptr [rbp - 0x7d], 1
	je	.label_626
	test	byte ptr [rbp - 0x7e], 1
	je	.label_635
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
	jmp	.label_649
.label_635:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_651
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_651
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_654
.label_651:
	jmp	.label_582
.label_582:
	jmp	.label_626
.label_626:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_661
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_661
	jmp	.label_665
.label_665:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_667
	jmp	.label_648
.label_648:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_636
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_636:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_691
.label_691:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_665
.label_667:
	jmp	.label_661
.label_661:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_685
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_685:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_649
.label_568:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_693
	test	byte ptr [rbp - 0x79], 1
	je	.label_693
	mov	dword ptr [rbp - 0x34], 4
.label_693:
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
.label_649:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407340
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
	#Procedure 0x407380

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
	je	.label_738
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_739
.label_738:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_739
.label_739:
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
	je	.label_740
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_740:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4074e0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_745:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_743
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_745
.label_743:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_744
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_742]],  rax
.label_744:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_741
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_741:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4075c0

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
	#Procedure 0x407600

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
	jge	.label_748
	call	abort
.label_748:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_753
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_747
	call	xalloc_die
.label_747:
	test	byte ptr [rbp - 0x31], 1
	je	.label_752
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_746
.label_752:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_746:
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
	je	.label_751
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_742]]
	mov	qword ptr [rax + 8], rcx
.label_751:
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
.label_753:
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
	ja	.label_749
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_750
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_750:
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
.label_749:
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
	#Procedure 0x407880

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
	#Procedure 0x4078c0
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
	#Procedure 0x4078e0
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
	#Procedure 0x407910

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
	#Procedure 0x407950

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
	jne	.label_754
	call	abort
.label_754:
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
	#Procedure 0x4079c0

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
	#Procedure 0x407a00
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
	#Procedure 0x407a30
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
	#Procedure 0x407a60

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
	#Procedure 0x407ae0

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
	#Procedure 0x407b10

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
	#Procedure 0x407b30
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
	#Procedure 0x407b60

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
	#Procedure 0x407c10

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
	#Procedure 0x407c50

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
	#Procedure 0x407cd0
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
	#Procedure 0x407d00
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
	#Procedure 0x407d40

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
	#Procedure 0x407d80
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
	#Procedure 0x407db0

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
	#Procedure 0x407de0

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
	#Procedure 0x407e00

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
	je	.label_761
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_757
.label_761:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_759
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_760
	movabs	rax, OFFSET FLAT:label_763
	movabs	rcx, OFFSET FLAT:label_764
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_757
.label_760:
	movabs	rsi, OFFSET FLAT:label_758
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_762
	movabs	rax, OFFSET FLAT:label_755
	movabs	rcx, OFFSET FLAT:label_756
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_757
.label_762:
	movabs	rax, OFFSET FLAT:label_593
	movabs	rcx, OFFSET FLAT:label_576
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_757:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407f00

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
	je	.label_765
	movabs	rsi, OFFSET FLAT:label_776
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_772
.label_765:
	movabs	rsi, OFFSET FLAT:label_773
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_772:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_782
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
	mov	ecx, OFFSET FLAT:label_781
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
	ja	.label_769
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_777]]
	jmp	rcx
.label_1280:
	jmp	.label_768
.label_1281:
	movabs	rdi, OFFSET FLAT:label_783
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
	jmp	.label_768
.label_1282:
	movabs	rdi, OFFSET FLAT:label_780
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
	jmp	.label_768
.label_1283:
	movabs	rdi, OFFSET FLAT:label_779
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
	jmp	.label_768
.label_1284:
	movabs	rdi, OFFSET FLAT:label_775
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
	jmp	.label_768
.label_1285:
	movabs	rdi, OFFSET FLAT:label_774
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
	jmp	.label_768
.label_1286:
	movabs	rdi, OFFSET FLAT:label_766
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
	jmp	.label_768
.label_1287:
	movabs	rdi, OFFSET FLAT:label_770
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
	jmp	.label_768
.label_1288:
	movabs	rdi, OFFSET FLAT:label_778
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
	jmp	.label_768
.label_1289:
	movabs	rdi, OFFSET FLAT:label_771
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
	jmp	.label_768
.label_769:
	movabs	rdi, OFFSET FLAT:label_767
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
.label_768:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4084c0
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
.label_786:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_784
	jmp	.label_785
.label_785:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_786
.label_784:
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
	#Procedure 0x408530

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
.label_787:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_791
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_789
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_788
.label_789:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_788:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_791:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_793
	jmp	.label_792
.label_793:
	jmp	.label_790
.label_790:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_787
.label_792:
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
	#Procedure 0x408640

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
	je	.label_794
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
.label_794:
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
	#Procedure 0x4087b0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_795
	call	gettext
	movabs	rsi, OFFSET FLAT:label_797
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_796
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_121
	movabs	rdx, OFFSET FLAT:label_114
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_798
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
	#Procedure 0x408840
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
	jae	.label_799
	call	xalloc_die
.label_799:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408890

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
	jne	.label_800
	cmp	qword ptr [rbp - 8], 0
	je	.label_800
	call	xalloc_die
.label_800:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4088d0
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
	jae	.label_801
	call	xalloc_die
.label_801:
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
	#Procedure 0x408920

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_802
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_802
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_804
.label_802:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_803
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_803
	call	xalloc_die
.label_803:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_804:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4089a0

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
	jne	.label_805
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_808
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
.label_808:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_806
	call	xalloc_die
.label_806:
	jmp	.label_807
.label_805:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_809
	call	xalloc_die
.label_809:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_807:
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
	#Procedure 0x408a90

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
	#Procedure 0x408ab0
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
	#Procedure 0x408ae0
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
	#Procedure 0x408b20
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
	jb	.label_810
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_811
.label_810:
	call	xalloc_die
.label_811:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408b80

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
	#Procedure 0x408bc0
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
	#Procedure 0x408c00

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_812
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_150
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x408c40

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x58
	mov	eax, dword ptr [rbp + 0x10]
	xor	r10d, r10d
	mov	r11d, r10d
	lea	rbx, [rbp - 0x48]
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	dword ptr [rbp - 0x3c], eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	r8, qword ptr [rbp - 0x30]
	mov	rsi, r11
	mov	rcx, rbx
	call	xstrtoumax
	mov	dword ptr [rbp - 0x40], eax
	cmp	dword ptr [rbp - 0x40], 0
	jne	.label_815
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_817
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x48]
	jae	.label_821
.label_817:
	mov	dword ptr [rbp - 0x40], 1
	cmp	qword ptr [rbp - 0x48], 0x3fffffff
	jbe	.label_826
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_816
.label_826:
	call	__errno_location
	mov	dword ptr [rax], 0x22
.label_816:
	jmp	.label_821
.label_821:
	jmp	.label_820
.label_815:
	cmp	dword ptr [rbp - 0x40], 1
	jne	.label_823
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_819
.label_823:
	cmp	dword ptr [rbp - 0x40], 3
	jne	.label_814
	call	__errno_location
	mov	dword ptr [rax], 0
.label_814:
	jmp	.label_819
.label_819:
	jmp	.label_820
.label_820:
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_822
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_824
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_813
.label_824:
	mov	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_813
.label_813:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x50], eax
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_818
	xor	eax, eax
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_825
.label_818:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], ecx
.label_825:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x60], rcx
	call	quote
	movabs	rdx, OFFSET FLAT:label_506
	mov	edi, dword ptr [rbp - 0x50]
	mov	esi, dword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	r8, rax
	mov	al, 0
	call	error
.label_822:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x58
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408dc0
	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	eax, 0xa
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	dword ptr [rbp - 0x2c], r9d
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x28]
	mov	r10d, dword ptr [rbp - 0x2c]
	mov	esi, eax
	mov	dword ptr [rsp], r10d
	call	xnumtoumax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408e10

	.globl xstrtol
	.type xstrtol, @function
xstrtol:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_832
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_832
	jmp	.label_846
.label_832:
	movabs	rdi, OFFSET FLAT:label_847
	movabs	rsi, OFFSET FLAT:label_848
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_849
	call	__assert_fail
.label_846:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_854
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_857
.label_854:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_857
.label_857:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtol
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_863
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_827
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_827
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_827
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_851
.label_827:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_835
.label_851:
	jmp	.label_837
.label_863:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_840
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_842
	mov	dword ptr [rbp - 4], 4
	jmp	.label_835
.label_842:
	mov	dword ptr [rbp - 0x4c], 1
.label_840:
	jmp	.label_837
.label_837:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_845
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_835
.label_845:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_834
	mov	dword ptr [rbp - 0x50], 0x400
	mov	dword ptr [rbp - 0x54], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_862
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_835
.label_862:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x64], ecx
	mov	dword ptr [rbp - 0x68], edx
	je	.label_830
	jmp	.label_866
.label_866:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_830
	jmp	.label_828
.label_828:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x70], eax
	je	.label_830
	jmp	.label_864
.label_864:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x74], eax
	je	.label_830
	jmp	.label_839
.label_839:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x78], eax
	je	.label_830
	jmp	.label_844
.label_844:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_830
	jmp	.label_850
.label_850:
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x80], eax
	jb	.label_830
	jmp	.label_852
.label_852:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x84], eax
	je	.label_830
	jmp	.label_858
.label_858:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_830
	jmp	.label_859
.label_859:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_830
	jmp	.label_861
.label_861:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x90], eax
	jne	.label_855
	jmp	.label_830
.label_830:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_853
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0x94], ecx
	mov	dword ptr [rbp - 0x98], edx
	je	.label_831
	jmp	.label_829
.label_829:
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_831
	jmp	.label_836
.label_836:
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xa0], eax
	jne	.label_838
	jmp	.label_841
.label_841:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_843
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, 2
	mov	dword ptr [rbp - 0x54], eax
.label_843:
	jmp	.label_838
.label_831:
	mov	dword ptr [rbp - 0x50], 0x3e8
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, 1
	mov	dword ptr [rbp - 0x54], eax
.label_838:
	jmp	.label_853
.label_853:
	jmp	.label_855
.label_855:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xa8], rax
	mov	dword ptr [rbp - 0xac], ecx
	ja	.label_856
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_860]]
	jmp	rcx
.label_1183:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_833
.label_1174:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_833
.label_1184:
	mov	dword ptr [rbp - 0x58], 0
	jmp	.label_833
.label_1175:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_833
.label_1176:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_833
.label_1177:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_833
.label_1178:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_833
.label_1179:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_833
.label_1180:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_833
.label_1185:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_833
.label_1181:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_833
.label_1182:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_833
.label_856:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_835
.label_833:
	mov	eax, dword ptr [rbp - 0x58]
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx]
	cmp	byte ptr [rcx], 0
	je	.label_865
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_865:
	jmp	.label_834
.label_834:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_835:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409340

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	push	rbp
	mov	rbp, rsp
	movabs	rax, 0x8000000000000000
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	movsxd	rcx, dword ptr [rbp - 0x14]
	cqo	
	idiv	rcx
	cmp	rdi, rax
	jge	.label_867
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 1
	jmp	.label_869
.label_867:
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x14]
	cqo	
	idiv	rcx
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	jge	.label_868
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 1
	jmp	.label_869
.label_868:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_869:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4093f0

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
.label_871:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_870
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_871
.label_870:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409440

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
	jg	.label_888
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_888
	jmp	.label_892
.label_888:
	movabs	rdi, OFFSET FLAT:label_847
	movabs	rsi, OFFSET FLAT:label_893
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_894
	call	__assert_fail
.label_892:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_901
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_904
.label_901:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_904
.label_904:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_878:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_872
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_878
.label_872:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_885
	mov	dword ptr [rbp - 4], 4
	jmp	.label_875
.label_885:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoumax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_898
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_891
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_891
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_891
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_903
.label_891:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_875
.label_903:
	jmp	.label_907
.label_898:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_908
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_911
	mov	dword ptr [rbp - 4], 4
	jmp	.label_875
.label_911:
	mov	dword ptr [rbp - 0x4c], 1
.label_908:
	jmp	.label_907
.label_907:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_913
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_875
.label_913:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_880
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_889
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_875
.label_889:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_881
	jmp	.label_895
.label_895:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_881
	jmp	.label_902
.label_902:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_881
	jmp	.label_906
.label_906:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_881
	jmp	.label_910
.label_910:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_881
	jmp	.label_897
.label_897:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_881
	jmp	.label_874
.label_874:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_881
	jmp	.label_879
.label_879:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_881
	jmp	.label_886
.label_886:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_881
	jmp	.label_873
.label_873:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_881
	jmp	.label_890
.label_890:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_883
	jmp	.label_881
.label_881:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_882
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_899
	jmp	.label_905
.label_905:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_899
	jmp	.label_909
.label_909:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_876
	jmp	.label_912
.label_912:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_887
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_887:
	jmp	.label_876
.label_899:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_876:
	jmp	.label_882
.label_882:
	jmp	.label_883
.label_883:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xc0], rax
	mov	dword ptr [rbp - 0xc4], ecx
	ja	.label_884
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_900]]
	jmp	rcx
.label_1073:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_877
.label_1064:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_877
.label_1074:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_877
.label_1065:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_877
.label_1066:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_877
.label_1067:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_877
.label_1068:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_877
.label_1069:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_877
.label_1070:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_877
.label_1075:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_877
.label_1071:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_877
.label_1072:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_877
.label_884:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_875
.label_877:
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
	je	.label_896
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_896:
	jmp	.label_880
.label_880:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_875:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4099f0

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
	jae	.label_914
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_915
.label_914:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_915:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409a50

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
.label_917:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_916
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale_0
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_917
.label_916:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409aa0

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
	je	.label_928
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
.label_928:
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
	je	.label_946
	jmp	.label_943
.label_943:
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_918
	jmp	.label_924
.label_946:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_926
	mov	eax, dword ptr [rbp - 0x1b4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1c0], rcx
	jmp	.label_935
.label_926:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_935:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_920
.label_918:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1c8], rax
	mov	dword ptr [rbp - 0x1cc], ecx
	ja	.label_925
	mov	eax, dword ptr [rbp - 0x1cc]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1d8], rcx
	jmp	.label_934
.label_925:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_934:
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x2c]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_920
.label_924:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	mov	dword ptr [rbp - 0x1dc], eax
	je	.label_923
	jmp	.label_931
.label_931:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	mov	dword ptr [rbp - 0x1e0], eax
	je	.label_919
	jmp	.label_938
.label_938:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_923
	jmp	.label_941
.label_941:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	mov	dword ptr [rbp - 0x1e8], eax
	je	.label_919
	jmp	.label_947
.label_947:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	mov	dword ptr [rbp - 0x1ec], eax
	je	.label_923
	jmp	.label_921
.label_921:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	je	.label_923
	jmp	.label_932
.label_932:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_919
	jmp	.label_939
.label_939:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_923
	jmp	.label_942
.label_942:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xb
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_919
	jmp	.label_948
.label_948:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	dword ptr [rbp - 0x200], eax
	je	.label_923
	jmp	.label_922
.label_922:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_919
	jmp	.label_933
.label_933:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x402
	mov	dword ptr [rbp - 0x208], eax
	je	.label_923
	jmp	.label_940
.label_940:
	mov	eax, dword ptr [rbp - 0x1dc]
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_923
	jmp	.label_944
.label_944:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	jne	.label_945
	jmp	.label_919
.label_919:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_927
.label_923:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	dword ptr [rbp - 0x21c], ecx
	ja	.label_929
	mov	eax, dword ptr [rbp - 0x21c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x218]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x228], rcx
	jmp	.label_936
.label_929:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x228], rdx
.label_936:
	mov	rax, qword ptr [rbp - 0x228]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x30]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_927
.label_945:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x230], rax
	mov	dword ptr [rbp - 0x234], ecx
	ja	.label_930
	mov	eax, dword ptr [rbp - 0x234]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x230]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x240], rcx
	jmp	.label_937
.label_930:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x240], rdx
.label_937:
	mov	rax, qword ptr [rbp - 0x240]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
.label_927:
	jmp	.label_920
.label_920:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x240
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409fc0

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
	#Procedure 0x409ff0

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
	jg	.label_955
	mov	esi, 0x406
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	xor	edx, edx
	mov	dword ptr [rbp - 0xc], eax
	cmp	edx, dword ptr [rbp - 0xc]
	jle	.label_953
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_956
.label_953:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_951
.label_956:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	jl	.label_952
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_952:
	jmp	.label_951
.label_951:
	jmp	.label_957
.label_955:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
.label_957:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_949
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_949
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x10], eax
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_954
	mov	esi, 2
	mov	edi, dword ptr [rbp - 0xc]
	mov	eax, dword ptr [rbp - 0x10]
	or	eax, 1
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_950
.label_954:
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
.label_950:
	jmp	.label_949
.label_949:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a120

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
	jne	.label_958
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_958:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_959
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_959
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_959
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_960
.label_959:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_960:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a1d0

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
	jne	.label_961
	mov	dword ptr [rbp - 4], 0
	jmp	.label_965
.label_961:
	jmp	.label_962
.label_962:
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
	jne	.label_964
	jmp	.label_963
.label_964:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_962
.label_963:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_965:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a290

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
	jne	.label_966
	test	byte ptr [rbp - 0x13], 1
	je	.label_967
	test	byte ptr [rbp - 0x11], 1
	jne	.label_966
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_967
.label_966:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_968
	call	__errno_location
	mov	dword ptr [rax], 0
.label_968:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_969
.label_967:
	mov	dword ptr [rbp - 4], 0
.label_969:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a340

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
	je	.label_970
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_973
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_974
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_972
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_971
.label_974:
	mov	byte ptr [rbp - 5], 0
.label_971:
	jmp	.label_970
.label_970:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a3c0

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
	jne	.label_975
	movabs	rax, OFFSET FLAT:label_122
	mov	qword ptr [rbp - 8], rax
.label_975:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_976
	movabs	rax, OFFSET FLAT:label_977
	mov	qword ptr [rbp - 8], rax
.label_976:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a420

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
	jge	.label_978
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_981
.label_978:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_979
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_980
.label_979:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_980
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_980:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_982
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_982:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_981:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a4f0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_983
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_984
.label_983:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_985
.label_984:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_985:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a550

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
	je	.label_986
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_986:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a590

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
	jne	.label_987
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_987
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_987
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_988
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_989
.label_988:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_989
.label_987:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_989:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a660

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
	ja	.label_990
	jmp	.label_992
.label_992:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_991
.label_990:
	jmp	.label_991
.label_991:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a6b0
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
	jb	.label_993
	jmp	.label_995
.label_995:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_993
	jmp	.label_994
.label_994:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_996
	jmp	.label_993
.label_993:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_997
.label_996:
	mov	byte ptr [rbp - 1], 0
.label_997:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a720
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
	jb	.label_998
	jmp	.label_1001
.label_1001:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_999
	jmp	.label_998
.label_998:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1000
.label_999:
	mov	byte ptr [rbp - 1], 0
.label_1000:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a770
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1002
	jmp	.label_1004
.label_1004:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1003
.label_1002:
	mov	byte ptr [rbp - 1], 0
.label_1003:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a7a0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_1005
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_1005:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a7d0
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
	jb	.label_1006
	jmp	.label_1008
.label_1008:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1009
	jmp	.label_1006
.label_1006:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1007
.label_1009:
	mov	byte ptr [rbp - 1], 0
.label_1007:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a820
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1010
	jmp	.label_1012
.label_1012:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1011
.label_1010:
	mov	byte ptr [rbp - 1], 0
.label_1011:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a860
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1013
	jmp	.label_1015
.label_1015:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1014
.label_1013:
	mov	byte ptr [rbp - 1], 0
.label_1014:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a8a0
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1016
	jmp	.label_1018
.label_1018:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1017
.label_1016:
	mov	byte ptr [rbp - 1], 0
.label_1017:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a8e0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1019
	jmp	.label_1021
.label_1021:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1020
.label_1019:
	mov	byte ptr [rbp - 1], 0
.label_1020:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a920
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
	ja	.label_1022
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1024]]
	jmp	rcx
.label_1095:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1023
.label_1022:
	mov	byte ptr [rbp - 1], 0
.label_1023:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a970
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
	jb	.label_1025
	jmp	.label_1028
.label_1028:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1026
	jmp	.label_1025
.label_1025:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1027
.label_1026:
	mov	byte ptr [rbp - 1], 0
.label_1027:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a9c0
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1029
	jmp	.label_1031
.label_1031:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1030
.label_1029:
	mov	byte ptr [rbp - 1], 0
.label_1030:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aa00
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
	jb	.label_1032
	jmp	.label_1034
.label_1034:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1032
	jmp	.label_1033
.label_1033:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1035
	jmp	.label_1032
.label_1032:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1036
.label_1035:
	mov	byte ptr [rbp - 1], 0
.label_1036:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aa70

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1037
	jmp	.label_1039
.label_1039:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1038
.label_1037:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1038:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aab0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1040
	jmp	.label_1042
.label_1042:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1041
.label_1040:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1041:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
