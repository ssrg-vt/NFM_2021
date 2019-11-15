	.section	.text
	.align	32
	#Procedure 0x401740

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_9
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
	jmp	.label_11
.label_9:
	movabs	rdi, OFFSET FLAT:label_14
	call	gettext
	movabs	rdx, OFFSET FLAT:label_19
	mov	ecx, 0x80
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x18], eax
	call	emit_stdin_note
	movabs	rdi, OFFSET FLAT:label_12
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_20
	mov	dword ptr [rbp - 0x1c], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_19
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_13
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_22
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_24
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_23
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_16
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_25
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_18
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_21
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_10
	mov	dword ptr [rbp - 0x3c], eax
	call	emit_ancillary_info
.label_11:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x401920

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_26
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401950

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
.label_41:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_40
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_40:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_34
	jmp	.label_31
.label_34:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_41
.label_31:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_28
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_28:
	movabs	rdi, OFFSET FLAT:label_33
	call	gettext
	movabs	rsi, OFFSET FLAT:label_38
	movabs	rdx, OFFSET FLAT:label_27
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
	je	.label_29
	movabs	rsi, OFFSET FLAT:label_37
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_29
	movabs	rdi, OFFSET FLAT:label_30
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_29:
	movabs	rdi, OFFSET FLAT:label_39
	call	gettext
	movabs	rsi, OFFSET FLAT:label_27
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_32
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_35
	movabs	rsi, OFFSET FLAT:label_36
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
	#Procedure 0x401af0

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x120
	mov	eax, 4
	mov	ecx, eax
	lea	rdx, [rbp - 0x30]
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, rdx
	mov	rsi, rcx
	call	ptr_align
	mov	qword ptr [rbp - 0x38], rax
	mov	byte ptr [rbp - 0x39], 0
	mov	byte ptr [rbp - 0x41], 1
	mov	dword ptr [rbp - 0x48], 0xffffffff
	mov	byte ptr [rbp - 0x49], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_35
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_71
	movabs	rsi, OFFSET FLAT:label_72
	mov	qword ptr [rbp - 0x88], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_71
	mov	qword ptr [rbp - 0x90], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x98], rax
	call	atexit
	xor	r8d, r8d
	mov	ecx, r8d
	mov	edx, 1
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rsi, rcx
	mov	dword ptr [rbp - 0x9c], eax
	call	setvbuf
	movabs	rcx, OFFSET FLAT:label_100
	mov	qword ptr [rbp - 0x58], rcx
	mov	dword ptr [rbp - 0xa0], eax
.label_57:
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x58]
	call	getopt_long
	mov	dword ptr [rbp - 0x40], eax
	cmp	eax, -1
	je	.label_113
	mov	eax, dword ptr [rbp - 0x40]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0xa4], eax
	mov	dword ptr [rbp - 0xa8], ecx
	je	.label_42
	jmp	.label_96
.label_96:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0xac], eax
	je	.label_55
	jmp	.label_64
.label_64:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0xb0], eax
	je	.label_65
	jmp	.label_70
.label_70:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_79
	jmp	.label_78
.label_78:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_82
	jmp	.label_84
.label_84:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0xbc], eax
	je	.label_86
	jmp	.label_90
.label_90:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x7a
	mov	dword ptr [rbp - 0xc0], eax
	je	.label_92
	jmp	.label_97
.label_97:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_99
	jmp	.label_103
.label_103:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x81
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_105
	jmp	.label_98
.label_98:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x82
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_104
	jmp	.label_49
.label_49:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x83
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_52
	jmp	.label_60
.label_60:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x84
	mov	dword ptr [rbp - 0xd4], eax
	je	.label_63
	jmp	.label_114
.label_65:
	mov	dword ptr [rbp - 0x48], 1
	jmp	.label_54
.label_79:
	mov	byte ptr [rbp - 0x39], 1
	jmp	.label_54
.label_105:
	mov	byte ptr [byte ptr [status_only]],  1
	mov	byte ptr [byte ptr [warn]],  0
	mov	byte ptr [byte ptr [quiet]],  0
	jmp	.label_54
.label_82:
	mov	dword ptr [rbp - 0x48], 0
	jmp	.label_54
.label_86:
	mov	byte ptr [byte ptr [status_only]],  0
	mov	byte ptr [byte ptr [warn]],  1
	mov	byte ptr [byte ptr [quiet]],  0
	jmp	.label_54
.label_99:
	mov	byte ptr [byte ptr [ignore_missing]],  1
	jmp	.label_54
.label_104:
	mov	byte ptr [byte ptr [status_only]],  0
	mov	byte ptr [byte ptr [warn]],  0
	mov	byte ptr [byte ptr [quiet]],  1
	jmp	.label_54
.label_52:
	mov	byte ptr [byte ptr [strict]],  1
	jmp	.label_54
.label_63:
	mov	byte ptr [rbp - 0x49], 1
	mov	dword ptr [rbp - 0x48], 1
	jmp	.label_54
.label_92:
	mov	byte ptr [byte ptr [delim]],  0
	jmp	.label_54
.label_55:
	xor	edi, edi
	call	usage
.label_42:
	movabs	rsi, OFFSET FLAT:label_10
	movabs	rdx, OFFSET FLAT:label_38
	movabs	r8, OFFSET FLAT:label_43
	movabs	r9, OFFSET FLAT:label_44
	movabs	rax, OFFSET FLAT:label_45
	xor	ecx, ecx
	mov	edi, ecx
	mov	r10,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0xe0], rdi
	mov	rdi, r10
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_114:
	mov	edi, 1
	call	usage
.label_54:
	jmp	.label_57
.label_113:
	mov	qword ptr [word ptr [min_digest_line_length]],  0x22
	mov	qword ptr [word ptr [digest_hex_bytes]],  0x20
	test	byte ptr [rbp - 0x49], 1
	je	.label_81
	cmp	dword ptr [rbp - 0x48], 0
	jne	.label_81
	movabs	rdi, OFFSET FLAT:label_93
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_81:
	movzx	eax,  byte ptr [byte ptr [delim]]
	cmp	eax, 0xa
	je	.label_102
	test	byte ptr [rbp - 0x39], 1
	je	.label_102
	movabs	rdi, OFFSET FLAT:label_111
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_102:
	test	byte ptr [rbp - 0x49], 1
	je	.label_53
	test	byte ptr [rbp - 0x39], 1
	je	.label_53
	movabs	rdi, OFFSET FLAT:label_58
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_53:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x48]
	jg	.label_69
	test	byte ptr [rbp - 0x39], 1
	je	.label_69
	movabs	rdi, OFFSET FLAT:label_76
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_69:
	test	byte ptr [byte ptr [ignore_missing]],  1
	je	.label_87
	test	byte ptr [rbp - 0x39], 1
	jne	.label_87
	movabs	rdi, OFFSET FLAT:label_115
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_87:
	test	byte ptr [byte ptr [status_only]],  1
	je	.label_107
	test	byte ptr [rbp - 0x39], 1
	jne	.label_107
	movabs	rdi, OFFSET FLAT:label_110
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_107:
	test	byte ptr [byte ptr [warn]],  1
	je	.label_51
	test	byte ptr [rbp - 0x39], 1
	jne	.label_51
	movabs	rdi, OFFSET FLAT:label_59
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_51:
	test	byte ptr [byte ptr [quiet]],  1
	je	.label_75
	test	byte ptr [rbp - 0x39], 1
	jne	.label_75
	movabs	rdi, OFFSET FLAT:label_77
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_75:
	mov	al,  byte ptr [byte ptr [strict]]
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x39]
	xor	al, 0xff
	and	al, 1
	movzx	edx, al
	and	ecx, edx
	cmp	ecx, 0
	je	.label_88
	movabs	rdi, OFFSET FLAT:label_66
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_88:
	cmp	dword ptr [rbp - 0x48], 0
	jge	.label_106
	mov	dword ptr [rbp - 0x48], 0
.label_106:
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 8]
	shl	rcx, 3
	add	rax, rcx
	mov	qword ptr [rbp - 0x60], rax
	mov	edx,  dword ptr [dword ptr [optind]]
	cmp	edx, dword ptr [rbp - 8]
	jne	.label_112
	movabs	rdi, OFFSET FLAT:label_80
	call	bad_cast
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rcx, rdi
	add	rcx, 8
	mov	qword ptr [rbp - 0x60], rcx
	mov	qword ptr [rdi], rax
.label_112:
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx,  dword ptr [dword ptr [optind]]
	shl	rcx, 3
	add	rax, rcx
	mov	qword ptr [rbp - 0x68], rax
.label_62:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x60]
	jae	.label_67
	mov	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x70], rax
	test	byte ptr [rbp - 0x39], 1
	je	.label_74
	mov	rdi, qword ptr [rbp - 0x70]
	call	digest_check
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	jmp	.label_101
.label_74:
	lea	rsi, [rbp - 0x74]
	lea	rcx, [rbp - 0x75]
	mov	eax, dword ptr [rbp - 0x48]
	mov	dword ptr [rbp - 0x74], eax
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x38]
	call	digest_file
	test	al, 1
	jne	.label_94
	mov	byte ptr [rbp - 0x41], 0
	jmp	.label_95
.label_94:
	mov	esi, 0x5c
	mov	rdi, qword ptr [rbp - 0x70]
	call	strchr
	cmp	rax, 0
	jne	.label_108
	mov	esi, 0xa
	mov	rdi, qword ptr [rbp - 0x70]
	call	strchr
	xor	esi, esi
	mov	cl, sil
	cmp	rax, 0
	mov	byte ptr [rbp - 0xe1], cl
	je	.label_109
.label_108:
	movzx	eax,  byte ptr [byte ptr [delim]]
	cmp	eax, 0xa
	sete	cl
	mov	byte ptr [rbp - 0xe1], cl
.label_109:
	mov	al, byte ptr [rbp - 0xe1]
	and	al, 1
	mov	byte ptr [rbp - 0x76], al
	test	byte ptr [rbp - 0x49], 1
	je	.label_50
	test	byte ptr [rbp - 0x76], 1
	je	.label_61
	mov	edi, 0x5c
	call	putchar_unlocked
	mov	dword ptr [rbp - 0xe8], eax
.label_61:
	movabs	rdi, OFFSET FLAT:label_19
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_73
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	dword ptr [rbp - 0xec], eax
	call	fputs_unlocked
	mov	rdi, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rbp - 0x76]
	and	cl, 1
	movzx	esi, cl
	mov	dword ptr [rbp - 0xf0], eax
	call	print_filename
	movabs	rdi, OFFSET FLAT:label_68
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xf4], eax
.label_50:
	test	byte ptr [rbp - 0x49], 1
	jne	.label_47
	test	byte ptr [rbp - 0x76], 1
	je	.label_47
	mov	edi, 0x5c
	call	putchar_unlocked
	mov	dword ptr [rbp - 0xf8], eax
.label_47:
	mov	qword ptr [rbp - 0x80], 0
.label_48:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx,  qword ptr [word ptr [digest_hex_bytes]]
	shr	rcx, 1
	cmp	rax, rcx
	jae	.label_46
	movabs	rdi, OFFSET FLAT:label_91
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x38]
	movzx	esi, byte ptr [rcx + rax]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0xfc], eax
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_48
.label_46:
	test	byte ptr [rbp - 0x49], 1
	jne	.label_56
	mov	edi, 0x20
	call	putchar_unlocked
	mov	edi, 0x20
	mov	ecx, 0x2a
	cmp	dword ptr [rbp - 0x74], 0
	cmovne	edi, ecx
	mov	dword ptr [rbp - 0x100], eax
	call	putchar_unlocked
	mov	rdi, qword ptr [rbp - 0x70]
	mov	dl, byte ptr [rbp - 0x76]
	and	dl, 1
	movzx	esi, dl
	mov	dword ptr [rbp - 0x104], eax
	call	print_filename
.label_56:
	movzx	edi,  byte ptr [byte ptr [delim]]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x108], eax
.label_95:
	jmp	.label_101
.label_101:
	jmp	.label_83
.label_83:
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 8
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_62
.label_67:
	test	byte ptr [byte ptr [have_read_stdin]],  1
	je	.label_89
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_89
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_85
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x10c], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x10c]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_89:
	mov	eax, 1
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x41]
	test	dl, 1
	cmovne	eax, ecx
	add	rsp, 0x120
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402410

	.globl ptr_align
	.type ptr_align, @function
ptr_align:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, qword ptr [rbp - 0x10]
	add	rsi, -1
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x20]
	xor	edx, edx
	div	qword ptr [rbp - 0x10]
	sub	rcx, rdx
	add	rsi, rcx
	mov	rax, rsi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402460

	.globl bad_cast
	.type bad_cast, @function
bad_cast:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402470

	.globl digest_check
	.type digest_check, @function
digest_check:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x130
	mov	eax, 4
	mov	esi, eax
	lea	rcx, [rbp - 0x50]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x38], 0
	mov	byte ptr [rbp - 0x39], 0
	mov	byte ptr [rbp - 0x3a], 0
	mov	rdi, rcx
	call	ptr_align
	mov	qword ptr [rbp - 0x58], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	edx, OFFSET FLAT:label_80
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	sete	r8b
	and	r8b, 1
	mov	byte ptr [rbp - 0x71], r8b
	test	byte ptr [rbp - 0x71], 1
	je	.label_171
	movabs	rdi, OFFSET FLAT:label_85
	mov	byte ptr [byte ptr [have_read_stdin]],  1
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	mov	rax,  qword ptr [word ptr [stdin]]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_148
.label_171:
	movabs	rsi, OFFSET FLAT:label_123
	mov	rdi, qword ptr [rbp - 0x10]
	call	fopen_safer
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_131
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0xb4], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_117
	mov	esi, dword ptr [rbp - 0xb4]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_129
.label_131:
	jmp	.label_148
.label_148:
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x70], 0
.label_145:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_158
	movabs	rdi, OFFSET FLAT:label_166
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xc0], rax
	call	quotearg_n_style_colon
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_158:
	lea	rdi, [rbp - 0x68]
	lea	rsi, [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x18]
	call	getline
	mov	qword ptr [rbp - 0x98], rax
	cmp	qword ptr [rbp - 0x98], 0
	jg	.label_181
	jmp	.label_121
.label_181:
	mov	rax, qword ptr [rbp - 0x68]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x23
	jne	.label_124
	jmp	.label_130
.label_124:
	mov	rax, qword ptr [rbp - 0x98]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x68]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0xa
	jne	.label_132
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x98], rcx
	mov	rcx, qword ptr [rbp - 0x68]
	mov	byte ptr [rcx + rax - 1], 0
.label_132:
	lea	rdx, [rbp - 0x90]
	lea	rcx, [rbp - 0x84]
	lea	r8, [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x98]
	call	split_3
	test	al, 1
	jne	.label_153
	jmp	.label_155
.label_153:
	test	byte ptr [rbp - 0x71], 1
	je	.label_156
	mov	rdi, qword ptr [rbp - 0x80]
	mov	eax, OFFSET FLAT:label_80
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_156
.label_155:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	test	byte ptr [byte ptr [warn]],  1
	je	.label_167
	movabs	rdi, OFFSET FLAT:label_172
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xc8], rax
	call	quotearg_n_style_colon
	xor	esi, esi
	movabs	r9, OFFSET FLAT:label_19
	mov	r8, qword ptr [rbp - 0x60]
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_167:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_126
.label_156:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [byte ptr [status_only]],  1
	mov	byte ptr [rbp - 0xc9], cl
	jne	.label_180
	mov	esi, 0xa
	mov	rdi, qword ptr [rbp - 0x80]
	call	strchr
	cmp	rax, 0
	setne	cl
	mov	byte ptr [rbp - 0xc9], cl
.label_180:
	mov	al, byte ptr [rbp - 0xc9]
	lea	rsi, [rbp - 0x84]
	lea	rcx, [rbp - 0x9a]
	and	al, 1
	mov	byte ptr [rbp - 0x9b], al
	mov	byte ptr [rbp - 0x39], 1
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x58]
	call	digest_file
	and	al, 1
	mov	byte ptr [rbp - 0x99], al
	test	byte ptr [rbp - 0x99], 1
	jne	.label_142
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	test	byte ptr [byte ptr [status_only]],  1
	jne	.label_161
	test	byte ptr [rbp - 0x9b], 1
	je	.label_168
	mov	edi, 0x5c
	call	putchar_unlocked
	mov	dword ptr [rbp - 0xd0], eax
.label_168:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	al, byte ptr [rbp - 0x9b]
	and	al, 1
	movzx	esi, al
	call	print_filename
	movabs	rdi, OFFSET FLAT:label_157
	call	gettext
	movabs	rdi, OFFSET FLAT:label_174
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0xd4], eax
.label_161:
	jmp	.label_122
.label_142:
	test	byte ptr [byte ptr [ignore_missing]],  1
	je	.label_125
	test	byte ptr [rbp - 0x9a], 1
	je	.label_125
	jmp	.label_136
.label_125:
	mov	rax,  qword ptr [word ptr [digest_hex_bytes]]
	shr	rax, 1
	mov	qword ptr [rbp - 0xa8], rax
	mov	qword ptr [rbp - 0xb0], 0
.label_169:
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0xa8]
	jae	.label_143
	mov	rax, qword ptr [rbp - 0xb0]
	shl	rax, 1
	mov	rcx, qword ptr [rbp - 0x90]
	movzx	edi, byte ptr [rcx + rax]
	call	tolower
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	rdx, qword ptr [rbp - 0x58]
	movzx	edi, byte ptr [rdx + rcx]
	sar	edi, 4
	movsxd	rcx, edi
	movsx	edi,  byte ptr [byte ptr [+ (rcx * 1) + digest_check.bin2hex]]
	cmp	eax, edi
	jne	.label_152
	mov	rax, qword ptr [rbp - 0xb0]
	shl	rax, 1
	mov	rcx, qword ptr [rbp - 0x90]
	movzx	edi, byte ptr [rcx + rax + 1]
	call	tolower
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	rdx, qword ptr [rbp - 0x58]
	movzx	edi, byte ptr [rdx + rcx]
	and	edi, 0xf
	movsxd	rcx, edi
	movsx	edi,  byte ptr [byte ptr [+ (rcx * 1) + digest_check.bin2hex]]
	cmp	eax, edi
	je	.label_141
.label_152:
	jmp	.label_143
.label_141:
	jmp	.label_177
.label_177:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, 1
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_169
.label_143:
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0xa8]
	je	.label_119
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_127
.label_119:
	mov	byte ptr [rbp - 0x3a], 1
.label_127:
	test	byte ptr [byte ptr [status_only]],  1
	jne	.label_137
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0xa8]
	jne	.label_140
	test	byte ptr [byte ptr [quiet]],  1
	jne	.label_116
.label_140:
	test	byte ptr [rbp - 0x9b], 1
	je	.label_146
	mov	edi, 0x5c
	call	putchar_unlocked
	mov	dword ptr [rbp - 0xd8], eax
.label_146:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	al, byte ptr [rbp - 0x9b]
	and	al, 1
	movzx	esi, al
	call	print_filename
.label_116:
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0xa8]
	je	.label_170
	movabs	rdi, OFFSET FLAT:label_128
	call	gettext
	movabs	rdi, OFFSET FLAT:label_174
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_120
.label_170:
	test	byte ptr [byte ptr [quiet]],  1
	jne	.label_139
	movabs	rdi, OFFSET FLAT:label_175
	call	gettext
	movabs	rdi, OFFSET FLAT:label_174
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0xe0], eax
.label_139:
	jmp	.label_120
.label_120:
	jmp	.label_137
.label_137:
	jmp	.label_136
.label_136:
	jmp	.label_122
.label_122:
	jmp	.label_126
.label_126:
	jmp	.label_130
.label_130:
	mov	rdi, qword ptr [rbp - 0x18]
	call	feof_unlocked
	xor	ecx, ecx
	mov	dl, cl
	cmp	eax, 0
	mov	byte ptr [rbp - 0xe1], dl
	jne	.label_138
	mov	rdi, qword ptr [rbp - 0x18]
	call	ferror_unlocked
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0xe1], cl
.label_138:
	mov	al, byte ptr [rbp - 0xe1]
	test	al, 1
	jne	.label_145
.label_121:
	mov	rdi, qword ptr [rbp - 0x68]
	call	free
	mov	rdi, qword ptr [rbp - 0x18]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_151
	movabs	rdi, OFFSET FLAT:label_154
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xf0], rax
	call	quotearg_n_style_colon
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_129
.label_151:
	test	byte ptr [rbp - 0x71], 1
	jne	.label_160
	mov	rdi, qword ptr [rbp - 0x18]
	call	rpl_fclose
	cmp	eax, 0
	je	.label_160
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0xf4], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_117
	mov	esi, dword ptr [rbp - 0xf4]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_129
.label_160:
	test	byte ptr [rbp - 0x39], 1
	jne	.label_133
	movabs	rdi, OFFSET FLAT:label_144
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x100], rax
	call	quotearg_n_style_colon
	xor	esi, esi
	movabs	r8, OFFSET FLAT:label_19
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x100]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_149
.label_133:
	test	byte ptr [byte ptr [status_only]],  1
	jne	.label_150
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_176
	mov	rdi, qword ptr [rbp - 0x20]
	call	select_plural
	movabs	rdi, OFFSET FLAT:label_164
	movabs	rsi, OFFSET FLAT:label_165
	mov	rdx, rax
	call	ngettext
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	edi, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x108], rdx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x108]
	mov	al, 0
	call	error
.label_176:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_173
	mov	rdi, qword ptr [rbp - 0x38]
	call	select_plural
	movabs	rdi, OFFSET FLAT:label_178
	movabs	rsi, OFFSET FLAT:label_179
	mov	rdx, rax
	call	ngettext
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x38]
	mov	edi, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x110], rdx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x110]
	mov	al, 0
	call	error
.label_173:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_135
	mov	rdi, qword ptr [rbp - 0x30]
	call	select_plural
	movabs	rdi, OFFSET FLAT:label_162
	movabs	rsi, OFFSET FLAT:label_163
	mov	rdx, rax
	call	ngettext
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	edi, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x118], rdx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x118]
	mov	al, 0
	call	error
.label_135:
	test	byte ptr [byte ptr [ignore_missing]],  1
	je	.label_147
	test	byte ptr [rbp - 0x3a], 1
	jne	.label_147
	movabs	rdi, OFFSET FLAT:label_159
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x120], rax
	call	quotearg_n_style_colon
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x120]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_147:
	jmp	.label_150
.label_150:
	jmp	.label_149
.label_149:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x39], 1
	mov	byte ptr [rbp - 0x121], cl
	je	.label_118
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x3a], 1
	mov	byte ptr [rbp - 0x121], cl
	je	.label_118
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0
	mov	byte ptr [rbp - 0x121], cl
	jne	.label_118
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x38], 0
	mov	byte ptr [rbp - 0x121], cl
	jne	.label_118
	mov	al, 1
	test	byte ptr [byte ptr [strict]],  1
	mov	byte ptr [rbp - 0x122], al
	je	.label_134
	cmp	qword ptr [rbp - 0x28], 0
	sete	al
	mov	byte ptr [rbp - 0x122], al
.label_134:
	mov	al, byte ptr [rbp - 0x122]
	mov	byte ptr [rbp - 0x121], al
.label_118:
	mov	al, byte ptr [rbp - 0x121]
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_129:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x130
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402d80

	.globl digest_file
	.type digest_file, @function
digest_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_80
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	sete	r8b
	and	r8b, 1
	mov	byte ptr [rbp - 0x35], r8b
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx], 0
	test	byte ptr [rbp - 0x35], 1
	je	.label_188
	mov	byte ptr [byte ptr [have_read_stdin]],  1
	mov	rax,  qword ptr [word ptr [stdin]]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_186
.label_188:
	movabs	rsi, OFFSET FLAT:label_123
	mov	rdi, qword ptr [rbp - 0x10]
	call	fopen_safer
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_189
	test	byte ptr [byte ptr [ignore_missing]],  1
	je	.label_183
	call	__errno_location
	cmp	dword ptr [rax], 2
	jne	.label_183
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax], 1
	mov	byte ptr [rbp - 1], 1
	jmp	.label_182
.label_183:
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x3c], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_117
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_182
.label_189:
	jmp	.label_186
.label_186:
	mov	esi, 2
	mov	rdi, qword ptr [rbp - 0x30]
	call	fadvise
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x20]
	call	md5_stream
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	je	.label_187
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x40], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_117
	mov	esi, dword ptr [rbp - 0x40]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rcx,  qword ptr [word ptr [stdin]]
	je	.label_185
	mov	rdi, qword ptr [rbp - 0x30]
	call	rpl_fclose
	mov	dword ptr [rbp - 0x44], eax
.label_185:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_182
.label_187:
	test	byte ptr [rbp - 0x35], 1
	jne	.label_184
	mov	rdi, qword ptr [rbp - 0x30]
	call	rpl_fclose
	cmp	eax, 0
	je	.label_184
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x48], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_117
	mov	esi, dword ptr [rbp - 0x48]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_182
.label_184:
	mov	byte ptr [rbp - 1], 1
.label_182:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f60

	.globl print_filename
	.type print_filename, @function
print_filename:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	test	byte ptr [rbp - 9], 1
	jne	.label_190
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_195
.label_190:
	jmp	.label_193
.label_193:
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	je	.label_195
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0xa
	mov	dword ptr [rbp - 0x14], ecx
	mov	dword ptr [rbp - 0x18], edx
	je	.label_194
	jmp	.label_191
.label_191:
	mov	eax, dword ptr [rbp - 0x14]
	sub	eax, 0x5c
	mov	dword ptr [rbp - 0x1c], eax
	je	.label_192
	jmp	.label_197
.label_194:
	movabs	rdi, OFFSET FLAT:label_199
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x20], eax
	jmp	.label_196
.label_192:
	movabs	rdi, OFFSET FLAT:label_198
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_196
.label_197:
	mov	rax, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rax]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x28], eax
.label_196:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_193
.label_195:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403040

	.globl split_3
	.type split_3, @function
split_3:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	byte ptr [rbp - 0x31], 0
	mov	qword ptr [rbp - 0x48], 0
.label_212:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx + rcx]
	cmp	esi, 0x20
	mov	byte ptr [rbp - 0x49], al
	je	.label_211
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 9
	sete	sil
	mov	byte ptr [rbp - 0x49], sil
.label_211:
	mov	al, byte ptr [rbp - 0x49]
	test	al, 1
	jne	.label_208
	jmp	.label_210
.label_208:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_212
.label_210:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x5c
	jne	.label_215
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	byte ptr [rbp - 0x31], 1
.label_215:
	movabs	rsi, OFFSET FLAT:label_19
	mov	qword ptr [rbp - 0x40], 3
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	strncmp
	cmp	eax, 0
	jne	.label_202
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x20
	jne	.label_203
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
.label_203:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x28
	jne	.label_216
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	dil, byte ptr [rbp - 0x31]
	and	dil, 1
	mov	byte ptr [rbp - 0x4a], dil
	mov	rdi, rax
	mov	qword ptr [rbp - 0x58], rsi
	mov	rsi, rcx
	mov	rcx, qword ptr [rbp - 0x58]
	mov	r8b, byte ptr [rbp - 0x4a]
	movzx	r8d, r8b
	call	bsd_split_3
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_201
.label_216:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_201
.label_202:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, qword ptr [rbp - 0x48]
	mov	rcx,  qword ptr [word ptr [min_digest_line_length]]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rsi + rdx]
	cmp	edi, 0x5c
	sete	r8b
	and	r8b, 1
	movzx	edi, r8b
	movsxd	rdx, edi
	add	rcx, rdx
	cmp	rax, rcx
	jae	.label_204
	mov	byte ptr [rbp - 1], 0
	jmp	.label_201
.label_204:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	rax,  qword ptr [word ptr [digest_hex_bytes]]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x20
	je	.label_209
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 9
	je	.label_209
	mov	byte ptr [rbp - 1], 0
	jmp	.label_201
.label_209:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x48], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rax]
	call	hex_digits
	test	al, 1
	jne	.label_214
	mov	byte ptr [rbp - 1], 0
	jmp	.label_201
.label_214:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, qword ptr [rbp - 0x48]
	cmp	rax, 1
	je	.label_200
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x20
	je	.label_205
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2a
	je	.label_205
.label_200:
	cmp	dword ptr [dword ptr [bsd_reversed]],  0
	jne	.label_217
	mov	byte ptr [rbp - 1], 0
	jmp	.label_201
.label_217:
	mov	dword ptr [dword ptr [bsd_reversed]],  1
	jmp	.label_206
.label_205:
	cmp	dword ptr [dword ptr [bsd_reversed]],  1
	je	.label_207
	mov	dword ptr [dword ptr [bsd_reversed]],  0
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x48], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2a
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax], edx
.label_207:
	jmp	.label_206
.label_206:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	test	byte ptr [rbp - 0x31], 1
	je	.label_213
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, qword ptr [rbp - 0x48]
	mov	rdi, rax
	mov	rsi, rcx
	call	filename_unescape
	cmp	rax, 0
	setne	dl
	and	dl, 1
	mov	byte ptr [rbp - 1], dl
	jmp	.label_201
.label_213:
	mov	byte ptr [rbp - 1], 1
.label_201:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403390

	.globl select_plural
	.type select_plural, @function
select_plural:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], -1
	ja	.label_218
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_219
.label_218:
	mov	eax, 0xf4240
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	add	rdx, 0xf4240
	mov	qword ptr [rbp - 0x10], rdx
.label_219:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4033e0

	.globl bsd_split_3
	.type bsd_split_3, @function
bsd_split_3:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, r8b
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_232
	mov	byte ptr [rbp - 1], 0
	jmp	.label_225
.label_232:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	qword ptr [rbp - 0x38], rax
.label_231:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x38], 0
	mov	byte ptr [rbp - 0x39], cl
	je	.label_220
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x29
	setne	sil
	mov	byte ptr [rbp - 0x39], sil
.label_220:
	mov	al, byte ptr [rbp - 0x39]
	test	al, 1
	jne	.label_224
	jmp	.label_236
.label_224:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_231
.label_236:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x29
	je	.label_235
	mov	byte ptr [rbp - 1], 0
	jmp	.label_225
.label_235:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	test	byte ptr [rbp - 0x29], 1
	je	.label_223
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x38]
	call	filename_unescape
	cmp	rax, 0
	jne	.label_223
	mov	byte ptr [rbp - 1], 0
	jmp	.label_225
.label_223:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx + rax], 0
.label_230:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx + rcx]
	cmp	esi, 0x20
	mov	byte ptr [rbp - 0x3a], al
	je	.label_229
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 9
	sete	sil
	mov	byte ptr [rbp - 0x3a], sil
.label_229:
	mov	al, byte ptr [rbp - 0x3a]
	test	al, 1
	jne	.label_221
	jmp	.label_227
.label_221:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_230
.label_227:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x3d
	je	.label_234
	mov	byte ptr [rbp - 1], 0
	jmp	.label_225
.label_234:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
.label_228:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx + rcx]
	cmp	esi, 0x20
	mov	byte ptr [rbp - 0x3b], al
	je	.label_233
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 9
	sete	sil
	mov	byte ptr [rbp - 0x3b], sil
.label_233:
	mov	al, byte ptr [rbp - 0x3b]
	test	al, 1
	jne	.label_222
	jmp	.label_226
.label_222:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_228
.label_226:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rax]
	call	hex_digits
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_225:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4035d0

	.globl hex_digits
	.type hex_digits, @function
hex_digits:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], 0
.label_240:
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	cmp	rcx,  qword ptr [word ptr [digest_hex_bytes]]
	jae	.label_238
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax]
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0x20], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x20]
	movzx	ecx, word ptr [rax + rdx*2]
	and	ecx, 0x1000
	cmp	ecx, 0
	jne	.label_239
	mov	byte ptr [rbp - 1], 0
	jmp	.label_237
.label_239:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_240
.label_238:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0
	sete	dl
	and	dl, 1
	mov	byte ptr [rbp - 1], dl
.label_237:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403670

	.globl filename_unescape
	.type filename_unescape, @function
filename_unescape:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], 0
.label_250:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_245
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	test	edx, edx
	mov	dword ptr [rbp - 0x2c], edx
	je	.label_249
	jmp	.label_255
.label_255:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x5c
	mov	dword ptr [rbp - 0x30], eax
	jne	.label_256
	jmp	.label_242
.label_242:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, 1
	cmp	rax, rcx
	jne	.label_244
	mov	qword ptr [rbp - 8], 0
	jmp	.label_251
.label_244:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	inc	rcx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	esi, edx
	sub	esi, 0x5c
	mov	dword ptr [rbp - 0x34], edx
	mov	dword ptr [rbp - 0x38], esi
	je	.label_253
	jmp	.label_246
.label_246:
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x3c], eax
	jne	.label_248
	jmp	.label_254
.label_254:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x20], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_241
.label_253:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x20], rcx
	mov	byte ptr [rax], 0x5c
	jmp	.label_241
.label_248:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_251
.label_241:
	jmp	.label_252
.label_249:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_251
.label_256:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dl, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x20], rcx
	mov	byte ptr [rax], dl
.label_252:
	jmp	.label_247
.label_247:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_250
.label_245:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, qword ptr [rbp - 0x18]
	cmp	rax, rcx
	jae	.label_243
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax], 0
.label_243:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_251:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4037e0
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
	#Procedure 0x403800
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
	#Procedure 0x403820

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_260
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_263
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_260
.label_263:
	movabs	rdi, OFFSET FLAT:label_262
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_258
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_257
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_259
.label_258:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_117
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_259:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_260:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_261
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_261:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403910

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
	.align	32
	#Procedure 0x403970

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
	.align	32
	#Procedure 0x4039f0

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
	.align	32
	#Procedure 0x403a10

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
	jae	.label_264
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x14]
	add	ecx, 1
	mov	dword ptr [rax + 0x14], ecx
.label_264:
	movabs	rsi, OFFSET FLAT:fillbuf
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
	.align	32
	#Procedure 0x403b20

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
.label_326:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x78]
	jae	.label_312
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
	jmp	.label_319
.label_319:
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
	jmp	.label_290
.label_290:
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
	jmp	.label_273
.label_273:
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
	jmp	.label_308
.label_308:
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
	jmp	.label_328
.label_328:
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
	jmp	.label_329
.label_329:
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
	jmp	.label_318
.label_318:
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
	jmp	.label_321
.label_321:
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
	jmp	.label_310
.label_310:
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
	jmp	.label_297
.label_297:
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
	jmp	.label_302
.label_302:
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
	jmp	.label_287
.label_287:
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
	jmp	.label_292
.label_292:
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
	jmp	.label_278
.label_278:
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
	jmp	.label_284
.label_284:
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
	jmp	.label_304
.label_304:
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
	jmp	.label_275
.label_275:
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
	jmp	.label_309
.label_309:
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
	jmp	.label_289
.label_289:
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
	jmp	.label_267
.label_267:
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
	jmp	.label_303
.label_303:
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
	jmp	.label_277
.label_277:
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
	jmp	.label_315
.label_315:
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
	jmp	.label_300
.label_300:
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
	jmp	.label_269
.label_269:
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
	jmp	.label_305
.label_305:
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
	jmp	.label_285
.label_285:
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
	jmp	.label_327
.label_327:
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
	jmp	.label_301
.label_301:
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
	jmp	.label_271
.label_271:
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
	jmp	.label_313
.label_313:
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
	jmp	.label_294
.label_294:
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
	jmp	.label_265
.label_265:
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
	jmp	.label_317
.label_317:
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
	jmp	.label_298
.label_298:
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
	jmp	.label_311
.label_311:
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
	jmp	.label_282
.label_282:
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
	jmp	.label_268
.label_268:
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
	jmp	.label_286
.label_286:
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
	jmp	.label_324
.label_324:
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
	jmp	.label_295
.label_295:
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
	jmp	.label_323
.label_323:
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
	jmp	.label_299
.label_299:
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
	jmp	.label_274
.label_274:
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
	jmp	.label_296
.label_296:
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
	jmp	.label_322
.label_322:
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
	jmp	.label_276
.label_276:
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
	jmp	.label_288
.label_288:
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
	jmp	.label_316
.label_316:
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
	jmp	.label_325
.label_325:
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
	jmp	.label_266
.label_266:
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
	jmp	.label_270
.label_270:
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
	jmp	.label_283
.label_283:
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
	jmp	.label_314
.label_314:
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
	jmp	.label_293
.label_293:
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
	jmp	.label_280
.label_280:
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
	jmp	.label_307
.label_307:
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
	jmp	.label_279
.label_279:
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
	jmp	.label_320
.label_320:
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
	jmp	.label_281
.label_281:
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
	jmp	.label_291
.label_291:
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
	jmp	.label_306
.label_306:
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
	jmp	.label_272
.label_272:
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
	jmp	.label_326
.label_312:
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
	.align	32
	#Procedure 0x405230

	.globl md5_stream
	.type md5_stream, @function
md5_stream:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_340
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
	je	.label_344
	jmp	.label_336
.label_336:
	mov	eax, dword ptr [rbp - 0xe4]
	test	eax, eax
	jne	.label_338
	jmp	.label_342
.label_342:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_333
.label_344:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_333
.label_338:
	mov	eax, 0x8048
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_334
	mov	dword ptr [rbp - 4], 1
	jmp	.label_333
.label_334:
	lea	rdi, [rbp - 0xc0]
	call	md5_init_ctx
.label_339:
	mov	qword ptr [rbp - 0xc8], 0
.label_335:
	mov	rdi, qword ptr [rbp - 0x10]
	call	feof_unlocked
	cmp	eax, 0
	je	.label_332
	jmp	.label_345
.label_332:
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
	jne	.label_337
	jmp	.label_331
.label_337:
	cmp	qword ptr [rbp - 0xd0], 0
	jne	.label_343
	mov	rdi, qword ptr [rbp - 0x10]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_330
	mov	rdi, qword ptr [rbp - 0x20]
	call	free
	mov	dword ptr [rbp - 4], 1
	jmp	.label_333
.label_330:
	jmp	.label_345
.label_343:
	jmp	.label_335
.label_331:
	mov	eax, 0x8000
	mov	esi, eax
	lea	rdx, [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 0x20]
	call	md5_process_block
	jmp	.label_339
.label_345:
	cmp	qword ptr [rbp - 0xc8], 0
	jbe	.label_341
	lea	rdx, [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0xc8]
	call	md5_process_bytes
.label_341:
	lea	rdi, [rbp - 0xc0]
	mov	rsi, qword ptr [rbp - 0x18]
	call	md5_finish_ctx
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xf8], rax
	call	free
	mov	dword ptr [rbp - 4], 0
.label_333:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405440

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
	.align	32
	#Procedure 0x405460

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
	je	.label_352
	mov	eax, 0x80
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rdx + 0x18]
	mov	edx, eax
	mov	qword ptr [rbp - 0x20], rdx
	sub	rcx, qword ptr [rbp - 0x20]
	cmp	rcx, qword ptr [rbp - 0x10]
	jbe	.label_346
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_353
.label_346:
	mov	eax, 0x80
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rcx
.label_353:
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
	jbe	.label_354
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
.label_354:
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
.label_352:
	cmp	qword ptr [rbp - 0x10], 0x40
	jb	.label_348
	mov	rax, qword ptr [rbp - 8]
	and	rax, 3
	cmp	rax, 0
	je	.label_351
	jmp	.label_355
.label_355:
	cmp	qword ptr [rbp - 0x10], 0x40
	jbe	.label_356
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
	jmp	.label_355
.label_356:
	jmp	.label_349
.label_351:
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
.label_349:
	jmp	.label_348
.label_348:
	cmp	qword ptr [rbp - 0x10], 0
	jbe	.label_350
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
	jb	.label_347
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
.label_347:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x18], ecx
.label_350:
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405710
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
	.align	32
	#Procedure 0x405770

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
	#Procedure 0x4057b0

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	je	.label_357
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
.label_357:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405800

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
	je	.label_361
	mov	rdi, qword ptr [rbp - 0x20]
	call	fileno
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x24], eax
	cmp	ecx, dword ptr [rbp - 0x24]
	jg	.label_358
	cmp	dword ptr [rbp - 0x24], 2
	jg	.label_358
	mov	edi, dword ptr [rbp - 0x24]
	call	dup_safer
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	jge	.label_360
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
	jmp	.label_359
.label_360:
	mov	rdi, qword ptr [rbp - 0x20]
	call	rpl_fclose
	cmp	eax, 0
	jne	.label_362
	mov	edi, dword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fdopen
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jne	.label_363
.label_362:
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
	jmp	.label_359
.label_363:
	jmp	.label_358
.label_358:
	jmp	.label_361
.label_361:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_359:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405910

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_368
	movabs	rdi, OFFSET FLAT:label_366
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_368:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_370
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_364
.label_370:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_364:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_367
	movabs	rsi, OFFSET FLAT:label_371
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_367
	movabs	rsi, OFFSET FLAT:label_369
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_365
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_365:
	jmp	.label_367
.label_367:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405a30
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
	je	.label_372
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_373
.label_372:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_373
.label_373:
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
	#Procedure 0x405ab0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_374
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_375
.label_374:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_375
.label_375:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405af0
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
	je	.label_376
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_377
.label_376:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_377
.label_377:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405b40

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
	je	.label_378
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_379
.label_378:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_379
.label_379:
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
	#Procedure 0x405bf0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_380
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_380:
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
	#Procedure 0x405c30

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
	jne	.label_381
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_381:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_383
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_382
.label_383:
	call	abort
.label_382:
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
	#Procedure 0x405ca0
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
	je	.label_384
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_385
.label_384:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_385
.label_385:
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
	#Procedure 0x405d70

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
.label_581:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_492
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_499]]
	jmp	rcx
.label_881:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_880:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_507
	jmp	.label_509
.label_509:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_510
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_510:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_507
.label_507:
	movabs	rax, OFFSET FLAT:label_520
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_521
.label_882:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_521
.label_883:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_529
	movabs	rdi, OFFSET FLAT:label_392
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_536
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_529:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_416
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_558:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_544
	jmp	.label_547
.label_547:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_549
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_549:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_554
.label_554:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_558
.label_544:
	jmp	.label_416
.label_416:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_521
.label_878:
	mov	byte ptr [rbp - 0x79], 1
.label_877:
	mov	byte ptr [rbp - 0x7b], 1
.label_879:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_567
	mov	byte ptr [rbp - 0x79], 1
.label_567:
	jmp	.label_569
.label_569:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_570
	jmp	.label_573
.label_573:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_464
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_464:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_570
.label_570:
	movabs	rax, OFFSET FLAT:label_536
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_521
.label_876:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_521
.label_492:
	call	abort
.label_521:
	mov	qword ptr [rbp - 0x58], 0
.label_556:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_575
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_589
.label_575:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_589:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_399
	jmp	.label_483
.label_399:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_408
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_408
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_408
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_420
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_420
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_430
.label_420:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_430:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_408
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_408
	test	byte ptr [rbp - 0x7b], 1
	je	.label_442
	jmp	.label_406
.label_442:
	mov	byte ptr [rbp - 0x81], 1
.label_408:
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
	ja	.label_447
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_454]]
	jmp	rcx
.label_833:
	test	byte ptr [rbp - 0x79], 1
	je	.label_456
	jmp	.label_461
.label_461:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_463
	jmp	.label_406
.label_463:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_444
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_444
	jmp	.label_476
.label_476:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_473
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_473:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_477
.label_477:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_455
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_455:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_568
.label_568:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_489
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_489:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_444:
	jmp	.label_500
.label_500:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_502
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_502:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_470
.label_470:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_512
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_512
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_512
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_512
	jmp	.label_527
.label_527:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_582
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_582:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_535
.label_535:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_437
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_437:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_512
.label_512:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_548
.label_456:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_497
	jmp	.label_518
.label_497:
	jmp	.label_548
.label_548:
	jmp	.label_418
.label_844:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_555
	jmp	.label_561
.label_561:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_562
	jmp	.label_564
.label_555:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_395
	jmp	.label_406
.label_395:
	jmp	.label_446
.label_562:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_439
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_439
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_439
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_388
	jmp	.label_580
.label_580:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_388
	jmp	.label_585
.label_585:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_388
	jmp	.label_386
.label_386:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_388
	jmp	.label_576
.label_576:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_394
	jmp	.label_388
.label_388:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_402
	jmp	.label_406
.label_402:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_407
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_407:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_417
.label_417:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_422
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_422:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_426
.label_426:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_414
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_414:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_436
.label_436:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_513
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_513:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_441
.label_394:
	jmp	.label_441
.label_441:
	jmp	.label_439
.label_439:
	jmp	.label_446
.label_564:
	jmp	.label_446
.label_446:
	jmp	.label_418
.label_834:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_448
.label_835:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_448
.label_839:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_448
.label_837:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_452
.label_840:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_452
.label_836:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_452
.label_838:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_448
.label_845:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_459
	test	byte ptr [rbp - 0x7b], 1
	je	.label_466
	jmp	.label_406
.label_466:
	jmp	.label_431
.label_459:
	test	byte ptr [rbp - 0x79], 1
	je	.label_469
	test	byte ptr [rbp - 0x7b], 1
	je	.label_469
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_469
	jmp	.label_431
.label_469:
	jmp	.label_452
.label_452:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_475
	test	byte ptr [rbp - 0x7b], 1
	je	.label_475
	jmp	.label_406
.label_475:
	jmp	.label_448
.label_448:
	test	byte ptr [rbp - 0x79], 1
	je	.label_481
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_465
.label_481:
	jmp	.label_418
.label_846:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_486
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_490
	jmp	.label_494
.label_486:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_490
.label_494:
	jmp	.label_418
.label_490:
	jmp	.label_498
.label_498:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_501
	jmp	.label_418
.label_501:
	jmp	.label_504
.label_504:
	mov	byte ptr [rbp - 0x83], 1
.label_841:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_508
	test	byte ptr [rbp - 0x7b], 1
	je	.label_508
	jmp	.label_406
.label_508:
	jmp	.label_418
.label_843:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_514
	test	byte ptr [rbp - 0x7b], 1
	je	.label_519
	jmp	.label_406
.label_519:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_523
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_523
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_523:
	jmp	.label_531
.label_531:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_533
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_533:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_538
.label_538:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_540
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_540:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_546
.label_546:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_552
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_552:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_514:
	jmp	.label_418
.label_842:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_418
.label_447:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_571
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
	jmp	.label_453
.label_571:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_577
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_577:
	jmp	.label_491
.label_491:
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
	jne	.label_390
	jmp	.label_400
.label_390:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_398
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_400
.label_398:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_404
	mov	byte ptr [rbp - 0x91], 0
.label_427:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_409
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_409:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_424
	jmp	.label_425
.label_424:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_427
.label_425:
	jmp	.label_400
.label_404:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_434
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_434
	mov	qword ptr [rbp - 0xb8], 1
.label_471:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_438
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
	jb	.label_435
	jmp	.label_451
.label_451:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_435
	jmp	.label_584
.label_584:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_435
	jmp	.label_458
.label_458:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_460
	jmp	.label_435
.label_435:
	jmp	.label_406
.label_460:
	jmp	.label_487
.label_487:
	jmp	.label_525
.label_525:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_471
.label_438:
	jmp	.label_434
.label_434:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_478
	mov	byte ptr [rbp - 0x91], 0
.label_478:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_480
.label_480:
	jmp	.label_484
.label_484:
	jmp	.label_485
.label_485:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_491
.label_400:
	jmp	.label_453
.label_453:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_496
	test	byte ptr [rbp - 0x79], 1
	je	.label_506
	test	byte ptr [rbp - 0x91], 1
	jne	.label_506
.label_496:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_449:
	test	byte ptr [rbp - 0x79], 1
	je	.label_515
	test	byte ptr [rbp - 0x91], 1
	jne	.label_515
	jmp	.label_468
.label_468:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_522
	jmp	.label_406
.label_522:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_526
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_526
	jmp	.label_530
.label_530:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_532
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_532:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_537
.label_537:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_539
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_539:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_545
.label_545:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_550
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_550:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_526:
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
	jmp	.label_563
.label_563:
	jmp	.label_565
.label_565:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_566
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_566:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_572
.label_572:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_574
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_574:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_393
.label_515:
	test	byte ptr [rbp - 0x81], 1
	je	.label_583
	jmp	.label_586
.label_586:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_588
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_588:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_583:
	jmp	.label_393
.label_393:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_396
	jmp	.label_401
.label_396:
	jmp	.label_403
.label_403:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_405
	test	byte ptr [rbp - 0x82], 1
	jne	.label_405
	jmp	.label_410
.label_410:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_412
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_412:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_415
.label_415:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_421
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_421:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_405:
	jmp	.label_428
.label_428:
	jmp	.label_429
.label_429:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_432
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_432:
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
	jmp	.label_449
.label_401:
	jmp	.label_431
.label_506:
	jmp	.label_418
.label_418:
	test	byte ptr [rbp - 0x79], 1
	je	.label_443
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_445
.label_443:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_450
.label_445:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_450
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
	jne	.label_457
.label_450:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_457
	jmp	.label_431
.label_457:
	jmp	.label_465
.label_465:
	jmp	.label_440
.label_440:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_467
	jmp	.label_406
.label_467:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_462
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_462
	jmp	.label_495
.label_495:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_474
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_474:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_479
.label_479:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_482
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_482:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_488
.label_488:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_493
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_493:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_462:
	jmp	.label_503
.label_503:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_505
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_505:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_511
.label_511:
	jmp	.label_431
.label_431:
	jmp	.label_517
.label_517:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_516
	test	byte ptr [rbp - 0x82], 1
	jne	.label_516
	jmp	.label_553
.label_553:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_524
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_524:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_528
.label_528:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_534
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_534:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_516:
	jmp	.label_541
.label_541:
	jmp	.label_542
.label_542:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_543
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_543:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_551
	mov	byte ptr [rbp - 0x7e], 0
.label_551:
	jmp	.label_518
.label_518:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_556
.label_483:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_560
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_560
	test	byte ptr [rbp - 0x7b], 1
	je	.label_560
	jmp	.label_406
.label_560:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_411
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_411
	test	byte ptr [rbp - 0x7d], 1
	je	.label_411
	test	byte ptr [rbp - 0x7e], 1
	je	.label_578
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
	jmp	.label_419
.label_578:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_579
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_579
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_581
.label_579:
	jmp	.label_587
.label_587:
	jmp	.label_411
.label_411:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_387
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_387
	jmp	.label_389
.label_389:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_391
	jmp	.label_433
.label_433:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_397
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_397:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_472
.label_472:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_389
.label_391:
	jmp	.label_387
.label_387:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_413
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_413:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_419
.label_406:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_423
	test	byte ptr [rbp - 0x79], 1
	je	.label_423
	mov	dword ptr [rbp - 0x34], 4
.label_423:
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
.label_419:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407110
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
	#Procedure 0x407150

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
	je	.label_590
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_591
.label_590:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_591
.label_591:
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
	je	.label_592
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_592:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4072b0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_596:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_595
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_596
.label_595:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_597
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_594]],  rax
.label_597:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_593
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_593:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407390

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
	#Procedure 0x4073d0

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
	jge	.label_603
	call	abort
.label_603:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_601
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_598
	call	xalloc_die
.label_598:
	test	byte ptr [rbp - 0x31], 1
	je	.label_600
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_602
.label_600:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_602:
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
	je	.label_605
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_594]]
	mov	qword ptr [rax + 8], rcx
.label_605:
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
.label_601:
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
	ja	.label_604
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_599
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_599:
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
.label_604:
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
	#Procedure 0x407650

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
	#Procedure 0x407690
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
	#Procedure 0x4076b0
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
	#Procedure 0x4076e0

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
	#Procedure 0x407720

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
	jne	.label_606
	call	abort
.label_606:
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
	#Procedure 0x407790

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
	#Procedure 0x4077d0
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
	#Procedure 0x407800
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
	#Procedure 0x407830

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
	#Procedure 0x4078b0

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
	#Procedure 0x4078e0

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
	#Procedure 0x407900
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
	#Procedure 0x407930

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
	#Procedure 0x4079e0

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
	#Procedure 0x407a20

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
	#Procedure 0x407aa0
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
	#Procedure 0x407ad0
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
	#Procedure 0x407b10

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
	#Procedure 0x407b50
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
	#Procedure 0x407b80

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
	#Procedure 0x407bb0
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
	#Procedure 0x407bd0

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
	je	.label_608
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_613
.label_608:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_609
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_607
	movabs	rax, OFFSET FLAT:label_611
	movabs	rcx, OFFSET FLAT:label_612
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_613
.label_607:
	movabs	rsi, OFFSET FLAT:label_616
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_610
	movabs	rax, OFFSET FLAT:label_614
	movabs	rcx, OFFSET FLAT:label_615
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_613
.label_610:
	movabs	rax, OFFSET FLAT:label_536
	movabs	rcx, OFFSET FLAT:label_520
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_613:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407cd0

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
	.align	32
	#Procedure 0x407d00

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
	je	.label_617
	movabs	rsi, OFFSET FLAT:label_633
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_624
.label_617:
	movabs	rsi, OFFSET FLAT:label_625
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_624:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_634
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
	mov	ecx, OFFSET FLAT:label_628
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
	ja	.label_621
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_629]]
	jmp	rcx
.label_817:
	jmp	.label_620
.label_818:
	movabs	rdi, OFFSET FLAT:label_635
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
	jmp	.label_620
.label_819:
	movabs	rdi, OFFSET FLAT:label_632
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
	jmp	.label_620
.label_820:
	movabs	rdi, OFFSET FLAT:label_631
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
	jmp	.label_620
.label_821:
	movabs	rdi, OFFSET FLAT:label_627
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
	jmp	.label_620
.label_822:
	movabs	rdi, OFFSET FLAT:label_623
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
	jmp	.label_620
.label_823:
	movabs	rdi, OFFSET FLAT:label_618
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
	jmp	.label_620
.label_824:
	movabs	rdi, OFFSET FLAT:label_622
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
	jmp	.label_620
.label_825:
	movabs	rdi, OFFSET FLAT:label_630
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
	jmp	.label_620
.label_826:
	movabs	rdi, OFFSET FLAT:label_626
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
	jmp	.label_620
.label_621:
	movabs	rdi, OFFSET FLAT:label_619
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
.label_620:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4082c0
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
.label_638:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_636
	jmp	.label_637
.label_637:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_638
.label_636:
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
	#Procedure 0x408330

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
.label_639:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_643
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_641
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_640
.label_641:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_640:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_643:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_645
	jmp	.label_644
.label_645:
	jmp	.label_642
.label_642:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_639
.label_644:
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
	#Procedure 0x408440

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
	je	.label_646
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
.label_646:
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
	#Procedure 0x4085b0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_647
	call	gettext
	movabs	rsi, OFFSET FLAT:label_649
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_648
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_38
	movabs	rdx, OFFSET FLAT:label_27
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_650
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
	#Procedure 0x408640
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
	jae	.label_651
	call	xalloc_die
.label_651:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408690

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
	jne	.label_652
	cmp	qword ptr [rbp - 8], 0
	je	.label_652
	call	xalloc_die
.label_652:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4086d0
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
	jae	.label_653
	call	xalloc_die
.label_653:
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
	#Procedure 0x408720

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_654
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_654
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_656
.label_654:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_655
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_655
	call	xalloc_die
.label_655:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_656:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4087a0

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
	jne	.label_657
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_660
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
.label_660:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_658
	call	xalloc_die
.label_658:
	jmp	.label_659
.label_657:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_661
	call	xalloc_die
.label_661:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_659:
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
	#Procedure 0x408890

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
	#Procedure 0x4088b0
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
	#Procedure 0x4088e0
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
	#Procedure 0x408920
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
	jb	.label_662
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_663
.label_662:
	call	xalloc_die
.label_663:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408980

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
	#Procedure 0x4089c0
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
	#Procedure 0x408a00

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_664
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_117
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x408a40

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
	jge	.label_665
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_668
.label_665:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_666
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_667
.label_666:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_667
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_667:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_669
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_669:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_668:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408b10

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
	je	.label_679
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
.label_679:
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
	je	.label_696
	jmp	.label_675
.label_675:
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_699
	jmp	.label_674
.label_696:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_677
	mov	eax, dword ptr [rbp - 0x1b4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1c0], rcx
	jmp	.label_686
.label_677:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_686:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_670
.label_699:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1c8], rax
	mov	dword ptr [rbp - 0x1cc], ecx
	ja	.label_676
	mov	eax, dword ptr [rbp - 0x1cc]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1d8], rcx
	jmp	.label_684
.label_676:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_684:
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x2c]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_670
.label_674:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	mov	dword ptr [rbp - 0x1dc], eax
	je	.label_673
	jmp	.label_681
.label_681:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	mov	dword ptr [rbp - 0x1e0], eax
	je	.label_682
	jmp	.label_689
.label_689:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_673
	jmp	.label_692
.label_692:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	mov	dword ptr [rbp - 0x1e8], eax
	je	.label_682
	jmp	.label_697
.label_697:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	mov	dword ptr [rbp - 0x1ec], eax
	je	.label_673
	jmp	.label_671
.label_671:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	je	.label_673
	jmp	.label_685
.label_685:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_682
	jmp	.label_690
.label_690:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_673
	jmp	.label_693
.label_693:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xb
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_682
	jmp	.label_698
.label_698:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	dword ptr [rbp - 0x200], eax
	je	.label_673
	jmp	.label_672
.label_672:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_682
	jmp	.label_683
.label_683:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x402
	mov	dword ptr [rbp - 0x208], eax
	je	.label_673
	jmp	.label_691
.label_691:
	mov	eax, dword ptr [rbp - 0x1dc]
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_673
	jmp	.label_694
.label_694:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	jne	.label_695
	jmp	.label_682
.label_682:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_678
.label_673:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	dword ptr [rbp - 0x21c], ecx
	ja	.label_700
	mov	eax, dword ptr [rbp - 0x21c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x218]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x228], rcx
	jmp	.label_687
.label_700:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x228], rdx
.label_687:
	mov	rax, qword ptr [rbp - 0x228]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x30]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_678
.label_695:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x230], rax
	mov	dword ptr [rbp - 0x234], ecx
	ja	.label_680
	mov	eax, dword ptr [rbp - 0x234]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x230]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x240], rcx
	jmp	.label_688
.label_680:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x240], rdx
.label_688:
	mov	rax, qword ptr [rbp - 0x240]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
.label_678:
	jmp	.label_670
.label_670:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x240
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409030

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
	.align	32
	#Procedure 0x409060

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
	jg	.label_706
	mov	esi, 0x406
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	xor	edx, edx
	mov	dword ptr [rbp - 0xc], eax
	cmp	edx, dword ptr [rbp - 0xc]
	jle	.label_704
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_707
.label_704:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_705
.label_707:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	jl	.label_703
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_703:
	jmp	.label_705
.label_705:
	jmp	.label_708
.label_706:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
.label_708:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_701
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_701
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x10], eax
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_709
	mov	esi, 2
	mov	edi, dword ptr [rbp - 0xc]
	mov	eax, dword ptr [rbp - 0x10]
	or	eax, 1
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_702
.label_709:
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
.label_702:
	jmp	.label_701
.label_701:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409190

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_710
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_711
.label_710:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_712
.label_711:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_712:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4091f0

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
	je	.label_713
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_713:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409230

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
	jne	.label_714
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_714
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_714
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_716
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_715
.label_716:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_715
.label_714:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_715:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409300

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
	jne	.label_717
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_717:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_718
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_718
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_718
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_719
.label_718:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_719:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4093b0

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
	jne	.label_720
	mov	dword ptr [rbp - 4], 0
	jmp	.label_724
.label_720:
	jmp	.label_721
.label_721:
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
	jne	.label_723
	jmp	.label_722
.label_723:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_721
.label_722:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_724:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409470

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
	jne	.label_725
	test	byte ptr [rbp - 0x13], 1
	je	.label_726
	test	byte ptr [rbp - 0x11], 1
	jne	.label_725
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_726
.label_725:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_727
	call	__errno_location
	mov	dword ptr [rax], 0
.label_727:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_728
.label_726:
	mov	dword ptr [rbp - 4], 0
.label_728:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409520

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
	je	.label_729
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_732
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_733
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_730
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_731
.label_733:
	mov	byte ptr [rbp - 5], 0
.label_731:
	jmp	.label_729
.label_729:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4095a0

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
	jne	.label_734
	movabs	rax, OFFSET FLAT:label_35
	mov	qword ptr [rbp - 8], rax
.label_734:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_735
	movabs	rax, OFFSET FLAT:label_736
	mov	qword ptr [rbp - 8], rax
.label_735:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409600

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
	ja	.label_737
	jmp	.label_739
.label_739:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_738
.label_737:
	jmp	.label_738
.label_738:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409650
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
	jb	.label_740
	jmp	.label_743
.label_743:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_740
	jmp	.label_741
.label_741:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_742
	jmp	.label_740
.label_740:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_744
.label_742:
	mov	byte ptr [rbp - 1], 0
.label_744:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4096c0
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
	jb	.label_745
	jmp	.label_748
.label_748:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_746
	jmp	.label_745
.label_745:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_747
.label_746:
	mov	byte ptr [rbp - 1], 0
.label_747:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409710
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_749
	jmp	.label_750
.label_750:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_751
.label_749:
	mov	byte ptr [rbp - 1], 0
.label_751:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409740
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_752
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_752:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409770
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
	jb	.label_753
	jmp	.label_755
.label_755:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_756
	jmp	.label_753
.label_753:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_754
.label_756:
	mov	byte ptr [rbp - 1], 0
.label_754:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4097c0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_757
	jmp	.label_759
.label_759:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_758
.label_757:
	mov	byte ptr [rbp - 1], 0
.label_758:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409800
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_760
	jmp	.label_762
.label_762:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_761
.label_760:
	mov	byte ptr [rbp - 1], 0
.label_761:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409840
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_763
	jmp	.label_765
.label_765:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_764
.label_763:
	mov	byte ptr [rbp - 1], 0
.label_764:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409880
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_766
	jmp	.label_768
.label_768:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_767
.label_766:
	mov	byte ptr [rbp - 1], 0
.label_767:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4098c0
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
	ja	.label_769
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_771]]
	jmp	rcx
.label_907:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_770
.label_769:
	mov	byte ptr [rbp - 1], 0
.label_770:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409910
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
	jb	.label_772
	jmp	.label_774
.label_774:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_775
	jmp	.label_772
.label_772:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_773
.label_775:
	mov	byte ptr [rbp - 1], 0
.label_773:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409960
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_776
	jmp	.label_778
.label_778:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_777
.label_776:
	mov	byte ptr [rbp - 1], 0
.label_777:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4099a0
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
	jb	.label_779
	jmp	.label_782
.label_782:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_779
	jmp	.label_780
.label_780:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_781
	jmp	.label_779
.label_779:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_783
.label_781:
	mov	byte ptr [rbp - 1], 0
.label_783:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409a10

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_784
	jmp	.label_786
.label_786:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_785
.label_784:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_785:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409a50
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_787
	jmp	.label_789
.label_789:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_788
.label_787:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_788:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
