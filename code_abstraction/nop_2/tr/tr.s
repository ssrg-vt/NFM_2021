	.section	.text
	.align	16
	#Procedure 0x4015f0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_8
	jmp	.label_7
.label_7:
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
	jmp	.label_9
.label_8:
	movabs	rdi, OFFSET FLAT:.str.1
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.2
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.3
	mov	dword ptr [rbp - 0x1c], eax
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
	call	emit_ancillary_info
.label_9:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x401770

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
.label_12:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_11
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_11:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_10
	jmp	.label_13
.label_10:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_12
.label_13:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_14
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_14:
	movabs	rdi, OFFSET FLAT:.str.37
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18
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
	je	.label_15
	movabs	rsi, OFFSET FLAT:.str.39
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_15
	movabs	rdi, OFFSET FLAT:.str.40
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_15:
	movabs	rdi, OFFSET FLAT:.str.41
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.42
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.43
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
	#Procedure 0x401910

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
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.11
	movabs	rsi, OFFSET FLAT:.str.12
	mov	qword ptr [rbp - 0xe8], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.11
	mov	qword ptr [rbp - 0xf0], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0xf8], rax
	call	atexit
	mov	dword ptr [rbp - 0xfc], eax
.label_81:
	movabs	rdx, OFFSET FLAT:.str.13
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, -1
	je	.label_93
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x100], eax
	mov	dword ptr [rbp - 0x104], ecx
	je	.label_95
	jmp	.label_16
.label_16:
	mov	eax, dword ptr [rbp - 0x100]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x108], eax
	je	.label_18
	jmp	.label_90
.label_90:
	mov	eax, dword ptr [rbp - 0x100]
	sub	eax, 0x41
	mov	dword ptr [rbp - 0x10c], eax
	je	.label_62
	jmp	.label_28
.label_28:
	mov	eax, dword ptr [rbp - 0x100]
	sub	eax, 0x43
	mov	dword ptr [rbp - 0x110], eax
	je	.label_29
	jmp	.label_33
.label_33:
	mov	eax, dword ptr [rbp - 0x100]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x114], eax
	je	.label_29
	jmp	.label_39
.label_39:
	mov	eax, dword ptr [rbp - 0x100]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0x118], eax
	je	.label_41
	jmp	.label_45
.label_45:
	mov	eax, dword ptr [rbp - 0x100]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x11c], eax
	je	.label_46
	jmp	.label_51
.label_51:
	mov	eax, dword ptr [rbp - 0x100]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x120], eax
	je	.label_52
	jmp	.label_56
.label_62:
	mov	edi, 3
	movabs	rsi, OFFSET FLAT:.str_2
	call	setlocale
	xor	edi, edi
	movabs	rsi, OFFSET FLAT:.str_2
	mov	qword ptr [rbp - 0x128], rax
	call	setlocale
	mov	qword ptr [rbp - 0x130], rax
	jmp	.label_64
.label_29:
	mov	byte ptr [byte ptr [complement]],  1
	jmp	.label_64
.label_41:
	mov	byte ptr [byte ptr [delete]],  1
	jmp	.label_64
.label_46:
	mov	byte ptr [byte ptr [squeeze_repeats]],  1
	jmp	.label_64
.label_52:
	mov	byte ptr [byte ptr [truncate_set1]],  1
	jmp	.label_64
.label_18:
	xor	edi, edi
	call	usage
.label_95:
	movabs	rsi, OFFSET FLAT:.str.9
	movabs	rdx, OFFSET FLAT:.str.17
	movabs	r8, OFFSET FLAT:.str.16
	xor	eax, eax
	mov	r9d, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_56:
	mov	edi, 1
	call	usage
.label_64:
	jmp	.label_81
.label_93:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 8]
	sub	eax,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 0x18], eax
	cmp	dword ptr [rbp - 0x18], 2
	mov	byte ptr [rbp - 0x131], cl
	jne	.label_68
	mov	al,  byte ptr [byte ptr [delete]]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x131], al
.label_68:
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
	jge	.label_86
	cmp	dword ptr [rbp - 0x18], 0
	jne	.label_24
	movabs	rdi, OFFSET FLAT:.str.17_0
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	jmp	.label_31
.label_24:
	movabs	rdi, OFFSET FLAT:.str.18_0
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
	movabs	rcx, OFFSET FLAT:.str.21
	movabs	rdx, OFFSET FLAT:.str.20
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al,  byte ptr [byte ptr [squeeze_repeats]]
	test	al, 1
	cmovne	rcx, rdx
	mov	qword ptr [rbp - 0x148], rdi
	mov	rdi, rcx
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.19
	mov	rdi, qword ptr [rbp - 0x148]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14c], eax
.label_31:
	mov	edi, 1
	call	usage
.label_86:
	mov	eax, dword ptr [rbp - 0x20]
	cmp	eax, dword ptr [rbp - 0x18]
	jge	.label_94
	movabs	rdi, OFFSET FLAT:.str.22
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
	jne	.label_73
	movabs	rdi, OFFSET FLAT:.str.23
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x160], rax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.19
	mov	rdi, qword ptr [rbp - 0x160]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x164], eax
.label_73:
	mov	edi, 1
	call	usage
.label_94:
	mov	rdi, qword ptr [rbp - 0x98]
	call	spec_init
	movsxd	rdi,  dword ptr [dword ptr [optind]]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + rdi*8]
	mov	rsi, qword ptr [rbp - 0x98]
	call	parse_str
	test	al, 1
	jne	.label_89
	mov	dword ptr [rbp - 4], 1
	jmp	.label_21
.label_89:
	cmp	dword ptr [rbp - 0x18], 2
	jne	.label_92
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
	jne	.label_19
	mov	dword ptr [rbp - 4], 1
	jmp	.label_21
.label_19:
	jmp	.label_25
.label_92:
	mov	qword ptr [rbp - 0xa0], 0
.label_25:
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
	je	.label_37
	cmp	dword ptr [rbp - 0x18], 1
	jne	.label_37
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
	jmp	.label_59
.label_37:
	test	byte ptr [byte ptr [delete]],  1
	je	.label_60
	cmp	dword ptr [rbp - 0x18], 1
	jne	.label_60
	movabs	rdx, OFFSET FLAT:in_delete_set
	mov	rdi, qword ptr [rbp - 0x98]
	mov	al,  byte ptr [byte ptr [complement]]
	and	al, 1
	movzx	esi, al
	call	set_initialize
.label_82:
	movabs	rdi, OFFSET FLAT:io_buf
	mov	eax, 0x2000
	mov	esi, eax
	call	read_and_delete
	mov	qword ptr [rbp - 0xa8], rax
	cmp	qword ptr [rbp - 0xa8], 0
	jne	.label_69
	jmp	.label_70
.label_69:
	movabs	rdi, OFFSET FLAT:io_buf
	mov	eax, 1
	mov	esi, eax
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rcx,  qword ptr [word ptr [stdout]]
	call	fwrite_unlocked
	cmp	rax, qword ptr [rbp - 0xa8]
	je	.label_76
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x168], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x168]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_76:
	jmp	.label_82
.label_70:
	jmp	.label_65
.label_60:
	test	byte ptr [byte ptr [squeeze_repeats]],  1
	je	.label_84
	test	byte ptr [byte ptr [delete]],  1
	je	.label_84
	cmp	dword ptr [rbp - 0x18], 2
	jne	.label_84
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
	jmp	.label_23
.label_84:
	test	byte ptr [byte ptr [translating]],  1
	je	.label_26
	test	byte ptr [byte ptr [complement]],  1
	je	.label_27
	xor	esi, esi
	movabs	rax, OFFSET FLAT:in_delete_set
	mov	qword ptr [rbp - 0xb0], rax
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0xb0]
	call	set_initialize
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rax + 0x10], -2
	mov	dword ptr [rbp - 0xb4], 0
.label_47:
	cmp	dword ptr [rbp - 0xb4], 0x100
	jge	.label_43
	mov	eax, dword ptr [rbp - 0xb4]
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0xb4]
	mov	byte ptr [byte ptr [+ (rdx * 1) + xlate]],  cl
	mov	eax, dword ptr [rbp - 0xb4]
	add	eax, 1
	mov	dword ptr [rbp - 0xb4], eax
	jmp	.label_47
.label_43:
	mov	dword ptr [rbp - 0xb8], 0
.label_54:
	cmp	dword ptr [rbp - 0xb8], 0x100
	jge	.label_58
	movsxd	rax, dword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0xb0]
	test	byte ptr [rcx + rax], 1
	jne	.label_61
	xor	eax, eax
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0xa0]
	call	get_next
	mov	dword ptr [rbp - 0xbc], eax
	cmp	dword ptr [rbp - 0xbc], -1
	jne	.label_66
	test	byte ptr [byte ptr [truncate_set1]],  1
	je	.label_67
.label_66:
	jmp	.label_49
.label_67:
	movabs	rdi, OFFSET FLAT:.str.25
	movabs	rsi, OFFSET FLAT:.str.26
	mov	edx, 0x72d
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	call	__assert_fail
.label_49:
	cmp	dword ptr [rbp - 0xbc], -1
	jne	.label_74
	jmp	.label_58
.label_74:
	mov	eax, dword ptr [rbp - 0xbc]
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0xb8]
	mov	byte ptr [byte ptr [+ (rdx * 1) + xlate]],  cl
.label_61:
	jmp	.label_79
.label_79:
	mov	eax, dword ptr [rbp - 0xb8]
	add	eax, 1
	mov	dword ptr [rbp - 0xb8], eax
	jmp	.label_54
.label_58:
	jmp	.label_17
.label_27:
	mov	dword ptr [rbp - 0xd0], 0
.label_85:
	cmp	dword ptr [rbp - 0xd0], 0x100
	jge	.label_83
	mov	eax, dword ptr [rbp - 0xd0]
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0xd0]
	mov	byte ptr [byte ptr [+ (rdx * 1) + xlate]],  cl
	mov	eax, dword ptr [rbp - 0xd0]
	add	eax, 1
	mov	dword ptr [rbp - 0xd0], eax
	jmp	.label_85
.label_83:
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rax + 0x10], -2
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rax + 0x10], -2
.label_87:
	lea	rsi, [rbp - 0xc8]
	mov	rdi, qword ptr [rbp - 0x98]
	call	get_next
	lea	rsi, [rbp - 0xcc]
	mov	dword ptr [rbp - 0xc0], eax
	mov	rdi, qword ptr [rbp - 0xa0]
	call	get_next
	mov	dword ptr [rbp - 0xc4], eax
	cmp	dword ptr [rbp - 0xc8], 0
	jne	.label_22
	cmp	dword ptr [rbp - 0xcc], 1
	jne	.label_22
	mov	dword ptr [rbp - 0xd4], 0
.label_34:
	cmp	dword ptr [rbp - 0xd4], 0x100
	jge	.label_30
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	qword ptr [rbp - 0x170], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x170]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x200
	cmp	edx, 0
	je	.label_38
	mov	edi, dword ptr [rbp - 0xd4]
	call	toupper
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0xd4]
	mov	byte ptr [byte ptr [+ (rdx * 1) + xlate]],  cl
.label_38:
	jmp	.label_50
.label_50:
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_34
.label_30:
	jmp	.label_55
.label_22:
	cmp	dword ptr [rbp - 0xc8], 1
	jne	.label_57
	cmp	dword ptr [rbp - 0xcc], 0
	jne	.label_57
	mov	dword ptr [rbp - 0xd8], 0
.label_72:
	cmp	dword ptr [rbp - 0xd8], 0x100
	jge	.label_63
	movsxd	rax, dword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x178], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x178]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x100
	cmp	edx, 0
	je	.label_96
	mov	edi, dword ptr [rbp - 0xd8]
	call	tolower
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0xd8]
	mov	byte ptr [byte ptr [+ (rdx * 1) + xlate]],  cl
.label_96:
	jmp	.label_71
.label_71:
	mov	eax, dword ptr [rbp - 0xd8]
	add	eax, 1
	mov	dword ptr [rbp - 0xd8], eax
	jmp	.label_72
.label_63:
	jmp	.label_75
.label_57:
	cmp	dword ptr [rbp - 0xc0], -1
	je	.label_77
	cmp	dword ptr [rbp - 0xc4], -1
	jne	.label_78
.label_77:
	jmp	.label_80
.label_78:
	mov	eax, dword ptr [rbp - 0xc4]
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0xc0]
	mov	byte ptr [byte ptr [+ (rdx * 1) + xlate]],  cl
.label_75:
	jmp	.label_55
.label_55:
	cmp	dword ptr [rbp - 0xcc], 2
	je	.label_42
	mov	rdi, qword ptr [rbp - 0x98]
	call	skip_construct
	mov	rdi, qword ptr [rbp - 0xa0]
	call	skip_construct
.label_42:
	jmp	.label_87
.label_80:
	cmp	dword ptr [rbp - 0xc0], -1
	je	.label_88
	test	byte ptr [byte ptr [truncate_set1]],  1
	je	.label_91
.label_88:
	jmp	.label_48
.label_91:
	movabs	rdi, OFFSET FLAT:.str.27
	movabs	rsi, OFFSET FLAT:.str.26
	mov	edx, 0x762
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	call	__assert_fail
.label_48:
	jmp	.label_17
.label_17:
	test	byte ptr [byte ptr [squeeze_repeats]],  1
	je	.label_20
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:in_squeeze_set
	mov	rdi, qword ptr [rbp - 0xa0]
	call	set_initialize
	movabs	rdi, OFFSET FLAT:io_buf
	mov	esi, 0x2000
	movabs	rdx, OFFSET FLAT:read_and_xlate
	call	squeeze_filter
	jmp	.label_32
.label_20:
	jmp	.label_35
.label_35:
	movabs	rdi, OFFSET FLAT:io_buf
	mov	eax, 0x2000
	mov	esi, eax
	call	read_and_xlate
	mov	qword ptr [rbp - 0xe0], rax
	cmp	qword ptr [rbp - 0xe0], 0
	jne	.label_40
	jmp	.label_44
.label_40:
	movabs	rdi, OFFSET FLAT:io_buf
	mov	eax, 1
	mov	esi, eax
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rcx,  qword ptr [word ptr [stdout]]
	call	fwrite_unlocked
	cmp	rax, qword ptr [rbp - 0xe0]
	je	.label_53
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x17c], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x17c]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_53:
	jmp	.label_35
.label_44:
	jmp	.label_32
.label_32:
	jmp	.label_26
.label_26:
	jmp	.label_23
.label_23:
	jmp	.label_65
.label_65:
	jmp	.label_59
.label_59:
	xor	edi, edi
	call	close
	cmp	eax, 0
	je	.label_36
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.28
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x180], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x180]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_36:
	mov	dword ptr [rbp - 4], 0
.label_21:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x180
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402560

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
	.align	16
	#Procedure 0x4025b0

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
	jne	.label_97
	jmp	.label_98
.label_97:
	lea	rdi, [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	call	build_spec_list
	mov	byte ptr [rbp - 0x2a], al
.label_98:
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
	.align	16
	#Procedure 0x402620

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
	jbe	.label_111
	movabs	rdi, OFFSET FLAT:.str.81
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_111:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_107
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rax + 0x18]
	call	get_s2_spec_stats
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x20], 1
	jbe	.label_102
	movabs	rdi, OFFSET FLAT:.str.82
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_102:
	test	byte ptr [byte ptr [translating]],  1
	je	.label_109
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x30], 1
	je	.label_100
	movabs	rdi, OFFSET FLAT:.str.83
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_100:
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x32], 1
	je	.label_108
	movabs	rdi, OFFSET FLAT:.str.84
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_108:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	validate_case_classes
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rdi + 0x18]
	jbe	.label_103
	test	byte ptr [byte ptr [truncate_set1]],  1
	jne	.label_99
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_104
	movabs	rdi, OFFSET FLAT:.str.85
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_104:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	string2_extend
.label_99:
	jmp	.label_103
.label_103:
	test	byte ptr [byte ptr [complement]],  1
	je	.label_105
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x31], 1
	je	.label_105
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x18]
	jne	.label_101
	mov	rdi, qword ptr [rbp - 0x10]
	call	homogeneous_spec_list
	test	al, 1
	jne	.label_105
.label_101:
	movabs	rdi, OFFSET FLAT:.str.86
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_105:
	jmp	.label_106
.label_109:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x20], 0
	jbe	.label_110
	movabs	rdi, OFFSET FLAT:.str.87
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_110:
	jmp	.label_106
.label_106:
	jmp	.label_107
.label_107:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402840

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
.label_116:
	xor	eax, eax
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 8]
	call	get_next
	mov	dword ptr [rbp - 0x1c], eax
	cmp	eax, -1
	je	.label_112
	movsxd	rax, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 1
	jmp	.label_116
.label_112:
	test	byte ptr [rbp - 9], 1
	je	.label_113
	mov	qword ptr [rbp - 0x28], 0
.label_114:
	cmp	qword ptr [rbp - 0x28], 0x100
	jae	.label_115
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
	jmp	.label_114
.label_115:
	jmp	.label_113
.label_113:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4028f0

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
.label_138:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jb	.label_123
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	rax
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_129
	jmp	.label_132
.label_129:
	mov	qword ptr [rbp - 0x28], 0
.label_123:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	cmp	dword ptr [rbp - 0x20], 0x7fffffff
	jne	.label_133
	jmp	.label_121
.label_121:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x41], cl
	jae	.label_136
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + in_squeeze_set]]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x41], al
.label_136:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_124
	jmp	.label_126
.label_124:
	jmp	.label_135
.label_135:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 2
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_121
.label_126:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_127
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	test	byte ptr [byte ptr [+ (rcx * 1) + in_squeeze_set]],  1
	je	.label_127
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
.label_127:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jb	.label_120
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_122
.label_120:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x20], edx
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x28], 0
	jbe	.label_125
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, dword ptr [rbp - 0x20]
	jne	.label_125
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, -1
	mov	qword ptr [rbp - 0x40], rax
.label_125:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_122:
	cmp	qword ptr [rbp - 0x40], 0
	jbe	.label_118
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
	je	.label_118
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x54]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_118:
	jmp	.label_133
.label_133:
	cmp	dword ptr [rbp - 0x20], 0x7fffffff
	je	.label_137
	jmp	.label_117
.label_117:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x55], cl
	jae	.label_119
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, dword ptr [rbp - 0x20]
	sete	sil
	mov	byte ptr [rbp - 0x55], sil
.label_119:
	mov	al, byte ptr [rbp - 0x55]
	test	al, 1
	jne	.label_128
	jmp	.label_130
.label_128:
	jmp	.label_131
.label_131:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_117
.label_130:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_134
	mov	dword ptr [rbp - 0x20], 0x7fffffff
.label_134:
	jmp	.label_137
.label_137:
	jmp	.label_138
.label_132:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b90

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
	jne	.label_139
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.96
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1c], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_139:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c00

	.globl read_and_delete
	.type read_and_delete, @function
read_and_delete:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
.label_150:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	plain_read
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_149
	mov	qword ptr [rbp - 8], 0
	jmp	.label_144
.label_149:
	mov	qword ptr [rbp - 0x30], 0
.label_146:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	rdx, qword ptr [rbp - 0x28]
	mov	byte ptr [rbp - 0x31], cl
	jae	.label_140
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + in_delete_set]]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x31], al
.label_140:
	mov	al, byte ptr [rbp - 0x31]
	test	al, 1
	jne	.label_152
	jmp	.label_141
.label_152:
	jmp	.label_143
.label_143:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_146
.label_141:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
.label_145:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_151
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	test	byte ptr [byte ptr [+ (rcx * 1) + in_delete_set]],  1
	jne	.label_147
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dl, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx + rax], dl
.label_147:
	jmp	.label_142
.label_142:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_145
.label_151:
	jmp	.label_148
.label_148:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_150
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_144:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d40

	.globl get_next
	.type get_next, @function
get_next:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_178
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], 2
.label_178:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], -2
	jne	.label_187
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], -1
.label_187:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_169
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_167
.label_169:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	eax, ecx
	mov	rdx, rax
	sub	rdx, 4
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x38], rdx
	ja	.label_174
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_183]]
	jmp	rcx
.label_920:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	ecx, byte ptr [rax + 0x10]
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], -1
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 8], rax
	jmp	.label_155
.label_921:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], -1
	jne	.label_158
	mov	rax, qword ptr [rbp - 0x20]
	movzx	ecx, byte ptr [rax + 0x10]
	mov	eax, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x10], rax
	jmp	.label_163
.label_158:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x10]
	add	rcx, 1
	mov	qword ptr [rax + 0x10], rcx
.label_163:
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
	jne	.label_161
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], -1
.label_161:
	jmp	.label_155
.label_922:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_157
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x10]
	mov	edx, ecx
	sub	edx, 6
	mov	dword ptr [rbp - 0x3c], ecx
	mov	dword ptr [rbp - 0x40], edx
	je	.label_162
	jmp	.label_171
.label_171:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x44], eax
	je	.label_173
	jmp	.label_184
.label_162:
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], 0
	jmp	.label_179
.label_173:
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], 1
	jmp	.label_179
.label_184:
	jmp	.label_179
.label_179:
	jmp	.label_157
.label_157:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], -1
	jne	.label_188
	mov	dword ptr [rbp - 0x28], 0
.label_177:
	cmp	dword ptr [rbp - 0x28], 0x100
	jge	.label_154
	mov	rax, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rax + 0x10]
	mov	ecx, dword ptr [rbp - 0x28]
	mov	dl, cl
	movzx	esi, dl
	call	is_char_class_member
	test	al, 1
	jne	.label_166
	jmp	.label_160
.label_166:
	jmp	.label_154
.label_160:
	jmp	.label_170
.label_170:
	mov	eax, dword ptr [rbp - 0x28]
	add	eax, 1
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_177
.label_154:
	cmp	dword ptr [rbp - 0x28], 0x100
	jge	.label_182
	jmp	.label_185
.label_182:
	movabs	rdi, OFFSET FLAT:.str.97
	movabs	rsi, OFFSET FLAT:.str.26
	mov	edx, 0x434
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.get_next
	call	__assert_fail
.label_185:
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
.label_188:
	mov	rax, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	cl, al
	movzx	esi, cl
	call	is_char_class_member
	test	al, 1
	jne	.label_168
	jmp	.label_190
.label_168:
	jmp	.label_175
.label_190:
	movabs	rdi, OFFSET FLAT:.str.98
	movabs	rsi, OFFSET FLAT:.str.26
	mov	edx, 0x437
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.get_next
	call	__assert_fail
.label_175:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	add	rax, 1
	mov	ecx, eax
	mov	dword ptr [rbp - 0x28], ecx
.label_176:
	cmp	dword ptr [rbp - 0x28], 0x100
	jge	.label_172
	mov	rax, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rax + 0x10]
	mov	ecx, dword ptr [rbp - 0x28]
	mov	dl, cl
	movzx	esi, dl
	call	is_char_class_member
	test	al, 1
	jne	.label_165
	jmp	.label_156
.label_165:
	jmp	.label_172
.label_156:
	jmp	.label_180
.label_180:
	mov	eax, dword ptr [rbp - 0x28]
	add	eax, 1
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_176
.label_172:
	cmp	dword ptr [rbp - 0x28], 0x100
	jge	.label_181
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	jmp	.label_153
.label_181:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], -1
.label_153:
	jmp	.label_155
.label_923:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	ecx, byte ptr [rax + 0x10]
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], -1
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 8], rax
	jmp	.label_155
.label_924:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_164
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
	jmp	.label_186
.label_164:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], -1
	jne	.label_189
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], 0
.label_189:
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
	jne	.label_159
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], -1
.label_159:
	jmp	.label_186
.label_186:
	jmp	.label_155
.label_174:
	call	abort
.label_155:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
.label_167:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403180

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
	.align	16
	#Procedure 0x4031b0

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
.label_191:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_192
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
	jmp	.label_191
.label_192:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403230

	.globl unquote
	.type unquote, @function
unquote:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
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
.label_196:
	mov	eax, dword ptr [rbp - 0x28]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	byte ptr [rdx + rcx], 0
	je	.label_194
	mov	eax, dword ptr [rbp - 0x28]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	movzx	eax, byte ptr [rdx + rcx]
	sub	eax, 0x5c
	mov	dword ptr [rbp - 0x34], eax
	jne	.label_200
	jmp	.label_204
.label_204:
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
	test	eax, eax
	mov	dword ptr [rbp - 0x38], eax
	je	.label_210
	jmp	.label_216
.label_216:
	mov	eax, dword ptr [rbp - 0x38]
	add	eax, -0x30
	sub	eax, 8
	mov	dword ptr [rbp - 0x3c], eax
	jb	.label_217
	jmp	.label_222
.label_222:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x5c
	mov	dword ptr [rbp - 0x40], eax
	je	.label_223
	jmp	.label_197
.label_197:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x44], eax
	je	.label_198
	jmp	.label_203
.label_203:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x48], eax
	je	.label_206
	jmp	.label_201
.label_201:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x66
	mov	dword ptr [rbp - 0x4c], eax
	je	.label_211
	jmp	.label_213
.label_213:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x50], eax
	je	.label_214
	jmp	.label_215
.label_215:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x54], eax
	je	.label_212
	jmp	.label_218
.label_218:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x58], eax
	je	.label_220
	jmp	.label_199
.label_199:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x5c], eax
	je	.label_208
	jmp	.label_221
.label_223:
	mov	byte ptr [rbp - 0x29], 0x5c
	jmp	.label_202
.label_198:
	mov	byte ptr [rbp - 0x29], 7
	jmp	.label_202
.label_206:
	mov	byte ptr [rbp - 0x29], 8
	jmp	.label_202
.label_211:
	mov	byte ptr [rbp - 0x29], 0xc
	jmp	.label_202
.label_214:
	mov	byte ptr [rbp - 0x29], 0xa
	jmp	.label_202
.label_212:
	mov	byte ptr [rbp - 0x29], 0xd
	jmp	.label_202
.label_220:
	mov	byte ptr [rbp - 0x29], 9
	jmp	.label_202
.label_208:
	mov	byte ptr [rbp - 0x29], 0xb
	jmp	.label_202
.label_217:
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
	jg	.label_205
	cmp	dword ptr [rbp - 0x30], 7
	jg	.label_205
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
	jg	.label_207
	cmp	dword ptr [rbp - 0x30], 7
	jg	.label_207
	movzx	eax, byte ptr [rbp - 0x29]
	shl	eax, 3
	add	eax, dword ptr [rbp - 0x30]
	cmp	eax, 0x100
	jge	.label_219
	movzx	eax, byte ptr [rbp - 0x29]
	shl	eax, 3
	add	eax, dword ptr [rbp - 0x30]
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	mov	eax, dword ptr [rbp - 0x28]
	add	eax, 1
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_195
.label_219:
	movabs	rdi, OFFSET FLAT:.str.50
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
	mov	dword ptr [rbp - 0x60], edx
	mov	rdx, rax
	mov	ecx, dword ptr [rbp - 0x60]
	mov	dword ptr [rsp], r10d
	mov	dword ptr [rsp + 8], r11d
	mov	dword ptr [rsp + 0x10], ebx
	mov	al, 0
	call	error
.label_195:
	jmp	.label_207
.label_207:
	jmp	.label_205
.label_205:
	jmp	.label_202
.label_210:
	movabs	rdi, OFFSET FLAT:.str.51
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
	jmp	.label_202
.label_221:
	mov	eax, dword ptr [rbp - 0x28]
	add	eax, 1
	mov	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	sil, byte ptr [rdx + rcx]
	mov	byte ptr [rbp - 0x29], sil
.label_202:
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
	jmp	.label_209
.label_200:
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
.label_209:
	jmp	.label_193
.label_193:
	mov	eax, dword ptr [rbp - 0x28]
	add	eax, 1
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_196
.label_194:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x24]
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi + 0x10], rdx
	and	al, 1
	movzx	eax, al
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
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
.label_225:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 2
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jae	.label_250
	mov	edx, 0x5b
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	call	es_match
	test	al, 1
	jne	.label_228
	jmp	.label_231
.label_228:
	mov	edx, 0x3a
	mov	byte ptr [rbp - 0x29], 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	rsi, rax
	call	es_match
	test	al, 1
	jne	.label_246
	mov	edx, 0x3d
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	rsi, rax
	call	es_match
	test	al, 1
	jne	.label_246
	jmp	.label_230
.label_246:
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
	jne	.label_229
	jmp	.label_235
.label_229:
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
	jne	.label_233
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3a
	jne	.label_247
	movabs	rdi, OFFSET FLAT:.str.52
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	jmp	.label_227
.label_247:
	movabs	rdi, OFFSET FLAT:.str.53
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_227:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_224
.label_233:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3a
	jne	.label_238
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x60]
	call	append_char_class
	test	al, 1
	jne	.label_248
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 2
	mov	rsi, rax
	call	star_digits_closebracket
	test	al, 1
	jne	.label_249
	jmp	.label_234
.label_249:
	jmp	.label_226
.label_234:
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x60]
	call	make_printable_str
	movabs	rdi, OFFSET FLAT:.str.54
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
	jmp	.label_224
.label_248:
	jmp	.label_242
.label_238:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x60]
	call	append_equiv_class
	test	al, 1
	jne	.label_254
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 2
	mov	rsi, rax
	call	star_digits_closebracket
	test	al, 1
	jne	.label_232
	jmp	.label_245
.label_232:
	jmp	.label_226
.label_245:
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x60]
	call	make_printable_str
	movabs	rdi, OFFSET FLAT:.str.55
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
	jmp	.label_224
.label_254:
	jmp	.label_242
.label_242:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_225
.label_235:
	jmp	.label_230
.label_230:
	jmp	.label_226
.label_226:
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
	jne	.label_241
	mov	rdi, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rbp - 0x39]
	mov	rdx, qword ptr [rbp - 0x48]
	movzx	esi, al
	call	append_repeated_char
	mov	rdx, qword ptr [rbp - 0x38]
	add	rdx, 1
	mov	qword ptr [rbp - 0x28], rdx
	jmp	.label_243
.label_241:
	cmp	dword ptr [rbp - 0x4c], -1
	jne	.label_252
	mov	byte ptr [rbp - 0x29], 0
	jmp	.label_253
.label_252:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_224
.label_253:
	jmp	.label_243
.label_243:
	test	byte ptr [rbp - 0x29], 1
	je	.label_236
	jmp	.label_225
.label_236:
	jmp	.label_231
.label_231:
	mov	edx, 0x2d
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	rsi, rax
	call	es_match
	test	al, 1
	jne	.label_240
	jmp	.label_244
.label_240:
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
	jne	.label_251
	mov	byte ptr [rbp - 1], 0
	jmp	.label_224
.label_251:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 3
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_255
.label_244:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	movzx	esi, byte ptr [rcx + rax]
	call	append_normal_char
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_255:
	jmp	.label_225
.label_250:
	jmp	.label_237
.label_237:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jae	.label_239
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	movzx	esi, byte ptr [rcx + rax]
	call	append_normal_char
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_237
.label_239:
	mov	byte ptr [rbp - 1], 1
.label_224:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
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
	.align	16
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
	jne	.label_256
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x12], dl
.label_256:
	mov	al, byte ptr [rbp - 0x12]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
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
.label_258:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	sub	rcx, 1
	cmp	rax, rcx
	jae	.label_261
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movsx	edx, byte ptr [rcx + rax]
	movsx	esi, byte ptr [rbp - 0x19]
	cmp	edx, esi
	jne	.label_257
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x5d
	jne	.label_257
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	test	byte ptr [rcx + rax], 1
	jne	.label_257
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	test	byte ptr [rcx + rax + 1], 1
	jne	.label_257
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	byte ptr [rbp - 1], 1
	jmp	.label_259
.label_257:
	jmp	.label_260
.label_260:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_258
.label_261:
	mov	byte ptr [rbp - 1], 0
.label_259:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
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
	jne	.label_262
	mov	byte ptr [rbp - 1], 0
	jmp	.label_264
.label_262:
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
	je	.label_263
	jmp	.label_265
.label_263:
	movabs	rdi, OFFSET FLAT:.str.56
	movabs	rsi, OFFSET FLAT:.str.26
	mov	edx, 0x2bb
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.append_char_class
	call	__assert_fail
.label_265:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	byte ptr [rbp - 1], 1
.label_264:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
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
	jne	.label_269
	mov	byte ptr [rbp - 1], 0
	jmp	.label_267
.label_269:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
.label_272:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jae	.label_268
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	movzx	edi, al
	sub	edi, 0x30
	cmp	edi, 9
	ja	.label_270
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	test	byte ptr [rcx + rax], 1
	je	.label_266
.label_270:
	mov	edx, 0x5d
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	es_match
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_267
.label_266:
	jmp	.label_271
.label_271:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_272
.label_268:
	mov	byte ptr [rbp - 1], 0
.label_267:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
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
.label_288:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_285
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
	je	.label_290
	jmp	.label_282
.label_282:
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 8
	mov	dword ptr [rbp - 0x48], eax
	je	.label_284
	jmp	.label_289
.label_289:
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 9
	mov	dword ptr [rbp - 0x4c], eax
	je	.label_291
	jmp	.label_293
.label_293:
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x50], eax
	je	.label_274
	jmp	.label_279
.label_279:
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 0xb
	mov	dword ptr [rbp - 0x54], eax
	je	.label_283
	jmp	.label_287
.label_287:
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 0xc
	mov	dword ptr [rbp - 0x58], eax
	je	.label_276
	jmp	.label_286
.label_286:
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 0xd
	mov	dword ptr [rbp - 0x5c], eax
	je	.label_273
	jmp	.label_277
.label_277:
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 0x5c
	mov	dword ptr [rbp - 0x60], eax
	jne	.label_280
	jmp	.label_281
.label_281:
	movabs	rax, OFFSET FLAT:.str.69
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_275
.label_290:
	movabs	rax, OFFSET FLAT:.str.70
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_275
.label_284:
	movabs	rax, OFFSET FLAT:.str.71
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_275
.label_276:
	movabs	rax, OFFSET FLAT:.str.72
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_275
.label_274:
	movabs	rax, OFFSET FLAT:.str.73
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_275
.label_273:
	movabs	rax, OFFSET FLAT:.str.74
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_275
.label_291:
	movabs	rax, OFFSET FLAT:.str.75
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_275
.label_283:
	movabs	rax, OFFSET FLAT:.str.76
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_275
.label_280:
	movzx	eax, byte ptr [rbp - 0x39]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x68], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x68]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	cmp	edx, 0
	je	.label_278
	mov	al, byte ptr [rbp - 0x39]
	mov	byte ptr [rbp - 0x2d], al
	mov	byte ptr [rbp - 0x2c], 0
	jmp	.label_292
.label_278:
	movabs	rsi, OFFSET FLAT:.str.77
	lea	rdi, [rbp - 0x2d]
	movzx	edx, byte ptr [rbp - 0x39]
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x6c], eax
.label_292:
	lea	rax, [rbp - 0x2d]
	mov	qword ptr [rbp - 0x38], rax
.label_275:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	call	stpcpy
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_288
.label_285:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
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
	je	.label_294
	mov	byte ptr [rbp - 1], 0
	jmp	.label_297
.label_294:
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
	je	.label_295
	jmp	.label_296
.label_295:
	movabs	rdi, OFFSET FLAT:.str.56
	movabs	rsi, OFFSET FLAT:.str.26
	mov	edx, 0x2e5
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.append_equiv_class
	call	__assert_fail
.label_296:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	byte ptr [rbp - 1], 1
.label_297:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
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
	jae	.label_304
	jmp	.label_300
.label_304:
	movabs	rdi, OFFSET FLAT:.str.78
	movabs	rsi, OFFSET FLAT:.str.26
	mov	edx, 0x30e
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.find_bracketed_repeat
	call	__assert_fail
.label_300:
	mov	edx, 0x2a
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	rsi, rax
	call	es_match
	test	al, 1
	jne	.label_302
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_298
.label_302:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 2
	mov	qword ptr [rbp - 0x38], rax
.label_310:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x59], cl
	jae	.label_311
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x59], dl
.label_311:
	mov	al, byte ptr [rbp - 0x59]
	test	al, 1
	jne	.label_305
	jmp	.label_307
.label_305:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x5d
	jne	.label_309
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
	jne	.label_299
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
	jmp	.label_301
.label_299:
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
	jne	.label_303
	mov	rax, -2
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	jb	.label_303
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x50]
	je	.label_306
.label_303:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	call	make_printable_str
	movabs	rdi, OFFSET FLAT:.str.79
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
	jmp	.label_298
.label_306:
	jmp	.label_301
.label_301:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_298
.label_309:
	jmp	.label_308
.label_308:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_310
.label_307:
	mov	dword ptr [rbp - 4], 0xffffffff
.label_298:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
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
	je	.label_312
	jmp	.label_313
.label_312:
	movabs	rdi, OFFSET FLAT:.str.56
	movabs	rsi, OFFSET FLAT:.str.26
	mov	edx, 0x2cf
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.append_repeated_char
	call	__assert_fail
.label_313:
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
	.align	16
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
	jge	.label_314
	movzx	edi, byte ptr [rbp - 0x11]
	call	make_printable_char
	mov	qword ptr [rbp - 0x20], rax
	movzx	edi, byte ptr [rbp - 0x12]
	call	make_printable_char
	movabs	rdi, OFFSET FLAT:.str.80
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
	jmp	.label_315
.label_314:
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
	je	.label_317
	jmp	.label_316
.label_317:
	movabs	rdi, OFFSET FLAT:.str.56
	movabs	rsi, OFFSET FLAT:.str.26
	mov	edx, 0x2a5
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.append_range
	call	__assert_fail
.label_316:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	byte ptr [rbp - 1], 1
.label_315:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
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
	je	.label_318
	jmp	.label_319
.label_318:
	movabs	rdi, OFFSET FLAT:.str.56
	movabs	rsi, OFFSET FLAT:.str.26
	mov	edx, 0x287
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.append_normal_char
	call	__assert_fail
.label_319:
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
	.align	16
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
.label_324:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	ecx, eax
	cmp	rcx, 0xc
	jae	.label_322
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0x1c]
	mov	ecx, eax
	mov	rsi,  qword ptr [word ptr [+ (rcx * 8) + char_class_name]]
	mov	rdx, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_320
	mov	eax, dword ptr [rbp - 0x1c]
	mov	ecx, eax
	mov	rdi,  qword ptr [word ptr [+ (rcx * 8) + char_class_name]]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_320
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_323
.label_320:
	jmp	.label_321
.label_321:
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, 1
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_324
.label_322:
	mov	dword ptr [rbp - 4], 0x270f
.label_323:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
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
	.align	16
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
	je	.label_326
	mov	al, byte ptr [rbp - 1]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx + 1], 0
	jmp	.label_325
.label_326:
	movabs	rsi, OFFSET FLAT:.str.77
	mov	rdi, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rbp - 1]
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x1c], eax
.label_325:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
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
	je	.label_327
	mov	rdi, qword ptr [rbp - 8]
	call	card_of_complement
	movsxd	rdi, eax
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], rdi
.label_327:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
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
	jb	.label_328
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], 1
	jne	.label_328
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, qword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], rax
.label_328:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
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
	jne	.label_345
	jmp	.label_344
.label_345:
	mov	dword ptr [rbp - 0x50], 0
.label_330:
	cmp	dword ptr [rbp - 0x50], 0x100
	jge	.label_348
	movsxd	rax, dword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x60], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x60]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x100
	cmp	edx, 0
	je	.label_333
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_333:
	movsxd	rax, dword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x68], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x68]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x200
	cmp	edx, 0
	je	.label_329
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
.label_329:
	jmp	.label_343
.label_343:
	mov	eax, dword ptr [rbp - 0x50]
	add	eax, 1
	mov	dword ptr [rbp - 0x50], eax
	jmp	.label_330
.label_348:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x10], -2
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], -2
.label_347:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x24], -1
	mov	byte ptr [rbp - 0x69], cl
	je	.label_335
	cmp	dword ptr [rbp - 0x28], -1
	setne	al
	mov	byte ptr [rbp - 0x69], al
.label_335:
	mov	al, byte ptr [rbp - 0x69]
	test	al, 1
	jne	.label_331
	jmp	.label_346
.label_331:
	lea	rsi, [rbp - 0x54]
	mov	rdi, qword ptr [rbp - 8]
	call	get_next
	lea	rsi, [rbp - 0x58]
	mov	dword ptr [rbp - 0x24], eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	get_next
	mov	dword ptr [rbp - 0x28], eax
	test	byte ptr [rbp - 0x4a], 1
	je	.label_339
	cmp	dword ptr [rbp - 0x58], 2
	je	.label_339
	test	byte ptr [rbp - 0x49], 1
	je	.label_341
	cmp	dword ptr [rbp - 0x54], 2
	jne	.label_339
.label_341:
	movabs	rdi, OFFSET FLAT:.str.90
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_339:
	cmp	dword ptr [rbp - 0x58], 2
	je	.label_342
	mov	rdi, qword ptr [rbp - 8]
	call	skip_construct
	mov	rdi, qword ptr [rbp - 0x10]
	call	skip_construct
	cmp	dword ptr [rbp - 0x54], 1
	jne	.label_334
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_332
.label_334:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x78], rax
.label_332:
	mov	rax, qword ptr [rbp - 0x78]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx + 0x18]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x18], rdx
	cmp	dword ptr [rbp - 0x58], 1
	jne	.label_340
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_336
.label_340:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x80], rax
.label_336:
	mov	rax, qword ptr [rbp - 0x80]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + 0x18]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x18], rdx
.label_342:
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
	jmp	.label_347
.label_346:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x18]
	jb	.label_337
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	jb	.label_337
	jmp	.label_338
.label_337:
	movabs	rdi, OFFSET FLAT:.str.91
	movabs	rsi, OFFSET FLAT:.str.26
	mov	edx, 0x4c5
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.validate_case_classes
	call	__assert_fail
.label_338:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
.label_344:
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
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
	je	.label_352
	jmp	.label_351
.label_352:
	movabs	rdi, OFFSET FLAT:.str.92
	movabs	rsi, OFFSET FLAT:.str.26
	mov	edx, 0x55e
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.string2_extend
	call	__assert_fail
.label_351:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	jbe	.label_355
	jmp	.label_353
.label_355:
	movabs	rdi, OFFSET FLAT:.str.93
	movabs	rsi, OFFSET FLAT:.str.26
	mov	edx, 0x55f
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.string2_extend
	call	__assert_fail
.label_353:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0
	jbe	.label_356
	jmp	.label_350
.label_356:
	movabs	rdi, OFFSET FLAT:.str.94
	movabs	rsi, OFFSET FLAT:.str.26
	mov	edx, 0x560
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.string2_extend
	call	__assert_fail
.label_350:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rax]
	mov	eax, ecx
	mov	rdx, rax
	sub	rdx, 4
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], rdx
	ja	.label_354
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_357]]
	jmp	rcx
.label_848:
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x10]
	mov	byte ptr [rbp - 0x19], cl
	jmp	.label_349
.label_849:
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x11]
	mov	byte ptr [rbp - 0x19], cl
	jmp	.label_349
.label_850:
	movabs	rdi, OFFSET FLAT:.str.95
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_852:
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x10]
	mov	byte ptr [rbp - 0x19], cl
	jmp	.label_349
.label_851:
	call	abort
.label_354:
	call	abort
.label_349:
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
	.align	16
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
	jne	.label_359
	mov	byte ptr [rbp - 1], 0
	jmp	.label_358
.label_359:
	jmp	.label_361
.label_361:
	xor	eax, eax
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	get_next
	mov	dword ptr [rbp - 0x18], eax
	cmp	eax, -1
	je	.label_362
	mov	eax, dword ptr [rbp - 0x18]
	cmp	eax, dword ptr [rbp - 0x14]
	je	.label_360
	mov	byte ptr [rbp - 1], 0
	jmp	.label_358
.label_360:
	jmp	.label_361
.label_362:
	mov	byte ptr [rbp - 1], 1
.label_358:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
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
.label_386:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_373
	mov	qword ptr [rbp - 0x20], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	mov	eax, ecx
	mov	rdx, rax
	sub	rdx, 4
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x40], rdx
	ja	.label_376
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_383]]
	jmp	rcx
.label_869:
	mov	qword ptr [rbp - 0x20], 1
	jmp	.label_368
.label_870:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x11]
	mov	rax, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rax + 0x10]
	cmp	ecx, edx
	jl	.label_363
	jmp	.label_366
.label_363:
	movabs	rdi, OFFSET FLAT:.str.88
	movabs	rsi, OFFSET FLAT:.str.26
	mov	edx, 0x4ee
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.get_spec_stats
	call	__assert_fail
.label_366:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x11]
	mov	rax, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rax + 0x10]
	sub	ecx, edx
	add	ecx, 1
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_368
.label_871:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x31], 1
	mov	dword ptr [rbp - 0x2c], 0
.label_372:
	cmp	dword ptr [rbp - 0x2c], 0x100
	jge	.label_385
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 0x10]
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dl, cl
	movzx	esi, dl
	call	is_char_class_member
	test	al, 1
	jne	.label_365
	jmp	.label_367
.label_365:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
.label_367:
	jmp	.label_369
.label_369:
	mov	eax, dword ptr [rbp - 0x2c]
	add	eax, 1
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_372
.label_385:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x10]
	mov	edx, ecx
	sub	edx, 6
	mov	dword ptr [rbp - 0x44], ecx
	mov	dword ptr [rbp - 0x48], edx
	je	.label_377
	jmp	.label_381
.label_381:
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x4c], eax
	jne	.label_382
	jmp	.label_377
.label_377:
	jmp	.label_375
.label_382:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x32], 1
.label_375:
	jmp	.label_368
.label_872:
	mov	dword ptr [rbp - 0x30], 0
.label_380:
	cmp	dword ptr [rbp - 0x30], 0x100
	jge	.label_364
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0x10]
	mov	edx, dword ptr [rbp - 0x30]
	mov	sil, dl
	movzx	edi, cl
	movzx	esi, sil
	call	is_equiv_class_member
	test	al, 1
	jne	.label_371
	jmp	.label_374
.label_371:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
.label_374:
	jmp	.label_379
.label_379:
	mov	eax, dword ptr [rbp - 0x30]
	add	eax, 1
	mov	dword ptr [rbp - 0x30], eax
	jmp	.label_380
.label_364:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x30], 1
	jmp	.label_368
.label_873:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0
	jbe	.label_384
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_387
.label_384:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, 1
	mov	qword ptr [rax + 0x20], rcx
.label_387:
	jmp	.label_368
.label_376:
	call	abort
.label_368:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x28]
	ja	.label_370
	cmp	qword ptr [rbp - 0x28], -2
	jbe	.label_378
.label_370:
	movabs	rdi, OFFSET FLAT:.str.89
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_378:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_386
.label_373:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], rax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
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
.label_388:
	xor	eax, eax
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 8]
	call	get_next
	mov	dword ptr [rbp - 0xc], eax
	cmp	eax, -1
	je	.label_389
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
	jmp	.label_388
.label_389:
	mov	eax, dword ptr [rbp - 0x10]
	add	rsp, 0x110
	pop	rbp
	ret	
	.section	.text
	.align	16
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
	ja	.label_390
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_392]]
	jmp	rcx
	.section	.text
	.align	16
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
	.align	16
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
	.align	16
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
	.align	16
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
	je	.label_394
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_396
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_394
.label_396:
	movabs	rdi, OFFSET FLAT:.str_1
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_397
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
	jmp	.label_393
.label_397:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_3
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_393:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_394:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_395
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_395:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
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
	.align	16
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
	je	.label_398
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
.label_398:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4053f0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_402
	movabs	rdi, OFFSET FLAT:.str_4
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_402:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_403
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_400
.label_403:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_400:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_399
	movabs	rsi, OFFSET FLAT:.str.1_1
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_399
	movabs	rsi, OFFSET FLAT:.str.2_0
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_401
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_401:
	jmp	.label_399
.label_399:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
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
	je	.label_404
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_405
.label_404:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_405
.label_405:
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
	#Procedure 0x405590
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_406
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_407
.label_406:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_407
.label_407:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	16
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
	je	.label_408
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_409
.label_408:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_409
.label_409:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
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
	je	.label_410
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_411
.label_410:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_411
.label_411:
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
	#Procedure 0x4056d0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_412
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_412:
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
	jne	.label_413
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_413:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_415
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_414
.label_415:
	call	abort
.label_414:
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
	je	.label_416
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_417
.label_416:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_417
.label_417:
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
.label_564:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_468
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_538]]
	jmp	rcx
.label_845:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_844:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_480
	jmp	.label_484
.label_484:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_485
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_485:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_480
.label_480:
	movabs	rax, OFFSET FLAT:.str.10
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_494
.label_846:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_494
.label_847:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_440
	movabs	rdi, OFFSET FLAT:.str.11_0
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_440:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_515
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_536:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_519
	jmp	.label_522
.label_522:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_524
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_524:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_531
.label_531:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_536
.label_519:
	jmp	.label_515
.label_515:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_494
.label_842:
	mov	byte ptr [rbp - 0x79], 1
.label_841:
	mov	byte ptr [rbp - 0x7b], 1
.label_843:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_547
	mov	byte ptr [rbp - 0x79], 1
.label_547:
	jmp	.label_548
.label_548:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_542
	jmp	.label_551
.label_551:
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
	jmp	.label_542
.label_542:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_494
.label_840:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_494
.label_468:
	call	abort
.label_494:
	mov	qword ptr [rbp - 0x58], 0
.label_533:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_568
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_572
.label_568:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_572:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_584
	jmp	.label_555
.label_584:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_592
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_592
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_592
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_599
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_599
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_511
.label_599:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_511:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_592
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_592
	test	byte ptr [rbp - 0x7b], 1
	je	.label_616
	jmp	.label_438
.label_616:
	mov	byte ptr [rbp - 0x81], 1
.label_592:
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
	ja	.label_419
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_427]]
	jmp	rcx
.label_877:
	test	byte ptr [rbp - 0x79], 1
	je	.label_429
	jmp	.label_433
.label_433:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_434
	jmp	.label_438
.label_434:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_439
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_439
	jmp	.label_446
.label_446:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_447
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_447:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_450
.label_450:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_600
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_600:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_456
.label_456:
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
	mov	byte ptr [rbp - 0x7c], 1
.label_439:
	jmp	.label_473
.label_473:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_543
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_543:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_570
.label_570:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_487
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_487
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_487
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_487
	jmp	.label_500
.label_500:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_502
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_502:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_508
.label_508:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_512
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_512:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_487
.label_487:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_523
.label_429:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_554
	jmp	.label_530
.label_554:
	jmp	.label_523
.label_523:
	jmp	.label_420
.label_888:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_532
	jmp	.label_539
.label_539:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_540
	jmp	.label_490
.label_532:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_496
	jmp	.label_438
.label_496:
	jmp	.label_418
.label_540:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_428
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_428
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_428
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rax + rcx + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_556
	jmp	.label_562
.label_562:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_556
	jmp	.label_566
.label_566:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_556
	jmp	.label_574
.label_574:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_556
	jmp	.label_579
.label_579:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_580
	jmp	.label_556
.label_556:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_586
	jmp	.label_438
.label_586:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_591
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_591:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_598
.label_598:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_601
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_601:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_605
.label_605:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_609
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_609:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_612
.label_612:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_444
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_444:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_614
.label_580:
	jmp	.label_614
.label_614:
	jmp	.label_428
.label_428:
	jmp	.label_418
.label_490:
	jmp	.label_418
.label_418:
	jmp	.label_420
.label_878:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_421
.label_879:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_421
.label_883:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_421
.label_881:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_426
.label_884:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_426
.label_880:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_426
.label_882:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_421
.label_889:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_431
	test	byte ptr [rbp - 0x7b], 1
	je	.label_437
	jmp	.label_438
.label_437:
	jmp	.label_441
.label_431:
	test	byte ptr [rbp - 0x79], 1
	je	.label_442
	test	byte ptr [rbp - 0x7b], 1
	je	.label_442
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_442
	jmp	.label_441
.label_442:
	jmp	.label_426
.label_426:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_449
	test	byte ptr [rbp - 0x7b], 1
	je	.label_449
	jmp	.label_438
.label_449:
	jmp	.label_421
.label_421:
	test	byte ptr [rbp - 0x79], 1
	je	.label_455
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_436
.label_455:
	jmp	.label_420
.label_890:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_462
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_465
	jmp	.label_470
.label_462:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_465
.label_470:
	jmp	.label_420
.label_465:
	jmp	.label_472
.label_472:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_474
	jmp	.label_420
.label_474:
	jmp	.label_477
.label_477:
	mov	byte ptr [rbp - 0x83], 1
.label_885:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_482
	test	byte ptr [rbp - 0x7b], 1
	je	.label_482
	jmp	.label_438
.label_482:
	jmp	.label_420
.label_887:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_488
	test	byte ptr [rbp - 0x7b], 1
	je	.label_493
	jmp	.label_438
.label_493:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_435
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_435
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_435:
	jmp	.label_504
.label_504:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_506
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_506:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_510
.label_510:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_514
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_514:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_521
.label_521:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_527
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_527:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_488:
	jmp	.label_420
.label_886:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_420
.label_419:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_458
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
	jmp	.label_509
.label_458:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_557
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_557:
	jmp	.label_466
.label_466:
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
	jne	.label_577
	jmp	.label_520
.label_577:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_583
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_520
.label_583:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_589
	mov	byte ptr [rbp - 0x91], 0
.label_606:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_593
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_593:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_603
	jmp	.label_604
.label_603:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_606
.label_604:
	jmp	.label_520
.label_589:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_448
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_448
	mov	qword ptr [rbp - 0xb8], 1
.label_445:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_613
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
	jb	.label_452
	jmp	.label_423
.label_423:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_452
	jmp	.label_481
.label_481:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_452
	jmp	.label_430
.label_430:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_432
	jmp	.label_452
.label_452:
	jmp	.label_438
.label_432:
	jmp	.label_558
.label_558:
	jmp	.label_563
.label_563:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_445
.label_613:
	jmp	.label_448
.label_448:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_451
	mov	byte ptr [rbp - 0x91], 0
.label_451:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_454
.label_454:
	jmp	.label_460
.label_460:
	jmp	.label_461
.label_461:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_466
.label_520:
	jmp	.label_509
.label_509:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_471
	test	byte ptr [rbp - 0x79], 1
	je	.label_479
	test	byte ptr [rbp - 0x91], 1
	jne	.label_479
.label_471:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_483:
	test	byte ptr [rbp - 0x79], 1
	je	.label_489
	test	byte ptr [rbp - 0x91], 1
	jne	.label_489
	jmp	.label_424
.label_424:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_495
	jmp	.label_438
.label_495:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_499
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_499
	jmp	.label_503
.label_503:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_505
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_505:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_528
.label_528:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_513
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_513:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_575
.label_575:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_525
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_525:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_499:
	jmp	.label_535
.label_535:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_537
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_537:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_541
.label_541:
	jmp	.label_545
.label_545:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_546
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_546:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_549
.label_549:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_553
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_553:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_560
.label_489:
	test	byte ptr [rbp - 0x81], 1
	je	.label_565
	jmp	.label_567
.label_567:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_569
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_569:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_565:
	jmp	.label_560
.label_560:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_581
	jmp	.label_585
.label_581:
	jmp	.label_588
.label_588:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_590
	test	byte ptr [rbp - 0x82], 1
	jne	.label_590
	jmp	.label_594
.label_594:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_595
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_595:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_597
.label_597:
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
	mov	byte ptr [rbp - 0x7c], 0
.label_590:
	jmp	.label_607
.label_607:
	jmp	.label_608
.label_608:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_610
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_610:
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
	jmp	.label_483
.label_585:
	jmp	.label_441
.label_479:
	jmp	.label_420
.label_420:
	test	byte ptr [rbp - 0x79], 1
	je	.label_617
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_618
.label_617:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_422
.label_618:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_422
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
	jne	.label_425
.label_422:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_425
	jmp	.label_441
.label_425:
	jmp	.label_436
.label_436:
	jmp	.label_550
.label_550:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_587
	jmp	.label_438
.label_587:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_443
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_443
	jmp	.label_615
.label_615:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_529
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_529:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_453
.label_453:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_457
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_457:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_463
.label_463:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_469
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_469:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_443:
	jmp	.label_476
.label_476:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_478
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_478:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_486
.label_486:
	jmp	.label_441
.label_441:
	jmp	.label_491
.label_491:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_492
	test	byte ptr [rbp - 0x82], 1
	jne	.label_492
	jmp	.label_497
.label_497:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_498
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_498:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_501
.label_501:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_507
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_507:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_492:
	jmp	.label_516
.label_516:
	jmp	.label_517
.label_517:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_459
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_459:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_526
	mov	byte ptr [rbp - 0x7e], 0
.label_526:
	jmp	.label_530
.label_530:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_533
.label_555:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_475
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_475
	test	byte ptr [rbp - 0x7b], 1
	je	.label_475
	jmp	.label_438
.label_475:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_544
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_544
	test	byte ptr [rbp - 0x7d], 1
	je	.label_544
	test	byte ptr [rbp - 0x7e], 1
	je	.label_518
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
	jmp	.label_559
.label_518:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_561
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_561
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_564
.label_561:
	jmp	.label_467
.label_467:
	jmp	.label_544
.label_544:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_571
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_571
	jmp	.label_576
.label_576:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_578
	jmp	.label_534
.label_534:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_582
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_582:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_573
.label_573:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_576
.label_578:
	jmp	.label_571
.label_571:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_596
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_596:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_559
.label_438:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_602
	test	byte ptr [rbp - 0x79], 1
	je	.label_602
	mov	dword ptr [rbp - 0x34], 4
.label_602:
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
.label_559:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
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
	.align	16
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
	je	.label_619
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_620
.label_619:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_620
.label_620:
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
	je	.label_621
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_621:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
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
.label_623:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_624
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_623
.label_624:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_626
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_625]],  rax
.label_626:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_622
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_622:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
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
	.align	16
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
	jge	.label_627
	call	abort
.label_627:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_632
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_634
	call	xalloc_die
.label_634:
	test	byte ptr [rbp - 0x31], 1
	je	.label_631
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_633
.label_631:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_633:
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
	je	.label_630
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_625]]
	mov	qword ptr [rax + 8], rcx
.label_630:
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
.label_632:
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
	ja	.label_628
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_629
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_629:
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
.label_628:
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
	.align	16
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
	.align	16
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
	.align	16
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
	.align	16
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
	jne	.label_635
	call	abort
.label_635:
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
	.align	16
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
	.align	16
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
	.align	16
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
	.align	16
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
	.align	16
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
	.align	16
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
	.align	16
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
	.align	16
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
	.align	16
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
	.align	16
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
	.align	16
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
	.align	16
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
	.align	16
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
	.align	16
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
	.align	16
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
	.align	16
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
	je	.label_637
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_639
.label_637:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:.str.13_0
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_636
	movabs	rax, OFFSET FLAT:.str.15
	movabs	rcx, OFFSET FLAT:.str.14
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_639
.label_636:
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_638
	movabs	rax, OFFSET FLAT:.str.18_1
	movabs	rcx, OFFSET FLAT:.str.17_1
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_639
.label_638:
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_639:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
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
.label_640:
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	read
	xor	edi, edi
	mov	edx, edi
	mov	qword ptr [rbp - 0x28], rax
	cmp	rdx, qword ptr [rbp - 0x28]
	jg	.label_647
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_643
.label_647:
	call	__errno_location
	cmp	dword ptr [rax], 4
	jne	.label_646
	jmp	.label_640
.label_646:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_644
	mov	eax, 0x7ff00000
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jae	.label_644
	mov	qword ptr [rbp - 0x20], 0x7ff00000
	jmp	.label_642
.label_644:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_643
.label_642:
	jmp	.label_645
.label_645:
	jmp	.label_641
.label_641:
	jmp	.label_640
.label_643:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
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
	je	.label_650
	movabs	rsi, OFFSET FLAT:.str_5
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_652
.label_650:
	movabs	rsi, OFFSET FLAT:.str.1_2
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_652:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:.str.2_1
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
	mov	ecx, OFFSET FLAT:.str.3_0
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
	ja	.label_651
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_649]]
	jmp	rcx
.label_906:
	jmp	.label_648
.label_907:
	movabs	rdi, OFFSET FLAT:.str.4_0
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
	jmp	.label_648
.label_908:
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
	jmp	.label_648
.label_909:
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
	jmp	.label_648
.label_910:
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
	jmp	.label_648
.label_911:
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
	jmp	.label_648
.label_912:
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
	jmp	.label_648
.label_913:
	movabs	rdi, OFFSET FLAT:.str.10_0
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
	jmp	.label_648
.label_914:
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
	jmp	.label_648
.label_915:
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
	jmp	.label_648
.label_651:
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
.label_648:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
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
.label_655:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_653
	jmp	.label_654
.label_654:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_655
.label_653:
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
.label_656:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_661
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_659
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_657
.label_659:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_657:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_661:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_658
	jmp	.label_662
.label_658:
	jmp	.label_660
.label_660:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_656
.label_662:
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
	je	.label_663
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
.label_663:
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
	#Procedure 0x408110
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.14_0
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.15_0
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.16_1
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18
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
	jae	.label_664
	call	xalloc_die
.label_664:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
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
	jne	.label_665
	cmp	qword ptr [rbp - 8], 0
	je	.label_665
	call	xalloc_die
.label_665:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
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
	jae	.label_666
	call	xalloc_die
.label_666:
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
	jne	.label_667
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_667
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_669
.label_667:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_668
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_668
	call	xalloc_die
.label_668:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_669:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
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
	jne	.label_670
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_673
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
.label_673:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_671
	call	xalloc_die
.label_671:
	jmp	.label_672
.label_670:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_674
	call	xalloc_die
.label_674:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_672:
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
	.align	16
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
	.align	16
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
	.align	16
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
	jb	.label_675
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_676
.label_675:
	call	xalloc_die
.label_676:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
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
	.align	16
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
	.align	16
	#Procedure 0x408560

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.1_3
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:.str_3
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4085a0

	.globl xset_binary_mode_error
	.type xset_binary_mode_error, @function
xset_binary_mode_error:
	push	rbp
	mov	rbp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
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
	jge	.label_677
	call	xset_binary_mode_error
.label_677:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4085e0

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
	jg	.label_684
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_684
	jmp	.label_688
.label_684:
	movabs	rdi, OFFSET FLAT:.str_6
	movabs	rsi, OFFSET FLAT:.str.1_4
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
.label_688:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_697
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_700
.label_697:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_700
.label_700:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_731:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_724
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_731
.label_724:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_736
	mov	dword ptr [rbp - 4], 4
	jmp	.label_704
.label_736:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoumax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_739
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_685
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_685
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_685
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_699
.label_685:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_704
.label_699:
	jmp	.label_709
.label_739:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_711
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_717
	mov	dword ptr [rbp - 4], 4
	jmp	.label_704
.label_717:
	mov	dword ptr [rbp - 0x4c], 1
.label_711:
	jmp	.label_709
.label_709:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_732
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_704
.label_732:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_733
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_742
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_704
.label_742:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_687
	jmp	.label_693
.label_693:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_687
	jmp	.label_698
.label_698:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_687
	jmp	.label_707
.label_707:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_687
	jmp	.label_715
.label_715:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_687
	jmp	.label_702
.label_702:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_687
	jmp	.label_725
.label_725:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_687
	jmp	.label_716
.label_716:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_687
	jmp	.label_679
.label_679:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_687
	jmp	.label_723
.label_723:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_687
	jmp	.label_678
.label_678:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_680
	jmp	.label_687
.label_687:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_692
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_694
	jmp	.label_738
.label_738:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_694
	jmp	.label_713
.label_713:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_718
	jmp	.label_722
.label_722:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_721
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_721:
	jmp	.label_718
.label_694:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_718:
	jmp	.label_692
.label_692:
	jmp	.label_680
.label_680:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xbc], ecx
	mov	dword ptr [rbp - 0xc0], edx
	je	.label_735
	jmp	.label_740
.label_740:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x45
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_743
	jmp	.label_681
.label_681:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_683
	jmp	.label_689
.label_689:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_691
	jmp	.label_695
.label_695:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_686
	jmp	.label_703
.label_703:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0xd4], eax
	je	.label_706
	jmp	.label_712
.label_712:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0xd8], eax
	je	.label_729
	jmp	.label_734
.label_734:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x59
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_710
	jmp	.label_726
.label_726:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x5a
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_728
	jmp	.label_720
.label_720:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_701
	jmp	.label_737
.label_737:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xe8], eax
	je	.label_719
	jmp	.label_730
.label_730:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0xec], eax
	je	.label_683
	jmp	.label_682
.label_682:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xf0], eax
	je	.label_691
	jmp	.label_741
.label_741:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xf4], eax
	je	.label_686
	jmp	.label_696
.label_696:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xf8], eax
	je	.label_729
	jmp	.label_705
.label_705:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0xfc], eax
	je	.label_708
	jmp	.label_714
.label_701:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_690
.label_735:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_690
.label_719:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_690
.label_743:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_690
.label_683:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_690
.label_691:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_690
.label_686:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_690
.label_706:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_690
.label_729:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_690
.label_708:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_690
.label_710:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_690
.label_728:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_690
.label_714:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_704
.label_690:
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
	je	.label_727
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_727:
	jmp	.label_733
.label_733:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_704:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408d10

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
	jae	.label_744
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_745
.label_744:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_745:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408d70

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
.label_747:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_746
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_747
.label_746:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408dc0

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
	jne	.label_748
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_748:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_749
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_749
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_749
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_750
.label_749:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_750:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408e70

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
	.align	16
	#Procedure 0x408e80

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
	.align	16
	#Procedure 0x408e90

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
	je	.label_752
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_751
.label_752:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	__gl_setmode
	mov	dword ptr [rbp - 0x10], eax
.label_751:
	mov	eax, dword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408ee0

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
	jne	.label_753
	mov	dword ptr [rbp - 4], 0
	jmp	.label_757
.label_753:
	jmp	.label_754
.label_754:
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
	jne	.label_756
	jmp	.label_755
.label_756:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_754
.label_755:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_757:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408fa0

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
	jne	.label_758
	test	byte ptr [rbp - 0x13], 1
	je	.label_760
	test	byte ptr [rbp - 0x11], 1
	jne	.label_758
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_760
.label_758:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_761
	call	__errno_location
	mov	dword ptr [rax], 0
.label_761:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_759
.label_760:
	mov	dword ptr [rbp - 4], 0
.label_759:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409050

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
	je	.label_762
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str_2
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_763
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_5
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_764
.label_763:
	mov	byte ptr [rbp - 5], 0
.label_764:
	jmp	.label_762
.label_762:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4090d0

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
	jne	.label_765
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 8], rax
.label_765:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_766
	movabs	rax, OFFSET FLAT:.str.1_6
	mov	qword ptr [rbp - 8], rax
.label_766:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409130

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
	jge	.label_770
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_767
.label_770:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_771
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_769
.label_771:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_769
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_769:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_768
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_768:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_767:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409200

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_772
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_773
.label_772:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_774
.label_773:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_774:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409260

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
	je	.label_775
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_775:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4092a0

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
	jne	.label_776
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_776
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_776
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_778
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_777
.label_778:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_777
.label_776:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_777:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409370

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
	ja	.label_779
	jmp	.label_781
.label_781:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_780
.label_779:
	jmp	.label_780
.label_780:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4093c0
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
	jb	.label_782
	jmp	.label_785
.label_785:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_782
	jmp	.label_783
.label_783:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_784
	jmp	.label_782
.label_782:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_786
.label_784:
	mov	byte ptr [rbp - 1], 0
.label_786:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409430
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
	jb	.label_787
	jmp	.label_790
.label_790:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_788
	jmp	.label_787
.label_787:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_789
.label_788:
	mov	byte ptr [rbp - 1], 0
.label_789:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409480
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_791
	jmp	.label_793
.label_793:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_792
.label_791:
	mov	byte ptr [rbp - 1], 0
.label_792:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4094b0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_794
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_794:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4094e0
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
	jb	.label_795
	jmp	.label_797
.label_797:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_798
	jmp	.label_795
.label_795:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_796
.label_798:
	mov	byte ptr [rbp - 1], 0
.label_796:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409530
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_799
	jmp	.label_801
.label_801:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_800
.label_799:
	mov	byte ptr [rbp - 1], 0
.label_800:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409570
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_802
	jmp	.label_804
.label_804:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_803
.label_802:
	mov	byte ptr [rbp - 1], 0
.label_803:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4095b0
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_805
	jmp	.label_807
.label_807:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_806
.label_805:
	mov	byte ptr [rbp - 1], 0
.label_806:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4095f0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_808
	jmp	.label_810
.label_810:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_809
.label_808:
	mov	byte ptr [rbp - 1], 0
.label_809:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409630
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
	jb	.label_811
	jmp	.label_814
.label_814:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x3a
	sub	eax, 7
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_811
	jmp	.label_815
.label_815:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x5b
	sub	eax, 6
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_811
	jmp	.label_813
.label_813:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x7b
	sub	eax, 3
	mov	dword ptr [rbp - 0x1c], eax
	ja	.label_816
	jmp	.label_811
.label_811:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_812
.label_816:
	mov	byte ptr [rbp - 1], 0
.label_812:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4096b0
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
	jb	.label_817
	jmp	.label_819
.label_819:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_820
	jmp	.label_817
.label_817:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_818
.label_820:
	mov	byte ptr [rbp - 1], 0
.label_818:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409700
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_821
	jmp	.label_823
.label_823:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_822
.label_821:
	mov	byte ptr [rbp - 1], 0
.label_822:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409740
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
	jb	.label_824
	jmp	.label_827
.label_827:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_824
	jmp	.label_825
.label_825:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_826
	jmp	.label_824
.label_824:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_828
.label_826:
	mov	byte ptr [rbp - 1], 0
.label_828:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4097b0

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_829
	jmp	.label_831
.label_831:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_830
.label_829:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_830:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4097f0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_832
	jmp	.label_834
.label_834:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_833
.label_832:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_833:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
