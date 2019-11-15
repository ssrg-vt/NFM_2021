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
	je	.label_14
	jmp	.label_21
.label_21:
	movabs	rdi, OFFSET FLAT:label_19
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_17
.label_14:
	movabs	rdi, OFFSET FLAT:label_18
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_13
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	esi, 0xa
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:label_12
	call	gettext
	mov	esi, 0xa
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_9
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_20
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_15
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_10
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
	movabs	rdi, OFFSET FLAT:label_11
	mov	dword ptr [rbp - 0x34], eax
	call	emit_ancillary_info
.label_17:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x401830

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_22
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
	#Procedure 0x401860

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_23
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
	#Procedure 0x401890

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
.label_38:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_37
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_37:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_31
	jmp	.label_28
.label_31:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_38
.label_28:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_25
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_25:
	movabs	rdi, OFFSET FLAT:label_30
	call	gettext
	movabs	rsi, OFFSET FLAT:label_35
	movabs	rdx, OFFSET FLAT:label_24
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
	je	.label_26
	movabs	rsi, OFFSET FLAT:label_34
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_26
	movabs	rdi, OFFSET FLAT:label_27
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_26:
	movabs	rdi, OFFSET FLAT:label_36
	call	gettext
	movabs	rsi, OFFSET FLAT:label_24
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_29
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_32
	movabs	rsi, OFFSET FLAT:label_33
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
	#Procedure 0x401a30

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xf0
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], 0
	mov	byte ptr [rbp - 0x15], 1
	mov	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x31], 1
	mov	byte ptr [rbp - 0x32], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_32
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_63
	movabs	rsi, OFFSET FLAT:label_64
	mov	qword ptr [rbp - 0x78], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_63
	mov	qword ptr [rbp - 0x80], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x88], rax
	call	atexit
	mov	ecx, 1
	mov	byte ptr [byte ptr [have_read_stdin]],  0
	mov	byte ptr [byte ptr [print_headers]],  0
	mov	byte ptr [byte ptr [line_end]],  0xa
	cmp	ecx, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x8c], eax
	jge	.label_40
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_40
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	movsx	ecx, byte ptr [rax + 1]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_40
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x59], 0
.label_68:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	jbe	.label_68
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x58], rax
.label_50:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	byte ptr [rax], 0
	je	.label_60
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x62
	mov	eax, ecx
	sub	ecx, 0x18
	mov	qword ptr [rbp - 0x98], rax
	mov	dword ptr [rbp - 0x9c], ecx
	ja	.label_59
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_67]]
	jmp	rcx
.label_732:
	mov	byte ptr [rbp - 0x31], 0
	mov	byte ptr [rbp - 0x59], 0
	jmp	.label_72
.label_731:
	mov	byte ptr [rbp - 0x31], 0
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
	jmp	.label_72
.label_733:
	mov	byte ptr [rbp - 0x31], 1
	jmp	.label_72
.label_734:
	mov	dword ptr [rbp - 0x14], 2
	jmp	.label_72
.label_735:
	mov	dword ptr [rbp - 0x14], 1
	jmp	.label_72
.label_736:
	mov	byte ptr [byte ptr [line_end]],  0
	jmp	.label_72
.label_59:
	movabs	rdi, OFFSET FLAT:label_41
	call	gettext
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x48]
	movsx	edx, byte ptr [rdi]
	mov	edi, ecx
	mov	esi, ecx
	mov	dword ptr [rbp - 0xa0], edx
	mov	rdx, rax
	mov	ecx, dword ptr [rbp - 0xa0]
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_72:
	jmp	.label_48
.label_48:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_50
.label_60:
	mov	al, byte ptr [rbp - 0x59]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	byte ptr [rcx], al
	cmp	byte ptr [rbp - 0x59], 0
	je	.label_53
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	byte ptr [rax + 1], 0
.label_53:
	mov	al, byte ptr [rbp - 0x31]
	mov	rsi, qword ptr [rbp - 0x50]
	and	al, 1
	movzx	edi, al
	call	string_to_integer
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 8
	mov	qword ptr [rbp - 0x10], rax
	mov	edi, dword ptr [rbp - 8]
	add	edi, -1
	mov	dword ptr [rbp - 8], edi
.label_40:
	jmp	.label_52
.label_52:
	movabs	rdx, OFFSET FLAT:label_73
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x1c], eax
	cmp	eax, -1
	je	.label_80
	mov	eax, dword ptr [rbp - 0x1c]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0xa4], eax
	mov	dword ptr [rbp - 0xa8], ecx
	je	.label_46
	jmp	.label_84
.label_84:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0xac], eax
	je	.label_85
	jmp	.label_44
.label_44:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xb0], eax
	je	.label_45
	jmp	.label_47
.label_47:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_49
	jmp	.label_54
.label_54:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x71
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_55
	jmp	.label_57
.label_57:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0xbc], eax
	je	.label_58
	jmp	.label_62
.label_62:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x7a
	mov	dword ptr [rbp - 0xc0], eax
	je	.label_42
	jmp	.label_66
.label_66:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0xc4], eax
	jne	.label_69
	jmp	.label_51
.label_51:
	mov	byte ptr [byte ptr [presume_input_pipe]],  1
	jmp	.label_43
.label_45:
	mov	byte ptr [rbp - 0x31], 0
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	sete	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x32], dl
	test	byte ptr [rbp - 0x32], 1
	je	.label_77
	mov	rax,  qword ptr [word ptr [optarg]]
	add	rax, 1
	mov	qword ptr [word ptr [optarg]],  rax
.label_77:
	mov	al, byte ptr [rbp - 0x31]
	mov	rsi,  qword ptr [word ptr [optarg]]
	and	al, 1
	movzx	edi, al
	call	string_to_integer
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_43
.label_49:
	mov	byte ptr [rbp - 0x31], 1
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	sete	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x32], dl
	test	byte ptr [rbp - 0x32], 1
	je	.label_74
	mov	rax,  qword ptr [word ptr [optarg]]
	add	rax, 1
	mov	qword ptr [word ptr [optarg]],  rax
.label_74:
	mov	al, byte ptr [rbp - 0x31]
	mov	rsi,  qword ptr [word ptr [optarg]]
	and	al, 1
	movzx	edi, al
	call	string_to_integer
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_43
.label_55:
	mov	dword ptr [rbp - 0x14], 2
	jmp	.label_43
.label_58:
	mov	dword ptr [rbp - 0x14], 1
	jmp	.label_43
.label_42:
	mov	byte ptr [byte ptr [line_end]],  0
	jmp	.label_43
.label_85:
	xor	edi, edi
	call	usage
.label_46:
	movabs	rsi, OFFSET FLAT:label_11
	movabs	rdx, OFFSET FLAT:label_35
	movabs	r8, OFFSET FLAT:label_70
	movabs	r9, OFFSET FLAT:label_71
	xor	eax, eax
	mov	ecx, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	r10,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rcx, r10
	mov	qword ptr [rsp], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_69:
	mov	eax, dword ptr [rbp - 0x1c]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_86
	movabs	rdi, OFFSET FLAT:label_41
	call	gettext
	xor	ecx, ecx
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, ecx
	mov	esi, ecx
	mov	dword ptr [rbp - 0xd4], edx
	mov	rdx, rax
	mov	ecx, dword ptr [rbp - 0xd4]
	mov	al, 0
	call	error
.label_86:
	mov	edi, 1
	call	usage
.label_43:
	jmp	.label_52
.label_80:
	cmp	dword ptr [rbp - 0x14], 1
	je	.label_75
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_56
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	ecx, dword ptr [rbp - 8]
	sub	ecx, 1
	cmp	eax, ecx
	jge	.label_56
.label_75:
	mov	byte ptr [byte ptr [print_headers]],  1
.label_56:
	test	byte ptr [rbp - 0x31], 1
	jne	.label_61
	test	byte ptr [rbp - 0x32], 1
	je	.label_61
	movabs	rax, 0x7fffffffffffffff
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_61
	movabs	rdi, OFFSET FLAT:label_78
	call	gettext
	lea	rsi, [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe0], rax
	call	umaxtostr
	mov	rdi, rax
	call	quote
	mov	edi, 1
	mov	esi, 0x4b
	movabs	rdx, OFFSET FLAT:label_79
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	r8, rax
	mov	al, 0
	call	error
.label_61:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_82
	movsxd	rax,  dword ptr [dword ptr [optind]]
	shl	rax, 3
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_39
.label_82:
	movabs	rax, OFFSET FLAT:main.default_file_list
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_39
.label_39:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	edi, 1
	xor	esi, esi
	mov	qword ptr [rbp - 0x40], rax
	call	xset_binary_mode
	mov	qword ptr [rbp - 0x28], 0
.label_65:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_81
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	dl, byte ptr [rbp - 0x31]
	mov	r8b, byte ptr [rbp - 0x32]
	and	dl, 1
	and	r8b, 1
	movzx	edx, dl
	movzx	ecx, r8b
	call	head_file
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_65
.label_81:
	test	byte ptr [byte ptr [have_read_stdin]],  1
	je	.label_76
	xor	edi, edi
	call	close
	cmp	eax, 0
	jge	.label_76
	call	__errno_location
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_83
	mov	esi, dword ptr [rax]
	mov	al, 0
	call	error
.label_76:
	mov	eax, 1
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x15]
	test	dl, 1
	cmovne	eax, ecx
	add	rsp, 0xf0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402110

	.globl string_to_integer
	.type string_to_integer, @function
string_to_integer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	test	byte ptr [rbp - 1], 1
	mov	qword ptr [rbp - 0x18], rdi
	je	.label_87
	movabs	rdi, OFFSET FLAT:label_90
	call	gettext
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_89
.label_87:
	movabs	rdi, OFFSET FLAT:label_78
	call	gettext
	mov	qword ptr [rbp - 0x20], rax
.label_89:
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	esi, ecx
	mov	rdx, -1
	movabs	rcx, OFFSET FLAT:label_88
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x18]
	mov	r8, rax
	call	xdectoumax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402190

	.globl head_file
	.type head_file, @function
head_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, cl
	mov	r8b, dl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	and	r8b, 1
	mov	byte ptr [rbp - 0x19], r8b
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	mov	rdi, qword ptr [rbp - 0x10]
	mov	ecx, OFFSET FLAT:label_83
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	sete	r8b
	and	r8b, 1
	mov	byte ptr [rbp - 0x22], r8b
	test	byte ptr [rbp - 0x22], 1
	je	.label_91
	movabs	rdi, OFFSET FLAT:label_95
	mov	byte ptr [byte ptr [have_read_stdin]],  1
	mov	dword ptr [rbp - 0x20], 0
	call	gettext
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x10], rax
	mov	edi, ecx
	mov	esi, ecx
	call	xset_binary_mode
	jmp	.label_93
.label_91:
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0x20], eax
	cmp	dword ptr [rbp - 0x20], 0
	jge	.label_94
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_98
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_97
.label_94:
	jmp	.label_93
.label_93:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rbp - 0x19]
	mov	cl, byte ptr [rbp - 0x1a]
	and	al, 1
	and	cl, 1
	movzx	r8d, al
	mov	byte ptr [rbp - 0x31], cl
	mov	ecx, r8d
	mov	al, byte ptr [rbp - 0x31]
	movzx	r8d, al
	call	head
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	test	byte ptr [rbp - 0x22], 1
	jne	.label_96
	mov	edi, dword ptr [rbp - 0x20]
	call	close
	cmp	eax, 0
	je	.label_96
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_92
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x38], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_97
.label_96:
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_97:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402320

	.globl head
	.type head, @function
head:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	mov	al, r8b
	mov	r9b, cl
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	and	r9b, 1
	mov	byte ptr [rbp - 0x21], r9b
	and	al, 1
	mov	byte ptr [rbp - 0x22], al
	test	byte ptr [byte ptr [print_headers]],  1
	je	.label_106
	mov	rdi, qword ptr [rbp - 0x10]
	call	write_header
.label_106:
	test	byte ptr [rbp - 0x22], 1
	je	.label_99
	lea	rsi, [rbp - 0xc0]
	mov	qword ptr [rbp - 0x30], -1
	mov	edi, dword ptr [rbp - 0x14]
	call	fstat
	cmp	eax, 0
	je	.label_100
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_102
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc4], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xd0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xc4]
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_104
.label_100:
	test	byte ptr [byte ptr [presume_input_pipe]],  1
	jne	.label_105
	lea	rdi, [rbp - 0xc0]
	call	usable_st_size
	test	al, 1
	jne	.label_108
	jmp	.label_105
.label_108:
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	edi, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	call	elseek
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jge	.label_103
	mov	byte ptr [rbp - 1], 0
	jmp	.label_104
.label_103:
	jmp	.label_105
.label_105:
	test	byte ptr [rbp - 0x21], 1
	je	.label_107
	lea	rcx, [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x30]
	call	elide_tail_lines_file
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_104
.label_107:
	lea	rcx, [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x30]
	call	elide_tail_bytes_file
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_104
.label_99:
	test	byte ptr [rbp - 0x21], 1
	je	.label_101
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	call	head_lines
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_104
.label_101:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	call	head_bytes
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_104:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4024e0

	.globl write_header
	.type write_header, @function
write_header:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, OFFSET FLAT:label_109
	movabs	rcx, OFFSET FLAT:label_110
	movabs	rdx, OFFSET FLAT:label_32
	mov	qword ptr [rbp - 8], rdi
	mov	sil,  byte ptr [byte ptr [write_header.first_file]]
	test	sil, 1
	cmovne	rcx, rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsi, rcx
	mov	al, 0
	call	printf
	mov	byte ptr [byte ptr [write_header.first_file]],  0
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402540

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rdi + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	mov	byte ptr [rbp - 9], al
	je	.label_111
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	and	edx, 0xf000
	cmp	edx, 0xa000
	mov	byte ptr [rbp - 9], al
	je	.label_111
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	edx, dword ptr [rcx + 0x18]
	cmp	edx, 0
	mov	byte ptr [rbp - 9], al
	jne	.label_111
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 9], cl
	jmp	.label_111
.label_111:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4025c0

	.globl elseek
	.type elseek, @function
elseek:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	qword ptr [rbp - 0x20], rcx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jge	.label_112
	call	__errno_location
	movabs	rcx, OFFSET FLAT:label_113
	movabs	rdx, OFFSET FLAT:label_114
	mov	esi, dword ptr [rax]
	cmp	dword ptr [rbp - 0x14], 0
	cmove	rcx, rdx
	mov	rdi, rcx
	mov	dword ptr [rbp - 0x44], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x50], rax
	call	quotearg_n_style_colon
	lea	rsi, [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	call	offtostr
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x44]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	r8, rax
	mov	al, 0
	call	error
.label_112:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402670

	.globl elide_tail_lines_file
	.type elide_tail_lines_file, @function
elide_tail_lines_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rbp - 0x38], rcx
	test	byte ptr [byte ptr [presume_input_pipe]],  1
	jne	.label_118
	cmp	qword ptr [rbp - 0x30], 0
	jl	.label_118
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	cmp	rcx, qword ptr [rsi + 0x38]
	mov	qword ptr [rbp - 0x40], rdx
	jge	.label_115
	movabs	rax, 0x2000000000000000
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + 0x38], rax
	ja	.label_115
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_116
.label_115:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0x48], rcx
	jmp	.label_116
.label_116:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rcx, rax
	jg	.label_117
.label_118:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x30]
	call	elide_tail_lines_pipe
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_119
.label_117:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x49], al
	jle	.label_120
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0x38]
	call	elide_tail_lines_seekable
	mov	byte ptr [rbp - 0x49], al
.label_120:
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_119:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402780

	.globl elide_tail_bytes_file
	.type elide_tail_bytes_file, @function
elide_tail_bytes_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rbp - 0x38], rcx
	test	byte ptr [byte ptr [presume_input_pipe]],  1
	jne	.label_121
	cmp	qword ptr [rbp - 0x30], 0
	jl	.label_121
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	cmp	rcx, qword ptr [rsi + 0x38]
	mov	qword ptr [rbp - 0x58], rdx
	jge	.label_122
	movabs	rax, 0x2000000000000000
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + 0x38], rax
	ja	.label_122
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_124
.label_122:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_124
.label_124:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x58]
	cmp	rcx, rax
	jg	.label_128
.label_121:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x30]
	call	elide_tail_bytes_pipe
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_125
.label_128:
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jge	.label_123
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x68], rcx
	jmp	.label_129
.label_123:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x68], rax
.label_129:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_127
	mov	byte ptr [rbp - 1], 1
	jmp	.label_125
.label_127:
	mov	edi, dword ptr [rbp - 0x14]
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0x20]
	mov	rsi, rax
	call	copy_fd
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	jne	.label_126
	mov	byte ptr [rbp - 1], 1
	jmp	.label_125
.label_126:
	mov	edi, dword ptr [rbp - 0x4c]
	mov	rsi, qword ptr [rbp - 0x10]
	call	diagnose_copy_fd_failure
	mov	byte ptr [rbp - 1], 0
.label_125:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4028e0

	.globl head_lines
	.type head_lines, @function
head_lines:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20f0
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
.label_141:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_132
	mov	eax, 0x2000
	mov	edx, eax
	lea	rsi, [rbp - 0x2020]
	mov	edi, dword ptr [rbp - 0x14]
	call	safe_read
	mov	qword ptr [rbp - 0x2028], rax
	mov	qword ptr [rbp - 0x2030], 0
	cmp	qword ptr [rbp - 0x2028], -1
	jne	.label_136
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_140
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x20cc], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20d8], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x20cc]
	mov	rdx, qword ptr [rbp - 0x20d8]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_133
.label_136:
	cmp	qword ptr [rbp - 0x2028], 0
	jne	.label_134
	jmp	.label_132
.label_134:
	jmp	.label_138
.label_138:
	mov	rax, qword ptr [rbp - 0x2030]
	cmp	rax, qword ptr [rbp - 0x2028]
	jae	.label_137
	mov	rax, qword ptr [rbp - 0x2030]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x2030], rcx
	movsx	edx, byte ptr [rbp + rax - 0x2020]
	movsx	esi,  byte ptr [byte ptr [line_end]]
	cmp	edx, esi
	jne	.label_139
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jne	.label_139
	mov	edx, 1
	xor	eax, eax
	mov	ecx, eax
	mov	rsi, qword ptr [rbp - 0x2028]
	sub	rsi, qword ptr [rbp - 0x2030]
	mov	qword ptr [rbp - 0x2038], rsi
	mov	edi, dword ptr [rbp - 0x14]
	sub	rcx, qword ptr [rbp - 0x2038]
	mov	rsi, rcx
	call	lseek
	cmp	rax, 0
	jge	.label_135
	lea	rsi, [rbp - 0x20c8]
	mov	edi, dword ptr [rbp - 0x14]
	call	fstat
	cmp	eax, 0
	jne	.label_130
	mov	eax, dword ptr [rbp - 0x20b0]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_131
.label_130:
	mov	edx, 1
	xor	eax, eax
	mov	ecx, eax
	mov	edi, dword ptr [rbp - 0x14]
	sub	rcx, qword ptr [rbp - 0x2038]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20e0], rsi
	mov	rsi, rcx
	mov	rcx, qword ptr [rbp - 0x20e0]
	call	elseek
	mov	qword ptr [rbp - 0x20e8], rax
.label_131:
	jmp	.label_135
.label_135:
	jmp	.label_137
.label_139:
	jmp	.label_138
.label_137:
	lea	rdi, [rbp - 0x2020]
	mov	rsi, qword ptr [rbp - 0x2030]
	call	xwrite_stdout
	jmp	.label_141
.label_132:
	mov	byte ptr [rbp - 1], 1
.label_133:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20f0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ae0

	.globl head_bytes
	.type head_bytes, @function
head_bytes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x2040
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x2028], 0x2000
.label_145:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_142
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x2028]
	jae	.label_146
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x2028], rax
.label_146:
	lea	rsi, [rbp - 0x2020]
	mov	edi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x2028]
	call	safe_read
	mov	qword ptr [rbp - 0x2030], rax
	cmp	qword ptr [rbp - 0x2030], -1
	jne	.label_147
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_140
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x2034], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x2040], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x2034]
	mov	rdx, qword ptr [rbp - 0x2040]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_143
.label_147:
	cmp	qword ptr [rbp - 0x2030], 0
	jne	.label_144
	jmp	.label_142
.label_144:
	lea	rdi, [rbp - 0x2020]
	mov	rsi, qword ptr [rbp - 0x2030]
	call	xwrite_stdout
	mov	rsi, qword ptr [rbp - 0x2030]
	mov	rdi, qword ptr [rbp - 0x20]
	sub	rdi, rsi
	mov	qword ptr [rbp - 0x20], rdi
	jmp	.label_145
.label_142:
	mov	byte ptr [rbp - 1], 1
.label_143:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x2040
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c00

	.globl elide_tail_lines_pipe
	.type elide_tail_lines_pipe, @function
elide_tail_lines_pipe:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	eax, 0x2018
	mov	r8d, eax
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x48], 0
	mov	byte ptr [rbp - 0x49], 1
	mov	rdi, r8
	call	xmalloc
	mov	esi, 0x2018
	mov	edi, esi
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax + 0x2008], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax + 0x2000], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax + 0x2010], 0
	call	xmalloc
	mov	qword ptr [rbp - 0x40], rax
.label_156:
	mov	eax, 0x2000
	mov	edx, eax
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x40]
	call	safe_read
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_152
	cmp	qword ptr [rbp - 0x58], -1
	jne	.label_155
.label_152:
	jmp	.label_157
.label_155:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_158
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x58]
	call	xwrite_stdout
	jmp	.label_156
.label_158:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rcx + 0x2000], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rax + 0x2008], 0
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rax + 0x2010], 0
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x68], rax
.label_162:
	mov	rdi, qword ptr [rbp - 0x68]
	movsx	esi,  byte ptr [byte ptr [line_end]]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x68]
	sub	rax, rcx
	mov	rdx, rax
	call	memchr
	mov	qword ptr [rbp - 0x68], rax
	cmp	rax, 0
	je	.label_159
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rax + 0x2008]
	add	rcx, 1
	mov	qword ptr [rax + 0x2008], rcx
	jmp	.label_162
.label_159:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x2008]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x2000]
	mov	rcx, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rcx + 0x2000]
	cmp	rax, 0x2000
	jae	.label_169
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2000]
	mov	rcx, qword ptr [rbp - 0x38]
	add	rcx, rax
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rax + 0x2000]
	mov	rdi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x2000]
	mov	rcx, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rcx + 0x2000]
	mov	qword ptr [rcx + 0x2000], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x2008]
	mov	rcx, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rcx + 0x2008]
	mov	qword ptr [rcx + 0x2008], rax
	jmp	.label_163
.label_169:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x2010], rax
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rdx + 0x2008]
	cmp	rax, rcx
	jae	.label_149
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x2000]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rax + 0x2000]
	call	xwrite_stdout
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x2008]
	mov	rsi, qword ptr [rbp - 0x48]
	sub	rsi, rax
	mov	qword ptr [rbp - 0x48], rsi
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x2010]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_166
.label_149:
	mov	eax, 0x2018
	mov	edi, eax
	call	xmalloc
	mov	qword ptr [rbp - 0x40], rax
.label_166:
	jmp	.label_163
.label_163:
	jmp	.label_156
.label_157:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	free
	cmp	qword ptr [rbp - 0x58], -1
	jne	.label_161
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_140
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x84], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x90], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x84]
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x49], 0
	jmp	.label_150
.label_161:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x2000], 0
	je	.label_153
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2000]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x38]
	movsx	edx, byte ptr [rcx + rax]
	movsx	esi,  byte ptr [byte ptr [line_end]]
	cmp	edx, esi
	je	.label_153
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rax + 0x2008]
	add	rcx, 1
	mov	qword ptr [rax + 0x2008], rcx
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
.label_153:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
.label_160:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x40]
	sub	rcx, qword ptr [rdx + 0x2008]
	cmp	rax, rcx
	jae	.label_171
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x2000]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rax + 0x2000]
	call	xwrite_stdout
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x2008]
	mov	rsi, qword ptr [rbp - 0x48]
	sub	rsi, rax
	mov	qword ptr [rbp - 0x48], rsi
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x2010]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_160
.label_171:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x48]
	jae	.label_168
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rcx + 0x2000]
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x80], rax
.label_165:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x70], 0
	mov	byte ptr [rbp - 0x91], cl
	je	.label_154
	mov	rdi, qword ptr [rbp - 0x80]
	movsx	esi,  byte ptr [byte ptr [line_end]]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x80]
	sub	rax, rcx
	mov	rdx, rax
	call	memchr
	mov	qword ptr [rbp - 0x80], rax
	cmp	rax, 0
	setne	r8b
	mov	byte ptr [rbp - 0x91], r8b
.label_154:
	mov	al, byte ptr [rbp - 0x91]
	test	al, 1
	jne	.label_167
	jmp	.label_170
.label_167:
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rax + 0x2008]
	add	rcx, 1
	mov	qword ptr [rax + 0x2008], rcx
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, -1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_165
.label_170:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rax, rcx
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rax, rcx
	mov	rsi, rax
	call	xwrite_stdout
.label_168:
	jmp	.label_150
.label_150:
	jmp	.label_148
.label_148:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_164
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x2010]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_148
.label_164:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jg	.label_151
	xor	edx, edx
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	call	elseek
	cmp	rax, 0
	jge	.label_151
	mov	byte ptr [rbp - 0x49], 0
.label_151:
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403160

	.globl elide_tail_lines_seekable
	.type elide_tail_lines_seekable, @function
elide_tail_lines_seekable:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x2080
	mov	eax, 0x2000
	mov	r9d, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x2040], rcx
	mov	rcx, qword ptr [rbp - 0x2040]
	sub	rcx, qword ptr [rbp - 0x28]
	mov	rax, rcx
	cqo	
	idiv	r9
	mov	qword ptr [rbp - 0x2038], rdx
	cmp	qword ptr [rbp - 0x2038], 0
	jne	.label_181
	mov	qword ptr [rbp - 0x2038], 0x2000
.label_181:
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x2038]
	mov	rcx, qword ptr [rbp - 0x2040]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x2040], rcx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x2040]
	mov	rcx, qword ptr [rbp - 0x10]
	call	elseek
	cmp	rax, 0
	jge	.label_190
	mov	byte ptr [rbp - 1], 0
	jmp	.label_175
.label_190:
	lea	rsi, [rbp - 0x2030]
	mov	edi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x2038]
	call	safe_read
	mov	qword ptr [rbp - 0x2038], rax
	cmp	qword ptr [rbp - 0x2038], -1
	jne	.label_176
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_140
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x2060], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x2068], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x2060]
	mov	rdx, qword ptr [rbp - 0x2068]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_175
.label_176:
	cmp	qword ptr [rbp - 0x20], 0
	setne	al
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 0x2041], al
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_172
	cmp	qword ptr [rbp - 0x2038], 0
	je	.label_172
	mov	rax, qword ptr [rbp - 0x2038]
	sub	rax, 1
	movsx	ecx, byte ptr [rbp + rax - 0x2030]
	movsx	edx,  byte ptr [byte ptr [line_end]]
	cmp	ecx, edx
	je	.label_172
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
.label_172:
	jmp	.label_183
.label_183:
	mov	rax, qword ptr [rbp - 0x2038]
	mov	qword ptr [rbp - 0x2050], rax
.label_187:
	cmp	qword ptr [rbp - 0x2050], 0
	je	.label_185
	test	byte ptr [rbp - 0x2041], 1
	je	.label_182
	mov	rax, qword ptr [rbp - 0x2050]
	sub	rax, 1
	mov	qword ptr [rbp - 0x2050], rax
	jmp	.label_174
.label_182:
	lea	rdi, [rbp - 0x2030]
	movsx	esi,  byte ptr [byte ptr [line_end]]
	mov	rdx, qword ptr [rbp - 0x2050]
	call	memrchr
	mov	qword ptr [rbp - 0x2058], rax
	cmp	qword ptr [rbp - 0x2058], 0
	jne	.label_180
	jmp	.label_185
.label_180:
	lea	rax, [rbp - 0x2030]
	mov	rcx, qword ptr [rbp - 0x2058]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x2050], rcx
.label_174:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x20], rcx
	cmp	rax, 0
	jne	.label_189
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x2040]
	jge	.label_173
	xor	edx, edx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	call	elseek
	cmp	rax, 0
	jge	.label_178
	mov	byte ptr [rbp - 1], 0
	jmp	.label_175
.label_178:
	mov	edi, dword ptr [rbp - 0x14]
	mov	rax, qword ptr [rbp - 0x2040]
	sub	rax, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	copy_fd
	mov	dword ptr [rbp - 0x205c], eax
	cmp	dword ptr [rbp - 0x205c], 0
	je	.label_186
	mov	edi, dword ptr [rbp - 0x205c]
	mov	rsi, qword ptr [rbp - 0x10]
	call	diagnose_copy_fd_failure
	mov	byte ptr [rbp - 1], 0
	jmp	.label_175
.label_186:
	jmp	.label_173
.label_173:
	lea	rdi, [rbp - 0x2030]
	mov	rax, qword ptr [rbp - 0x2050]
	add	rax, 1
	mov	rsi, rax
	call	xwrite_stdout
	xor	edx, edx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rax, qword ptr [rbp - 0x2040]
	add	rax, qword ptr [rbp - 0x2050]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, rax
	call	elseek
	xor	edx, edx
	mov	ecx, edx
	cmp	rcx, rax
	setle	r8b
	and	r8b, 1
	mov	byte ptr [rbp - 1], r8b
	jmp	.label_175
.label_189:
	jmp	.label_187
.label_185:
	mov	rax, qword ptr [rbp - 0x2040]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_188
	mov	byte ptr [rbp - 1], 1
	jmp	.label_175
.label_188:
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x2040]
	sub	rax, 0x2000
	mov	qword ptr [rbp - 0x2040], rax
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x2040]
	mov	rcx, qword ptr [rbp - 0x10]
	call	elseek
	cmp	rax, 0
	jge	.label_177
	mov	byte ptr [rbp - 1], 0
	jmp	.label_175
.label_177:
	mov	eax, 0x2000
	mov	edx, eax
	lea	rsi, [rbp - 0x2030]
	mov	edi, dword ptr [rbp - 0x14]
	call	safe_read
	mov	qword ptr [rbp - 0x2038], rax
	cmp	qword ptr [rbp - 0x2038], -1
	jne	.label_184
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_140
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x206c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x2078], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x206c]
	mov	rdx, qword ptr [rbp - 0x2078]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_175
.label_184:
	cmp	qword ptr [rbp - 0x2038], 0
	jne	.label_179
	mov	byte ptr [rbp - 1], 1
	jmp	.label_175
.label_179:
	jmp	.label_183
.label_175:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x2080
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403560

	.globl xwrite_stdout
	.type xwrite_stdout, @function
xwrite_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	cmp	qword ptr [rbp - 0x10], 0
	jbe	.label_191
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [stdout]]
	call	fwrite_unlocked
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_191
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	clearerr_unlocked
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_192
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], esi
	call	gettext
	mov	edi, 4
	movabs	rsi, OFFSET FLAT:label_193
	mov	qword ptr [rbp - 0x20], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_191:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403600

	.globl copy_fd
	.type copy_fd, @function
copy_fd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x2030
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x2018], 0x2000
.label_194:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x10]
	jae	.label_199
	mov	eax, 0x2000
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x10]
	jae	.label_196
	mov	eax, 0x2000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x2030], rcx
	jmp	.label_198
.label_196:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x2030], rax
.label_198:
	mov	rax, qword ptr [rbp - 0x2030]
	lea	rsi, [rbp - 0x2010]
	mov	qword ptr [rbp - 0x2020], rax
	mov	edi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x2020]
	call	safe_read
	mov	qword ptr [rbp - 0x2028], rax
	cmp	qword ptr [rbp - 0x2028], -1
	jne	.label_200
	mov	dword ptr [rbp - 4], 1
	jmp	.label_195
.label_200:
	mov	rax, qword ptr [rbp - 0x2028]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	cmp	qword ptr [rbp - 0x2028], 0
	jne	.label_197
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_197
	mov	dword ptr [rbp - 4], 2
	jmp	.label_195
.label_197:
	lea	rdi, [rbp - 0x2010]
	mov	rsi, qword ptr [rbp - 0x2028]
	call	xwrite_stdout
	jmp	.label_194
.label_199:
	mov	dword ptr [rbp - 4], 0
.label_195:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x2030
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403710

	.globl diagnose_copy_fd_failure
	.type diagnose_copy_fd_failure, @function
diagnose_copy_fd_failure:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	eax, edi
	sub	eax, 1
	mov	dword ptr [rbp - 0x14], edi
	mov	dword ptr [rbp - 0x18], eax
	je	.label_203
	jmp	.label_204
.label_204:
	mov	eax, dword ptr [rbp - 0x14]
	sub	eax, 2
	mov	dword ptr [rbp - 0x1c], eax
	je	.label_206
	jmp	.label_201
.label_203:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_140
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x20], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_202
.label_206:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_205
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x2c]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_202
.label_201:
	call	abort
.label_202:
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4037e0

	.globl elide_tail_bytes_pipe
	.type elide_tail_bytes_pipe, @function
elide_tail_bytes_pipe:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x130
	mov	rax, -1
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rcx
	mov	byte ptr [rbp - 0x31], 1
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x2000
	cmp	rax, rcx
	jae	.label_242
	movabs	rdi, OFFSET FLAT:label_212
	call	gettext
	lea	rsi, [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x108], rax
	call	umaxtostr
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x108]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_242:
	cmp	qword ptr [rbp - 0x28], 0x100000
	ja	.label_225
	mov	eax, 2
	mov	edi, eax
	mov	byte ptr [rbp - 0x51], 1
	mov	byte ptr [rbp - 0x52], 0
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 0x2000
	mov	qword ptr [rbp - 0x60], rcx
	mov	rsi, qword ptr [rbp - 0x60]
	call	xnmalloc
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x78], rax
	mov	byte ptr [rbp - 0x61], 0
.label_215:
	mov	al, byte ptr [rbp - 0x52]
	xor	al, 0xff
	test	al, 1
	jne	.label_235
	jmp	.label_222
.label_235:
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, byte ptr [rbp - 0x61]
	and	al, 1
	movzx	ecx, al
	mov	edx, ecx
	mov	rsi, qword ptr [rbp + rdx*8 - 0x80]
	mov	rdx, qword ptr [rbp - 0x60]
	call	full_read
	mov	qword ptr [rbp - 0x88], rax
	mov	qword ptr [rbp - 0x90], 0
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x60]
	jae	.label_240
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_209
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_140
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x10c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x118], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x10c]
	mov	rdx, qword ptr [rbp - 0x118]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x31], 0
	jmp	.label_222
.label_209:
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x28]
	ja	.label_224
	test	byte ptr [rbp - 0x51], 1
	je	.label_227
	jmp	.label_229
.label_227:
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x90], rax
.label_229:
	jmp	.label_224
.label_224:
	mov	byte ptr [rbp - 0x52], 1
.label_240:
	test	byte ptr [rbp - 0x51], 1
	jne	.label_238
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	cl, byte ptr [rbp - 0x61]
	xor	cl, 0xff
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	mov	rax, qword ptr [rbp + rax*8 - 0x80]
	add	rax, 0x2000
	mov	rsi, qword ptr [rbp - 0x28]
	sub	rsi, qword ptr [rbp - 0x90]
	mov	rdi, rax
	call	xwrite_stdout
.label_238:
	mov	byte ptr [rbp - 0x51], 0
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x88]
	jae	.label_243
	mov	rax, qword ptr [rbp - 0x88]
	sub	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	cl, byte ptr [rbp - 0x61]
	and	cl, 1
	movzx	edx, cl
	mov	eax, edx
	mov	rdi, qword ptr [rbp + rax*8 - 0x80]
	mov	rax, qword ptr [rbp - 0x88]
	sub	rax, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	xwrite_stdout
.label_243:
	jmp	.label_214
.label_214:
	mov	al, byte ptr [rbp - 0x61]
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 0x61], al
	jmp	.label_215
.label_222:
	mov	rdi, qword ptr [rbp - 0x80]
	call	free
	jmp	.label_221
.label_225:
	mov	eax, 0x2000
	mov	ecx, eax
	mov	byte ptr [rbp - 0x91], 0
	mov	qword ptr [rbp - 0xc0], 0
	mov	rdx, qword ptr [rbp - 0x28]
	and	rdx, 0x1fff
	sub	rcx, rdx
	mov	qword ptr [rbp - 0xc8], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rcx, qword ptr [rbp - 0xd0]
	shr	rcx, 0xd
	add	rcx, 1
	mov	qword ptr [rbp - 0xd8], rcx
	mov	qword ptr [rbp - 0xe0], 0
	mov	qword ptr [rbp - 0xe8], 0
	mov	byte ptr [rbp - 0xa1], 0
	mov	qword ptr [rbp - 0xb0], 0
	mov	qword ptr [rbp - 0xb8], 1
.label_247:
	mov	al, byte ptr [rbp - 0x91]
	xor	al, 0xff
	test	al, 1
	jne	.label_239
	jmp	.label_244
.label_239:
	mov	rax, qword ptr [rbp - 0xe8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jne	.label_245
	cmp	qword ptr [rbp - 0xe8], 0
	jne	.label_208
	cmp	qword ptr [rbp - 0xd8], 0x10
	jae	.label_210
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x120], rax
	jmp	.label_211
.label_210:
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x120], rcx
	jmp	.label_211
.label_211:
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_219
.label_208:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xd8]
	shr	rcx, 1
	cmp	rax, rcx
	ja	.label_223
	mov	rax, qword ptr [rbp - 0xe8]
	shl	rax, 1
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_218
.label_223:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0xe8], rax
.label_218:
	jmp	.label_219
.label_219:
	mov	eax, 8
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rsi, qword ptr [rbp - 0xe8]
	mov	rdi, rcx
	call	xnrealloc
	mov	qword ptr [rbp - 0xc0], rax
.label_245:
	test	byte ptr [rbp - 0xa1], 1
	jne	.label_231
	mov	eax, 0x2000
	mov	edi, eax
	call	xmalloc
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rcx + rdi*8], rax
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, 1
	mov	qword ptr [rbp - 0xe0], rax
.label_231:
	mov	eax, 0x2000
	mov	edx, eax
	mov	edi, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rsi, qword ptr [rsi + rcx*8]
	call	full_read
	mov	qword ptr [rbp - 0xa0], rax
	cmp	qword ptr [rbp - 0xa0], 0x2000
	jae	.label_226
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_217
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_140
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x124], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x130], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x124]
	mov	rdx, qword ptr [rbp - 0x130]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x31], 0
	jmp	.label_230
.label_217:
	mov	byte ptr [rbp - 0x91], 1
.label_226:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0xd8]
	jne	.label_233
	mov	byte ptr [rbp - 0xa1], 1
.label_233:
	test	byte ptr [rbp - 0xa1], 1
	je	.label_237
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0xa0]
	call	xwrite_stdout
.label_237:
	jmp	.label_246
.label_246:
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0xb8], rdx
	jmp	.label_247
.label_244:
	cmp	qword ptr [rbp - 0xc8], 0
	je	.label_213
	test	byte ptr [rbp - 0xa1], 1
	je	.label_216
	mov	eax, 0x2000
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0xf0], rcx
	mov	rcx, qword ptr [rbp - 0xc8]
	add	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0xc8]
	cmp	rcx, qword ptr [rbp - 0xf0]
	jae	.label_220
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0xc8]
	mov	rdi, rax
	call	xwrite_stdout
	jmp	.label_234
.label_220:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rdi, rax
	call	xwrite_stdout
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [rbp - 0xc8]
	sub	rax, qword ptr [rbp - 0xf0]
	mov	rsi, rax
	call	xwrite_stdout
.label_234:
	jmp	.label_228
.label_216:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0xd8]
	jne	.label_207
	mov	eax, 0x2000
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xf8], rcx
	mov	rcx, qword ptr [rbp - 0xa0]
	sub	rcx, qword ptr [rbp - 0xf8]
	mov	qword ptr [rbp - 0x100], rcx
	mov	rcx, qword ptr [rbp - 0x100]
	add	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rdi, qword ptr [rdx + rcx*8]
	mov	rsi, qword ptr [rbp - 0x100]
	call	xwrite_stdout
.label_207:
	jmp	.label_228
.label_228:
	jmp	.label_213
.label_213:
	jmp	.label_230
.label_230:
	mov	qword ptr [rbp - 0xb0], 0
.label_236:
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0xe0]
	jae	.label_232
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rdi, qword ptr [rcx + rax*8]
	call	free
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, 1
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_236
.label_232:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rdi, rax
	call	free
.label_221:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jg	.label_241
	xor	edx, edx
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	call	elseek
	cmp	rax, 0
	jge	.label_241
	mov	byte ptr [rbp - 0x31], 0
.label_241:
	mov	al, byte ptr [rbp - 0x31]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x130
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403f20
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
	#Procedure 0x403f40
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
	#Procedure 0x403f60

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_251
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_254
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_251
.label_254:
	movabs	rdi, OFFSET FLAT:label_252
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_248
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_79
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_250
.label_248:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_253
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_250:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_251:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_249
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_249:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404050

	.globl full_read
	.type full_read, @function
full_read:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rdx
.label_255:
	cmp	qword ptr [rbp - 0x18], 0
	jbe	.label_257
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	call	safe_read
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_258
	jmp	.label_257
.label_258:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_256
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_257
.label_256:
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
	jmp	.label_255
.label_257:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404100

	.globl offtostr
	.type offtostr, @function
offtostr:
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
	jge	.label_259
	jmp	.label_262
.label_262:
	mov	eax, 0x30
	mov	ecx, eax
	mov	eax, 0xa
	mov	edx, eax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x20]
	idiv	rsi
	sub	rcx, rdx
	mov	dil, cl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], dil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_262
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_260
.label_259:
	jmp	.label_261
.label_261:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	cqo	
	idiv	rcx
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
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_261
	jmp	.label_260
.label_260:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404200

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
	jae	.label_263
	jmp	.label_266
.label_266:
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
	jne	.label_266
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_265
.label_263:
	jmp	.label_264
.label_264:
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
	jne	.label_264
	jmp	.label_265
.label_265:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404300

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_267
	movabs	rdi, OFFSET FLAT:label_273
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_267:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_268
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_271
.label_268:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_271:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_269
	movabs	rsi, OFFSET FLAT:label_270
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_269
	movabs	rsi, OFFSET FLAT:label_274
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_272
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_272:
	jmp	.label_269
.label_269:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404420
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
	je	.label_275
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_276
.label_275:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_276
.label_276:
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
	#Procedure 0x4044a0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_277
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_278
.label_277:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_278
.label_278:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4044e0
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
	je	.label_279
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_280
.label_279:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_280
.label_280:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404530

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
	je	.label_281
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_282
.label_281:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_282
.label_282:
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
	#Procedure 0x4045e0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_283
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_283:
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
	#Procedure 0x404620

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
	jne	.label_284
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_284:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_286
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_285
.label_286:
	call	abort
.label_285:
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
	#Procedure 0x404690
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
	je	.label_287
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_288
.label_287:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_288
.label_288:
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
	#Procedure 0x404760

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
.label_395:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_490
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_295]]
	jmp	rcx
.label_768:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_767:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_304
	jmp	.label_306
.label_306:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_308
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_308:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_304
.label_304:
	movabs	rax, OFFSET FLAT:label_320
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_321
.label_769:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_321
.label_770:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_331
	movabs	rdi, OFFSET FLAT:label_335
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_338
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_331:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_345
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_365:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_349
	jmp	.label_352
.label_352:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_354
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_354:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_359
.label_359:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_365
.label_349:
	jmp	.label_345
.label_345:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_321
.label_765:
	mov	byte ptr [rbp - 0x79], 1
.label_764:
	mov	byte ptr [rbp - 0x7b], 1
.label_766:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_377
	mov	byte ptr [rbp - 0x79], 1
.label_377:
	jmp	.label_324
.label_324:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_387
	jmp	.label_382
.label_382:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_384
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_384:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_387
.label_387:
	movabs	rax, OFFSET FLAT:label_338
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_321
.label_763:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_321
.label_490:
	call	abort
.label_321:
	mov	qword ptr [rbp - 0x58], 0
.label_363:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_456
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_404
.label_456:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_404:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_415
	jmp	.label_383
.label_415:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_422
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_422
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_422
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_431
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_431
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_443
.label_431:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_443:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_422
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_422
	test	byte ptr [rbp - 0x7b], 1
	je	.label_449
	jmp	.label_311
.label_449:
	mov	byte ptr [rbp - 0x81], 1
.label_422:
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
	ja	.label_453
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_457]]
	jmp	rcx
.label_809:
	test	byte ptr [rbp - 0x79], 1
	je	.label_458
	jmp	.label_462
.label_462:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_317
	jmp	.label_311
.label_317:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_467
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_467
	jmp	.label_471
.label_471:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_472
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_472:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_477
.label_477:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_432
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_432:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_397
.label_397:
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
.label_467:
	jmp	.label_296
.label_296:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_298
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_298:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_371
.label_371:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_310
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_310
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_310
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_310
	jmp	.label_329
.label_329:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_487
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_487:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_337
.label_337:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_342
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_342:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_310
.label_310:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_353
.label_458:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_357
	jmp	.label_360
.label_357:
	jmp	.label_353
.label_353:
	jmp	.label_292
.label_820:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_361
	jmp	.label_368
.label_368:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_370
	jmp	.label_475
.label_361:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_373
	jmp	.label_311
.label_373:
	jmp	.label_376
.label_370:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_378
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_378
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_378
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_355
	jmp	.label_392
.label_392:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_355
	jmp	.label_399
.label_399:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_355
	jmp	.label_405
.label_405:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_355
	jmp	.label_410
.label_410:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_411
	jmp	.label_355
.label_355:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_417
	jmp	.label_311
.label_417:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_421
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_421:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_429
.label_429:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_434
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_434:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_439
.label_439:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_293
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_293:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_447
.label_447:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_483
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_483:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_406
.label_411:
	jmp	.label_406
.label_406:
	jmp	.label_378
.label_378:
	jmp	.label_376
.label_475:
	jmp	.label_376
.label_376:
	jmp	.label_292
.label_810:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_454
.label_811:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_454
.label_815:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_454
.label_813:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_398
.label_816:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_398
.label_812:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_398
.label_814:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_454
.label_821:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_460
	test	byte ptr [rbp - 0x7b], 1
	je	.label_465
	jmp	.label_311
.label_465:
	jmp	.label_314
.label_460:
	test	byte ptr [rbp - 0x79], 1
	je	.label_468
	test	byte ptr [rbp - 0x7b], 1
	je	.label_468
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_468
	jmp	.label_314
.label_468:
	jmp	.label_398
.label_398:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_476
	test	byte ptr [rbp - 0x7b], 1
	je	.label_476
	jmp	.label_311
.label_476:
	jmp	.label_454
.label_454:
	test	byte ptr [rbp - 0x79], 1
	je	.label_482
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_464
.label_482:
	jmp	.label_292
.label_822:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_446
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_289
	jmp	.label_492
.label_446:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_289
.label_492:
	jmp	.label_292
.label_289:
	jmp	.label_294
.label_294:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_297
	jmp	.label_292
.label_297:
	jmp	.label_301
.label_301:
	mov	byte ptr [rbp - 0x83], 1
.label_817:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_305
	test	byte ptr [rbp - 0x7b], 1
	je	.label_305
	jmp	.label_311
.label_305:
	jmp	.label_292
.label_819:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_312
	test	byte ptr [rbp - 0x7b], 1
	je	.label_318
	jmp	.label_311
.label_318:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_327
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_327
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_327:
	jmp	.label_333
.label_333:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_479
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_479:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_341
.label_341:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_344
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_344:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_351
.label_351:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_358
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_358:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_312:
	jmp	.label_292
.label_818:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_292
.label_453:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_369
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
	jmp	.label_291
.label_369:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_386
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_386:
	jmp	.label_393
.label_393:
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
	jne	.label_408
	jmp	.label_328
.label_408:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_414
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_328
.label_414:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_419
	mov	byte ptr [rbp - 0x91], 0
.label_440:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_423
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_423:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_437
	jmp	.label_438
.label_437:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_440
.label_438:
	jmp	.label_328
.label_419:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_445
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_445
	mov	qword ptr [rbp - 0xb8], 1
.label_470:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_448
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
	jb	.label_339
	jmp	.label_455
.label_455:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_339
	jmp	.label_469
.label_469:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_339
	jmp	.label_459
.label_459:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_461
	jmp	.label_339
.label_339:
	jmp	.label_311
.label_461:
	jmp	.label_394
.label_394:
	jmp	.label_362
.label_362:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_470
.label_448:
	jmp	.label_445
.label_445:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_478
	mov	byte ptr [rbp - 0x91], 0
.label_478:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_481
.label_481:
	jmp	.label_485
.label_485:
	jmp	.label_486
.label_486:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_393
.label_328:
	jmp	.label_291
.label_291:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_290
	test	byte ptr [rbp - 0x79], 1
	je	.label_303
	test	byte ptr [rbp - 0x91], 1
	jne	.label_303
.label_290:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_347:
	test	byte ptr [rbp - 0x79], 1
	je	.label_313
	test	byte ptr [rbp - 0x91], 1
	jne	.label_313
	jmp	.label_430
.label_430:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_322
	jmp	.label_311
.label_322:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_326
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_326
	jmp	.label_332
.label_332:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_334
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_334:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_340
.label_340:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_343
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_343:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_350
.label_350:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_356
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_356:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_326:
	jmp	.label_364
.label_364:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_366
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_366:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_463
.label_463:
	jmp	.label_374
.label_374:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_375
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_375:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_380
.label_380:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_385
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_385:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_389
.label_313:
	test	byte ptr [rbp - 0x81], 1
	je	.label_396
	jmp	.label_400
.label_400:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_402
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_402:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_396:
	jmp	.label_389
.label_389:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_412
	jmp	.label_416
.label_412:
	jmp	.label_418
.label_418:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_420
	test	byte ptr [rbp - 0x82], 1
	jne	.label_420
	jmp	.label_424
.label_424:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_425
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_425:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_428
.label_428:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_433
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_433:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_420:
	jmp	.label_441
.label_441:
	jmp	.label_442
.label_442:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_444
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_444:
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
	jmp	.label_347
.label_416:
	jmp	.label_314
.label_303:
	jmp	.label_292
.label_292:
	test	byte ptr [rbp - 0x79], 1
	je	.label_450
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_452
.label_450:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_436
.label_452:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_436
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
	jne	.label_451
.label_436:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_451
	jmp	.label_314
.label_451:
	jmp	.label_464
.label_464:
	jmp	.label_466
.label_466:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_426
	jmp	.label_311
.label_426:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_381
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_381
	jmp	.label_473
.label_473:
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
	jmp	.label_480
.label_480:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_484
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_484:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_488
.label_488:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_491
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_491:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_381:
	jmp	.label_300
.label_300:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_302
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_302:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_309
.label_309:
	jmp	.label_314
.label_314:
	jmp	.label_315
.label_315:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_316
	test	byte ptr [rbp - 0x82], 1
	jne	.label_316
	jmp	.label_323
.label_323:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_325
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_325:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_330
.label_330:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_336
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_336:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_316:
	jmp	.label_346
.label_346:
	jmp	.label_348
.label_348:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_299
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_299:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_391
	mov	byte ptr [rbp - 0x7e], 0
.label_391:
	jmp	.label_360
.label_360:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_363
.label_383:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_367
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_367
	test	byte ptr [rbp - 0x7b], 1
	je	.label_367
	jmp	.label_311
.label_367:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_307
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_307
	test	byte ptr [rbp - 0x7d], 1
	je	.label_307
	test	byte ptr [rbp - 0x7e], 1
	je	.label_379
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
	jmp	.label_388
.label_379:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_390
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_390
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_395
.label_390:
	jmp	.label_401
.label_401:
	jmp	.label_307
.label_307:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_403
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_403
	jmp	.label_407
.label_407:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_409
	jmp	.label_319
.label_319:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_413
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_413:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_372
.label_372:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_407
.label_409:
	jmp	.label_403
.label_403:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_427
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_427:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_388
.label_311:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_435
	test	byte ptr [rbp - 0x79], 1
	je	.label_435
	mov	dword ptr [rbp - 0x34], 4
.label_435:
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
.label_388:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405b00
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
	#Procedure 0x405b40

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
	je	.label_493
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_494
.label_493:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_494
.label_494:
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
	je	.label_495
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_495:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405ca0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_499:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_498
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_499
.label_498:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_500
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_497]],  rax
.label_500:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_496
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_496:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405d80

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
	#Procedure 0x405dc0

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
	jge	.label_503
	call	abort
.label_503:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_508
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_502
	call	xalloc_die
.label_502:
	test	byte ptr [rbp - 0x31], 1
	je	.label_507
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_501
.label_507:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_501:
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
	je	.label_506
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_497]]
	mov	qword ptr [rax + 8], rcx
.label_506:
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
.label_508:
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
	ja	.label_504
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_505
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_505:
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
.label_504:
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
	#Procedure 0x406040

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
	#Procedure 0x406080
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
	#Procedure 0x4060a0
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
	#Procedure 0x4060d0

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
	#Procedure 0x406110

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
	jne	.label_509
	call	abort
.label_509:
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
	#Procedure 0x406180

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
	#Procedure 0x4061c0

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
	#Procedure 0x4061f0
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
	#Procedure 0x406220

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
	#Procedure 0x4062a0

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
	#Procedure 0x4062d0

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
	#Procedure 0x4062f0
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
	#Procedure 0x406320

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
	#Procedure 0x4063d0

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
	#Procedure 0x406410

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
	#Procedure 0x406490
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
	#Procedure 0x4064c0
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
	#Procedure 0x406500

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
	#Procedure 0x406540
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
	#Procedure 0x406570

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
	#Procedure 0x4065a0

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
	#Procedure 0x4065c0

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
	je	.label_516
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_512
.label_516:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_514
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_515
	movabs	rax, OFFSET FLAT:label_518
	movabs	rcx, OFFSET FLAT:label_519
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_512
.label_515:
	movabs	rsi, OFFSET FLAT:label_513
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_517
	movabs	rax, OFFSET FLAT:label_510
	movabs	rcx, OFFSET FLAT:label_511
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_512
.label_517:
	movabs	rax, OFFSET FLAT:label_338
	movabs	rcx, OFFSET FLAT:label_320
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_512:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4066c0

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
.label_524:
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	read
	xor	edi, edi
	mov	edx, edi
	mov	qword ptr [rbp - 0x28], rax
	cmp	rdx, qword ptr [rbp - 0x28]
	jg	.label_521
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_520
.label_521:
	call	__errno_location
	cmp	dword ptr [rax], 4
	jne	.label_522
	jmp	.label_524
.label_522:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_526
	mov	eax, 0x7ff00000
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jae	.label_526
	mov	qword ptr [rbp - 0x20], 0x7ff00000
	jmp	.label_525
.label_526:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_520
.label_525:
	jmp	.label_523
.label_523:
	jmp	.label_527
.label_527:
	jmp	.label_524
.label_520:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406770

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
	je	.label_542
	movabs	rsi, OFFSET FLAT:label_539
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_529
.label_542:
	movabs	rsi, OFFSET FLAT:label_532
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_529:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_540
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
	mov	ecx, OFFSET FLAT:label_531
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
	ja	.label_545
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_535]]
	jmp	rcx
.label_793:
	jmp	.label_533
.label_794:
	movabs	rdi, OFFSET FLAT:label_541
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
	jmp	.label_533
.label_795:
	movabs	rdi, OFFSET FLAT:label_538
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
	jmp	.label_533
.label_796:
	movabs	rdi, OFFSET FLAT:label_537
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
	jmp	.label_533
.label_797:
	movabs	rdi, OFFSET FLAT:label_530
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
	jmp	.label_533
.label_798:
	movabs	rdi, OFFSET FLAT:label_534
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
	jmp	.label_533
.label_799:
	movabs	rdi, OFFSET FLAT:label_543
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
	jmp	.label_533
.label_800:
	movabs	rdi, OFFSET FLAT:label_546
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
	jmp	.label_533
.label_801:
	movabs	rdi, OFFSET FLAT:label_536
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
	jmp	.label_533
.label_802:
	movabs	rdi, OFFSET FLAT:label_528
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
	jmp	.label_533
.label_545:
	movabs	rdi, OFFSET FLAT:label_544
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
.label_533:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406d30
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
.label_549:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_547
	jmp	.label_548
.label_548:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_549
.label_547:
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
	#Procedure 0x406da0

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
.label_553:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_550
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_555
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_554
.label_555:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_554:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_550:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_556
	jmp	.label_551
.label_556:
	jmp	.label_552
.label_552:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_553
.label_551:
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
	#Procedure 0x406eb0

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
	je	.label_557
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
.label_557:
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
	#Procedure 0x407020
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_558
	call	gettext
	movabs	rsi, OFFSET FLAT:label_560
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_561
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_35
	movabs	rdx, OFFSET FLAT:label_24
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_559
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
	#Procedure 0x4070b0

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
	jae	.label_562
	call	xalloc_die
.label_562:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407100

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
	jne	.label_563
	cmp	qword ptr [rbp - 8], 0
	je	.label_563
	call	xalloc_die
.label_563:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407140

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
	jae	.label_564
	call	xalloc_die
.label_564:
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
	#Procedure 0x407190

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_565
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_565
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_567
.label_565:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_566
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_566
	call	xalloc_die
.label_566:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_567:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407210

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
	jne	.label_568
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_571
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
.label_571:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_569
	call	xalloc_die
.label_569:
	jmp	.label_570
.label_568:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_572
	call	xalloc_die
.label_572:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_570:
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
	#Procedure 0x407300

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
	#Procedure 0x407320
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
	#Procedure 0x407350
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
	#Procedure 0x407390
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
	jb	.label_573
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_574
.label_573:
	call	xalloc_die
.label_574:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4073f0

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
	#Procedure 0x407430
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
	#Procedure 0x407470

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_575
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_253
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4074b0

	.globl xset_binary_mode_error
	.type xset_binary_mode_error, @function
xset_binary_mode_error:
	push	rbp
	mov	rbp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4074c0

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
	jge	.label_576
	call	xset_binary_mode_error
.label_576:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4074f0

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
	jne	.label_588
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_577
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x48]
	jae	.label_580
.label_577:
	mov	dword ptr [rbp - 0x40], 1
	cmp	qword ptr [rbp - 0x48], 0x3fffffff
	jbe	.label_584
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_590
.label_584:
	call	__errno_location
	mov	dword ptr [rax], 0x22
.label_590:
	jmp	.label_580
.label_580:
	jmp	.label_579
.label_588:
	cmp	dword ptr [rbp - 0x40], 1
	jne	.label_582
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_578
.label_582:
	cmp	dword ptr [rbp - 0x40], 3
	jne	.label_587
	call	__errno_location
	mov	dword ptr [rax], 0
.label_587:
	jmp	.label_578
.label_578:
	jmp	.label_579
.label_579:
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_581
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_583
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_585
.label_583:
	mov	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_585
.label_585:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x50], eax
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_589
	xor	eax, eax
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_586
.label_589:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], ecx
.label_586:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x60], rcx
	call	quote
	movabs	rdx, OFFSET FLAT:label_79
	mov	edi, dword ptr [rbp - 0x50]
	mov	esi, dword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	r8, rax
	mov	al, 0
	call	error
.label_581:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x58
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407670

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
	.align	32
	#Procedure 0x4076c0

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
	jg	.label_624
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_624
	jmp	.label_630
.label_624:
	movabs	rdi, OFFSET FLAT:label_631
	movabs	rsi, OFFSET FLAT:label_632
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_633
	call	__assert_fail
.label_630:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_598
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_601
.label_598:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_601
.label_601:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_617:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_615
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_617
.label_615:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_621
	mov	dword ptr [rbp - 4], 4
	jmp	.label_610
.label_621:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoumax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_627
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_597
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_597
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_597
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_600
.label_597:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_610
.label_600:
	jmp	.label_613
.label_627:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_606
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_611
	mov	dword ptr [rbp - 4], 4
	jmp	.label_610
.label_611:
	mov	dword ptr [rbp - 0x4c], 1
.label_606:
	jmp	.label_613
.label_613:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_614
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_610
.label_614:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_605
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_626
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_610
.label_626:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_595
	jmp	.label_593
.label_593:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_595
	jmp	.label_599
.label_599:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_595
	jmp	.label_603
.label_603:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_595
	jmp	.label_609
.label_609:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_595
	jmp	.label_622
.label_622:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_595
	jmp	.label_616
.label_616:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_595
	jmp	.label_618
.label_618:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_595
	jmp	.label_623
.label_623:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_595
	jmp	.label_625
.label_625:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_595
	jmp	.label_628
.label_628:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_619
	jmp	.label_595
.label_595:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_592
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_596
	jmp	.label_602
.label_602:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_596
	jmp	.label_608
.label_608:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_604
	jmp	.label_612
.label_612:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_607
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_607:
	jmp	.label_604
.label_596:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_604:
	jmp	.label_592
.label_592:
	jmp	.label_619
.label_619:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xc0], rax
	mov	dword ptr [rbp - 0xc4], ecx
	ja	.label_620
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_629]]
	jmp	rcx
.label_785:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_591
.label_776:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_591
.label_786:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_591
.label_777:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_591
.label_778:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_591
.label_779:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_591
.label_780:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_591
.label_781:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_591
.label_782:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_591
.label_787:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_591
.label_783:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_591
.label_784:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_591
.label_620:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_610
.label_591:
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
	je	.label_594
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_594:
	jmp	.label_605
.label_605:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_610:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407c70

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
	jae	.label_634
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_635
.label_634:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_635:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407cd0

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
.label_637:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_636
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_637
.label_636:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407d20

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
	jne	.label_638
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_638:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_639
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_639
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_639
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_640
.label_639:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_640:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407dd0

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
	#Procedure 0x407de0

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
	#Procedure 0x407df0

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
	je	.label_642
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_641
.label_642:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	__gl_setmode
	mov	dword ptr [rbp - 0x10], eax
.label_641:
	mov	eax, dword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407e40

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
	jne	.label_643
	mov	dword ptr [rbp - 4], 0
	jmp	.label_647
.label_643:
	jmp	.label_644
.label_644:
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
	jne	.label_646
	jmp	.label_645
.label_646:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_644
.label_645:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_647:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407f00

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
	jne	.label_648
	test	byte ptr [rbp - 0x13], 1
	je	.label_650
	test	byte ptr [rbp - 0x11], 1
	jne	.label_648
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_650
.label_648:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_651
	call	__errno_location
	mov	dword ptr [rax], 0
.label_651:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_649
.label_650:
	mov	dword ptr [rbp - 4], 0
.label_649:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407fb0

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
	je	.label_652
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_656
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_655
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_653
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_654
.label_655:
	mov	byte ptr [rbp - 5], 0
.label_654:
	jmp	.label_652
.label_652:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408030

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
	jne	.label_657
	movabs	rax, OFFSET FLAT:label_32
	mov	qword ptr [rbp - 8], rax
.label_657:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_658
	movabs	rax, OFFSET FLAT:label_659
	mov	qword ptr [rbp - 8], rax
.label_658:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408090

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
	jge	.label_663
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_660
.label_663:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_664
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_662
.label_664:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_662
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_662:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_661
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_661:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_660:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408160

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_665
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_666
.label_665:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_667
.label_666:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_667:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4081c0

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
	je	.label_668
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_668:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408200

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
	jne	.label_669
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_669
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_669
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_671
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_670
.label_671:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_670
.label_669:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_670:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4082d0

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
	ja	.label_672
	jmp	.label_674
.label_674:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_673
.label_672:
	jmp	.label_673
.label_673:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408320
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
	jb	.label_675
	jmp	.label_677
.label_677:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_675
	jmp	.label_676
.label_676:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_678
	jmp	.label_675
.label_675:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_679
.label_678:
	mov	byte ptr [rbp - 1], 0
.label_679:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408390
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
	jb	.label_680
	jmp	.label_683
.label_683:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_681
	jmp	.label_680
.label_680:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_682
.label_681:
	mov	byte ptr [rbp - 1], 0
.label_682:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4083e0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_684
	jmp	.label_685
.label_685:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_686
.label_684:
	mov	byte ptr [rbp - 1], 0
.label_686:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408410
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_687
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_687:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408440
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
	jb	.label_688
	jmp	.label_690
.label_690:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_691
	jmp	.label_688
.label_688:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_689
.label_691:
	mov	byte ptr [rbp - 1], 0
.label_689:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408490
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_692
	jmp	.label_694
.label_694:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_693
.label_692:
	mov	byte ptr [rbp - 1], 0
.label_693:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4084d0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_695
	jmp	.label_697
.label_697:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_696
.label_695:
	mov	byte ptr [rbp - 1], 0
.label_696:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408510
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_698
	jmp	.label_700
.label_700:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_699
.label_698:
	mov	byte ptr [rbp - 1], 0
.label_699:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408550
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_701
	jmp	.label_703
.label_703:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_702
.label_701:
	mov	byte ptr [rbp - 1], 0
.label_702:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408590
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
	ja	.label_704
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_706]]
	jmp	rcx
.label_845:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_705
.label_704:
	mov	byte ptr [rbp - 1], 0
.label_705:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4085e0
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
	jb	.label_707
	jmp	.label_710
.label_710:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_709
	jmp	.label_707
.label_707:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_708
.label_709:
	mov	byte ptr [rbp - 1], 0
.label_708:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408630
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_711
	jmp	.label_713
.label_713:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_712
.label_711:
	mov	byte ptr [rbp - 1], 0
.label_712:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408670
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
	jb	.label_714
	jmp	.label_716
.label_716:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_714
	jmp	.label_715
.label_715:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_717
	jmp	.label_714
.label_714:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_718
.label_717:
	mov	byte ptr [rbp - 1], 0
.label_718:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4086e0

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_719
	jmp	.label_721
.label_721:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_720
.label_719:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_720:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408720
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_722
	jmp	.label_724
.label_724:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_723
.label_722:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_723:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408810

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
