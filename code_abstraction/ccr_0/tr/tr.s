	.section	.text
	.align	32
	#Procedure 0x4016a0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_15
	jmp	.label_18
.label_18:
	movabs	rdi, OFFSET FLAT:label_20
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_16
.label_15:
	movabs	rdi, OFFSET FLAT:label_17
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_11
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_19
	mov	dword ptr [rbp - 0x1c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_12
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_14
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
	movabs	rdi, OFFSET FLAT:label_9
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_10
	mov	dword ptr [rbp - 0x34], eax
	call	emit_ancillary_info
.label_16:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x401820

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
.label_24:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_23
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_23:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_31
	jmp	.label_36
.label_31:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_24
.label_36:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_26
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_26:
	movabs	rdi, OFFSET FLAT:label_30
	call	gettext
	movabs	rsi, OFFSET FLAT:label_32
	movabs	rdx, OFFSET FLAT:label_25
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
	je	.label_27
	movabs	rsi, OFFSET FLAT:label_35
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_27
	movabs	rdi, OFFSET FLAT:label_28
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_27:
	movabs	rdi, OFFSET FLAT:label_22
	call	gettext
	movabs	rsi, OFFSET FLAT:label_25
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_29
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_33
	movabs	rsi, OFFSET FLAT:label_34
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
	.align	32
	#Procedure 0x4019c0

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x180
	lea	rax, [rbp - 0x90]
	lea	rcx, [rbp - 0x58]
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x98], rcx
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_33
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_41
	movabs	rsi, OFFSET FLAT:label_42
	mov	qword ptr [rbp - 0xe8], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_41
	mov	qword ptr [rbp - 0xf0], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0xf8], rax
	call	atexit
	mov	dword ptr [rbp - 0xfc], eax
.label_47:
	movabs	rdx, OFFSET FLAT:label_56
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, -1
	je	.label_85
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x100], eax
	mov	dword ptr [rbp - 0x104], ecx
	je	.label_68
	jmp	.label_72
.label_72:
	mov	eax, dword ptr [rbp - 0x100]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x108], eax
	je	.label_74
	jmp	.label_91
.label_91:
	mov	eax, dword ptr [rbp - 0x100]
	sub	eax, 0x41
	mov	dword ptr [rbp - 0x10c], eax
	je	.label_86
	jmp	.label_114
.label_114:
	mov	eax, dword ptr [rbp - 0x100]
	sub	eax, 0x43
	mov	dword ptr [rbp - 0x110], eax
	je	.label_69
	jmp	.label_92
.label_92:
	mov	eax, dword ptr [rbp - 0x100]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x114], eax
	je	.label_69
	jmp	.label_96
.label_96:
	mov	eax, dword ptr [rbp - 0x100]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0x118], eax
	je	.label_98
	jmp	.label_102
.label_102:
	mov	eax, dword ptr [rbp - 0x100]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x11c], eax
	je	.label_103
	jmp	.label_108
.label_108:
	mov	eax, dword ptr [rbp - 0x100]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x120], eax
	je	.label_109
	jmp	.label_111
.label_86:
	mov	edi, 3
	movabs	rsi, OFFSET FLAT:label_113
	call	setlocale
	xor	edi, edi
	movabs	rsi, OFFSET FLAT:label_113
	mov	qword ptr [rbp - 0x128], rax
	call	setlocale
	mov	qword ptr [rbp - 0x130], rax
	jmp	.label_63
.label_69:
	mov	byte ptr [byte ptr [complement]],  1
	jmp	.label_63
.label_98:
	mov	byte ptr [byte ptr [delete]],  1
	jmp	.label_63
.label_103:
	mov	byte ptr [byte ptr [squeeze_repeats]],  1
	jmp	.label_63
.label_109:
	mov	byte ptr [byte ptr [truncate_set1]],  1
	jmp	.label_63
.label_74:
	xor	edi, edi
	call	usage
.label_68:
	movabs	rsi, OFFSET FLAT:label_10
	movabs	rdx, OFFSET FLAT:label_32
	movabs	r8, OFFSET FLAT:label_129
	xor	eax, eax
	mov	r9d, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_111:
	mov	edi, 1
	call	usage
.label_63:
	jmp	.label_47
.label_85:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 8]
	sub	eax,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 0x18], eax
	cmp	dword ptr [rbp - 0x18], 2
	mov	byte ptr [rbp - 0x131], cl
	jne	.label_100
	mov	al,  byte ptr [byte ptr [delete]]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x131], al
.label_100:
	mov	al, byte ptr [rbp - 0x131]
	and	al, 1
	mov	byte ptr [byte ptr [translating]],  al
	mov	al,  byte ptr [byte ptr [delete]]
	and	al, 1
	movzx	ecx, al
	mov	al,  byte ptr [byte ptr [squeeze_repeats]]
	and	al, 1
	movzx	edx, al
	cmp	ecx, edx
	sete	al
	and	al, 1
	movzx	ecx, al
	add	ecx, 1
	mov	dword ptr [rbp - 0x1c], ecx
	mov	al,  byte ptr [byte ptr [delete]]
	and	al, 1
	movzx	ecx, al
	mov	al,  byte ptr [byte ptr [squeeze_repeats]]
	and	al, 1
	movzx	edx, al
	cmp	ecx, edx
	setle	al
	and	al, 1
	movzx	ecx, al
	add	ecx, 1
	mov	dword ptr [rbp - 0x20], ecx
	mov	ecx, dword ptr [rbp - 0x18]
	cmp	ecx, dword ptr [rbp - 0x1c]
	jge	.label_55
	cmp	dword ptr [rbp - 0x18], 0
	jne	.label_79
	movabs	rdi, OFFSET FLAT:label_83
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	jmp	.label_88
.label_79:
	movabs	rdi, OFFSET FLAT:label_89
	call	gettext
	mov	ecx, dword ptr [rbp - 8]
	sub	ecx, 1
	movsxd	rdi, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx + rdi*8]
	mov	qword ptr [rbp - 0x140], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x140]
	mov	rcx, rax
	mov	al, 0
	call	error
	movabs	rcx, OFFSET FLAT:label_105
	movabs	rdx, OFFSET FLAT:label_106
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al,  byte ptr [byte ptr [squeeze_repeats]]
	test	al, 1
	cmovne	rcx, rdx
	mov	qword ptr [rbp - 0x148], rdi
	mov	rdi, rcx
	call	gettext
	movabs	rsi, OFFSET FLAT:label_70
	mov	rdi, qword ptr [rbp - 0x148]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14c], eax
.label_88:
	mov	edi, 1
	call	usage
.label_55:
	mov	eax, dword ptr [rbp - 0x20]
	cmp	eax, dword ptr [rbp - 0x18]
	jge	.label_127
	movabs	rdi, OFFSET FLAT:label_121
	call	gettext
	mov	ecx,  dword ptr [dword ptr [optind]]
	add	ecx, dword ptr [rbp - 0x20]
	movsxd	rdi, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx + rdi*8]
	mov	qword ptr [rbp - 0x158], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x158]
	mov	rcx, rax
	mov	al, 0
	call	error
	cmp	dword ptr [rbp - 0x18], 2
	jne	.label_132
	movabs	rdi, OFFSET FLAT:label_133
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x160], rax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_70
	mov	rdi, qword ptr [rbp - 0x160]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x164], eax
.label_132:
	mov	edi, 1
	call	usage
.label_127:
	mov	rdi, qword ptr [rbp - 0x98]
	call	spec_init
	movsxd	rdi,  dword ptr [dword ptr [optind]]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + rdi*8]
	mov	rsi, qword ptr [rbp - 0x98]
	call	parse_str
	test	al, 1
	jne	.label_59
	mov	dword ptr [rbp - 4], 1
	jmp	.label_60
.label_59:
	cmp	dword ptr [rbp - 0x18], 2
	jne	.label_62
	mov	rdi, qword ptr [rbp - 0xa0]
	call	spec_init
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	movsxd	rdi, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rdi*8]
	mov	rsi, qword ptr [rbp - 0xa0]
	call	parse_str
	test	al, 1
	jne	.label_75
	mov	dword ptr [rbp - 4], 1
	jmp	.label_60
.label_75:
	jmp	.label_80
.label_62:
	mov	qword ptr [rbp - 0xa0], 0
.label_80:
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0xa0]
	call	validate
	xor	eax, eax
	mov	edi, eax
	mov	esi, eax
	call	xset_binary_mode
	mov	edi, 1
	xor	esi, esi
	call	xset_binary_mode
	mov	esi, 2
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	fadvise
	test	byte ptr [byte ptr [squeeze_repeats]],  1
	je	.label_95
	cmp	dword ptr [rbp - 0x18], 1
	jne	.label_95
	movabs	rdx, OFFSET FLAT:in_squeeze_set
	mov	rdi, qword ptr [rbp - 0x98]
	mov	al,  byte ptr [byte ptr [complement]]
	and	al, 1
	movzx	esi, al
	call	set_initialize
	movabs	rdi, OFFSET FLAT:io_buf
	mov	esi, 0x2000
	movabs	rdx, OFFSET FLAT:plain_read
	call	squeeze_filter
	jmp	.label_115
.label_95:
	test	byte ptr [byte ptr [delete]],  1
	je	.label_116
	cmp	dword ptr [rbp - 0x18], 1
	jne	.label_116
	movabs	rdx, OFFSET FLAT:in_delete_set
	mov	rdi, qword ptr [rbp - 0x98]
	mov	al,  byte ptr [byte ptr [complement]]
	and	al, 1
	movzx	esi, al
	call	set_initialize
.label_50:
	movabs	rdi, OFFSET FLAT:io_buf
	mov	eax, 0x2000
	mov	esi, eax
	call	read_and_delete
	mov	qword ptr [rbp - 0xa8], rax
	cmp	qword ptr [rbp - 0xa8], 0
	jne	.label_71
	jmp	.label_128
.label_71:
	movabs	rdi, OFFSET FLAT:io_buf
	mov	eax, 1
	mov	esi, eax
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rcx,  qword ptr [word ptr [stdout]]
	call	fwrite_unlocked
	cmp	rax, qword ptr [rbp - 0xa8]
	je	.label_39
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_44
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x168], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x168]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_39:
	jmp	.label_50
.label_128:
	jmp	.label_52
.label_116:
	test	byte ptr [byte ptr [squeeze_repeats]],  1
	je	.label_53
	test	byte ptr [byte ptr [delete]],  1
	je	.label_53
	cmp	dword ptr [rbp - 0x18], 2
	jne	.label_53
	movabs	rdx, OFFSET FLAT:in_delete_set
	mov	rdi, qword ptr [rbp - 0x98]
	mov	al,  byte ptr [byte ptr [complement]]
	and	al, 1
	movzx	esi, al
	call	set_initialize
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:in_squeeze_set
	mov	rdi, qword ptr [rbp - 0xa0]
	call	set_initialize
	movabs	rdi, OFFSET FLAT:io_buf
	mov	esi, 0x2000
	movabs	rdx, OFFSET FLAT:read_and_delete
	call	squeeze_filter
	jmp	.label_78
.label_53:
	test	byte ptr [byte ptr [translating]],  1
	je	.label_81
	test	byte ptr [byte ptr [complement]],  1
	je	.label_84
	xor	esi, esi
	movabs	rax, OFFSET FLAT:in_delete_set
	mov	qword ptr [rbp - 0xb0], rax
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0xb0]
	call	set_initialize
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rax + 0x10], -2
	mov	dword ptr [rbp - 0xb4], 0
.label_104:
	cmp	dword ptr [rbp - 0xb4], 0x100
	jge	.label_99
	mov	eax, dword ptr [rbp - 0xb4]
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0xb4]
	mov	byte ptr [byte ptr [+ (rdx * 1) + xlate]],  cl
	mov	eax, dword ptr [rbp - 0xb4]
	add	eax, 1
	mov	dword ptr [rbp - 0xb4], eax
	jmp	.label_104
.label_99:
	mov	dword ptr [rbp - 0xb8], 0
.label_82:
	cmp	dword ptr [rbp - 0xb8], 0x100
	jge	.label_37
	movsxd	rax, dword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0xb0]
	test	byte ptr [rcx + rax], 1
	jne	.label_117
	xor	eax, eax
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0xa0]
	call	get_next
	mov	dword ptr [rbp - 0xbc], eax
	cmp	dword ptr [rbp - 0xbc], -1
	jne	.label_120
	test	byte ptr [byte ptr [truncate_set1]],  1
	je	.label_122
.label_120:
	jmp	.label_124
.label_122:
	movabs	rdi, OFFSET FLAT:label_125
	movabs	rsi, OFFSET FLAT:label_66
	mov	edx, 0x72d
	movabs	rcx, OFFSET FLAT:label_67
	call	__assert_fail
.label_124:
	cmp	dword ptr [rbp - 0xbc], -1
	jne	.label_134
	jmp	.label_37
.label_134:
	mov	eax, dword ptr [rbp - 0xbc]
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0xb8]
	mov	byte ptr [byte ptr [+ (rdx * 1) + xlate]],  cl
.label_117:
	jmp	.label_45
.label_45:
	mov	eax, dword ptr [rbp - 0xb8]
	add	eax, 1
	mov	dword ptr [rbp - 0xb8], eax
	jmp	.label_82
.label_37:
	jmp	.label_73
.label_84:
	mov	dword ptr [rbp - 0xd0], 0
.label_54:
	cmp	dword ptr [rbp - 0xd0], 0x100
	jge	.label_51
	mov	eax, dword ptr [rbp - 0xd0]
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0xd0]
	mov	byte ptr [byte ptr [+ (rdx * 1) + xlate]],  cl
	mov	eax, dword ptr [rbp - 0xd0]
	add	eax, 1
	mov	dword ptr [rbp - 0xd0], eax
	jmp	.label_54
.label_51:
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rax + 0x10], -2
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rax + 0x10], -2
.label_57:
	lea	rsi, [rbp - 0xc8]
	mov	rdi, qword ptr [rbp - 0x98]
	call	get_next
	lea	rsi, [rbp - 0xcc]
	mov	dword ptr [rbp - 0xc0], eax
	mov	rdi, qword ptr [rbp - 0xa0]
	call	get_next
	mov	dword ptr [rbp - 0xc4], eax
	cmp	dword ptr [rbp - 0xc8], 0
	jne	.label_77
	cmp	dword ptr [rbp - 0xcc], 1
	jne	.label_77
	mov	dword ptr [rbp - 0xd4], 0
.label_135:
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_87
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	qword ptr [rbp - 0x170], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x170]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x200
	cmp	edx, 0
	je	.label_94
	mov	edi, dword ptr [rbp - 0xd4]
	call	toupper
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0xd4]
	mov	byte ptr [byte ptr [+ (rdx * 1) + xlate]],  cl
.label_94:
	jmp	.label_107
.label_107:
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_135
.label_87:
	jmp	.label_49
.label_77:
	cmp	dword ptr [rbp - 0xc8], 1
	jne	.label_112
	cmp	dword ptr [rbp - 0xcc], 0
	jne	.label_112
	mov	dword ptr [rbp - 0xd8], 0
.label_131:
	cmp	dword ptr [rbp - 0xd8], 0x100
	jge	.label_118
	movsxd	rax, dword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x178], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x178]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x100
	cmp	edx, 0
	je	.label_48
	mov	edi, dword ptr [rbp - 0xd8]
	call	tolower
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0xd8]
	mov	byte ptr [byte ptr [+ (rdx * 1) + xlate]],  cl
.label_48:
	jmp	.label_130
.label_130:
	mov	eax, dword ptr [rbp - 0xd8]
	add	eax, 1
	mov	dword ptr [rbp - 0xd8], eax
	jmp	.label_131
.label_118:
	jmp	.label_38
.label_112:
	cmp	dword ptr [rbp - 0xc0], -1
	je	.label_40
	cmp	dword ptr [rbp - 0xc4], -1
	jne	.label_43
.label_40:
	jmp	.label_46
.label_43:
	mov	eax, dword ptr [rbp - 0xc4]
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0xc0]
	mov	byte ptr [byte ptr [+ (rdx * 1) + xlate]],  cl
.label_38:
	jmp	.label_49
.label_49:
	cmp	dword ptr [rbp - 0xcc], 2
	je	.label_119
	mov	rdi, qword ptr [rbp - 0x98]
	call	skip_construct
	mov	rdi, qword ptr [rbp - 0xa0]
	call	skip_construct
.label_119:
	jmp	.label_57
.label_46:
	cmp	dword ptr [rbp - 0xc0], -1
	je	.label_58
	test	byte ptr [byte ptr [truncate_set1]],  1
	je	.label_61
.label_58:
	jmp	.label_64
.label_61:
	movabs	rdi, OFFSET FLAT:label_65
	movabs	rsi, OFFSET FLAT:label_66
	mov	edx, 0x762
	movabs	rcx, OFFSET FLAT:label_67
	call	__assert_fail
.label_64:
	jmp	.label_73
.label_73:
	test	byte ptr [byte ptr [squeeze_repeats]],  1
	je	.label_76
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:in_squeeze_set
	mov	rdi, qword ptr [rbp - 0xa0]
	call	set_initialize
	movabs	rdi, OFFSET FLAT:io_buf
	mov	esi, 0x2000
	movabs	rdx, OFFSET FLAT:read_and_xlate
	call	squeeze_filter
	jmp	.label_90
.label_76:
	jmp	.label_93
.label_93:
	movabs	rdi, OFFSET FLAT:io_buf
	mov	eax, 0x2000
	mov	esi, eax
	call	read_and_xlate
	mov	qword ptr [rbp - 0xe0], rax
	cmp	qword ptr [rbp - 0xe0], 0
	jne	.label_97
	jmp	.label_101
.label_97:
	movabs	rdi, OFFSET FLAT:io_buf
	mov	eax, 1
	mov	esi, eax
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rcx,  qword ptr [word ptr [stdout]]
	call	fwrite_unlocked
	cmp	rax, qword ptr [rbp - 0xe0]
	je	.label_110
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_44
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x17c], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x17c]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_110:
	jmp	.label_93
.label_101:
	jmp	.label_90
.label_90:
	jmp	.label_81
.label_81:
	jmp	.label_78
.label_78:
	jmp	.label_52
.label_52:
	jmp	.label_115
.label_115:
	xor	edi, edi
	call	close
	cmp	eax, 0
	je	.label_123
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_126
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x180], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x180]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_123:
	mov	dword ptr [rbp - 4], 0
.label_60:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x180
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402610

	.globl spec_init
	.type spec_init, @function
spec_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0x20
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rcx
	call	xmalloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rax + 8], 0
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402660

	.globl parse_str
	.type parse_str, @function
parse_str:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rax, [rbp - 0x28]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, rax
	call	unquote
	xor	ecx, ecx
	mov	dl, cl
	test	al, 1
	mov	byte ptr [rbp - 0x2a], dl
	jne	.label_136
	jmp	.label_137
.label_136:
	lea	rdi, [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	call	build_spec_list
	mov	byte ptr [rbp - 0x2a], al
.label_137:
	mov	al, byte ptr [rbp - 0x2a]
	lea	rdi, [rbp - 0x28]
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	call	es_free
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4026d0

	.globl validate
	.type validate, @function
validate:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	call	get_s1_spec_stats
	mov	rsi, qword ptr [rbp - 8]
	cmp	qword ptr [rsi + 0x20], 0
	jbe	.label_148
	movabs	rdi, OFFSET FLAT:label_155
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_148:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_144
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rax + 0x18]
	call	get_s2_spec_stats
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x20], 1
	jbe	.label_153
	movabs	rdi, OFFSET FLAT:label_139
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_153:
	test	byte ptr [byte ptr [translating]],  1
	je	.label_142
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x30], 1
	je	.label_151
	movabs	rdi, OFFSET FLAT:label_157
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_151:
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x32], 1
	je	.label_146
	movabs	rdi, OFFSET FLAT:label_149
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_146:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	validate_case_classes
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rdi + 0x18]
	jbe	.label_145
	test	byte ptr [byte ptr [truncate_set1]],  1
	jne	.label_150
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_156
	movabs	rdi, OFFSET FLAT:label_140
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_156:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	string2_extend
.label_150:
	jmp	.label_145
.label_145:
	test	byte ptr [byte ptr [complement]],  1
	je	.label_141
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x31], 1
	je	.label_141
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x18]
	jne	.label_152
	mov	rdi, qword ptr [rbp - 0x10]
	call	homogeneous_spec_list
	test	al, 1
	jne	.label_141
.label_152:
	movabs	rdi, OFFSET FLAT:label_138
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_141:
	jmp	.label_143
.label_142:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x20], 0
	jbe	.label_147
	movabs	rdi, OFFSET FLAT:label_154
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_147:
	jmp	.label_143
.label_143:
	jmp	.label_144
.label_144:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4028f0

	.globl set_initialize
	.type set_initialize, @function
set_initialize:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x10], -2
.label_162:
	xor	eax, eax
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 8]
	call	get_next
	mov	dword ptr [rbp - 0x1c], eax
	cmp	eax, -1
	je	.label_158
	movsxd	rax, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 1
	jmp	.label_162
.label_158:
	test	byte ptr [rbp - 9], 1
	je	.label_159
	mov	qword ptr [rbp - 0x28], 0
.label_160:
	cmp	qword ptr [rbp - 0x28], 0x100
	jae	.label_161
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dl, byte ptr [rcx + rax]
	xor	dl, 0xff
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	and	dl, 1
	mov	byte ptr [rcx + rax], dl
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_160
.label_161:
	jmp	.label_159
.label_159:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4029a0

	.globl squeeze_filter
	.type squeeze_filter, @function
squeeze_filter:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], 0x7fffffff
	mov	dword ptr [rbp - 0x20], 0x7fffffff
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x30], 0
.label_170:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jb	.label_176
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	rax
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_181
	jmp	.label_182
.label_181:
	mov	qword ptr [rbp - 0x28], 0
.label_176:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	cmp	dword ptr [rbp - 0x20], 0x7fffffff
	jne	.label_166
	jmp	.label_171
.label_171:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x41], cl
	jae	.label_177
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + in_squeeze_set]]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x41], al
.label_177:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_178
	jmp	.label_179
.label_178:
	jmp	.label_180
.label_180:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 2
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_171
.label_179:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_164
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	test	byte ptr [byte ptr [+ (rcx * 1) + in_squeeze_set]],  1
	je	.label_164
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
.label_164:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jb	.label_174
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_175
.label_174:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x20], edx
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x28], 0
	jbe	.label_167
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, dword ptr [rbp - 0x20]
	jne	.label_167
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, -1
	mov	qword ptr [rbp - 0x40], rax
.label_167:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_175:
	cmp	qword ptr [rbp - 0x40], 0
	jbe	.label_172
	mov	eax, 1
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x38]
	add	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, rcx
	mov	rcx, qword ptr [rbp - 0x50]
	call	fwrite_unlocked
	cmp	rax, qword ptr [rbp - 0x40]
	je	.label_172
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_44
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x54]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_172:
	jmp	.label_166
.label_166:
	cmp	dword ptr [rbp - 0x20], 0x7fffffff
	je	.label_169
	jmp	.label_163
.label_163:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x55], cl
	jae	.label_173
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, dword ptr [rbp - 0x20]
	sete	sil
	mov	byte ptr [rbp - 0x55], sil
.label_173:
	mov	al, byte ptr [rbp - 0x55]
	test	al, 1
	jne	.label_165
	jmp	.label_183
.label_165:
	jmp	.label_184
.label_184:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_163
.label_183:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_168
	mov	dword ptr [rbp - 0x20], 0x7fffffff
.label_168:
	jmp	.label_169
.label_169:
	jmp	.label_170
.label_182:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c40

	.globl plain_read
	.type plain_read, @function
plain_read:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	safe_read
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], -1
	jne	.label_185
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_186
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1c], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_185:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402cb0

	.globl read_and_delete
	.type read_and_delete, @function
read_and_delete:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
.label_190:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	plain_read
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_189
	mov	qword ptr [rbp - 8], 0
	jmp	.label_191
.label_189:
	mov	qword ptr [rbp - 0x30], 0
.label_199:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	rdx, qword ptr [rbp - 0x28]
	mov	byte ptr [rbp - 0x31], cl
	jae	.label_194
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + in_delete_set]]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x31], al
.label_194:
	mov	al, byte ptr [rbp - 0x31]
	test	al, 1
	jne	.label_193
	jmp	.label_195
.label_193:
	jmp	.label_197
.label_197:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_199
.label_195:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
.label_198:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_192
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	test	byte ptr [byte ptr [+ (rcx * 1) + in_delete_set]],  1
	jne	.label_187
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dl, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx + rax], dl
.label_187:
	jmp	.label_196
.label_196:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_198
.label_192:
	jmp	.label_188
.label_188:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_190
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_191:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402df0

	.globl get_next
	.type get_next, @function
get_next:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_236
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], 2
.label_236:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], -2
	jne	.label_208
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], -1
.label_208:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_218
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_224
.label_218:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	eax, ecx
	mov	rdx, rax
	sub	rdx, 4
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x38], rdx
	ja	.label_230
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_200]]
	jmp	rcx
.label_1074:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	ecx, byte ptr [rax + 0x10]
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], -1
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 8], rax
	jmp	.label_207
.label_1075:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], -1
	jne	.label_216
	mov	rax, qword ptr [rbp - 0x20]
	movzx	ecx, byte ptr [rax + 0x10]
	mov	eax, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x10], rax
	jmp	.label_220
.label_216:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x10]
	add	rcx, 1
	mov	qword ptr [rax + 0x10], rcx
.label_220:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	movzx	ecx, byte ptr [rdx + 0x11]
	mov	edx, ecx
	cmp	rax, rdx
	jne	.label_237
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], -1
.label_237:
	jmp	.label_207
.label_1076:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_212
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x10]
	mov	edx, ecx
	sub	edx, 6
	mov	dword ptr [rbp - 0x3c], ecx
	mov	dword ptr [rbp - 0x40], edx
	je	.label_219
	jmp	.label_227
.label_227:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x44], eax
	je	.label_214
	jmp	.label_239
.label_219:
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], 0
	jmp	.label_201
.label_214:
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], 1
	jmp	.label_201
.label_239:
	jmp	.label_201
.label_201:
	jmp	.label_212
.label_212:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], -1
	jne	.label_209
	mov	dword ptr [rbp - 0x28], 0
.label_235:
	cmp	dword ptr [rbp - 0x28], 0x100
	jge	.label_213
	mov	rax, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rax + 0x10]
	mov	ecx, dword ptr [rbp - 0x28]
	mov	dl, cl
	movzx	esi, dl
	call	is_char_class_member
	test	al, 1
	jne	.label_223
	jmp	.label_215
.label_223:
	jmp	.label_213
.label_215:
	jmp	.label_232
.label_232:
	mov	eax, dword ptr [rbp - 0x28]
	add	eax, 1
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_235
.label_213:
	cmp	dword ptr [rbp - 0x28], 0x100
	jge	.label_240
	jmp	.label_203
.label_240:
	movabs	rdi, OFFSET FLAT:label_205
	movabs	rsi, OFFSET FLAT:label_66
	mov	edx, 0x434
	movabs	rcx, OFFSET FLAT:label_206
	call	__assert_fail
.label_203:
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
.label_209:
	mov	rax, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	cl, al
	movzx	esi, cl
	call	is_char_class_member
	test	al, 1
	jne	.label_225
	jmp	.label_221
.label_225:
	jmp	.label_231
.label_221:
	movabs	rdi, OFFSET FLAT:label_234
	movabs	rsi, OFFSET FLAT:label_66
	mov	edx, 0x437
	movabs	rcx, OFFSET FLAT:label_206
	call	__assert_fail
.label_231:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	add	rax, 1
	mov	ecx, eax
	mov	dword ptr [rbp - 0x28], ecx
.label_233:
	cmp	dword ptr [rbp - 0x28], 0x100
	jge	.label_211
	mov	rax, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rax + 0x10]
	mov	ecx, dword ptr [rbp - 0x28]
	mov	dl, cl
	movzx	esi, dl
	call	is_char_class_member
	test	al, 1
	jne	.label_222
	jmp	.label_226
.label_222:
	jmp	.label_211
.label_226:
	jmp	.label_229
.label_229:
	mov	eax, dword ptr [rbp - 0x28]
	add	eax, 1
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_233
.label_211:
	cmp	dword ptr [rbp - 0x28], 0x100
	jge	.label_238
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	jmp	.label_202
.label_238:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], -1
.label_202:
	jmp	.label_207
.label_1077:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	ecx, byte ptr [rax + 0x10]
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], -1
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 8], rax
	jmp	.label_207
.label_1078:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_228
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], -1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	get_next
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_204
.label_228:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], -1
	jne	.label_210
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], 0
.label_210:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x10]
	add	rcx, 1
	mov	qword ptr [rax + 0x10], rcx
	mov	rax, qword ptr [rbp - 0x20]
	movzx	edx, byte ptr [rax + 0x10]
	mov	dword ptr [rbp - 0x24], edx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 0x18]
	jne	.label_217
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], -1
.label_217:
	jmp	.label_204
.label_204:
	jmp	.label_207
.label_230:
	call	abort
.label_207:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
.label_224:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403230

	.globl skip_construct
	.type skip_construct, @function
skip_construct:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rdi + 8]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 8], rdi
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x10], -1
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403260

	.globl read_and_xlate
	.type read_and_xlate, @function
read_and_xlate:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	plain_read
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x20], 0
.label_241:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_242
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + xlate]]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rdx + rcx], al
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_241
.label_242:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4032e0

	.globl unquote
	.type unquote, @function
unquote:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x58
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x20]
	call	xmalloc
	mov	ecx, 1
	mov	esi, ecx
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi], rax
	mov	rdi, qword ptr [rbp - 0x20]
	call	xcalloc
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi + 8], rax
	mov	dword ptr [rbp - 0x24], 0
	mov	dword ptr [rbp - 0x28], 0
.label_247:
	mov	eax, dword ptr [rbp - 0x28]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	byte ptr [rdx + rcx], 0
	je	.label_257
	mov	eax, dword ptr [rbp - 0x28]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	sil, byte ptr [rdx + rcx]
	sub	sil, 0x5c
	mov	byte ptr [rbp - 0x31], sil
	jne	.label_256
	jmp	.label_251
.label_251:
	mov	eax, dword ptr [rbp - 0x24]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 8]
	mov	byte ptr [rdx + rcx], 1
	mov	eax, dword ptr [rbp - 0x28]
	inc	eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdx + rcx]
	mov	ecx, eax
	sub	eax, 0x76
	mov	qword ptr [rbp - 0x40], rcx
	mov	dword ptr [rbp - 0x44], eax
	ja	.label_253
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_249]]
	jmp	rcx
.label_919:
	mov	byte ptr [rbp - 0x29], 0x5c
	jmp	.label_243
.label_920:
	mov	byte ptr [rbp - 0x29], 7
	jmp	.label_243
.label_921:
	mov	byte ptr [rbp - 0x29], 8
	jmp	.label_243
.label_922:
	mov	byte ptr [rbp - 0x29], 0xc
	jmp	.label_243
.label_923:
	mov	byte ptr [rbp - 0x29], 0xa
	jmp	.label_243
.label_924:
	mov	byte ptr [rbp - 0x29], 0xd
	jmp	.label_243
.label_925:
	mov	byte ptr [rbp - 0x29], 9
	jmp	.label_243
.label_926:
	mov	byte ptr [rbp - 0x29], 0xb
	jmp	.label_243
.label_918:
	xor	eax, eax
	mov	ecx, dword ptr [rbp - 0x28]
	add	ecx, 1
	mov	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rsi + rdx]
	sub	ecx, 0x30
	mov	dil, cl
	mov	byte ptr [rbp - 0x29], dil
	mov	ecx, dword ptr [rbp - 0x28]
	add	ecx, 2
	mov	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rsi + rdx]
	sub	ecx, 0x30
	mov	dword ptr [rbp - 0x30], ecx
	cmp	eax, dword ptr [rbp - 0x30]
	jg	.label_250
	cmp	dword ptr [rbp - 0x30], 7
	jg	.label_250
	xor	eax, eax
	movzx	ecx, byte ptr [rbp - 0x29]
	shl	ecx, 3
	add	ecx, dword ptr [rbp - 0x30]
	mov	dl, cl
	mov	byte ptr [rbp - 0x29], dl
	mov	ecx, dword ptr [rbp - 0x28]
	add	ecx, 1
	mov	dword ptr [rbp - 0x28], ecx
	mov	ecx, dword ptr [rbp - 0x28]
	add	ecx, 2
	mov	ecx, ecx
	mov	esi, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rdi + rsi]
	sub	ecx, 0x30
	mov	dword ptr [rbp - 0x30], ecx
	cmp	eax, dword ptr [rbp - 0x30]
	jg	.label_248
	cmp	dword ptr [rbp - 0x30], 7
	jg	.label_248
	movzx	eax, byte ptr [rbp - 0x29]
	shl	eax, 3
	add	eax, dword ptr [rbp - 0x30]
	cmp	eax, 0x100
	jge	.label_245
	movzx	eax, byte ptr [rbp - 0x29]
	shl	eax, 3
	add	eax, dword ptr [rbp - 0x30]
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	mov	eax, dword ptr [rbp - 0x28]
	add	eax, 1
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_246
.label_245:
	movabs	rdi, OFFSET FLAT:label_254
	call	gettext
	xor	ecx, ecx
	mov	edx, dword ptr [rbp - 0x28]
	mov	edi, edx
	mov	rsi, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rsi + rdi]
	mov	r8d, dword ptr [rbp - 0x28]
	add	r8d, 1
	mov	r8d, r8d
	mov	esi, r8d
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	r8d, byte ptr [rdi + rsi]
	mov	r9d, dword ptr [rbp - 0x28]
	add	r9d, 2
	mov	r9d, r9d
	mov	esi, r9d
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	r9d, byte ptr [rdi + rsi]
	mov	r10d, dword ptr [rbp - 0x28]
	mov	esi, r10d
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	r10d, byte ptr [rdi + rsi]
	mov	r11d, dword ptr [rbp - 0x28]
	add	r11d, 1
	mov	r11d, r11d
	mov	esi, r11d
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	r11d, byte ptr [rdi + rsi]
	mov	ebx, dword ptr [rbp - 0x28]
	add	ebx, 2
	mov	ebx, ebx
	mov	esi, ebx
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	ebx, byte ptr [rdi + rsi]
	mov	edi, ecx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x48], edx
	mov	rdx, rax
	mov	ecx, dword ptr [rbp - 0x48]
	mov	dword ptr [rsp], r10d
	mov	dword ptr [rsp + 8], r11d
	mov	dword ptr [rsp + 0x10], ebx
	mov	al, 0
	call	error
.label_246:
	jmp	.label_248
.label_248:
	jmp	.label_250
.label_250:
	jmp	.label_243
.label_917:
	movabs	rdi, OFFSET FLAT:label_252
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	ecx, dword ptr [rbp - 0x24]
	mov	edx, ecx
	mov	r8, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [r8 + 8]
	mov	byte ptr [r8 + rdx], 0
	mov	ecx, dword ptr [rbp - 0x28]
	add	ecx, -1
	mov	dword ptr [rbp - 0x28], ecx
	mov	byte ptr [rbp - 0x29], 0x5c
	jmp	.label_243
.label_253:
	mov	eax, dword ptr [rbp - 0x28]
	add	eax, 1
	mov	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	sil, byte ptr [rdx + rcx]
	mov	byte ptr [rbp - 0x29], sil
.label_243:
	mov	eax, dword ptr [rbp - 0x28]
	add	eax, 1
	mov	dword ptr [rbp - 0x28], eax
	mov	cl, byte ptr [rbp - 0x29]
	mov	eax, dword ptr [rbp - 0x24]
	mov	edx, eax
	add	edx, 1
	mov	dword ptr [rbp - 0x24], edx
	mov	eax, eax
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdi]
	mov	byte ptr [rdi + rsi], cl
	jmp	.label_255
.label_256:
	mov	eax, dword ptr [rbp - 0x28]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	sil, byte ptr [rdx + rcx]
	mov	eax, dword ptr [rbp - 0x24]
	mov	edi, eax
	add	edi, 1
	mov	dword ptr [rbp - 0x24], edi
	mov	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx]
	mov	byte ptr [rdx + rcx], sil
.label_255:
	jmp	.label_244
.label_244:
	mov	eax, dword ptr [rbp - 0x28]
	add	eax, 1
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_247
.label_257:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x24]
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi + 0x10], rdx
	and	al, 1
	movzx	eax, al
	add	rsp, 0x58
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403640

	.globl build_spec_list
	.type build_spec_list, @function
build_spec_list:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], 0
.label_259:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 2
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jae	.label_287
	mov	edx, 0x5b
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	call	es_match
	test	al, 1
	jne	.label_262
	jmp	.label_266
.label_262:
	mov	edx, 0x3a
	mov	byte ptr [rbp - 0x29], 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	rsi, rax
	call	es_match
	test	al, 1
	jne	.label_283
	mov	edx, 0x3d
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	rsi, rax
	call	es_match
	test	al, 1
	jne	.label_283
	jmp	.label_265
.label_283:
	lea	rcx, [rbp - 0x58]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 2
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x80], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x80]
	movsx	edx, byte ptr [rax + rdx + 1]
	call	find_closing_delim
	test	al, 1
	jne	.label_264
	jmp	.label_271
.label_264:
	mov	rax, qword ptr [rbp - 0x58]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 2
	sub	rax, rcx
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x28]
	add	rax, 2
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_269
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3a
	jne	.label_284
	movabs	rdi, OFFSET FLAT:label_288
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	jmp	.label_261
.label_284:
	movabs	rdi, OFFSET FLAT:label_263
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_261:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_258
.label_269:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3a
	jne	.label_275
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x60]
	call	append_char_class
	test	al, 1
	jne	.label_285
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 2
	mov	rsi, rax
	call	star_digits_closebracket
	test	al, 1
	jne	.label_286
	jmp	.label_270
.label_286:
	jmp	.label_260
.label_270:
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x60]
	call	make_printable_str
	movabs	rdi, OFFSET FLAT:label_268
	mov	qword ptr [rbp - 0x70], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x88], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rdi, qword ptr [rbp - 0x70]
	call	free
	mov	byte ptr [rbp - 1], 0
	jmp	.label_258
.label_285:
	jmp	.label_279
.label_275:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x60]
	call	append_equiv_class
	test	al, 1
	jne	.label_292
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 2
	mov	rsi, rax
	call	star_digits_closebracket
	test	al, 1
	jne	.label_267
	jmp	.label_282
.label_267:
	jmp	.label_260
.label_282:
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x60]
	call	make_printable_str
	movabs	rdi, OFFSET FLAT:label_274
	mov	qword ptr [rbp - 0x78], rax
	call	gettext
	xor	ecx, ecx
	mov	rsi, qword ptr [rbp - 0x78]
	mov	edi, ecx
	mov	qword ptr [rbp - 0x90], rsi
	mov	esi, ecx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x90]
	mov	al, 0
	call	error
	mov	rdi, qword ptr [rbp - 0x78]
	call	free
	mov	byte ptr [rbp - 1], 0
	jmp	.label_258
.label_292:
	jmp	.label_279
.label_279:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_259
.label_271:
	jmp	.label_265
.label_265:
	jmp	.label_260
.label_260:
	lea	rdx, [rbp - 0x39]
	lea	rcx, [rbp - 0x48]
	lea	r8, [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	rsi, rax
	call	find_bracketed_repeat
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	jne	.label_278
	mov	rdi, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rbp - 0x39]
	mov	rdx, qword ptr [rbp - 0x48]
	movzx	esi, al
	call	append_repeated_char
	mov	rdx, qword ptr [rbp - 0x38]
	add	rdx, 1
	mov	qword ptr [rbp - 0x28], rdx
	jmp	.label_280
.label_278:
	cmp	dword ptr [rbp - 0x4c], -1
	jne	.label_290
	mov	byte ptr [rbp - 0x29], 0
	jmp	.label_291
.label_290:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_258
.label_291:
	jmp	.label_280
.label_280:
	test	byte ptr [rbp - 0x29], 1
	je	.label_272
	jmp	.label_259
.label_272:
	jmp	.label_266
.label_266:
	mov	edx, 0x2d
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	rsi, rax
	call	es_match
	test	al, 1
	jne	.label_277
	jmp	.label_281
.label_277:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	dl, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	movzx	esi, dl
	movzx	edx, byte ptr [rcx + rax + 2]
	call	append_range
	test	al, 1
	jne	.label_289
	mov	byte ptr [rbp - 1], 0
	jmp	.label_258
.label_289:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 3
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_293
.label_281:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	movzx	esi, byte ptr [rcx + rax]
	call	append_normal_char
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_293:
	jmp	.label_259
.label_287:
	jmp	.label_273
.label_273:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jae	.label_276
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	movzx	esi, byte ptr [rcx + rax]
	call	append_normal_char
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_273
.label_276:
	mov	byte ptr [rbp - 1], 1
.label_258:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403a90

	.globl es_free
	.type es_free, @function
es_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ac0

	.globl es_match
	.type es_match, @function
es_match:
	push	rbp
	mov	rbp, rsp
	mov	al, dl
	xor	edx, edx
	mov	cl, dl
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x11], al
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	movsx	edx, byte ptr [rdi + rsi]
	movsx	r8d, byte ptr [rbp - 0x11]
	cmp	edx, r8d
	mov	byte ptr [rbp - 0x12], cl
	jne	.label_294
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x12], dl
.label_294:
	mov	al, byte ptr [rbp - 0x12]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b20

	.globl find_closing_delim
	.type find_closing_delim, @function
find_closing_delim:
	push	rbp
	mov	rbp, rsp
	mov	al, dl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	byte ptr [rbp - 0x19], al
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
.label_296:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	sub	rcx, 1
	cmp	rax, rcx
	jae	.label_299
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movsx	edx, byte ptr [rcx + rax]
	movsx	esi, byte ptr [rbp - 0x19]
	cmp	edx, esi
	jne	.label_295
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x5d
	jne	.label_295
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	test	byte ptr [rcx + rax], 1
	jne	.label_295
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	test	byte ptr [rcx + rax + 1], 1
	jne	.label_295
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	byte ptr [rbp - 1], 1
	jmp	.label_297
.label_295:
	jmp	.label_298
.label_298:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_296
.label_299:
	mov	byte ptr [rbp - 1], 0
.label_297:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403bf0

	.globl append_char_class
	.type append_char_class, @function
append_char_class:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	look_up_char_class
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0x270f
	jne	.label_300
	mov	byte ptr [rbp - 1], 0
	jmp	.label_302
.label_300:
	mov	eax, 0x20
	mov	edi, eax
	call	xmalloc
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	dword ptr [rax], 2
	mov	ecx, dword ptr [rbp - 0x24]
	mov	rax, qword ptr [rbp - 0x30]
	mov	dword ptr [rax + 0x10], ecx
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_301
	jmp	.label_303
.label_301:
	movabs	rdi, OFFSET FLAT:label_304
	movabs	rsi, OFFSET FLAT:label_66
	mov	edx, 0x2bb
	movabs	rcx, OFFSET FLAT:label_305
	call	__assert_fail
.label_303:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	byte ptr [rbp - 1], 1
.label_302:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403cd0

	.globl star_digits_closebracket
	.type star_digits_closebracket, @function
star_digits_closebracket:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	edx, 0x2a
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	es_match
	test	al, 1
	jne	.label_309
	mov	byte ptr [rbp - 1], 0
	jmp	.label_307
.label_309:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
.label_312:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jae	.label_308
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	movzx	edi, al
	sub	edi, 0x30
	cmp	edi, 9
	ja	.label_310
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	test	byte ptr [rcx + rax], 1
	je	.label_306
.label_310:
	mov	edx, 0x5d
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	es_match
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_307
.label_306:
	jmp	.label_311
.label_311:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_312
.label_308:
	mov	byte ptr [rbp - 1], 0
.label_307:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403da0

	.globl make_printable_str
	.type make_printable_str, @function
make_printable_str:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 1
	mov	rdi, rsi
	mov	rsi, rcx
	call	xnmalloc
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x28], 0
.label_333:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_328
	mov	qword ptr [rbp - 0x38], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x39], dl
	movzx	esi, byte ptr [rbp - 0x39]
	mov	edi, esi
	sub	edi, 7
	mov	dword ptr [rbp - 0x40], esi
	mov	dword ptr [rbp - 0x44], edi
	je	.label_335
	jmp	.label_324
.label_324:
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 8
	mov	dword ptr [rbp - 0x48], eax
	je	.label_327
	jmp	.label_334
.label_334:
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 9
	mov	dword ptr [rbp - 0x4c], eax
	je	.label_337
	jmp	.label_342
.label_342:
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x50], eax
	je	.label_314
	jmp	.label_321
.label_321:
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 0xb
	mov	dword ptr [rbp - 0x54], eax
	je	.label_325
	jmp	.label_331
.label_331:
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 0xc
	mov	dword ptr [rbp - 0x58], eax
	je	.label_317
	jmp	.label_330
.label_330:
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 0xd
	mov	dword ptr [rbp - 0x5c], eax
	je	.label_313
	jmp	.label_319
.label_319:
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 0x5c
	mov	dword ptr [rbp - 0x60], eax
	jne	.label_322
	jmp	.label_323
.label_323:
	movabs	rax, OFFSET FLAT:label_332
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_316
.label_335:
	movabs	rax, OFFSET FLAT:label_340
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_316
.label_327:
	movabs	rax, OFFSET FLAT:label_318
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_316
.label_317:
	movabs	rax, OFFSET FLAT:label_329
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_316
.label_314:
	movabs	rax, OFFSET FLAT:label_338
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_316
.label_313:
	movabs	rax, OFFSET FLAT:label_315
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_316
.label_337:
	movabs	rax, OFFSET FLAT:label_326
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_316
.label_325:
	movabs	rax, OFFSET FLAT:label_336
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_316
.label_322:
	movzx	eax, byte ptr [rbp - 0x39]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x68], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x68]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	cmp	edx, 0
	je	.label_320
	mov	al, byte ptr [rbp - 0x39]
	mov	byte ptr [rbp - 0x2d], al
	mov	byte ptr [rbp - 0x2c], 0
	jmp	.label_341
.label_320:
	movabs	rsi, OFFSET FLAT:label_339
	lea	rdi, [rbp - 0x2d]
	movzx	edx, byte ptr [rbp - 0x39]
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x6c], eax
.label_341:
	lea	rax, [rbp - 0x2d]
	mov	qword ptr [rbp - 0x38], rax
.label_316:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	call	stpcpy
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_333
.label_328:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403fd0

	.globl append_equiv_class
	.type append_equiv_class, @function
append_equiv_class:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x20], 1
	je	.label_343
	mov	byte ptr [rbp - 1], 0
	jmp	.label_347
.label_343:
	mov	eax, 0x20
	mov	edi, eax
	call	xmalloc
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax], 3
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax + 0x10], cl
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_344
	jmp	.label_345
.label_344:
	movabs	rdi, OFFSET FLAT:label_304
	movabs	rsi, OFFSET FLAT:label_66
	mov	edx, 0x2e5
	movabs	rcx, OFFSET FLAT:label_346
	call	__assert_fail
.label_345:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	byte ptr [rbp - 1], 1
.label_347:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4040a0

	.globl find_bracketed_repeat
	.type find_bracketed_repeat, @function
find_bracketed_repeat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 1
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rdx + 0x10]
	jae	.label_357
	jmp	.label_350
.label_357:
	movabs	rdi, OFFSET FLAT:label_352
	movabs	rsi, OFFSET FLAT:label_66
	mov	edx, 0x30e
	movabs	rcx, OFFSET FLAT:label_353
	call	__assert_fail
.label_350:
	mov	edx, 0x2a
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	rsi, rax
	call	es_match
	test	al, 1
	jne	.label_354
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_348
.label_354:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 2
	mov	qword ptr [rbp - 0x38], rax
.label_363:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x59], cl
	jae	.label_364
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x59], dl
.label_364:
	mov	al, byte ptr [rbp - 0x59]
	test	al, 1
	jne	.label_358
	jmp	.label_360
.label_358:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x5d
	jne	.label_362
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rbp - 0x18]
	sub	rax, 2
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	dl, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax], dl
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_349
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
	jmp	.label_351
.label_349:
	lea	rsi, [rbp - 0x50]
	xor	eax, eax
	mov	r8d, eax
	mov	eax, 0xa
	mov	ecx, 8
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, 2
	mov	rdi, qword ptr [rbp - 0x10]
	add	rdx, qword ptr [rdi]
	mov	qword ptr [rbp - 0x48], rdx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x48]
	movsx	r9d, byte ptr [rdx]
	cmp	r9d, 0x30
	cmove	eax, ecx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	edx, eax
	call	xstrtoumax
	cmp	eax, 0
	jne	.label_355
	mov	rax, -2
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	jb	.label_355
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x50]
	je	.label_359
.label_355:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	call	make_printable_str
	movabs	rdi, OFFSET FLAT:label_356
	mov	qword ptr [rbp - 0x58], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x68], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
	mov	dword ptr [rbp - 4], 0xfffffffe
	jmp	.label_348
.label_359:
	jmp	.label_351
.label_351:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_348
.label_362:
	jmp	.label_361
.label_361:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_363
.label_360:
	mov	dword ptr [rbp - 4], 0xffffffff
.label_348:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4042e0

	.globl append_repeated_char
	.type append_repeated_char, @function
append_repeated_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, sil
	mov	esi, 0x20
	mov	ecx, esi
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, rcx
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], 4
	mov	r8b, byte ptr [rbp - 9]
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 0x10], r8b
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 8], 0
	je	.label_366
	jmp	.label_367
.label_366:
	movabs	rdi, OFFSET FLAT:label_304
	movabs	rsi, OFFSET FLAT:label_66
	mov	edx, 0x2cf
	movabs	rcx, OFFSET FLAT:label_365
	call	__assert_fail
.label_367:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4043a0

	.globl append_range
	.type append_range, @function
append_range:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, dl
	mov	cl, sil
	mov	qword ptr [rbp - 0x10], rdi
	mov	byte ptr [rbp - 0x11], cl
	mov	byte ptr [rbp - 0x12], al
	movzx	edx, byte ptr [rbp - 0x12]
	movzx	esi, byte ptr [rbp - 0x11]
	cmp	edx, esi
	jge	.label_368
	movzx	edi, byte ptr [rbp - 0x11]
	call	make_printable_char
	mov	qword ptr [rbp - 0x20], rax
	movzx	edi, byte ptr [rbp - 0x12]
	call	make_printable_char
	movabs	rdi, OFFSET FLAT:label_373
	mov	qword ptr [rbp - 0x28], rax
	call	gettext
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rdi
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	al, 0
	call	error
	mov	rdi, qword ptr [rbp - 0x20]
	call	free
	mov	rdi, qword ptr [rbp - 0x28]
	call	free
	mov	byte ptr [rbp - 1], 0
	jmp	.label_369
.label_368:
	mov	eax, 0x20
	mov	edi, eax
	call	xmalloc
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	dword ptr [rax], 1
	mov	cl, byte ptr [rbp - 0x11]
	mov	rax, qword ptr [rbp - 0x30]
	mov	byte ptr [rax + 0x10], cl
	mov	cl, byte ptr [rbp - 0x12]
	mov	rax, qword ptr [rbp - 0x30]
	mov	byte ptr [rax + 0x11], cl
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_371
	jmp	.label_370
.label_371:
	movabs	rdi, OFFSET FLAT:label_304
	movabs	rsi, OFFSET FLAT:label_66
	mov	edx, 0x2a5
	movabs	rcx, OFFSET FLAT:label_372
	call	__assert_fail
.label_370:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	byte ptr [rbp - 1], 1
.label_369:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4044d0

	.globl append_normal_char
	.type append_normal_char, @function
append_normal_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, sil
	mov	esi, 0x20
	mov	ecx, esi
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	rdi, rcx
	call	xmalloc
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], 0
	mov	dl, byte ptr [rbp - 9]
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x10], dl
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 8], 0
	je	.label_374
	jmp	.label_375
.label_374:
	movabs	rdi, OFFSET FLAT:label_304
	movabs	rsi, OFFSET FLAT:label_66
	mov	edx, 0x287
	movabs	rcx, OFFSET FLAT:label_376
	call	__assert_fail
.label_375:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404580

	.globl look_up_char_class
	.type look_up_char_class, @function
look_up_char_class:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], 0
.label_381:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	ecx, eax
	cmp	rcx, 0xc
	jae	.label_379
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0x1c]
	mov	ecx, eax
	mov	rsi,  qword ptr [word ptr [+ (rcx * 8) + char_class_name]]
	mov	rdx, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_377
	mov	eax, dword ptr [rbp - 0x1c]
	mov	ecx, eax
	mov	rdi,  qword ptr [word ptr [+ (rcx * 8) + char_class_name]]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_377
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_380
.label_377:
	jmp	.label_378
.label_378:
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, 1
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_381
.label_379:
	mov	dword ptr [rbp - 4], 0x270f
.label_380:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404620

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
	.align	32
	#Procedure 0x404630

	.globl make_printable_char
	.type make_printable_char, @function
make_printable_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dil
	mov	edi, 5
	mov	byte ptr [rbp - 1], al
	call	xmalloc
	mov	qword ptr [rbp - 0x10], rax
	movzx	ecx, byte ptr [rbp - 1]
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0x18], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + rdi*2]
	and	ecx, 0x4000
	cmp	ecx, 0
	je	.label_383
	mov	al, byte ptr [rbp - 1]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx + 1], 0
	jmp	.label_382
.label_383:
	movabs	rsi, OFFSET FLAT:label_339
	mov	rdi, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rbp - 1]
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x1c], eax
.label_382:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4046c0

	.globl get_s1_spec_stats
	.type get_s1_spec_stats, @function
get_s1_spec_stats:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	get_spec_stats
	test	byte ptr [byte ptr [complement]],  1
	je	.label_384
	mov	rdi, qword ptr [rbp - 8]
	call	card_of_complement
	movsxd	rdi, eax
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], rdi
.label_384:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404700

	.globl get_s2_spec_stats
	.type get_s2_spec_stats, @function
get_s2_spec_stats:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	call	get_spec_stats
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	cmp	rsi, qword ptr [rdi + 0x18]
	jb	.label_385
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], 1
	jne	.label_385
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, qword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], rax
.label_385:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404770

	.globl validate_case_classes
	.type validate_case_classes, @function
validate_case_classes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
	mov	qword ptr [rbp - 0x20], 0
	mov	dword ptr [rbp - 0x24], 0
	mov	dword ptr [rbp - 0x28], 0
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	qword ptr [rbp - 0x38], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x40], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x48], rsi
	mov	byte ptr [rbp - 0x49], 1
	mov	byte ptr [rbp - 0x4a], 1
	mov	rsi, qword ptr [rbp - 0x10]
	test	byte ptr [rsi + 0x31], 1
	jne	.label_403
	jmp	.label_402
.label_403:
	mov	dword ptr [rbp - 0x50], 0
.label_387:
	cmp	dword ptr [rbp - 0x50], 0x100
	jge	.label_408
	movsxd	rax, dword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x60], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x60]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x100
	cmp	edx, 0
	je	.label_391
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_391:
	movsxd	rax, dword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x68], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x68]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x200
	cmp	edx, 0
	je	.label_386
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
.label_386:
	jmp	.label_401
.label_401:
	mov	eax, dword ptr [rbp - 0x50]
	add	eax, 1
	mov	dword ptr [rbp - 0x50], eax
	jmp	.label_387
.label_408:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x10], -2
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], -2
.label_407:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x24], -1
	mov	byte ptr [rbp - 0x69], cl
	je	.label_393
	cmp	dword ptr [rbp - 0x28], -1
	setne	al
	mov	byte ptr [rbp - 0x69], al
.label_393:
	mov	al, byte ptr [rbp - 0x69]
	test	al, 1
	jne	.label_389
	jmp	.label_406
.label_389:
	lea	rsi, [rbp - 0x54]
	mov	rdi, qword ptr [rbp - 8]
	call	get_next
	lea	rsi, [rbp - 0x58]
	mov	dword ptr [rbp - 0x24], eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	get_next
	mov	dword ptr [rbp - 0x28], eax
	test	byte ptr [rbp - 0x4a], 1
	je	.label_397
	cmp	dword ptr [rbp - 0x58], 2
	je	.label_397
	test	byte ptr [rbp - 0x49], 1
	je	.label_399
	cmp	dword ptr [rbp - 0x54], 2
	jne	.label_397
.label_399:
	movabs	rdi, OFFSET FLAT:label_388
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_397:
	cmp	dword ptr [rbp - 0x58], 2
	je	.label_400
	mov	rdi, qword ptr [rbp - 8]
	call	skip_construct
	mov	rdi, qword ptr [rbp - 0x10]
	call	skip_construct
	cmp	dword ptr [rbp - 0x54], 1
	jne	.label_392
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_390
.label_392:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x78], rax
.label_390:
	mov	rax, qword ptr [rbp - 0x78]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx + 0x18]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x18], rdx
	cmp	dword ptr [rbp - 0x58], 1
	jne	.label_398
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_394
.label_398:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x80], rax
.label_394:
	mov	rax, qword ptr [rbp - 0x80]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + 0x18]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x18], rdx
.label_400:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x10], -1
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x49], cl
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], -1
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x4a], cl
	jmp	.label_407
.label_406:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x18]
	jb	.label_395
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	jb	.label_395
	jmp	.label_396
.label_395:
	movabs	rdi, OFFSET FLAT:label_404
	movabs	rsi, OFFSET FLAT:label_66
	mov	edx, 0x4c5
	movabs	rcx, OFFSET FLAT:label_405
	call	__assert_fail
.label_396:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
.label_402:
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a50

	.globl string2_extend
	.type string2_extend, @function
string2_extend:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	test	byte ptr [byte ptr [translating]],  1
	je	.label_413
	jmp	.label_412
.label_413:
	movabs	rdi, OFFSET FLAT:label_417
	movabs	rsi, OFFSET FLAT:label_66
	mov	edx, 0x55e
	movabs	rcx, OFFSET FLAT:label_416
	call	__assert_fail
.label_412:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	jbe	.label_420
	jmp	.label_414
.label_420:
	movabs	rdi, OFFSET FLAT:label_418
	movabs	rsi, OFFSET FLAT:label_66
	mov	edx, 0x55f
	movabs	rcx, OFFSET FLAT:label_416
	call	__assert_fail
.label_414:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0
	jbe	.label_421
	jmp	.label_411
.label_421:
	movabs	rdi, OFFSET FLAT:label_415
	movabs	rsi, OFFSET FLAT:label_66
	mov	edx, 0x560
	movabs	rcx, OFFSET FLAT:label_416
	call	__assert_fail
.label_411:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rax]
	mov	eax, ecx
	mov	rdx, rax
	sub	rdx, 4
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], rdx
	ja	.label_419
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_422]]
	jmp	rcx
.label_947:
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x10]
	mov	byte ptr [rbp - 0x19], cl
	jmp	.label_410
.label_948:
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x11]
	mov	byte ptr [rbp - 0x19], cl
	jmp	.label_410
.label_949:
	movabs	rdi, OFFSET FLAT:label_409
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_951:
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x10]
	mov	byte ptr [rbp - 0x19], cl
	jmp	.label_410
.label_950:
	call	abort
.label_419:
	call	abort
.label_410:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rbp - 0x19]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rcx, qword ptr [rdx + 0x18]
	movzx	esi, al
	mov	rdx, rcx
	call	append_repeated_char
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x18], rcx
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404be0

	.globl homogeneous_spec_list
	.type homogeneous_spec_list, @function
homogeneous_spec_list:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	esi, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x10], -2
	mov	rdi, qword ptr [rbp - 0x10]
	call	get_next
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, -1
	jne	.label_424
	mov	byte ptr [rbp - 1], 0
	jmp	.label_423
.label_424:
	jmp	.label_426
.label_426:
	xor	eax, eax
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	get_next
	mov	dword ptr [rbp - 0x18], eax
	cmp	eax, -1
	je	.label_427
	mov	eax, dword ptr [rbp - 0x18]
	cmp	eax, dword ptr [rbp - 0x14]
	je	.label_425
	mov	byte ptr [rbp - 1], 0
	jmp	.label_423
.label_425:
	jmp	.label_426
.label_427:
	mov	byte ptr [rbp - 1], 1
.label_423:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c70

	.globl get_spec_stats
	.type get_spec_stats, @function
get_spec_stats:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x20], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi + 0x30], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi + 0x32], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi + 0x31], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	mov	qword ptr [rbp - 0x10], rdi
.label_454:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_440
	mov	qword ptr [rbp - 0x20], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	mov	eax, ecx
	mov	rdx, rax
	sub	rdx, 4
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x40], rdx
	ja	.label_443
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_451]]
	jmp	rcx
.label_952:
	mov	qword ptr [rbp - 0x20], 1
	jmp	.label_435
.label_953:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x11]
	mov	rax, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rax + 0x10]
	cmp	ecx, edx
	jl	.label_428
	jmp	.label_431
.label_428:
	movabs	rdi, OFFSET FLAT:label_432
	movabs	rsi, OFFSET FLAT:label_66
	mov	edx, 0x4ee
	movabs	rcx, OFFSET FLAT:label_433
	call	__assert_fail
.label_431:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x11]
	mov	rax, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rax + 0x10]
	sub	ecx, edx
	add	ecx, 1
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_435
.label_954:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x31], 1
	mov	dword ptr [rbp - 0x2c], 0
.label_439:
	cmp	dword ptr [rbp - 0x2c], 0x100
	jge	.label_453
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 0x10]
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dl, cl
	movzx	esi, dl
	call	is_char_class_member
	test	al, 1
	jne	.label_430
	jmp	.label_434
.label_430:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
.label_434:
	jmp	.label_436
.label_436:
	mov	eax, dword ptr [rbp - 0x2c]
	add	eax, 1
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_439
.label_453:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x10]
	mov	edx, ecx
	sub	edx, 6
	mov	dword ptr [rbp - 0x44], ecx
	mov	dword ptr [rbp - 0x48], edx
	je	.label_444
	jmp	.label_449
.label_449:
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x4c], eax
	jne	.label_450
	jmp	.label_444
.label_444:
	jmp	.label_442
.label_450:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x32], 1
.label_442:
	jmp	.label_435
.label_955:
	mov	dword ptr [rbp - 0x30], 0
.label_447:
	cmp	dword ptr [rbp - 0x30], 0x100
	jge	.label_429
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0x10]
	mov	edx, dword ptr [rbp - 0x30]
	mov	sil, dl
	movzx	edi, cl
	movzx	esi, sil
	call	is_equiv_class_member
	test	al, 1
	jne	.label_438
	jmp	.label_441
.label_438:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
.label_441:
	jmp	.label_446
.label_446:
	mov	eax, dword ptr [rbp - 0x30]
	add	eax, 1
	mov	dword ptr [rbp - 0x30], eax
	jmp	.label_447
.label_429:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x30], 1
	jmp	.label_435
.label_956:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0
	jbe	.label_452
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_455
.label_452:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, 1
	mov	qword ptr [rax + 0x20], rcx
.label_455:
	jmp	.label_435
.label_443:
	call	abort
.label_435:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x28]
	ja	.label_437
	cmp	qword ptr [rbp - 0x28], -2
	jbe	.label_445
.label_437:
	movabs	rdi, OFFSET FLAT:label_448
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_445:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_454
.label_440:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], rax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404f30

	.globl card_of_complement
	.type card_of_complement, @function
card_of_complement:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x110
	xor	esi, esi
	mov	eax, 0x100
	mov	edx, eax
	lea	rcx, [rbp - 0x110]
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0x10], 0x100
	mov	rdi, rcx
	call	memset
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x10], -2
.label_456:
	xor	eax, eax
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 8]
	call	get_next
	mov	dword ptr [rbp - 0xc], eax
	cmp	eax, -1
	je	.label_457
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	cl, byte ptr [rbp + rax - 0x110]
	xor	cl, 0xff
	and	cl, 1
	movzx	edx, cl
	mov	esi, dword ptr [rbp - 0x10]
	sub	esi, edx
	mov	dword ptr [rbp - 0x10], esi
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	byte ptr [rbp + rax - 0x110], 1
	jmp	.label_456
.label_457:
	mov	eax, dword ptr [rbp - 0x10]
	add	rsp, 0x110
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404fc0

	.globl is_char_class_member
	.type is_char_class_member, @function
is_char_class_member:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	al, sil
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], al
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, esi
	mov	rdx, rcx
	sub	rdx, 0xb
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x20], rdx
	ja	.label_458
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_460]]
	jmp	rcx
.label_967:
	movzx	eax, byte ptr [rbp - 5]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x28], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 8
	mov	dword ptr [rbp - 0xc], edx
	jmp	.label_459
.label_968:
	movzx	eax, byte ptr [rbp - 5]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x30], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x400
	mov	dword ptr [rbp - 0xc], edx
	jmp	.label_459
.label_969:
	movzx	eax, byte ptr [rbp - 5]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x38], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x38]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 1
	mov	dword ptr [rbp - 0xc], edx
	jmp	.label_459
.label_970:
	movzx	eax, byte ptr [rbp - 5]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x40], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x40]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 2
	mov	dword ptr [rbp - 0xc], edx
	jmp	.label_459
.label_971:
	movzx	eax, byte ptr [rbp - 5]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x48], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x800
	mov	dword ptr [rbp - 0xc], edx
	jmp	.label_459
.label_972:
	movzx	eax, byte ptr [rbp - 5]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x50], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x50]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x8000
	mov	dword ptr [rbp - 0xc], edx
	jmp	.label_459
.label_973:
	movzx	eax, byte ptr [rbp - 5]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x58], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x58]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x200
	mov	dword ptr [rbp - 0xc], edx
	jmp	.label_459
.label_974:
	movzx	eax, byte ptr [rbp - 5]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x60], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x60]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	mov	dword ptr [rbp - 0xc], edx
	jmp	.label_459
.label_975:
	movzx	eax, byte ptr [rbp - 5]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x68], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x68]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 4
	mov	dword ptr [rbp - 0xc], edx
	jmp	.label_459
.label_976:
	movzx	eax, byte ptr [rbp - 5]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x70], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x70]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	mov	dword ptr [rbp - 0xc], edx
	jmp	.label_459
.label_977:
	movzx	eax, byte ptr [rbp - 5]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x100
	mov	dword ptr [rbp - 0xc], edx
	jmp	.label_459
.label_978:
	movzx	eax, byte ptr [rbp - 5]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x80], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x80]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x1000
	mov	dword ptr [rbp - 0xc], edx
	jmp	.label_459
.label_458:
	call	abort
.label_459:
	cmp	dword ptr [rbp - 0xc], 0
	setne	al
	xor	al, 0xff
	xor	al, 0xff
	and	al, 1
	movzx	eax, al
	add	rsp, 0x80
	pop	rbp
	ret
	.section	.text
	.align	32
	#Procedure 0x405200

	.globl is_equiv_class_member
	.type is_equiv_class_member, @function
is_equiv_class_member:
	push	rbp
	mov	rbp, rsp
	mov	al, sil
	mov	cl, dil
	mov	byte ptr [rbp - 1], cl
	mov	byte ptr [rbp - 2], al
	movzx	esi, byte ptr [rbp - 1]
	movzx	edi, byte ptr [rbp - 2]
	cmp	esi, edi
	sete	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405230
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
	.align	32
	#Procedure 0x405250
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
	.align	32
	#Procedure 0x405270

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_462
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_464
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_462
.label_464:
	movabs	rdi, OFFSET FLAT:label_44
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_466
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_465
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_461
.label_466:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_467
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_461:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_462:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_463
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_463:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405360

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
	.align	32
	#Procedure 0x4053a0

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	je	.label_468
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
.label_468:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4053f0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_473
	movabs	rdi, OFFSET FLAT:label_472
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_473:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_475
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_470
.label_475:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_470:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_469
	movabs	rsi, OFFSET FLAT:label_476
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_469
	movabs	rsi, OFFSET FLAT:label_474
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_471
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_471:
	jmp	.label_469
.label_469:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405510
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
	je	.label_477
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_478
.label_477:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_478
.label_478:
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
	.align	32
	#Procedure 0x405590
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_479
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_480
.label_479:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_480
.label_480:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4055d0
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
	je	.label_481
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_482
.label_481:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_482
.label_482:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405620

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
	je	.label_483
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_484
.label_483:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_484
.label_484:
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
	.align	32
	#Procedure 0x4056d0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_485
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_485:
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
	.align	32
	#Procedure 0x405710

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
	jne	.label_486
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_486:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_488
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_487
.label_488:
	call	abort
.label_487:
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
	.align	32
	#Procedure 0x405780
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
	je	.label_489
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_490
.label_489:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_490
.label_490:
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
	.align	32
	#Procedure 0x405850

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
.label_640:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_541
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_614]]
	jmp	rcx
.label_1085:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_1084:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_553
	jmp	.label_557
.label_557:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_558
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_558:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_553
.label_553:
	movabs	rax, OFFSET FLAT:label_567
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_568
.label_1086:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_568
.label_1087:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_513
	movabs	rdi, OFFSET FLAT:label_569
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_584
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_513:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_591
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_612:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_595
	jmp	.label_598
.label_598:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_600
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_600:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_607
.label_607:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_612
.label_595:
	jmp	.label_591
.label_591:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_568
.label_1082:
	mov	byte ptr [rbp - 0x79], 1
.label_1081:
	mov	byte ptr [rbp - 0x7b], 1
.label_1083:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_623
	mov	byte ptr [rbp - 0x79], 1
.label_623:
	jmp	.label_624
.label_624:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_618
	jmp	.label_627
.label_627:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_628
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_628:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_618
.label_618:
	movabs	rax, OFFSET FLAT:label_584
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_568
.label_1080:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_568
.label_541:
	call	abort
.label_568:
	mov	qword ptr [rbp - 0x58], 0
.label_609:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_644
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_648
.label_644:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_648:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_660
	jmp	.label_631
.label_660:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_668
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_668
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_668
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_675
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_675
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_587
.label_675:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_587:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_668
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_668
	test	byte ptr [rbp - 0x7b], 1
	je	.label_692
	jmp	.label_511
.label_692:
	mov	byte ptr [rbp - 0x81], 1
.label_668:
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
	ja	.label_492
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_500]]
	jmp	rcx
.label_1044:
	test	byte ptr [rbp - 0x79], 1
	je	.label_502
	jmp	.label_506
.label_506:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_507
	jmp	.label_511
.label_507:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_512
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_512
	jmp	.label_519
.label_519:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_520
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_520:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_523
.label_523:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_676
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_676:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_529
.label_529:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_537
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_537:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_512:
	jmp	.label_546
.label_546:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_619
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_619:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_646
.label_646:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_560
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_560
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_560
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_560
	jmp	.label_575
.label_575:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_577
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_577:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_583
.label_583:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_588
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_588:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_560
.label_560:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_599
.label_502:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_630
	jmp	.label_606
.label_630:
	jmp	.label_599
.label_599:
	jmp	.label_493
.label_1055:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_608
	jmp	.label_615
.label_615:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_616
	jmp	.label_563
.label_608:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_571
	jmp	.label_511
.label_571:
	jmp	.label_491
.label_616:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_501
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_501
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_501
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_632
	jmp	.label_638
.label_638:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_632
	jmp	.label_642
.label_642:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_632
	jmp	.label_650
.label_650:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_632
	jmp	.label_655
.label_655:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_656
	jmp	.label_632
.label_632:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_662
	jmp	.label_511
.label_662:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_667
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_667:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_674
.label_674:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_677
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_677:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_681
.label_681:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_685
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_685:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_688
.label_688:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_517
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_517:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_690
.label_656:
	jmp	.label_690
.label_690:
	jmp	.label_501
.label_501:
	jmp	.label_491
.label_563:
	jmp	.label_491
.label_491:
	jmp	.label_493
.label_1045:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_494
.label_1046:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_494
.label_1050:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_494
.label_1048:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_499
.label_1051:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_499
.label_1047:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_499
.label_1049:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_494
.label_1056:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_504
	test	byte ptr [rbp - 0x7b], 1
	je	.label_510
	jmp	.label_511
.label_510:
	jmp	.label_514
.label_504:
	test	byte ptr [rbp - 0x79], 1
	je	.label_515
	test	byte ptr [rbp - 0x7b], 1
	je	.label_515
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_515
	jmp	.label_514
.label_515:
	jmp	.label_499
.label_499:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_522
	test	byte ptr [rbp - 0x7b], 1
	je	.label_522
	jmp	.label_511
.label_522:
	jmp	.label_494
.label_494:
	test	byte ptr [rbp - 0x79], 1
	je	.label_528
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_509
.label_528:
	jmp	.label_493
.label_1057:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_535
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_538
	jmp	.label_543
.label_535:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_538
.label_543:
	jmp	.label_493
.label_538:
	jmp	.label_545
.label_545:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_547
	jmp	.label_493
.label_547:
	jmp	.label_550
.label_550:
	mov	byte ptr [rbp - 0x83], 1
.label_1052:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_555
	test	byte ptr [rbp - 0x7b], 1
	je	.label_555
	jmp	.label_511
.label_555:
	jmp	.label_493
.label_1054:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_561
	test	byte ptr [rbp - 0x7b], 1
	je	.label_566
	jmp	.label_511
.label_566:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_508
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_508
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_508:
	jmp	.label_579
.label_579:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_581
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_581:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_586
.label_586:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_590
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_590:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_597
.label_597:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_603
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_603:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_561:
	jmp	.label_493
.label_1053:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_493
.label_492:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_531
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
	jmp	.label_585
.label_531:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_633
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_633:
	jmp	.label_539
.label_539:
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
	jne	.label_653
	jmp	.label_596
.label_653:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_659
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_596
.label_659:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_665
	mov	byte ptr [rbp - 0x91], 0
.label_682:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_669
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_669:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_679
	jmp	.label_680
.label_679:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_682
.label_680:
	jmp	.label_596
.label_665:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_521
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_521
	mov	qword ptr [rbp - 0xb8], 1
.label_518:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_689
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
	jb	.label_525
	jmp	.label_496
.label_496:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_525
	jmp	.label_554
.label_554:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_525
	jmp	.label_503
.label_503:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_505
	jmp	.label_525
.label_525:
	jmp	.label_511
.label_505:
	jmp	.label_634
.label_634:
	jmp	.label_639
.label_639:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_518
.label_689:
	jmp	.label_521
.label_521:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_524
	mov	byte ptr [rbp - 0x91], 0
.label_524:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_527
.label_527:
	jmp	.label_533
.label_533:
	jmp	.label_534
.label_534:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_539
.label_596:
	jmp	.label_585
.label_585:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_544
	test	byte ptr [rbp - 0x79], 1
	je	.label_552
	test	byte ptr [rbp - 0x91], 1
	jne	.label_552
.label_544:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_556:
	test	byte ptr [rbp - 0x79], 1
	je	.label_562
	test	byte ptr [rbp - 0x91], 1
	jne	.label_562
	jmp	.label_497
.label_497:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_570
	jmp	.label_511
.label_570:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_574
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_574
	jmp	.label_578
.label_578:
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
	jmp	.label_604
.label_604:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_589
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_589:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_651
.label_651:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_601
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_601:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_574:
	jmp	.label_611
.label_611:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_613
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_613:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_617
.label_617:
	jmp	.label_621
.label_621:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_622
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_622:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_625
.label_625:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_629
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_629:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_636
.label_562:
	test	byte ptr [rbp - 0x81], 1
	je	.label_641
	jmp	.label_643
.label_643:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_645
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_645:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_641:
	jmp	.label_636
.label_636:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_657
	jmp	.label_661
.label_657:
	jmp	.label_664
.label_664:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_666
	test	byte ptr [rbp - 0x82], 1
	jne	.label_666
	jmp	.label_670
.label_670:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_671
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_671:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_673
.label_673:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_687
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_687:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_666:
	jmp	.label_683
.label_683:
	jmp	.label_684
.label_684:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_686
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_686:
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
	jmp	.label_556
.label_661:
	jmp	.label_514
.label_552:
	jmp	.label_493
.label_493:
	test	byte ptr [rbp - 0x79], 1
	je	.label_693
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_694
.label_693:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_495
.label_694:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_495
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
	jne	.label_498
.label_495:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_498
	jmp	.label_514
.label_498:
	jmp	.label_509
.label_509:
	jmp	.label_626
.label_626:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_663
	jmp	.label_511
.label_663:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_516
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_516
	jmp	.label_691
.label_691:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_605
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_605:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_526
.label_526:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_530
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_530:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_536
.label_536:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_542
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_542:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_516:
	jmp	.label_549
.label_549:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_551
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_551:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_559
.label_559:
	jmp	.label_514
.label_514:
	jmp	.label_564
.label_564:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_565
	test	byte ptr [rbp - 0x82], 1
	jne	.label_565
	jmp	.label_572
.label_572:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_573
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_573:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_576
.label_576:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_582
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_582:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_565:
	jmp	.label_592
.label_592:
	jmp	.label_593
.label_593:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_532
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_532:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_602
	mov	byte ptr [rbp - 0x7e], 0
.label_602:
	jmp	.label_606
.label_606:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_609
.label_631:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_548
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_548
	test	byte ptr [rbp - 0x7b], 1
	je	.label_548
	jmp	.label_511
.label_548:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_620
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_620
	test	byte ptr [rbp - 0x7d], 1
	je	.label_620
	test	byte ptr [rbp - 0x7e], 1
	je	.label_594
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
	jmp	.label_635
.label_594:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_637
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_637
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_640
.label_637:
	jmp	.label_540
.label_540:
	jmp	.label_620
.label_620:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_647
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_647
	jmp	.label_652
.label_652:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_654
	jmp	.label_610
.label_610:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_658
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_658:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_649
.label_649:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_652
.label_654:
	jmp	.label_647
.label_647:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_672
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_672:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_635
.label_511:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_678
	test	byte ptr [rbp - 0x79], 1
	je	.label_678
	mov	dword ptr [rbp - 0x34], 4
.label_678:
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
.label_635:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406bf0
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
	.align	32
	#Procedure 0x406c30

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
	je	.label_695
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_696
.label_695:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_696
.label_696:
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
	je	.label_697
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_697:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406d90
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_699:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_700
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_699
.label_700:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_702
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_701]],  rax
.label_702:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_698
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_698:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406e70

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
	.align	32
	#Procedure 0x406eb0

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
	jge	.label_703
	call	abort
.label_703:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_708
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_710
	call	xalloc_die
.label_710:
	test	byte ptr [rbp - 0x31], 1
	je	.label_707
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_709
.label_707:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_709:
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
	je	.label_706
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_701]]
	mov	qword ptr [rax + 8], rcx
.label_706:
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
.label_708:
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
	ja	.label_704
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_705
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_705:
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
.label_704:
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
	.align	32
	#Procedure 0x407130

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
	.align	32
	#Procedure 0x407170
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
	.align	32
	#Procedure 0x407190
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
	.align	32
	#Procedure 0x4071c0

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
	.align	32
	#Procedure 0x407200

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
	jne	.label_711
	call	abort
.label_711:
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
	.align	32
	#Procedure 0x407270

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
	.align	32
	#Procedure 0x4072b0
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
	.align	32
	#Procedure 0x4072e0
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
	.align	32
	#Procedure 0x407310

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
	.align	32
	#Procedure 0x407390

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
	.align	32
	#Procedure 0x4073c0

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
	.align	32
	#Procedure 0x4073e0
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
	.align	32
	#Procedure 0x407410
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
	.align	32
	#Procedure 0x4074c0

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
	.align	32
	#Procedure 0x407500

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
	.align	32
	#Procedure 0x407580
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
	.align	32
	#Procedure 0x4075b0
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
	.align	32
	#Procedure 0x4075f0

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
	.align	32
	#Procedure 0x407630
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
	.align	32
	#Procedure 0x407660

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
	.align	32
	#Procedure 0x407690

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
	.align	32
	#Procedure 0x4076b0

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
	je	.label_713
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_718
.label_713:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_714
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_712
	movabs	rax, OFFSET FLAT:label_716
	movabs	rcx, OFFSET FLAT:label_717
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_718
.label_712:
	movabs	rsi, OFFSET FLAT:label_721
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_715
	movabs	rax, OFFSET FLAT:label_719
	movabs	rcx, OFFSET FLAT:label_720
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_718
.label_715:
	movabs	rax, OFFSET FLAT:label_584
	movabs	rcx, OFFSET FLAT:label_567
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_718:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4077b0

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
.label_722:
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	read
	xor	edi, edi
	mov	edx, edi
	mov	qword ptr [rbp - 0x28], rax
	cmp	rdx, qword ptr [rbp - 0x28]
	jg	.label_729
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_725
.label_729:
	call	__errno_location
	cmp	dword ptr [rax], 4
	jne	.label_728
	jmp	.label_722
.label_728:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_726
	mov	eax, 0x7ff00000
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jae	.label_726
	mov	qword ptr [rbp - 0x20], 0x7ff00000
	jmp	.label_724
.label_726:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_725
.label_724:
	jmp	.label_727
.label_727:
	jmp	.label_723
.label_723:
	jmp	.label_722
.label_725:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407860

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
	je	.label_738
	movabs	rsi, OFFSET FLAT:label_735
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_747
.label_738:
	movabs	rsi, OFFSET FLAT:label_748
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_747:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_736
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
	mov	ecx, OFFSET FLAT:label_743
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
	ja	.label_744
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_731]]
	jmp	rcx
.label_957:
	jmp	.label_730
.label_958:
	movabs	rdi, OFFSET FLAT:label_737
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
	jmp	.label_730
.label_959:
	movabs	rdi, OFFSET FLAT:label_734
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
	jmp	.label_730
.label_960:
	movabs	rdi, OFFSET FLAT:label_733
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
	jmp	.label_730
.label_961:
	movabs	rdi, OFFSET FLAT:label_741
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
	jmp	.label_730
.label_962:
	movabs	rdi, OFFSET FLAT:label_739
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
	jmp	.label_730
.label_963:
	movabs	rdi, OFFSET FLAT:label_740
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
	jmp	.label_730
.label_964:
	movabs	rdi, OFFSET FLAT:label_745
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
	jmp	.label_730
.label_965:
	movabs	rdi, OFFSET FLAT:label_732
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
	jmp	.label_730
.label_966:
	movabs	rdi, OFFSET FLAT:label_746
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
	jmp	.label_730
.label_744:
	movabs	rdi, OFFSET FLAT:label_742
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
.label_730:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407e20
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
.label_751:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_749
	jmp	.label_750
.label_750:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_751
.label_749:
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
	.align	32
	#Procedure 0x407e90

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
.label_752:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_757
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_755
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_753
.label_755:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_753:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_757:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_754
	jmp	.label_758
.label_754:
	jmp	.label_756
.label_756:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_752
.label_758:
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
	.align	32
	#Procedure 0x407fa0

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
	je	.label_759
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
.label_759:
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
	.align	32
	#Procedure 0x408110
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_760
	call	gettext
	movabs	rsi, OFFSET FLAT:label_762
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_761
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_32
	movabs	rdx, OFFSET FLAT:label_25
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_763
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
	.align	32
	#Procedure 0x4081a0

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
	jae	.label_764
	call	xalloc_die
.label_764:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4081f0

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
	jne	.label_765
	cmp	qword ptr [rbp - 8], 0
	je	.label_765
	call	xalloc_die
.label_765:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408230
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
	jae	.label_766
	call	xalloc_die
.label_766:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408280

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_767
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_767
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_769
.label_767:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_768
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_768
	call	xalloc_die
.label_768:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_769:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408300

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
	jne	.label_770
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_773
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
.label_773:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_771
	call	xalloc_die
.label_771:
	jmp	.label_772
.label_770:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_774
	call	xalloc_die
.label_774:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_772:
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
	.align	32
	#Procedure 0x4083f0

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
	.align	32
	#Procedure 0x408410
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
	.align	32
	#Procedure 0x408440
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
	.align	32
	#Procedure 0x408480

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
	jb	.label_775
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_776
.label_775:
	call	xalloc_die
.label_776:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4084e0

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
	.align	32
	#Procedure 0x408520
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
	.align	32
	#Procedure 0x408560

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_777
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_467
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4085a0

	.globl xset_binary_mode_error
	.type xset_binary_mode_error, @function
xset_binary_mode_error:
	push	rbp
	mov	rbp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4085b0

	.globl xset_binary_mode
	.type xset_binary_mode, @function
xset_binary_mode:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	set_binary_mode
	cmp	eax, 0
	jge	.label_778
	call	xset_binary_mode_error
.label_778:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4085e0

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
	jg	.label_781
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_781
	jmp	.label_785
.label_781:
	movabs	rdi, OFFSET FLAT:label_786
	movabs	rsi, OFFSET FLAT:label_787
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_788
	call	__assert_fail
.label_785:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_812
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_795
.label_812:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_795
.label_795:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_814:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_810
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_814
.label_810:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_817
	mov	dword ptr [rbp - 4], 4
	jmp	.label_797
.label_817:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoumax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_821
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_782
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_782
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_782
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_794
.label_782:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_797
.label_794:
	jmp	.label_799
.label_821:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_801
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_805
	mov	dword ptr [rbp - 4], 4
	jmp	.label_797
.label_805:
	mov	dword ptr [rbp - 0x4c], 1
.label_801:
	jmp	.label_799
.label_799:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_809
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_797
.label_809:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_800
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_813
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_797
.label_813:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_784
	jmp	.label_790
.label_790:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_784
	jmp	.label_793
.label_793:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_784
	jmp	.label_798
.label_798:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_784
	jmp	.label_803
.label_803:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_784
	jmp	.label_796
.label_796:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_784
	jmp	.label_811
.label_811:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_784
	jmp	.label_815
.label_815:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_784
	jmp	.label_818
.label_818:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_784
	jmp	.label_808
.label_808:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_784
	jmp	.label_779
.label_779:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_780
	jmp	.label_784
.label_784:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_789
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_792
	jmp	.label_819
.label_819:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_792
	jmp	.label_802
.label_802:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_804
	jmp	.label_807
.label_807:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_806
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_806:
	jmp	.label_804
.label_792:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_804:
	jmp	.label_789
.label_789:
	jmp	.label_780
.label_780:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xc0], rax
	mov	dword ptr [rbp - 0xc4], ecx
	ja	.label_816
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_820]]
	jmp	rcx
.label_991:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_783
.label_982:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_783
.label_992:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_783
.label_983:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_783
.label_984:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_783
.label_985:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_783
.label_986:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_783
.label_987:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_783
.label_988:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_783
.label_993:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_783
.label_989:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_783
.label_990:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_783
.label_816:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_797
.label_783:
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
	je	.label_791
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_791:
	jmp	.label_800
.label_800:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_797:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408b90

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
	jae	.label_822
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_823
.label_822:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_823:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408bf0

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
.label_825:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_824
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_825
.label_824:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408c40

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
	jne	.label_826
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_826:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_827
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_827
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_827
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_828
.label_827:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_828:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408cf0

	.globl __gl_setmode
	.type __gl_setmode, @function
__gl_setmode:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408d00

	.globl __gl_setmode_check
	.type __gl_setmode_check, @function
__gl_setmode_check:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408d10

	.globl set_binary_mode
	.type set_binary_mode, @function
set_binary_mode:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	call	__gl_setmode_check
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	je	.label_830
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_829
.label_830:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	__gl_setmode
	mov	dword ptr [rbp - 0x10], eax
.label_829:
	mov	eax, dword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408d60

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
	jne	.label_831
	mov	dword ptr [rbp - 4], 0
	jmp	.label_835
.label_831:
	jmp	.label_832
.label_832:
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
	jne	.label_834
	jmp	.label_833
.label_834:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_832
.label_833:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_835:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408e20

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
	jne	.label_836
	test	byte ptr [rbp - 0x13], 1
	je	.label_838
	test	byte ptr [rbp - 0x11], 1
	jne	.label_836
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_838
.label_836:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_839
	call	__errno_location
	mov	dword ptr [rax], 0
.label_839:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_837
.label_838:
	mov	dword ptr [rbp - 4], 0
.label_837:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408ed0

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
	je	.label_840
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_113
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_843
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_841
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_842
.label_843:
	mov	byte ptr [rbp - 5], 0
.label_842:
	jmp	.label_840
.label_840:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408f50

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
	jne	.label_844
	movabs	rax, OFFSET FLAT:label_33
	mov	qword ptr [rbp - 8], rax
.label_844:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_845
	movabs	rax, OFFSET FLAT:label_846
	mov	qword ptr [rbp - 8], rax
.label_845:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408fb0

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
	jge	.label_850
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_847
.label_850:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_851
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_849
.label_851:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_849
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_849:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_848
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_848:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_847:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409080

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_852
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_853
.label_852:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_854
.label_853:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_854:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4090e0

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
	je	.label_855
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_855:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409120

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
	jne	.label_856
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_856
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_856
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_858
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_857
.label_858:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_857
.label_856:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_857:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4091f0

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
	ja	.label_859
	jmp	.label_861
.label_861:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_860
.label_859:
	jmp	.label_860
.label_860:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409240
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
	jb	.label_862
	jmp	.label_865
.label_865:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_862
	jmp	.label_863
.label_863:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_864
	jmp	.label_862
.label_862:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_866
.label_864:
	mov	byte ptr [rbp - 1], 0
.label_866:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4092b0
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
	jb	.label_867
	jmp	.label_870
.label_870:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_868
	jmp	.label_867
.label_867:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_869
.label_868:
	mov	byte ptr [rbp - 1], 0
.label_869:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409300
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_871
	jmp	.label_872
.label_872:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_873
.label_871:
	mov	byte ptr [rbp - 1], 0
.label_873:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409330
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_874
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_874:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409360
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
	jb	.label_875
	jmp	.label_877
.label_877:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_878
	jmp	.label_875
.label_875:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_876
.label_878:
	mov	byte ptr [rbp - 1], 0
.label_876:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4093b0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_879
	jmp	.label_881
.label_881:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_880
.label_879:
	mov	byte ptr [rbp - 1], 0
.label_880:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4093f0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_882
	jmp	.label_884
.label_884:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_883
.label_882:
	mov	byte ptr [rbp - 1], 0
.label_883:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409430
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_885
	jmp	.label_887
.label_887:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_886
.label_885:
	mov	byte ptr [rbp - 1], 0
.label_886:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409470
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_888
	jmp	.label_890
.label_890:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_889
.label_888:
	mov	byte ptr [rbp - 1], 0
.label_889:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4094b0
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
	ja	.label_891
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_893]]
	jmp	rcx
.label_941:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_892
.label_891:
	mov	byte ptr [rbp - 1], 0
.label_892:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409500
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
	jb	.label_894
	jmp	.label_896
.label_896:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_897
	jmp	.label_894
.label_894:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_895
.label_897:
	mov	byte ptr [rbp - 1], 0
.label_895:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409550
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_898
	jmp	.label_900
.label_900:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_899
.label_898:
	mov	byte ptr [rbp - 1], 0
.label_899:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409590
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
	jb	.label_901
	jmp	.label_904
.label_904:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_901
	jmp	.label_902
.label_902:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_903
	jmp	.label_901
.label_901:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_905
.label_903:
	mov	byte ptr [rbp - 1], 0
.label_905:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409600

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_906
	jmp	.label_908
.label_908:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_907
.label_906:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_907:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409640
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_909
	jmp	.label_911
.label_911:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_910
.label_909:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_910:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
