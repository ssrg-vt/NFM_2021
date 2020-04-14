	.section	.text
	hlt	
	nop	word ptr [rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr [rax + rax]
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402090

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	nop	
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_7
	jmp	.label_9
.label_9:
	movabs	rdi, OFFSET FLAT:.str
	nop	
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x30], rax
	call	gettext
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [program_name]]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_8
.label_7:
	movabs	rdi, OFFSET FLAT:.str.1
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [program_name]]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rdi, [rdi]
	call	printf
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.2
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x20], eax
	mov	rbp, rbp
	call	emit_mandatory_arg_note
	nop	
	movabs	rdi, OFFSET FLAT:.str.3
	nop	
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.4
	nop	
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.5
	mov	dword ptr [rbp - 0x38], eax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.6
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], eax
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.7
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], eax
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.8
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.9
	mov	dword ptr [rbp - 0x34], eax
	nop	
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.10
	mov	dword ptr [rbp - 0x14], eax
	call	emit_blocksize_note
	mov	rsp, rsp
	call	emit_size_note
	nop	
	movabs	rdi, OFFSET FLAT:.str.11
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.12
	mov	dword ptr [rbp - 0x24], eax
	lea	rsi, [rsi]
	call	emit_ancillary_info
.label_8:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022e0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.36
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402330

	.globl emit_blocksize_note
	.type emit_blocksize_note, @function
emit_blocksize_note:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	movabs	rax, OFFSET FLAT:.str.37
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rax
	lea	rdi, [rdi]
	call	gettext
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	printf
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402380

	.globl emit_size_note
	.type emit_size_note, @function
emit_size_note:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.38
	mov	rsp, rsp
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023d0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 0x40], rdi
	mov	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x38], rax
.label_11:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x38]
	nop	
	cmp	qword ptr [rdx], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], cl
	mov	rbp, rbp
	je	.label_14
	nop	
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	call	strcmp
	cmp	eax, 0
	lea	rdi, [rdi]
	sete	cl
	mov	rsp, rsp
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x11], cl
.label_14:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_15
	mov	rbp, rbp
	jmp	.label_10
.label_15:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	add	rax, 0x10
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_11
.label_10:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_13
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x28], rax
.label_13:
	movabs	rdi, OFFSET FLAT:.str.47
	lea	rdi, [rdi]
	call	gettext
	nop	
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	mov	al, 0
	lea	rdi, [rdi]
	call	printf
	mov	edi, 5
	xor	ecx, ecx
	mov	rbp, rbp
	mov	esi, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	call	setlocale
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_12
	movabs	rsi, OFFSET FLAT:.str.49
	mov	rbp, rbp
	mov	eax, 3
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_12
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.50
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x44], eax
.label_12:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.51
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.18
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	printf
	nop	
	movabs	rdi, OFFSET FLAT:.str.52
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.53
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	cmove	rdx, rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rbp, rbp
	call	printf
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4025f0

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x140
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], 0
	mov	dword ptr [rbp - 0x98], edi
	nop	
	mov	qword ptr [rbp - 0x80], rsi
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsi]
	lea	rsi, [rsi]
	call	set_program_name
	mov	edi, 6
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.14
	movabs	rsi, OFFSET FLAT:.str.15
	nop	
	mov	qword ptr [rbp - 0x58], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.14
	mov	qword ptr [rbp - 0x40], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x100], rax
	call	atexit
	movabs	rdi, OFFSET FLAT:.str.16
	mov	rsp, rsp
	mov	qword ptr [word ptr [fs_select_list]],  0
	mov	qword ptr [word ptr [fs_exclude_list]],  0
	mov	byte ptr [byte ptr [show_all_fs]],  0
	mov	byte ptr [byte ptr [show_listed_fs]],  0
	nop	
	mov	dword ptr [dword ptr [human_output_opts]],  0xffffffff
	mov	byte ptr [byte ptr [print_type]],  0
	mov	rbp, rbp
	mov	byte ptr [byte ptr [file_systems_processed]],  0
	mov	rsp, rsp
	mov	dword ptr [dword ptr [exit_status]],  0
	mov	rsp, rsp
	mov	byte ptr [byte ptr [print_grand_total]],  0
	mov	rsp, rsp
	mov	qword ptr [word ptr [grand_fsu]],  1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x115], 0
	mov	dword ptr [rbp - 0x94], eax
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], rax
.label_94:
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str.17_0
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:long_options
	lea	r8, [rbp - 0x10]
	mov	dword ptr [rbp - 0x10], 0xffffffff
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	call	getopt_long
	mov	dword ptr [rbp - 0x9c], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x9c], -1
	mov	rbp, rbp
	jne	.label_90
	jmp	.label_95
.label_90:
	mov	eax, dword ptr [rbp - 0x9c]
	nop	
	mov	ecx, eax
	mov	rbp, rbp
	sub	ecx, 0xffffff7d
	nop	
	mov	dword ptr [rbp - 0x64], eax
	mov	dword ptr [rbp - 0x78], ecx
	je	.label_98
	jmp	.label_101
.label_101:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x64]
	lea	rsi, [rsi]
	sub	eax, 0xffffff7e
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	je	.label_87
	lea	rsi, [rsi]
	jmp	.label_106
.label_106:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x42
	mov	dword ptr [rbp - 0x88], eax
	mov	rsp, rsp
	je	.label_70
	jmp	.label_107
.label_107:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x64]
	mov	rbp, rbp
	sub	eax, 0x46
	mov	dword ptr [rbp - 0xf4], eax
	je	.label_66
	jmp	.label_16
.label_16:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x64]
	mov	rbp, rbp
	sub	eax, 0x48
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_18
	jmp	.label_22
.label_22:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	je	.label_24
	jmp	.label_27
.label_27:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	sub	eax, 0x54
	nop	
	mov	dword ptr [rbp - 0x120], eax
	je	.label_28
	nop	
	jmp	.label_34
.label_34:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x4c], eax
	je	.label_36
	jmp	.label_39
.label_39:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x64]
	lea	rsi, [rsi]
	sub	eax, 0x68
	nop	
	mov	dword ptr [rbp - 4], eax
	je	.label_41
	mov	rbp, rbp
	jmp	.label_45
.label_45:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_48
	jmp	.label_104
.label_104:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x64]
	nop	
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0x114], eax
	mov	rbp, rbp
	je	.label_53
	jmp	.label_55
.label_55:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	sub	eax, 0x6c
	mov	dword ptr [rbp - 0x20], eax
	lea	rdi, [rdi]
	je	.label_56
	jmp	.label_76
.label_76:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x64]
	mov	rbp, rbp
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x84], eax
	lea	rsi, [rsi]
	je	.label_61
	jmp	.label_65
.label_65:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xec], eax
	je	.label_66
	lea	rsi, [rsi]
	jmp	.label_71
.label_71:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x68], eax
	mov	rbp, rbp
	je	.label_75
	lea	rsi, [rsi]
	jmp	.label_67
.label_67:
	nop	
	mov	eax, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	sub	eax, 0x78
	mov	dword ptr [rbp - 0x128], eax
	je	.label_79
	lea	rsi, [rsi]
	jmp	.label_84
.label_84:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x6c], eax
	nop	
	je	.label_86
	mov	rsp, rsp
	jmp	.label_89
.label_89:
	mov	eax, dword ptr [rbp - 0x64]
	mov	rbp, rbp
	sub	eax, 0x81
	mov	dword ptr [rbp - 0x34], eax
	je	.label_91
	jmp	.label_96
.label_96:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	sub	eax, 0x82
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd8], eax
	mov	rbp, rbp
	je	.label_77
	mov	rsp, rsp
	jmp	.label_108
.label_108:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x83
	mov	dword ptr [rbp - 0xbc], eax
	je	.label_103
	lea	rsi, [rsi]
	jmp	.label_50
.label_36:
	mov	byte ptr [byte ptr [show_all_fs]],  1
	mov	rsp, rsp
	jmp	.label_17
.label_70:
	movabs	rsi, OFFSET FLAT:human_output_opts
	movabs	rdx, OFFSET FLAT:output_block_size
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	rsp, rsp
	call	human_options
	mov	dword ptr [rbp - 0xb0], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xb0], 0
	je	.label_111
	nop	
	movabs	rcx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rbp - 0xb0]
	mov	esi, dword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	mov	dl, al
	mov	rbp, rbp
	mov	r8,  qword ptr [word ptr [optarg]]
	movsx	edx, dl
	mov	rbp, rbp
	call	xstrtol_fatal
.label_111:
	jmp	.label_17
.label_48:
	nop	
	cmp	dword ptr [dword ptr [header_mode]],  4
	nop	
	jne	.label_33
	xor	eax, eax
	nop	
	movabs	rcx, OFFSET FLAT:.str.18_0
	lea	rdi, [rdi]
	movabs	r8, OFFSET FLAT:.str.19
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	edi, eax
	mov	rbp, rbp
	mov	esi, eax
	mov	al, 0
	call	error
	nop	
	mov	edi, 1
	call	usage
.label_33:
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [header_mode]],  1
	jmp	.label_17
.label_41:
	mov	dword ptr [dword ptr [human_output_opts]],  0xb0
	mov	qword ptr [word ptr [output_block_size]],  1
	jmp	.label_17
.label_18:
	mov	dword ptr [dword ptr [human_output_opts]],  0x90
	mov	qword ptr [word ptr [output_block_size]],  1
	mov	rbp, rbp
	jmp	.label_17
.label_53:
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [human_output_opts]],  0
	mov	rbp, rbp
	mov	qword ptr [word ptr [output_block_size]],  0x400
	jmp	.label_17
.label_56:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [show_local_fs]],  1
	jmp	.label_17
.label_61:
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [human_output_opts]],  0
	mov	rsp, rsp
	mov	qword ptr [word ptr [output_block_size]],  0x100000
	jmp	.label_17
.label_28:
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [header_mode]],  4
	jne	.label_83
	xor	eax, eax
	nop	
	movabs	rcx, OFFSET FLAT:.str.20
	movabs	r8, OFFSET FLAT:.str.19
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	edi, eax
	mov	esi, eax
	mov	al, 0
	nop	
	call	error
	nop	
	mov	edi, 1
	call	usage
.label_83:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [print_type]],  1
	jmp	.label_17
.label_24:
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [header_mode]],  4
	mov	rbp, rbp
	jne	.label_100
	xor	eax, eax
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:.str.21
	lea	rdi, [rdi]
	movabs	r8, OFFSET FLAT:.str.19
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	edi, eax
	mov	esi, eax
	nop	
	mov	al, 0
	nop	
	call	error
	mov	edi, 1
	nop	
	call	usage
.label_100:
	mov	byte ptr [rbp - 0x115], 1
	lea	rsi, [rsi]
	jmp	.label_17
.label_91:
	mov	byte ptr [byte ptr [require_sync]],  1
	jmp	.label_17
.label_86:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [require_sync]],  0
	lea	rdi, [rdi]
	jmp	.label_17
.label_66:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	call	add_fs_type
	jmp	.label_17
.label_75:
	mov	rsp, rsp
	jmp	.label_17
.label_79:
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	rbp, rbp
	call	add_excluded_fs_type
	jmp	.label_17
.label_103:
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [header_mode]],  1
	mov	rsp, rsp
	jne	.label_105
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:.str.18_0
	mov	rbp, rbp
	movabs	r8, OFFSET FLAT:.str.19
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	edi, eax
	mov	rbp, rbp
	mov	esi, eax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	rbp, rbp
	mov	edi, 1
	call	usage
.label_105:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x115], 1
	mov	rsp, rsp
	je	.label_37
	cmp	dword ptr [dword ptr [header_mode]],  0
	lea	rdi, [rdi]
	jne	.label_37
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:.str.21
	movabs	r8, OFFSET FLAT:.str.19
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	edi, eax
	mov	rsp, rsp
	mov	esi, eax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
	nop	
	mov	edi, 1
	mov	rbp, rbp
	call	usage
.label_37:
	test	byte ptr [byte ptr [print_type]],  1
	je	.label_72
	xor	eax, eax
	movabs	rcx, OFFSET FLAT:.str.20
	lea	rsi, [rsi]
	movabs	r8, OFFSET FLAT:.str.19
	mov	rdx, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	edi, eax
	mov	esi, eax
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rsp, rsp
	call	usage
.label_72:
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [header_mode]],  4
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_109
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	decode_output_arg
.label_109:
	jmp	.label_17
.label_77:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [print_grand_total]],  1
	mov	rbp, rbp
	jmp	.label_17
.label_87:
	mov	rsp, rsp
	xor	edi, edi
	call	usage
.label_98:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.12
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str.17
	movabs	r8, OFFSET FLAT:.str.23
	movabs	r9, OFFSET FLAT:.str.24
	movabs	rax, OFFSET FLAT:.str.25
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edi, ecx
	mov	r10,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rdi
	mov	rsp, rsp
	mov	rdi, r10
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], 0
	mov	al, 0
	mov	rsp, rsp
	call	version_etc
	xor	edi, edi
	lea	rdi, [rdi]
	call	exit
.label_50:
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rdi, [rdi]
	call	usage
.label_17:
	jmp	.label_94
.label_95:
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [human_output_opts]],  -1
	jne	.label_30
	test	byte ptr [rbp - 0x115], 1
	lea	rdi, [rdi]
	je	.label_112
	movabs	rdi, OFFSET FLAT:.str.9_0
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [human_output_opts]],  0
	nop	
	call	getenv
	mov	rbp, rbp
	mov	ecx, 0x400
	lea	rdi, [rdi]
	mov	edx, 0x200
	nop	
	cmp	rax, 0
	cmovne	ecx, edx
	nop	
	movsxd	rax, ecx
	mov	qword ptr [word ptr [output_block_size]],  rax
	jmp	.label_73
.label_112:
	movabs	rdi, OFFSET FLAT:.str.27
	mov	rbp, rbp
	call	getenv
	movabs	rsi, OFFSET FLAT:human_output_opts
	movabs	rdx, OFFSET FLAT:output_block_size
	mov	rdi, rax
	call	human_options
	mov	dword ptr [rbp - 0x24], eax
.label_73:
	mov	rsp, rsp
	jmp	.label_30
.label_30:
	cmp	dword ptr [dword ptr [header_mode]],  1
	mov	rsp, rsp
	je	.label_62
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [header_mode]],  4
	jne	.label_64
.label_62:
	jmp	.label_68
.label_64:
	mov	eax,  dword ptr [dword ptr [human_output_opts]]
	and	eax, 0x10
	cmp	eax, 0
	je	.label_69
	mov	rsp, rsp
	mov	dword ptr [dword ptr [header_mode]],  2
	mov	rsp, rsp
	jmp	.label_54
.label_69:
	test	byte ptr [rbp - 0x115], 1
	mov	rbp, rbp
	je	.label_80
	mov	dword ptr [dword ptr [header_mode]],  3
.label_80:
	jmp	.label_54
.label_54:
	jmp	.label_68
.label_68:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x6d], 0
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [fs_select_list]]
	mov	qword ptr [rbp - 0xd0], rax
.label_32:
	cmp	qword ptr [rbp - 0xd0], 0
	lea	rsi, [rsi]
	je	.label_93
	mov	rax,  qword ptr [word ptr [fs_exclude_list]]
	mov	qword ptr [rbp - 0x90], rax
.label_23:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x90], 0
	lea	rsi, [rsi]
	je	.label_20
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rdi, qword ptr [rax]
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsi, qword ptr [rax]
	nop	
	call	strcmp
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_52
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.28
	call	gettext
	mov	rdi, qword ptr [rbp - 0xd0]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rdi]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	call	quote
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edi, ecx
	nop	
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x6d], 1
	jmp	.label_20
.label_52:
	jmp	.label_25
.label_25:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x90], rax
	lea	rsi, [rsi]
	jmp	.label_23
.label_20:
	jmp	.label_31
.label_31:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0xd0], rax
	lea	rdi, [rdi]
	jmp	.label_32
.label_93:
	test	byte ptr [rbp - 0x6d], 1
	mov	rbp, rbp
	je	.label_40
	mov	dword ptr [rbp - 0xc], 1
	nop	
	jmp	.label_44
.label_40:
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	eax,  dword ptr [dword ptr [optind]]
	mov	rbp, rbp
	jge	.label_47
	jmp	.label_47
.label_47:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	jge	.label_46
	mov	eax, 0x90
	mov	esi, eax
	mov	eax, dword ptr [rbp - 0x98]
	nop	
	sub	eax,  dword ptr [dword ptr [optind]]
	movsxd	rdi, eax
	lea	rdi, [rdi]
	call	xnmalloc
	nop	
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 0xd4], ecx
.label_42:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, dword ptr [rbp - 0x98]
	jge	.label_63
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0xd4]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x80]
	nop	
	mov	rdi, qword ptr [rcx + rax*8]
	nop	
	mov	edx, dword ptr [rbp - 0xd4]
	sub	edx,  dword ptr [dword ptr [optind]]
	mov	rbp, rbp
	movsxd	rax, edx
	mov	rbp, rbp
	imul	rax, rax, 0x90
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	rbp, rbp
	call	stat
	cmp	eax, 0
	je	.label_85
	call	__errno_location
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rdx + rax*8]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x124], ecx
	mov	rbp, rbp
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0x124]
	mov	rcx, rax
	mov	al, 0
	call	error
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [exit_status]],  1
	movsxd	rcx, dword ptr [rbp - 0xd4]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	qword ptr [rdx + rcx*8], 0
	jmp	.label_29
.label_85:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xd4]
	sub	eax,  dword ptr [dword ptr [optind]]
	movsxd	rcx, eax
	imul	rcx, rcx, 0x90
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	eax, dword ptr [rcx + 0x18]
	mov	rsp, rsp
	and	eax, 0xf000
	cmp	eax, 0x1000
	je	.label_35
	lea	rdi, [rdi]
	mov	esi, 0x100
	movsxd	rax, dword ptr [rbp - 0xd4]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx + rax*8]
	mov	al, 0
	lea	rdi, [rdi]
	call	open
	mov	rbp, rbp
	xor	esi, esi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x74], eax
	lea	rsi, [rsi]
	cmp	esi, dword ptr [rbp - 0x74]
	lea	rsi, [rsi]
	jg	.label_26
	nop	
	mov	edi, dword ptr [rbp - 0x74]
	mov	rsp, rsp
	call	close
	mov	dword ptr [rbp - 0x11c], eax
.label_26:
	nop	
	jmp	.label_35
.label_35:
	lea	rsi, [rsi]
	jmp	.label_29
.label_29:
	lea	rsi, [rsi]
	jmp	.label_38
.label_38:
	mov	eax, dword ptr [rbp - 0xd4]
	nop	
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	nop	
	jmp	.label_42
.label_63:
	mov	rsp, rsp
	jmp	.label_46
.label_46:
	mov	rsp, rsp
	mov	al, 1
	cmp	qword ptr [word ptr [fs_select_list]],  0
	mov	byte ptr [rbp - 0xbd], al
	mov	rbp, rbp
	jne	.label_49
	mov	al, 1
	cmp	qword ptr [word ptr [fs_exclude_list]],  0
	mov	byte ptr [rbp - 0xbd], al
	jne	.label_49
	mov	al, 1
	test	byte ptr [byte ptr [print_type]],  1
	mov	byte ptr [rbp - 0xbd], al
	jne	.label_49
	lea	rdi, [rdi]
	mov	al, 1
	test	byte ptr [byte ptr [label_59]],  1
	mov	byte ptr [rbp - 0xbd], al
	jne	.label_49
	mov	al,  byte ptr [byte ptr [show_local_fs]]
	mov	byte ptr [rbp - 0xbd], al
.label_49:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xbd]
	and	al, 1
	lea	rdi, [rdi]
	movzx	edi, al
	call	read_file_system_list
	mov	qword ptr [word ptr [mount_list]],  rax
	cmp	qword ptr [word ptr [mount_list]],  0
	jne	.label_74
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc4], 0
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	jge	.label_78
	mov	rbp, rbp
	test	byte ptr [byte ptr [show_all_fs]],  1
	mov	rsp, rsp
	jne	.label_78
	test	byte ptr [byte ptr [show_local_fs]],  1
	nop	
	jne	.label_78
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [fs_select_list]],  0
	lea	rsi, [rsi]
	jne	.label_78
	mov	rsp, rsp
	cmp	qword ptr [word ptr [fs_exclude_list]],  0
	je	.label_99
.label_78:
	nop	
	mov	dword ptr [rbp - 0xc4], 1
.label_99:
	cmp	dword ptr [rbp - 0xc4], 0
	lea	rdi, [rdi]
	jne	.label_102
	movabs	rdi, OFFSET FLAT:.str.30
	mov	rsp, rsp
	call	gettext
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_57
.label_102:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 0x110], rax
	lea	rsi, [rsi]
	jmp	.label_57
.label_57:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0xc4]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xac], edi
	mov	rsp, rsp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.32
	nop	
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0xa8], rcx
	mov	dword ptr [rbp - 0xf0], esi
	lea	rdi, [rdi]
	call	gettext
	movabs	rdx, OFFSET FLAT:.str.31
	mov	edi, dword ptr [rbp - 0xac]
	mov	esi, dword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	r8, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_74:
	mov	rsp, rsp
	test	byte ptr [byte ptr [require_sync]],  1
	je	.label_43
	mov	rsp, rsp
	call	sync
.label_43:
	nop	
	call	get_field_list
	call	get_header
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [optind]]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x98]
	jge	.label_51
	mov	rsp, rsp
	mov	byte ptr [byte ptr [show_listed_fs]],  1
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x28], eax
.label_82:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x98]
	jge	.label_58
	nop	
	movsxd	rax, dword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rax*8], 0
	lea	rsi, [rsi]
	je	.label_60
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, dword ptr [rbp - 0x28]
	mov	rbp, rbp
	sub	edx,  dword ptr [dword ptr [optind]]
	movsxd	rax, edx
	lea	rsi, [rsi]
	imul	rax, rax, 0x90
	add	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, rax
	nop	
	call	get_entry
.label_60:
	mov	rsp, rsp
	jmp	.label_81
.label_81:
	mov	eax, dword ptr [rbp - 0x28]
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], eax
	mov	rbp, rbp
	jmp	.label_82
.label_58:
	jmp	.label_110
.label_51:
	mov	rsp, rsp
	call	get_all_entries
.label_110:
	test	byte ptr [byte ptr [file_systems_processed]],  1
	je	.label_88
	mov	rbp, rbp
	test	byte ptr [byte ptr [print_grand_total]],  1
	mov	rbp, rbp
	je	.label_92
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.33
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	xor	r9d, r9d
	movabs	rsi, OFFSET FLAT:grand_fsu
	movabs	rdi, OFFSET FLAT:.str.34
	mov	r8b,  byte ptr [byte ptr [label_97]]
	test	r8b, 1
	mov	r10, rax
	cmovne	r10, rdi
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], rsi
	mov	rsi, r10
	nop	
	mov	qword ptr [rbp - 0x108], rdx
	mov	rcx, qword ptr [rbp - 0x108]
	mov	r8, qword ptr [rbp - 0x108]
	mov	dword ptr [rsp], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xe8]
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	dword ptr [rsp + 0x10], 0
	mov	rbp, rbp
	call	get_dev
.label_92:
	lea	rdi, [rdi]
	call	print_table
	jmp	.label_19
.label_88:
	cmp	dword ptr [dword ptr [exit_status]],  0
	jne	.label_21
	movabs	rdi, OFFSET FLAT:.str.35
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	nop	
	call	error
.label_21:
	lea	rdi, [rdi]
	jmp	.label_19
.label_19:
	mov	eax,  dword ptr [dword ptr [exit_status]]
	mov	dword ptr [rbp - 0xc], eax
.label_44:
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	add	rsp, 0x140
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403680

	.globl add_fs_type
	.type add_fs_type, @function
add_fs_type:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	eax, 0x10
	mov	rsp, rsp
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	rdi, rcx
	call	xmalloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	mov	rax,  qword ptr [word ptr [fs_select_list]]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [fs_select_list]],  rax
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4036f0

	.globl add_excluded_fs_type
	.type add_excluded_fs_type, @function
add_excluded_fs_type:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	eax, 0x10
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	rdi, rcx
	lea	rdi, [rdi]
	call	xmalloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [fs_exclude_list]]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [word ptr [fs_exclude_list]],  rax
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403770

	.globl decode_output_arg
	.type decode_output_arg, @function
decode_output_arg:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x58], rdi
	nop	
	mov	rdi, qword ptr [rbp - 0x58]
	call	xstrdup
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
.label_113:
	mov	rsp, rsp
	mov	esi, 0x2c
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	strchr
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_125
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x20], rcx
	mov	byte ptr [rax], 0
.label_125:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], 0xc
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c], 0
.label_128:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x3c]
	nop	
	mov	ecx, eax
	mov	rsp, rsp
	cmp	rcx, 0xc
	jae	.label_124
	movabs	rax, OFFSET FLAT:field_data
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	edx, ecx
	imul	rdx, rdx, 0x30
	add	rax, rdx
	mov	rdi, qword ptr [rax + 8]
	mov	rsi, qword ptr [rbp - 0x18]
	call	strcmp
	cmp	eax, 0
	jne	.label_122
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x5c], eax
	lea	rsi, [rsi]
	jmp	.label_124
.label_122:
	jmp	.label_127
.label_127:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	nop	
	jmp	.label_128
.label_124:
	cmp	dword ptr [rbp - 0x5c], 0xc
	lea	rsi, [rsi]
	jne	.label_117
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.69
	nop	
	call	gettext
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	nop	
	call	usage
.label_117:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:field_data
	mov	ecx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	mov	edx, ecx
	nop	
	imul	rdx, rdx, 0x30
	add	rax, rdx
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x2c], 1
	mov	rsp, rsp
	je	.label_121
	movabs	rdi, OFFSET FLAT:.str.70
	mov	rbp, rbp
	call	gettext
	movabs	rdi, OFFSET FLAT:field_data
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	mov	edx, ecx
	lea	rsi, [rsi]
	imul	rdx, rdx, 0x30
	add	rdi, rdx
	nop	
	mov	rdi, qword ptr [rdi + 8]
	mov	qword ptr [rbp - 0x28], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	nop	
	call	error
	lea	rsi, [rsi]
	mov	edi, 1
	call	usage
.label_121:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x5c]
	mov	ecx, eax
	sub	ecx, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], eax
	mov	dword ptr [rbp - 0x30], ecx
	mov	rbp, rbp
	jb	.label_126
	nop	
	jmp	.label_118
.label_118:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], eax
	je	.label_114
	nop	
	jmp	.label_129
.label_129:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 3
	mov	dword ptr [rbp - 0x34], eax
	mov	rsp, rsp
	je	.label_126
	jmp	.label_116
.label_116:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	sub	eax, 4
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	nop	
	je	.label_115
	lea	rdi, [rdi]
	jmp	.label_120
.label_120:
	mov	eax, dword ptr [rbp - 0x2c]
	add	eax, -5
	mov	rbp, rbp
	sub	eax, 6
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x38], eax
	ja	.label_123
	mov	rbp, rbp
	jmp	.label_126
.label_126:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, eax
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	call	alloc_field
	jmp	.label_119
.label_114:
	nop	
	movabs	rsi, OFFSET FLAT:.str.71
	mov	edi, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	call	alloc_field
	mov	rsp, rsp
	jmp	.label_119
.label_115:
	nop	
	movabs	rsi, OFFSET FLAT:.str.72
	nop	
	mov	edi, dword ptr [rbp - 0x5c]
	nop	
	call	alloc_field
	jmp	.label_119
.label_123:
	movabs	rdi, OFFSET FLAT:.str.73
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.74
	mov	edx, 0x1dd
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.decode_output_arg
	call	__assert_fail
.label_119:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_113
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	call	free
	lea	rsi, [rsi]
	add	rsp, 0x60
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403a70

	.globl get_field_list
	.type get_field_list, @function
get_field_list:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [rip + header_mode]]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, rcx
	nop	
	sub	rdx, 4
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	rbp, rbp
	ja	.label_133
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_134]]
	jmp	rcx
.label_1511:
	lea	rdi, [rdi]
	xor	edi, edi
	xor	eax, eax
	mov	esi, eax
	call	alloc_field
	test	byte ptr [byte ptr [print_type]],  1
	lea	rdi, [rdi]
	je	.label_135
	mov	rbp, rbp
	mov	edi, 1
	xor	eax, eax
	mov	esi, eax
	lea	rdi, [rdi]
	call	alloc_field
.label_135:
	mov	edi, 2
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, eax
	mov	rsp, rsp
	call	alloc_field
	mov	edi, 3
	xor	eax, eax
	mov	esi, eax
	call	alloc_field
	mov	rsp, rsp
	mov	edi, 4
	xor	eax, eax
	mov	esi, eax
	lea	rdi, [rdi]
	call	alloc_field
	mov	edi, 5
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, eax
	call	alloc_field
	mov	edi, 0xa
	xor	eax, eax
	nop	
	mov	esi, eax
	call	alloc_field
	mov	rsp, rsp
	jmp	.label_130
.label_1513:
	xor	edi, edi
	nop	
	xor	eax, eax
	mov	esi, eax
	lea	rdi, [rdi]
	call	alloc_field
	test	byte ptr [byte ptr [print_type]],  1
	lea	rsi, [rsi]
	je	.label_136
	mov	edi, 1
	xor	eax, eax
	mov	esi, eax
	call	alloc_field
.label_136:
	lea	rdi, [rdi]
	mov	edi, 2
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.71
	nop	
	call	alloc_field
	mov	edi, 3
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, eax
	mov	rbp, rbp
	call	alloc_field
	mov	rbp, rbp
	mov	edi, 4
	nop	
	movabs	rsi, OFFSET FLAT:.str.72
	nop	
	call	alloc_field
	mov	edi, 5
	xor	eax, eax
	mov	esi, eax
	call	alloc_field
	mov	edi, 0xa
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, eax
	call	alloc_field
	mov	rbp, rbp
	jmp	.label_130
.label_1512:
	mov	rsp, rsp
	xor	edi, edi
	xor	eax, eax
	nop	
	mov	esi, eax
	call	alloc_field
	test	byte ptr [byte ptr [print_type]],  1
	je	.label_137
	mov	edi, 1
	xor	eax, eax
	mov	esi, eax
	lea	rsi, [rsi]
	call	alloc_field
.label_137:
	lea	rdi, [rdi]
	mov	edi, 6
	xor	eax, eax
	mov	esi, eax
	call	alloc_field
	lea	rdi, [rdi]
	mov	edi, 7
	xor	eax, eax
	mov	esi, eax
	mov	rbp, rbp
	call	alloc_field
	mov	edi, 8
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, eax
	mov	rsp, rsp
	call	alloc_field
	lea	rdi, [rdi]
	mov	edi, 9
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, eax
	mov	rsp, rsp
	call	alloc_field
	mov	edi, 0xa
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, eax
	call	alloc_field
	mov	rsp, rsp
	jmp	.label_130
.label_1514:
	mov	rbp, rbp
	xor	edi, edi
	xor	eax, eax
	mov	esi, eax
	call	alloc_field
	test	byte ptr [byte ptr [print_type]],  1
	je	.label_131
	mov	edi, 1
	xor	eax, eax
	mov	esi, eax
	mov	rsp, rsp
	call	alloc_field
.label_131:
	nop	
	mov	edi, 2
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, eax
	call	alloc_field
	mov	rsp, rsp
	mov	edi, 3
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, eax
	call	alloc_field
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, eax
	call	alloc_field
	mov	edi, 5
	movabs	rsi, OFFSET FLAT:.str.100
	call	alloc_field
	nop	
	mov	edi, 0xa
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, eax
	nop	
	call	alloc_field
	jmp	.label_130
.label_1515:
	mov	rbp, rbp
	cmp	qword ptr [word ptr [ncolumns]],  0
	jne	.label_132
	mov	rdi,  qword ptr [word ptr [all_args_string]]
	nop	
	call	decode_output_arg
.label_132:
	lea	rsi, [rsi]
	jmp	.label_130
.label_133:
	movabs	rdi, OFFSET FLAT:.str.101
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.74
	mov	edx, 0x222
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.get_field_list
	call	__assert_fail
.label_130:
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d80

	.globl get_header
	.type get_header, @function
get_header:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x320
	mov	rsp, rsp
	call	alloc_table_row
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], 0
.label_151:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax,  qword ptr [word ptr [ncolumns]]
	jae	.label_147
	mov	qword ptr [rbp - 0x30], 0
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [columns]]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	rdi, qword ptr [rax + 0x18]
	call	gettext
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	rcx,  qword ptr [word ptr [columns]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	cmp	dword ptr [rax], 2
	mov	rsp, rsp
	jne	.label_140
	cmp	dword ptr [dword ptr [header_mode]],  0
	lea	rdi, [rdi]
	je	.label_153
	cmp	dword ptr [dword ptr [header_mode]],  4
	nop	
	jne	.label_140
	mov	eax,  dword ptr [dword ptr [human_output_opts]]
	lea	rsi, [rsi]
	and	eax, 0x10
	cmp	eax, 0
	jne	.label_140
.label_153:
	mov	eax,  dword ptr [dword ptr [human_output_opts]]
	and	eax, 0x124
	lea	rsi, [rsi]
	or	eax, 0x98
	mov	dword ptr [rbp - 0x4c], eax
	mov	rcx,  qword ptr [word ptr [output_block_size]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx,  qword ptr [word ptr [output_block_size]]
	mov	qword ptr [rbp - 0x308], rcx
.label_149:
	mov	eax, 0x3e8
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	div	rcx
	mov	rsp, rsp
	cmp	rdx, 0
	sete	sil
	lea	rdi, [rdi]
	and	sil, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x309], sil
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rax, rdx
	nop	
	xor	edi, edi
	mov	edx, edi
	div	rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x308]
	and	rax, 0x3ff
	lea	rdi, [rdi]
	cmp	rax, 0
	lea	rdi, [rdi]
	sete	sil
	and	sil, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x2f1], sil
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x308]
	shr	rax, 0xa
	mov	qword ptr [rbp - 0x308], rax
	mov	al, byte ptr [rbp - 0x309]
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x2f1]
	nop	
	and	al, 1
	movzx	edx, al
	and	ecx, edx
	cmp	ecx, 0
	mov	rbp, rbp
	jne	.label_149
	mov	al, byte ptr [rbp - 0x309]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x2f1]
	and	al, 1
	movzx	edx, al
	cmp	ecx, edx
	lea	rdi, [rdi]
	jge	.label_148
	mov	eax, dword ptr [rbp - 0x4c]
	nop	
	or	eax, 0x20
	mov	dword ptr [rbp - 0x4c], eax
.label_148:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x2f1]
	and	al, 1
	movzx	ecx, al
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x309]
	mov	rbp, rbp
	and	al, 1
	lea	rsi, [rsi]
	movzx	edx, al
	mov	rbp, rbp
	cmp	ecx, edx
	jge	.label_143
	mov	eax, dword ptr [rbp - 0x4c]
	and	eax, 0xffffffdf
	mov	dword ptr [rbp - 0x4c], eax
.label_143:
	mov	eax, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	and	eax, 0x20
	lea	rdi, [rdi]
	cmp	eax, 0
	jne	.label_142
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x4c]
	nop	
	or	eax, 0x100
	nop	
	mov	dword ptr [rbp - 0x4c], eax
.label_142:
	mov	rbp, rbp
	mov	eax, 1
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rbp - 0x2f0]
	mov	rdi,  qword ptr [word ptr [output_block_size]]
	mov	edx, dword ptr [rbp - 0x4c]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
	mov	r8, qword ptr [rbp - 0x28]
	call	human_readable
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.81
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	call	gettext
	movabs	rdi, OFFSET FLAT:.str.103
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	call	gettext
	lea	rdi, [rbp - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsi, rax
	mov	al, 0
	call	asprintf
	nop	
	cmp	eax, -1
	nop	
	jne	.label_146
	mov	qword ptr [rbp - 0x30], 0
.label_146:
	jmp	.label_141
.label_140:
	nop	
	cmp	dword ptr [dword ptr [header_mode]],  3
	jne	.label_139
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx,  qword ptr [word ptr [columns]]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	dword ptr [rax], 2
	mov	rsp, rsp
	jne	.label_139
	nop	
	lea	rsi, [rbp - 0x20]
	mov	rdi,  qword ptr [word ptr [output_block_size]]
	call	umaxtostr
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.103
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	call	gettext
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsi, rax
	mov	al, 0
	call	asprintf
	cmp	eax, -1
	lea	rdi, [rdi]
	jne	.label_138
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], 0
.label_138:
	nop	
	jmp	.label_152
.label_139:
	mov	rdi, qword ptr [rbp - 0x48]
	call	strdup
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
.label_152:
	lea	rsi, [rsi]
	jmp	.label_141
.label_141:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_145
	lea	rdi, [rdi]
	call	xalloc_die
.label_145:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	call	replace_problematic_chars
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [nrows]]
	sub	rcx, 1
	mov	rdx,  qword ptr [word ptr [table]]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rcx + rax*8], rdi
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	call	gnu_mbswidth
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x318], rcx
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx,  qword ptr [word ptr [columns]]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x20]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 0x318]
	jbe	.label_144
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [columns]]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x300], rax
	mov	rbp, rbp
	jmp	.label_150
.label_144:
	mov	rax, qword ptr [rbp - 0x318]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x300], rax
.label_150:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x300]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx,  qword ptr [word ptr [columns]]
	nop	
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_151
.label_147:
	add	rsp, 0x320
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404200

	.globl get_entry
	.type get_entry, @function
get_entry:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rsi + 0x18]
	and	eax, 0xf000
	nop	
	cmp	eax, 0x6000
	mov	rbp, rbp
	je	.label_154
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	nop	
	cmp	ecx, 0x2000
	jne	.label_156
.label_154:
	nop	
	mov	rdi, qword ptr [rbp - 8]
	call	get_disk
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_157
	jmp	.label_156
.label_157:
	mov	rbp, rbp
	jmp	.label_155
.label_156:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	get_point
.label_155:
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042a0

	.globl get_all_entries
	.type get_all_entries, @function
get_all_entries:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [show_all_fs]]
	lea	rdi, [rdi]
	and	al, 1
	movzx	edi, al
	lea	rsi, [rsi]
	call	filter_mount_list
	mov	rcx,  qword ptr [word ptr [mount_list]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rcx
.label_158:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_159
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	r8, qword ptr [rdx + 0x18]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	r9b, byte ptr [rdx + 0x28]
	mov	rbp, rbp
	and	r9b, 1
	nop	
	movzx	eax, r9b
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rbp, rbp
	setne	r9b
	mov	rdx, qword ptr [rbp - 0x18]
	mov	r10b, byte ptr [rdx + 0x28]
	lea	rdi, [rdi]
	shr	r10b, 1
	mov	rbp, rbp
	and	r10b, 1
	mov	rbp, rbp
	movzx	eax, r10b
	nop	
	cmp	eax, 0
	mov	rsp, rsp
	setne	r10b
	lea	rdi, [rdi]
	and	r10b, 1
	movzx	eax, r10b
	mov	rdx, rsp
	mov	rbp, rbp
	mov	dword ptr [rdx], eax
	mov	dword ptr [rdx + 0x10], 1
	mov	rsp, rsp
	mov	qword ptr [rdx + 8], 0
	nop	
	and	r9b, 1
	movzx	r9d, r9b
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdx
	mov	r11, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x10], rcx
	mov	rsp, rsp
	mov	rcx, r11
	call	get_dev
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_158
.label_159:
	add	rsp, 0x30
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043d0

	.globl get_dev
	.type get_dev, @function
get_dev:
	nop	
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x4e8
	nop	
	mov	al, r9b
	mov	r10b, byte ptr [rbp + 0x20]
	mov	r11, qword ptr [rbp + 0x18]
	mov	bl, byte ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x3e8], rdi
	mov	qword ptr [rbp - 0x4d8], rsi
	mov	qword ptr [rbp - 0x3a8], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4e0], rcx
	mov	qword ptr [rbp - 0x3c0], r8
	and	al, 1
	mov	byte ptr [rbp - 0x355], al
	and	bl, 1
	mov	byte ptr [rbp - 0x399], bl
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4d0], r11
	and	r10b, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x4b9], r10b
	test	byte ptr [rbp - 0x399], 1
	mov	rbp, rbp
	je	.label_194
	mov	rbp, rbp
	test	byte ptr [byte ptr [show_local_fs]],  1
	mov	rsp, rsp
	je	.label_194
	jmp	.label_175
.label_194:
	test	byte ptr [rbp - 0x355], 1
	je	.label_200
	nop	
	test	byte ptr [byte ptr [show_all_fs]],  1
	jne	.label_200
	mov	rsp, rsp
	test	byte ptr [byte ptr [show_listed_fs]],  1
	jne	.label_200
	jmp	.label_175
.label_200:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x3c0]
	call	selected_fstype
	test	al, 1
	jne	.label_212
	nop	
	jmp	.label_215
.label_212:
	mov	rdi, qword ptr [rbp - 0x3c0]
	nop	
	call	excluded_fstype
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_215
	jmp	.label_164
.label_215:
	jmp	.label_175
.label_164:
	cmp	qword ptr [rbp - 0x4d0], 0
	jne	.label_165
	cmp	qword ptr [rbp - 0x4d8], 0
	nop	
	je	.label_165
	mov	rax, qword ptr [rbp - 0x4d8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	lea	rdi, [rdi]
	je	.label_165
	lea	rsi, [rsi]
	jmp	.label_175
.label_165:
	cmp	qword ptr [rbp - 0x4e0], 0
	mov	rbp, rbp
	jne	.label_179
	cmp	qword ptr [rbp - 0x4d8], 0
	je	.label_183
	mov	rax, qword ptr [rbp - 0x4d8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x3b0], rax
	jmp	.label_192
.label_183:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x3e8]
	nop	
	mov	qword ptr [rbp - 0x3b0], rax
.label_192:
	mov	rax, qword ptr [rbp - 0x3b0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4e0], rax
.label_179:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x4d0], 0
	je	.label_201
	lea	rsi, [rsi]
	mov	eax, 0x38
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x4d0]
	nop	
	mov	rdi, rcx
	call	memcpy
	lea	rsi, [rsi]
	jmp	.label_210
.label_201:
	lea	rdx, [rbp - 0x80]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x4e0]
	mov	rsi, qword ptr [rbp - 0x3e8]
	call	get_fs_usage
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_220
	mov	rbp, rbp
	test	byte ptr [rbp - 0x4b9], 1
	lea	rdi, [rdi]
	je	.label_160
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0xd
	je	.label_225
	call	__errno_location
	cmp	dword ptr [rax], 2
	jne	.label_160
.label_225:
	mov	rbp, rbp
	test	byte ptr [byte ptr [show_all_fs]],  1
	mov	rbp, rbp
	jne	.label_169
	mov	rbp, rbp
	jmp	.label_175
.label_169:
	nop	
	movabs	rax, OFFSET FLAT:.str.34
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x3c0], rax
	mov	byte ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x50], -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], -1
	nop	
	mov	qword ptr [rbp - 0x68], -1
	mov	qword ptr [rbp - 0x70], -1
	mov	qword ptr [rbp - 0x78], -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], -1
	jmp	.label_182
.label_160:
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x4e0]
	nop	
	mov	dword ptr [rbp - 0x494], ecx
	mov	rsp, rsp
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0x494]
	nop	
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	dword ptr [dword ptr [exit_status]],  1
	jmp	.label_175
.label_182:
	jmp	.label_221
.label_220:
	nop	
	test	byte ptr [rbp - 0x4b9], 1
	je	.label_191
	test	byte ptr [byte ptr [show_all_fs]],  1
	je	.label_191
	mov	rbp, rbp
	lea	rsi, [rbp - 0x478]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x4e0]
	call	stat
	nop	
	cmp	eax, 0
	jne	.label_174
	mov	rdi, qword ptr [rbp - 0x478]
	call	me_for_dev
	nop	
	mov	qword ptr [rbp - 0x3d0], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x3d0], 0
	je	.label_181
	mov	rax, qword ptr [rbp - 0x3d0]
	mov	rdi, qword ptr [rax]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x3e8]
	lea	rdi, [rdi]
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_181
	mov	rax, qword ptr [rbp - 0x3d0]
	mov	cl, byte ptr [rax + 0x28]
	shr	cl, 1
	and	cl, 1
	mov	rsp, rsp
	movzx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_198
	test	byte ptr [rbp - 0x399], 1
	jne	.label_181
.label_198:
	nop	
	movabs	rax, OFFSET FLAT:.str.34
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x3c0], rax
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x50], -1
	mov	qword ptr [rbp - 0x58], -1
	mov	qword ptr [rbp - 0x68], -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], -1
	mov	qword ptr [rbp - 0x78], -1
	nop	
	mov	qword ptr [rbp - 0x80], -1
.label_181:
	jmp	.label_174
.label_174:
	jmp	.label_191
.label_191:
	nop	
	jmp	.label_221
.label_221:
	lea	rdi, [rdi]
	jmp	.label_210
.label_210:
	cmp	qword ptr [rbp - 0x78], 0
	nop	
	jne	.label_170
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [show_all_fs]],  1
	jne	.label_170
	mov	rbp, rbp
	test	byte ptr [byte ptr [show_listed_fs]],  1
	lea	rdi, [rdi]
	jne	.label_170
	mov	rbp, rbp
	jmp	.label_175
.label_170:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x4d0], 0
	nop	
	jne	.label_188
	mov	byte ptr [byte ptr [file_systems_processed]],  1
.label_188:
	lea	rdi, [rdi]
	call	alloc_table_row
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x3e8], 0
	mov	rbp, rbp
	jne	.label_195
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.34
	mov	qword ptr [rbp - 0x3e8], rax
.label_195:
	cmp	qword ptr [rbp - 0x3a8], 0
	mov	rbp, rbp
	jne	.label_173
	movabs	rax, OFFSET FLAT:.str.34
	mov	qword ptr [rbp - 0x3a8], rax
.label_173:
	mov	rdi, qword ptr [rbp - 0x3e8]
	lea	rdi, [rdi]
	call	xstrdup
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x330], rax
	test	byte ptr [rbp - 0x4b9], 1
	lea	rdi, [rdi]
	je	.label_214
	mov	rdi, qword ptr [rbp - 0x330]
	mov	rbp, rbp
	call	has_uuid_suffix
	test	al, 1
	jne	.label_223
	jmp	.label_214
.label_223:
	xor	esi, esi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x330]
	nop	
	call	canonicalize_filename_mode
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x320], rax
	nop	
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_214
	mov	rdi, qword ptr [rbp - 0x330]
	lea	rdi, [rdi]
	call	free
	nop	
	mov	rdi, qword ptr [rbp - 0x320]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x330], rdi
.label_214:
	nop	
	cmp	qword ptr [rbp - 0x3c0], 0
	jne	.label_187
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.34
	mov	qword ptr [rbp - 0x3c0], rax
.label_187:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x48]
	mov	rbp, rbp
	lea	rsi, [rbp - 0x398]
	mov	rsp, rsp
	lea	rdx, [rbp - 0x80]
	mov	rsp, rsp
	call	get_field_values
	test	byte ptr [byte ptr [print_grand_total]],  1
	mov	rsp, rsp
	je	.label_203
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x4d0], 0
	jne	.label_203
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x48]
	nop	
	lea	rsi, [rbp - 0x398]
	lea	rdi, [rdi]
	call	add_to_grand_total
.label_203:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4c8], 0
.label_222:
	mov	rax, qword ptr [rbp - 0x4c8]
	mov	rsp, rsp
	cmp	rax,  qword ptr [word ptr [ncolumns]]
	lea	rsi, [rsi]
	jae	.label_216
	mov	rax, qword ptr [rbp - 0x4c8]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + columns]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	edx, dword ptr [rax + 0x10]
	test	edx, edx
	mov	dword ptr [rbp - 0x4e4], edx
	je	.label_218
	jmp	.label_162
.label_162:
	mov	eax, dword ptr [rbp - 0x4e4]
	sub	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x334], eax
	mov	rsp, rsp
	je	.label_167
	lea	rsi, [rsi]
	jmp	.label_193
.label_193:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x4e4]
	sub	eax, 2
	mov	dword ptr [rbp - 0x354], eax
	lea	rsi, [rsi]
	je	.label_226
	mov	rsp, rsp
	jmp	.label_189
.label_218:
	nop	
	lea	rax, [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4a8], rax
	nop	
	jmp	.label_190
.label_167:
	lea	rax, [rbp - 0x398]
	nop	
	mov	qword ptr [rbp - 0x4a8], rax
	jmp	.label_190
.label_226:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x4a8], 0
	jmp	.label_190
.label_189:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.106
	movabs	rsi, OFFSET FLAT:.str.74
	mov	edx, 0x468
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.get_dev
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4a8], 0
	mov	rbp, rbp
	call	__assert_fail
.label_190:
	mov	rax, qword ptr [rbp - 0x4c8]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + columns]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	edx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	eax, edx
	mov	rbp, rbp
	mov	rcx, rax
	sub	rcx, 0xb
	mov	qword ptr [rbp - 0x350], rax
	mov	qword ptr [rbp - 0x3c8], rcx
	ja	.label_213
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x350]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_224]]
	mov	rsp, rsp
	jmp	rcx
.label_1529:
	mov	rdi, qword ptr [rbp - 0x330]
	call	xstrdup
	mov	qword ptr [rbp - 0x4b0], rax
	lea	rsi, [rsi]
	jmp	.label_163
.label_1530:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x3c0]
	lea	rdi, [rdi]
	call	xstrdup
	mov	qword ptr [rbp - 0x4b0], rax
	lea	rdi, [rdi]
	jmp	.label_163
.label_1531:
	xor	edi, edi
	lea	rdx, [rbp - 0x310]
	mov	rax, qword ptr [rbp - 0x4a8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x4a8]
	nop	
	mov	rcx, qword ptr [rax]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x4a8]
	mov	r8, qword ptr [rax + 8]
	lea	rsi, [rsi]
	call	df_readable
	mov	rdi, rax
	call	xstrdup
	mov	qword ptr [rbp - 0x4b0], rax
	nop	
	jmp	.label_163
.label_1532:
	lea	rdx, [rbp - 0x310]
	mov	rax, qword ptr [rbp - 0x4a8]
	mov	cl, byte ptr [rax + 0x38]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x4a8]
	mov	rsi, qword ptr [rax + 0x30]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x4a8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	nop	
	mov	rdi, qword ptr [rbp - 0x4a8]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rdi + 8]
	and	cl, 1
	movzx	edi, cl
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	call	df_readable
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	xstrdup
	mov	qword ptr [rbp - 0x4b0], rax
	jmp	.label_163
.label_1533:
	lea	rdx, [rbp - 0x310]
	mov	rax, qword ptr [rbp - 0x4a8]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0x20]
	mov	rax, qword ptr [rbp - 0x4a8]
	mov	rsi, qword ptr [rax + 0x18]
	nop	
	mov	rax, qword ptr [rbp - 0x4a8]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x4a8]
	mov	rbp, rbp
	mov	r8, qword ptr [rdi + 8]
	and	cl, 1
	mov	rbp, rbp
	movzx	edi, cl
	mov	rcx, rax
	call	df_readable
	mov	rdi, rax
	call	xstrdup
	mov	qword ptr [rbp - 0x4b0], rax
	jmp	.label_163
.label_1534:
	movsd	xmm0,  qword ptr [word ptr [label_199]]
	movsd	qword ptr [rbp - 0x488], xmm0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x4a8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 0x30]
	mov	rbp, rbp
	call	known_value
	mov	rsp, rsp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_207
	jmp	.label_209
.label_207:
	mov	rax, qword ptr [rbp - 0x4a8]
	mov	rdi, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	call	known_value
	nop	
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_202
.label_209:
	jmp	.label_196
.label_202:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x4a8]
	test	byte ptr [rax + 0x38], 1
	jne	.label_184
	nop	
	movabs	rax, 0x28f5c28f5c28f5c
	mov	rcx, qword ptr [rbp - 0x4a8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 0x30], rax
	lea	rsi, [rsi]
	ja	.label_184
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x4a8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x4a8]
	add	rax, qword ptr [rcx + 0x18]
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_184
	mov	rax, qword ptr [rbp - 0x4a8]
	mov	rax, qword ptr [rax + 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x4a8]
	mov	rbp, rbp
	add	rax, qword ptr [rcx + 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x4a8]
	nop	
	cmp	rax, qword ptr [rcx + 0x30]
	setb	dl
	and	dl, 1
	mov	rsp, rsp
	movzx	esi, dl
	mov	rax, qword ptr [rbp - 0x4a8]
	mov	rsp, rsp
	mov	dl, byte ptr [rax + 0x20]
	and	dl, 1
	movzx	edi, dl
	cmp	esi, edi
	jne	.label_184
	mov	rax, qword ptr [rbp - 0x4a8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x30]
	mov	rsp, rsp
	imul	rax, rax, 0x64
	mov	qword ptr [rbp - 0x4a0], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x4a8]
	mov	rcx, qword ptr [rax + 0x18]
	nop	
	mov	rax, qword ptr [rax + 0x30]
	add	rax, rcx
	mov	qword ptr [rbp - 0x348], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x4a0]
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x3b8], rax
	mov	rax, rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x3b8]
	lea	rdi, [rdi]
	div	rcx
	test	rdx, rdx
	setne	sil
	movzx	edi, sil
	mov	edx, edi
	add	rax, rdx
	movq	xmm0, rax
	lea	rdi, [rdi]
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_176]]
	lea	rsi, [rsi]
	punpckldq	xmm0, xmm1
	movapd	xmm1,  xmmword ptr [word ptr [rip + label_177]]
	lea	rdi, [rdi]
	subpd	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	movsd	qword ptr [rbp - 0x488], xmm1
	lea	rdi, [rdi]
	jmp	.label_180
.label_184:
	mov	rax, qword ptr [rbp - 0x4a8]
	test	byte ptr [rax + 0x38], 1
	mov	rbp, rbp
	je	.label_186
	mov	rax, qword ptr [rbp - 0x4a8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	mov	rsp, rsp
	neg	rax
	movq	xmm0, rax
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_176]]
	lea	rsi, [rsi]
	punpckldq	xmm0, xmm1
	nop	
	movapd	xmm1,  xmmword ptr [word ptr [rip + label_177]]
	subpd	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	mov	rsp, rsp
	addpd	xmm1, xmm0
	movq	rax, xmm1
	mov	rsp, rsp
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	movq	xmm0, rax
	movsd	qword ptr [rbp - 0x318], xmm0
	lea	rdi, [rdi]
	jmp	.label_211
.label_186:
	nop	
	mov	rax, qword ptr [rbp - 0x4a8]
	movq	xmm0, qword ptr [rax + 0x30]
	mov	rsp, rsp
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_176]]
	lea	rdi, [rdi]
	punpckldq	xmm0, xmm1
	nop	
	movapd	xmm1,  xmmword ptr [word ptr [rip + label_177]]
	subpd	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	lea	rdi, [rdi]
	movsd	qword ptr [rbp - 0x318], xmm1
.label_211:
	nop	
	movsd	xmm0, qword ptr [rbp - 0x318]
	movsd	qword ptr [rbp - 0x328], xmm0
	mov	rax, qword ptr [rbp - 0x4a8]
	test	byte ptr [rax + 0x20], 1
	nop	
	je	.label_208
	mov	rax, qword ptr [rbp - 0x4a8]
	nop	
	mov	rax, qword ptr [rax + 0x18]
	neg	rax
	movq	xmm0, rax
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_176]]
	punpckldq	xmm0, xmm1
	mov	rbp, rbp
	movapd	xmm1,  xmmword ptr [word ptr [rip + label_177]]
	lea	rsi, [rsi]
	subpd	xmm0, xmm1
	mov	rbp, rbp
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	movq	rax, xmm1
	lea	rsi, [rsi]
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	lea	rsi, [rsi]
	movq	xmm0, rax
	movsd	qword ptr [rbp - 0x4b8], xmm0
	mov	rsp, rsp
	jmp	.label_178
.label_208:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x4a8]
	movq	xmm0, qword ptr [rax + 0x18]
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_176]]
	lea	rsi, [rsi]
	punpckldq	xmm0, xmm1
	movapd	xmm1,  xmmword ptr [word ptr [rip + label_177]]
	subpd	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	lea	rsi, [rsi]
	addpd	xmm1, xmm0
	mov	rsp, rsp
	movsd	qword ptr [rbp - 0x4b8], xmm1
.label_178:
	lea	rsi, [rsi]
	movsd	xmm0, qword ptr [rbp - 0x4b8]
	xorps	xmm1, xmm1
	mov	rsp, rsp
	movsd	qword ptr [rbp - 0x340], xmm0
	lea	rdi, [rdi]
	movsd	xmm0, qword ptr [rbp - 0x328]
	addsd	xmm0, qword ptr [rbp - 0x340]
	lea	rdi, [rdi]
	movsd	qword ptr [rbp - 0x480], xmm0
	lea	rdi, [rdi]
	movsd	xmm0, qword ptr [rbp - 0x480]
	ucomisd	xmm0, xmm1
	jne	.label_185
	jp	.label_185
	jmp	.label_204
.label_185:
	mov	rsp, rsp
	movsd	xmm0,  qword ptr [word ptr [label_171]]
	mov	rbp, rbp
	movsd	xmm1,  qword ptr [word ptr [label_217]]
	mulsd	xmm1, qword ptr [rbp - 0x328]
	divsd	xmm1, qword ptr [rbp - 0x480]
	movsd	qword ptr [rbp - 0x488], xmm1
	lea	rsi, [rsi]
	cvttsd2si	rax, xmm1
	mov	qword ptr [rbp - 0x4f0], rax
	cvtsi2sd	xmm1, qword ptr [rbp - 0x4f0]
	nop	
	movsd	qword ptr [rbp - 0x3d8], xmm1
	lea	rsi, [rsi]
	movsd	xmm1, qword ptr [rbp - 0x3d8]
	nop	
	subsd	xmm1, xmm0
	movsd	xmm0, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	ucomisd	xmm0, xmm1
	jbe	.label_172
	movsd	xmm0,  qword ptr [word ptr [label_171]]
	nop	
	movsd	xmm1, qword ptr [rbp - 0x488]
	lea	rdi, [rdi]
	addsd	xmm0, qword ptr [rbp - 0x3d8]
	ucomisd	xmm0, xmm1
	jb	.label_172
	lea	rsi, [rsi]
	movsd	xmm0, qword ptr [rbp - 0x3d8]
	movsd	xmm1, qword ptr [rbp - 0x3d8]
	mov	rsp, rsp
	movsd	xmm2, qword ptr [rbp - 0x488]
	lea	rdi, [rdi]
	ucomisd	xmm2, xmm1
	seta	al
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	cvtsi2sd	xmm1, ecx
	addsd	xmm0, xmm1
	lea	rsi, [rsi]
	movsd	qword ptr [rbp - 0x488], xmm0
.label_172:
	lea	rdi, [rdi]
	jmp	.label_204
.label_204:
	jmp	.label_180
.label_180:
	mov	rbp, rbp
	jmp	.label_196
.label_196:
	xorps	xmm0, xmm0
	movsd	xmm1, qword ptr [rbp - 0x488]
	lea	rdi, [rdi]
	ucomisd	xmm1, xmm0
	jb	.label_168
	mov	rbp, rbp
	lea	rdi, [rbp - 0x4b0]
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.107
	mov	rbp, rbp
	movsd	xmm0, qword ptr [rbp - 0x488]
	nop	
	mov	al, 1
	nop	
	call	asprintf
	nop	
	cmp	eax, -1
	mov	rbp, rbp
	jne	.label_219
	mov	qword ptr [rbp - 0x4b0], 0
.label_219:
	jmp	.label_197
.label_168:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.34
	call	strdup
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4b0], rax
.label_197:
	cmp	qword ptr [rbp - 0x4b0], 0
	jne	.label_205
	call	xalloc_die
.label_205:
	jmp	.label_163
.label_1536:
	mov	rdi, qword ptr [rbp - 0x3a8]
	call	xstrdup
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x4b0], rax
	nop	
	jmp	.label_163
.label_1535:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x4d8]
	call	xstrdup
	mov	qword ptr [rbp - 0x4b0], rax
	nop	
	jmp	.label_163
.label_213:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.108
	movabs	rsi, OFFSET FLAT:.str.74
	mov	edx, 0x4ce
	nop	
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.get_dev
	call	__assert_fail
.label_163:
	cmp	qword ptr [rbp - 0x4b0], 0
	jne	.label_161
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.109
	movabs	rsi, OFFSET FLAT:.str.74
	mov	edx, 0x4d2
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.get_dev
	call	__assert_fail
.label_161:
	mov	rdi, qword ptr [rbp - 0x4b0]
	mov	rbp, rbp
	call	replace_problematic_chars
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x4b0]
	call	gnu_mbswidth
	movsxd	rdi, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x3e0], rdi
	nop	
	mov	rdi, qword ptr [rbp - 0x4c8]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [columns]]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + rdi*8]
	nop	
	mov	rcx, qword ptr [rcx + 0x20]
	cmp	rcx, qword ptr [rbp - 0x3e0]
	mov	rbp, rbp
	jbe	.label_166
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x4c8]
	mov	rcx,  qword ptr [word ptr [columns]]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x490], rax
	mov	rbp, rbp
	jmp	.label_206
.label_166:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x3e0]
	mov	qword ptr [rbp - 0x490], rax
.label_206:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x490]
	mov	rcx, qword ptr [rbp - 0x4c8]
	mov	rdx,  qword ptr [word ptr [columns]]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x4b0]
	mov	rcx, qword ptr [rbp - 0x4c8]
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [nrows]]
	mov	rsp, rsp
	sub	rdx, 1
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [table]]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsi + rdx*8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x4c8]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4c8], rax
	mov	rbp, rbp
	jmp	.label_222
.label_216:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x330]
	lea	rsi, [rsi]
	call	free
.label_175:
	add	rsp, 0x4e8
	mov	rsp, rsp
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405370

	.globl print_table
	.type print_table, @function
print_table:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x18], 0
.label_230:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	rax,  qword ptr [word ptr [nrows]]
	jae	.label_227
	nop	
	mov	qword ptr [rbp - 0x10], 0
.label_231:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rax,  qword ptr [word ptr [ncolumns]]
	lea	rdi, [rdi]
	jae	.label_233
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx,  qword ptr [word ptr [table]]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_232
	nop	
	mov	edi, 0x20
	call	putchar_unlocked
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x20], eax
.label_232:
	mov	dword ptr [rbp - 0x24], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [ncolumns]]
	sub	rcx, 1
	cmp	rax, rcx
	nop	
	jne	.label_234
	mov	dword ptr [rbp - 0x24], 8
.label_234:
	lea	rsi, [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [columns]]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [columns]]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	edx, dword ptr [rax + 0x28]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	call	ambsalign
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	nop	
	je	.label_228
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	nop	
	jmp	.label_229
.label_228:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx,  qword ptr [word ptr [table]]
	mov	rbp, rbp
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rax
.label_229:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], eax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_231
.label_233:
	mov	edi, 0xa
	mov	rsp, rsp
	call	putchar_unlocked
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x28], eax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_230
.label_227:
	add	rsp, 0x40
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405530

	.globl alloc_field
	.type alloc_field, @function
alloc_field:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	eax, 8
	mov	rbp, rbp
	mov	edx, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [ncolumns]]
	mov	rbp, rbp
	add	rsi, 1
	nop	
	mov	qword ptr [word ptr [ncolumns]],  rsi
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [columns]]
	mov	rcx,  qword ptr [word ptr [ncolumns]]
	mov	rdi, rsi
	nop	
	mov	rsi, rcx
	mov	rsp, rsp
	call	xnrealloc
	movabs	rcx, OFFSET FLAT:field_data
	mov	rsp, rsp
	mov	qword ptr [word ptr [columns]],  rax
	movsxd	rax, dword ptr [rbp - 4]
	imul	rax, rax, 0x30
	nop	
	add	rcx, rax
	mov	rax,  qword ptr [word ptr [ncolumns]]
	nop	
	sub	rax, 1
	nop	
	mov	rdx,  qword ptr [word ptr [columns]]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + rax*8], rcx
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_236
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [ncolumns]]
	nop	
	sub	rcx, 1
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [columns]]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rcx + 0x18], rax
.label_236:
	movabs	rax, OFFSET FLAT:field_data
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 4]
	imul	rcx, rcx, 0x30
	add	rax, rcx
	lea	rdi, [rdi]
	test	byte ptr [rax + 0x2c], 1
	je	.label_235
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.75
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.74
	mov	edx, 0x196
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.alloc_field
	call	__assert_fail
.label_235:
	nop	
	movabs	rax, OFFSET FLAT:field_data
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 4]
	mov	rbp, rbp
	imul	rcx, rcx, 0x30
	lea	rdi, [rdi]
	add	rax, rcx
	mov	byte ptr [rax + 0x2c], 1
	mov	rbp, rbp
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405690

	.globl alloc_table_row
	.type alloc_table_row, @function
alloc_table_row:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	nop	
	mov	eax, 8
	mov	rbp, rbp
	mov	edx, eax
	mov	rcx,  qword ptr [word ptr [nrows]]
	add	rcx, 1
	mov	qword ptr [word ptr [nrows]],  rcx
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [table]]
	mov	rsi,  qword ptr [word ptr [nrows]]
	nop	
	mov	rdi, rcx
	call	xnrealloc
	mov	r8d, 8
	mov	esi, r8d
	mov	qword ptr [word ptr [table]],  rax
	mov	rdi,  qword ptr [word ptr [ncolumns]]
	call	xnmalloc
	mov	rcx,  qword ptr [word ptr [nrows]]
	sub	rcx, 1
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [table]]
	mov	rsp, rsp
	mov	qword ptr [rdx + rcx*8], rax
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405720

	.globl replace_problematic_chars
	.type replace_problematic_chars, @function
replace_problematic_chars:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	dword ptr [dword ptr [replace_problematic_chars.tty_out]],  0
	jge	.label_237
	mov	edi, 1
	nop	
	call	isatty
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [replace_problematic_chars.tty_out]],  eax
.label_237:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:replace_control_chars
	movabs	rcx, OFFSET FLAT:replace_invalid_chars
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [replace_problematic_chars.tty_out]],  0
	mov	rsp, rsp
	cmovne	rax, rcx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	call	rax
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405790

	.globl replace_invalid_chars
	.type replace_invalid_chars, @function
replace_invalid_chars:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x70
	xor	esi, esi
	lea	rdi, [rdi]
	mov	eax, 8
	mov	edx, eax
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x60], rdi
	mov	rdi, qword ptr [rbp - 0x60]
	mov	r8, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, r8
	mov	qword ptr [rbp - 0x10], rcx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], esi
	mov	qword ptr [rbp - 0x68], rdx
	mov	rbp, rbp
	call	strlen
	mov	rcx, qword ptr [rbp - 0x50]
	add	rcx, rax
	nop	
	mov	qword ptr [rbp - 0x48], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	esi, dword ptr [rbp - 0x54]
	mov	rdx, qword ptr [rbp - 0x68]
	call	memset
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
.label_238:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	je	.label_242
	nop	
	lea	rdi, [rbp - 0x14]
	lea	rcx, [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x40]
	sub	rax, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 8]
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	setbe	r8b
	and	r8b, 1
	mov	byte ptr [rbp - 0x21], r8b
	mov	rsp, rsp
	test	byte ptr [rbp - 0x21], 1
	je	.label_243
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x14]
	call	iswcntrl
	cmp	eax, 0
	nop	
	setne	cl
	xor	cl, 0xff
	lea	rsi, [rsi]
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], cl
	jmp	.label_239
.label_243:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], 1
.label_239:
	test	byte ptr [rbp - 0x21], 1
	mov	rbp, rbp
	je	.label_240
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	call	memmove
	mov	rdx, qword ptr [rbp - 0x38]
	add	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rdx
	jmp	.label_241
.label_240:
	xor	esi, esi
	lea	rdi, [rdi]
	mov	eax, 8
	mov	edx, eax
	mov	rsp, rsp
	lea	rcx, [rbp - 0x20]
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	mov	r8, rdi
	add	r8, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], r8
	nop	
	mov	byte ptr [rdi], 0x3f
	mov	rdi, rcx
	call	memset
.label_241:
	lea	rsi, [rsi]
	jmp	.label_244
.label_244:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_238
.label_242:
	mov	rax, qword ptr [rbp - 0x30]
	mov	byte ptr [rax], 0
	add	rsp, 0x70
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405950

	.globl replace_control_chars
	.type replace_control_chars, @function
replace_control_chars:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
.label_246:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	byte ptr [rax], 0
	nop	
	je	.label_248
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	lea	rsi, [rsi]
	movzx	edi, al
	mov	rbp, rbp
	call	c_iscntrl
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_247
	jmp	.label_245
.label_247:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x3f
.label_245:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_246
.label_248:
	lea	rdi, [rdi]
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4059e0

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	nop	
	movzx	eax, byte ptr [rbp - 1]
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405a00

	.globl get_disk
	.type get_disk, @function
get_disk:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x138
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd0], 0
	mov	byte ptr [rbp - 0xfd], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x109], 0
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x120], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	call	canonicalize_file_name
	nop	
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_258
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	jne	.label_258
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
.label_258:
	mov	qword ptr [rbp - 0xd8], -1
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [mount_list]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf8], rax
.label_261:
	cmp	qword ptr [rbp - 0xf8], 0
	nop	
	je	.label_253
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax]
	call	canonicalize_file_name
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xe8], 0
	je	.label_259
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	mov	rsp, rsp
	jne	.label_259
	mov	rax, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0x10], rax
.label_259:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	call	strcmp
	nop	
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_254
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rdi, qword ptr [rax + 8]
	call	last_device_for_mount
	nop	
	xor	ecx, ecx
	mov	dl, cl
	nop	
	mov	qword ptr [rbp - 0xe0], rax
	cmp	qword ptr [rbp - 0xe0], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xe9], dl
	nop	
	je	.label_250
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	sete	cl
	mov	rsp, rsp
	xor	cl, 0xff
	nop	
	mov	byte ptr [rbp - 0xe9], cl
.label_250:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xe9]
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0x109], al
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xf8]
	nop	
	mov	rdi, qword ptr [rcx + 8]
	nop	
	call	strlen
	mov	qword ptr [rbp - 0x118], rax
	mov	rsp, rsp
	test	byte ptr [rbp - 0x109], 1
	jne	.label_257
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xfd], 1
	nop	
	je	.label_263
	mov	rax, qword ptr [rbp - 0x118]
	cmp	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	jae	.label_257
.label_263:
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0xb8]
	nop	
	mov	byte ptr [rbp - 0x19], 0
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rdi, qword ptr [rax + 8]
	call	stat
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_252
	mov	byte ptr [rbp - 0x19], 1
	mov	byte ptr [rbp - 0xfd], 1
.label_252:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_256
	nop	
	test	byte ptr [rbp - 0xfd], 1
	jne	.label_255
	mov	rax, qword ptr [rbp - 0x118]
	cmp	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	jae	.label_255
.label_256:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rbp - 0xd0], rax
	cmp	qword ptr [rbp - 0x118], 1
	mov	rbp, rbp
	jne	.label_260
	nop	
	mov	rdi, qword ptr [rbp - 0xe0]
	call	free
	nop	
	mov	rdi, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	jmp	.label_253
.label_260:
	mov	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rbp - 0xd8], rax
	lea	rsi, [rsi]
	jmp	.label_255
.label_255:
	nop	
	jmp	.label_257
.label_257:
	nop	
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	call	free
.label_254:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xe8]
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xf8], rax
	lea	rsi, [rsi]
	jmp	.label_261
.label_253:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	free
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_251
	nop	
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rdi, qword ptr [rdx]
	mov	rdx, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x120]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0xd0]
	mov	r8, qword ptr [r8 + 0x18]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rbp - 0xd0]
	mov	r10b, byte ptr [r9 + 0x28]
	lea	rsi, [rsi]
	and	r10b, 1
	nop	
	movzx	eax, r10b
	cmp	eax, 0
	lea	rsi, [rsi]
	setne	r10b
	mov	r9, qword ptr [rbp - 0xd0]
	mov	r11b, byte ptr [r9 + 0x28]
	lea	rdi, [rdi]
	shr	r11b, 1
	nop	
	and	r11b, 1
	mov	rsp, rsp
	movzx	eax, r11b
	mov	rbp, rbp
	cmp	eax, 0
	lea	rsi, [rsi]
	setne	r11b
	mov	rsp, rsp
	and	r11b, 1
	movzx	eax, r11b
	nop	
	mov	r9, rsp
	mov	dword ptr [r9], eax
	nop	
	mov	dword ptr [r9 + 0x10], 0
	mov	qword ptr [r9 + 8], 0
	and	r10b, 1
	mov	rbp, rbp
	movzx	r9d, r10b
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ebx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc8], rcx
	mov	rcx, rbx
	nop	
	call	get_dev
	mov	byte ptr [rbp - 0xb9], 1
	jmp	.label_262
.label_251:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x109], 1
	mov	rsp, rsp
	je	.label_264
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.104
	nop	
	call	gettext
	mov	rbp, rbp
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x108], rax
	call	quotearg_style
	xor	edi, edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xfc], edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xfc]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x108]
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
	mov	dword ptr [dword ptr [exit_status]],  1
	mov	byte ptr [rbp - 0xb9], 1
	nop	
	jmp	.label_262
.label_264:
	mov	rsp, rsp
	jmp	.label_249
.label_249:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb9], 0
.label_262:
	nop	
	mov	al, byte ptr [rbp - 0xb9]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x138
	pop	rbx
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405eb0

	.globl get_point
	.type get_point, @function
get_point:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe8], rdi
	nop	
	mov	qword ptr [rbp - 0xa0], rsi
	mov	qword ptr [rbp - 0xd0], 0
	nop	
	mov	rdi, qword ptr [rbp - 0xe8]
	lea	rdi, [rdi]
	call	canonicalize_file_name
	mov	qword ptr [rbp - 0x98], rax
	cmp	qword ptr [rbp - 0x98], 0
	je	.label_265
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_265
	mov	rdi, qword ptr [rbp - 0x98]
	call	strlen
	nop	
	mov	qword ptr [rbp - 0xe0], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], 0
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [mount_list]]
	mov	qword ptr [rbp - 0xa8], rax
.label_283:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xa8], 0
	mov	rbp, rbp
	je	.label_284
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rdi, qword ptr [rax + 0x18]
	nop	
	mov	ecx, OFFSET FLAT:.str.105
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	je	.label_279
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rbp, rbp
	je	.label_270
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 0x28]
	mov	rbp, rbp
	and	cl, 1
	movzx	edx, cl
	lea	rdi, [rdi]
	cmp	edx, 0
	lea	rdi, [rdi]
	jne	.label_270
	mov	rax, qword ptr [rbp - 0xa8]
	mov	cl, byte ptr [rax + 0x28]
	and	cl, 1
	movzx	edx, cl
	lea	rsi, [rsi]
	cmp	edx, 0
	jne	.label_279
.label_270:
	mov	rax, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 8]
	nop	
	call	strlen
	mov	qword ptr [rbp - 0xc8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0xc8]
	ja	.label_269
	mov	rax, qword ptr [rbp - 0xc8]
	cmp	rax, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	ja	.label_269
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xc8], 1
	je	.label_281
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	je	.label_277
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x98]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0x2f
	lea	rsi, [rsi]
	jne	.label_269
.label_277:
	mov	rax, qword ptr [rbp - 0xa8]
	nop	
	mov	rdi, qword ptr [rax + 8]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0xc8]
	call	strncmp
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_269
.label_281:
	nop	
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xd0], rax
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
.label_269:
	jmp	.label_279
.label_279:
	mov	rbp, rbp
	jmp	.label_289
.label_289:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rax + 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa8], rax
	lea	rsi, [rsi]
	jmp	.label_283
.label_284:
	jmp	.label_265
.label_265:
	nop	
	mov	rdi, qword ptr [rbp - 0x98]
	call	free
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_278
	mov	rbp, rbp
	lea	rsi, [rbp - 0x90]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rdi, qword ptr [rax + 8]
	mov	rsp, rsp
	call	stat
	mov	rsp, rsp
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_274
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	je	.label_278
.label_274:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd0], 0
.label_278:
	cmp	qword ptr [rbp - 0xd0], 0
	nop	
	jne	.label_272
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [mount_list]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa8], rax
.label_267:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xa8], 0
	je	.label_266
	mov	rax, qword ptr [rbp - 0xa8]
	nop	
	cmp	qword ptr [rax + 0x20], -1
	jne	.label_271
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x90]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rdi, qword ptr [rax + 8]
	nop	
	call	stat
	cmp	eax, 0
	jne	.label_282
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x20], rax
	nop	
	jmp	.label_285
.label_282:
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 5
	mov	rbp, rbp
	jne	.label_288
	call	__errno_location
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rax + 8]
	mov	dword ptr [rbp - 0xd4], ecx
	nop	
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str_1
	nop	
	mov	esi, dword ptr [rbp - 0xd4]
	nop	
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rbp, rbp
	mov	dword ptr [dword ptr [exit_status]],  1
.label_288:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x20], -2
.label_285:
	nop	
	jmp	.label_271
.label_271:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xa8]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_276
	mov	rax, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.105
	mov	rbp, rbp
	mov	esi, ecx
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_276
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_280
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rsp, rsp
	mov	cl, byte ptr [rax + 0x28]
	mov	rsp, rsp
	and	cl, 1
	mov	rsp, rsp
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_280
	mov	rax, qword ptr [rbp - 0xa8]
	mov	cl, byte ptr [rax + 0x28]
	mov	rsp, rsp
	and	cl, 1
	lea	rsi, [rsi]
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_276
.label_280:
	nop	
	lea	rsi, [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rdi, qword ptr [rax + 8]
	call	stat
	cmp	eax, 0
	jne	.label_275
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	mov	rcx, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x20]
	je	.label_286
.label_275:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rax + 0x20], -2
	jmp	.label_291
.label_286:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xd0], rax
.label_291:
	lea	rsi, [rsi]
	jmp	.label_276
.label_276:
	lea	rdi, [rdi]
	jmp	.label_290
.label_290:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0xa8], rax
	jmp	.label_267
.label_266:
	jmp	.label_272
.label_272:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_273
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0xd0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax + 8]
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe8]
	nop	
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rsp, rsp
	mov	r8, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd0]
	mov	r9b, byte ptr [rax + 0x28]
	and	r9b, 1
	mov	rsp, rsp
	movzx	r10d, r9b
	cmp	r10d, 0
	mov	rsp, rsp
	setne	r9b
	nop	
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rbp, rbp
	mov	r11b, byte ptr [rax + 0x28]
	mov	rsp, rsp
	shr	r11b, 1
	and	r11b, 1
	movzx	r10d, r11b
	cmp	r10d, 0
	setne	r11b
	and	r11b, 1
	mov	rbp, rbp
	movzx	r10d, r11b
	mov	rax, rsp
	mov	rsp, rsp
	mov	dword ptr [rax], r10d
	mov	dword ptr [rax + 0x10], 0
	mov	qword ptr [rax + 8], 0
	and	r9b, 1
	movzx	r9d, r9b
	call	get_dev
	jmp	.label_287
.label_273:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xe8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	call	find_mount_point
	mov	qword ptr [rbp - 0xc0], rax
	cmp	qword ptr [rbp - 0xc0], 0
	lea	rdi, [rdi]
	je	.label_268
	nop	
	xor	eax, eax
	mov	ecx, eax
	xor	r9d, r9d
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0xe8]
	nop	
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb8], rcx
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0xb8]
	nop	
	mov	dword ptr [rsp], 0
	mov	qword ptr [rsp + 8], 0
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x10], 0
	nop	
	call	get_dev
	mov	rdi, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	call	free
.label_268:
	jmp	.label_287
.label_287:
	nop	
	add	rsp, 0x100
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406520

	.globl last_device_for_mount
	.type last_device_for_mount, @function
last_device_for_mount:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [mount_list]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
.label_294:
	cmp	qword ptr [rbp - 8], 0
	je	.label_296
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x30]
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_297
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
.label_297:
	mov	rbp, rbp
	jmp	.label_292
.label_292:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_294
.label_296:
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_293
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	canonicalize_file_name
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_295
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x2f
	mov	rbp, rbp
	jne	.label_295
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_298
.label_295:
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	call	free
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rdi]
	call	xstrdup
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_298
.label_293:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], 0
.label_298:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406650

	.globl filter_mount_list
	.type filter_mount_list, @function
filter_mount_list:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0xe0
	lea	rsi, [rsi]
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 0x2c], al
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], 0
	mov	dword ptr [rbp - 0x18], 0
	mov	rcx,  qword ptr [word ptr [mount_list]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rcx
.label_310:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_304
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0x18], eax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_310
.label_304:
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, eax
	nop	
	movabs	rdx, OFFSET FLAT:devlist_hash
	movabs	rcx, OFFSET FLAT:devlist_compare
	movabs	r8, OFFSET FLAT:devlist_free
	movsxd	rdi, dword ptr [rbp - 0x18]
	nop	
	call	hash_initialize
	mov	qword ptr [word ptr [devlist_table]],  rax
	cmp	qword ptr [word ptr [devlist_table]],  0
	mov	rbp, rbp
	jne	.label_301
	call	xalloc_die
.label_301:
	mov	rax,  qword ptr [word ptr [mount_list]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
.label_324:
	cmp	qword ptr [rbp - 0x40], 0
	mov	rsp, rsp
	je	.label_308
	nop	
	mov	qword ptr [rbp - 0x28], 0
	mov	rax, qword ptr [rbp - 0x40]
	mov	cl, byte ptr [rax + 0x28]
	shr	cl, 1
	mov	rsp, rsp
	and	cl, 1
	lea	rsi, [rsi]
	movzx	edx, cl
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_313
	test	byte ptr [byte ptr [show_local_fs]],  1
	jne	.label_302
.label_313:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	cl, byte ptr [rax + 0x28]
	lea	rdi, [rdi]
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_321
	test	byte ptr [byte ptr [show_all_fs]],  1
	jne	.label_321
	mov	rbp, rbp
	test	byte ptr [byte ptr [show_listed_fs]],  1
	mov	rbp, rbp
	je	.label_302
.label_321:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	call	selected_fstype
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_314
	mov	rbp, rbp
	jmp	.label_302
.label_314:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 0x18]
	call	excluded_fstype
	test	al, 1
	jne	.label_302
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0xd0]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 8]
	mov	rsp, rsp
	call	stat
	mov	ecx, 0xffffffff
	mov	rsp, rsp
	cmp	ecx, eax
	lea	rdi, [rdi]
	jne	.label_299
.label_302:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0xd0], rax
	jmp	.label_305
.label_299:
	mov	rdi, qword ptr [rbp - 0xd0]
	call	devlist_for_dev
	mov	qword ptr [rbp - 0xd8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	je	.label_303
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 8]
	mov	rdi, qword ptr [rdx + 8]
	mov	byte ptr [rbp - 0x29], cl
	call	strlen
	nop	
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rdx + 8]
	mov	qword ptr [rbp - 8], rax
	nop	
	call	strlen
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rdx, rax
	lea	rsi, [rsi]
	seta	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x2b], cl
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	cmp	qword ptr [rax + 0x10], 0
	lea	rsi, [rsi]
	mov	cl, byte ptr [rbp - 0x29]
	mov	byte ptr [rbp - 0x11], cl
	je	.label_316
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x40]
	cmp	qword ptr [rdx + 0x10], 0
	mov	byte ptr [rbp - 0x11], cl
	nop	
	je	.label_316
	nop	
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 0x10]
	call	strlen
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x40]
	nop	
	mov	rdi, qword ptr [rdi + 0x10]
	mov	qword ptr [rbp - 0x20], rax
	call	strlen
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	cmp	rdi, rax
	setb	cl
	nop	
	mov	byte ptr [rbp - 0x11], cl
.label_316:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x2a], al
	test	byte ptr [byte ptr [print_grand_total]],  1
	mov	rbp, rbp
	jne	.label_307
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0x28]
	shr	cl, 1
	and	cl, 1
	movzx	edx, cl
	lea	rsi, [rsi]
	cmp	edx, 0
	mov	rsp, rsp
	je	.label_307
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	cl, byte ptr [rax + 0x28]
	shr	cl, 1
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	lea	rsi, [rsi]
	je	.label_307
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rsi, qword ptr [rax]
	nop	
	call	strcmp
	cmp	eax, 0
	je	.label_307
	nop	
	jmp	.label_311
.label_307:
	mov	esi, 0x2f
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rax]
	call	strchr
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_319
	mov	esi, 0x2f
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, qword ptr [rax]
	lea	rsi, [rsi]
	call	strchr
	cmp	rax, 0
	nop	
	je	.label_306
.label_319:
	test	byte ptr [rbp - 0x2b], 1
	mov	rsp, rsp
	je	.label_323
	test	byte ptr [rbp - 0x2a], 1
	mov	rbp, rbp
	je	.label_306
.label_323:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	je	.label_317
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax + 8]
	mov	rsi, qword ptr [rax + 8]
	call	strcmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_317
.label_306:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_300
.label_317:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
.label_300:
	jmp	.label_311
.label_311:
	jmp	.label_303
.label_303:
	nop	
	jmp	.label_305
.label_305:
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_315
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x40], rax
	test	byte ptr [rbp - 0x2c], 1
	jne	.label_318
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	free_mount_entry
.label_318:
	jmp	.label_322
.label_315:
	mov	eax, 0x18
	mov	edi, eax
	lea	rsi, [rsi]
	call	xmalloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	qword ptr [rdi], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x10], rax
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi,  qword ptr [word ptr [devlist_table]]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rsi, rax
	nop	
	call	hash_insert
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_320
	nop	
	call	xalloc_die
.label_320:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
.label_322:
	jmp	.label_324
.label_308:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x2c], 1
	mov	rsp, rsp
	jne	.label_325
	mov	qword ptr [word ptr [mount_list]],  0
.label_312:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_309
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [mount_list]]
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	mov	qword ptr [rcx + 0x30], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [word ptr [mount_list]],  rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	jmp	.label_312
.label_309:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [devlist_table]]
	lea	rsi, [rsi]
	call	hash_free
	mov	qword ptr [word ptr [devlist_table]],  0
.label_325:
	nop	
	add	rsp, 0xe0
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c20

	.globl devlist_hash
	.type devlist_hash, @function
devlist_hash:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rsi]
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsp, rsp
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c60

	.globl devlist_compare
	.type devlist_compare, @function
devlist_compare:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rsi]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	rsi, qword ptr [rdi]
	sete	al
	and	al, 1
	movzx	eax, al
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406cb0

	.globl devlist_free
	.type devlist_free, @function
devlist_free:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	free
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x406ce0

	.globl selected_fstype
	.type selected_fstype, @function
selected_fstype:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	cmp	qword ptr [word ptr [fs_select_list]],  0
	je	.label_326
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jne	.label_332
.label_326:
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_330
.label_332:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [fs_select_list]]
	mov	qword ptr [rbp - 0x10], rax
.label_327:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_329
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	jne	.label_328
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], 1
	nop	
	jmp	.label_330
.label_328:
	mov	rbp, rbp
	jmp	.label_331
.label_331:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	jmp	.label_327
.label_329:
	mov	byte ptr [rbp - 0x11], 0
.label_330:
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406da0

	.globl excluded_fstype
	.type excluded_fstype, @function
excluded_fstype:
	mov	rsp, rsp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [word ptr [fs_exclude_list]],  0
	lea	rsi, [rsi]
	je	.label_333
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_335
.label_333:
	mov	byte ptr [rbp - 0x11], 0
	mov	rbp, rbp
	jmp	.label_339
.label_335:
	mov	rax,  qword ptr [word ptr [fs_exclude_list]]
	mov	qword ptr [rbp - 8], rax
.label_336:
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_337
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	call	strcmp
	cmp	eax, 0
	jne	.label_338
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_339
.label_338:
	nop	
	jmp	.label_334
.label_334:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_336
.label_337:
	mov	byte ptr [rbp - 0x11], 0
.label_339:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	lea	rsi, [rsi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406e70

	.globl devlist_for_dev
	.type devlist_for_dev, @function
devlist_for_dev:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [word ptr [devlist_table]],  0
	lea	rdi, [rdi]
	jne	.label_340
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_341
.label_340:
	lea	rax, [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	mov	rdi,  qword ptr [word ptr [devlist_table]]
	mov	rsp, rsp
	mov	rsi, rax
	lea	rdi, [rdi]
	call	hash_lookup
	mov	qword ptr [rbp - 0x10], rax
.label_341:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rsp, 0x30
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406ee0

	.globl me_for_dev
	.type me_for_dev, @function
me_for_dev:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	devlist_for_dev
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_342
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_343
.label_342:
	mov	qword ptr [rbp - 0x10], 0
.label_343:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f50

	.globl has_uuid_suffix
	.type has_uuid_suffix, @function
has_uuid_suffix:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	xor	eax, eax
	mov	cl, al
	mov	eax, 0x24
	mov	edx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rdx
	mov	byte ptr [rbp - 0x11], cl
	call	strlen
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rbp - 0x11]
	mov	byte ptr [rbp - 0x21], cl
	jae	.label_344
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.110
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rax, -0x24
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	strspn
	nop	
	cmp	rax, 0x24
	lea	rdi, [rdi]
	sete	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x21], cl
.label_344:
	mov	al, byte ptr [rbp - 0x21]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406ff0

	.globl get_field_values
	.type get_field_values, @function
get_field_values:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 8], 1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rdx], 1
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x28]
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x10], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x30]
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x28], rdx
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x18], rdx
	nop	
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	byte ptr [rdx + 0x20], 0
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x30], -1
	mov	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rdx + 0x38], 0
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	call	known_value
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_348
	nop	
	jmp	.label_351
.label_348:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rax + 0x28]
	call	known_value
	nop	
	test	al, 1
	jne	.label_347
	nop	
	jmp	.label_351
.label_347:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, qword ptr [rcx + 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x30], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x28]
	nop	
	setb	dl
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	and	dl, 1
	mov	rbp, rbp
	mov	byte ptr [rax + 0x38], dl
.label_351:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi], rdx
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [output_block_size]]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x10], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x18], rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	test	byte ptr [rdx + 0x20], 1
	mov	byte ptr [rbp - 0x11], cl
	lea	rsi, [rsi]
	je	.label_346
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	call	known_value
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11], al
.label_346:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x11]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rcx + 0x20], al
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x30], -1
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	byte ptr [rcx + 0x38], 0
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	call	known_value
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_349
	jmp	.label_345
.label_349:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x28]
	mov	rsp, rsp
	call	known_value
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_350
	jmp	.label_345
.label_350:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	sub	rax, qword ptr [rcx + 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x28]
	mov	rsp, rsp
	setb	dl
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	and	dl, 1
	mov	byte ptr [rax + 0x38], dl
.label_345:
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407280

	.globl add_to_grand_total
	.type add_to_grand_total, @function
add_to_grand_total:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi + 0x10]
	call	known_value
	mov	rbp, rbp
	test	al, 1
	nop	
	jne	.label_352
	jmp	.label_358
.label_352:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	add	rax,  qword ptr [word ptr [label_361]]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [label_361]],  rax
.label_358:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 0x18]
	nop	
	call	known_value
	test	al, 1
	jne	.label_354
	lea	rsi, [rsi]
	jmp	.label_357
.label_354:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x18]
	add	rax,  qword ptr [word ptr [label_362]]
	mov	qword ptr [word ptr [label_362]],  rax
.label_357:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	call	known_value
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_353
	mov	rsp, rsp
	jmp	.label_356
.label_353:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	nop	
	imul	rax, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	add	rax,  qword ptr [word ptr [label_363]]
	mov	rsp, rsp
	mov	qword ptr [word ptr [label_363]],  rax
.label_356:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x28]
	lea	rdi, [rdi]
	call	known_value
	test	al, 1
	nop	
	jne	.label_359
	lea	rdi, [rdi]
	jmp	.label_364
.label_359:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	imul	rax, qword ptr [rcx + 0x28]
	add	rax,  qword ptr [word ptr [label_360]]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [label_360]],  rax
.label_364:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 0x18]
	call	known_value
	test	al, 1
	jne	.label_365
	nop	
	jmp	.label_355
.label_365:
	movabs	rax, OFFSET FLAT:grand_fsu
	nop	
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 0x18
	add	rax, 0x20
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	rdx, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	imul	rdx, qword ptr [rsi + 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dil, byte ptr [rsi + 0x20]
	and	dil, 1
	mov	byte ptr [rbp - 0x11], dil
	mov	rdi, rcx
	mov	rbp, rbp
	mov	rsi, rax
	mov	r8b, byte ptr [rbp - 0x11]
	mov	rbp, rbp
	movzx	ecx, r8b
	mov	rbp, rbp
	call	add_uint_with_neg_flag
.label_355:
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407440

	.globl df_readable
	.type df_readable, @function
df_readable:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x50
	mov	al, dil
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], al
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rcx
	mov	qword ptr [rbp - 0x30], r8
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	known_value
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_366
	test	byte ptr [rbp - 1], 1
	nop	
	jne	.label_366
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.34
	nop	
	mov	qword ptr [rbp - 0x38], rax
	nop	
	jmp	.label_369
.label_366:
	nop	
	test	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	je	.label_367
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	jmp	.label_370
.label_367:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
.label_370:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dl, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	and	dl, 1
	lea	rsi, [rsi]
	movzx	esi, dl
	lea	rsi, [rsi]
	movsxd	rdi, esi
	add	rcx, rdi
	mov	rbp, rbp
	mov	edx,  dword ptr [dword ptr [human_output_opts]]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rdi, rax
	mov	rsi, rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	call	human_readable
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	test	byte ptr [rbp - 1], 1
	lea	rsi, [rsi]
	je	.label_368
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, -1
	mov	qword ptr [rbp - 0x48], rcx
	mov	byte ptr [rax - 1], 0x2d
.label_368:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x38], rax
.label_369:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	add	rsp, 0x50
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407580

	.globl known_value
	.type known_value, @function
known_value:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], -2
	mov	rsp, rsp
	setb	al
	and	al, 1
	movzx	eax, al
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4075b0

	.globl add_uint_with_neg_flag
	.type add_uint_with_neg_flag, @function
add_uint_with_neg_flag:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	al, cl
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rdx]
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	nop	
	mov	al, byte ptr [rbp - 9]
	xor	al, 0xff
	mov	rsp, rsp
	and	al, 1
	movzx	r8d, al
	lea	rsi, [rsi]
	cmp	ecx, r8d
	mov	rbp, rbp
	jne	.label_371
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	add	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	jmp	.label_372
.label_371:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	test	byte ptr [rax], 1
	lea	rsi, [rsi]
	je	.label_373
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	sub	rcx, qword ptr [rdx]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rdx], rcx
.label_373:
	nop	
	test	byte ptr [rbp - 9], 1
	mov	rbp, rbp
	je	.label_376
	xor	eax, eax
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
.label_376:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	jae	.label_375
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx]
	sub	rdx, rax
	mov	qword ptr [rcx], rdx
	jmp	.label_374
.label_375:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	dl, byte ptr [rbp - 9]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	and	dl, 1
	mov	byte ptr [rax], dl
.label_374:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	test	byte ptr [rax], 1
	nop	
	je	.label_372
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	sub	rcx, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx], rcx
.label_372:
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4076f0

	.globl find_mount_point
	.type find_mount_point, @function
find_mount_point:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x1f0
	lea	rax, [rbp - 0x110]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1d0], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1e0], rsi
	mov	qword ptr [rbp - 0x38], 0
	mov	rdi, rax
	nop	
	call	save_cwd
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_384
	mov	rbp, rbp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_3
	nop	
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], 0
	mov	rsp, rsp
	jmp	.label_383
.label_384:
	mov	rax, qword ptr [rbp - 0x1e0]
	mov	ecx, dword ptr [rax + 0x18]
	nop	
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	jne	.label_377
	nop	
	mov	eax, 0x90
	nop	
	mov	edx, eax
	lea	rcx, [rbp - 0x1a8]
	mov	rsi, qword ptr [rbp - 0x1e0]
	nop	
	mov	rdi, rcx
	mov	rsp, rsp
	call	memcpy
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x1d0]
	call	chdir
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_389
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.1_0
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x114], esi
	mov	rbp, rbp
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x1d0]
	mov	qword ptr [rbp - 0xf8], rax
	call	quotearg_style
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x114]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xf8]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	error
	mov	qword ptr [rbp - 0xf0], 0
	mov	rsp, rsp
	jmp	.label_383
.label_389:
	mov	rsp, rsp
	jmp	.label_380
.label_377:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x1d0]
	mov	rbp, rbp
	call	dir_name
	nop	
	mov	qword ptr [rbp - 0xe0], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	call	strlen
	mov	rbp, rbp
	mov	rdi, rax
	inc	rdi
	mov	qword ptr [rbp - 0x1b0], rdi
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	mov	rdi, rsp
	sub	rdi, rax
	mov	rsp, rdi
	mov	qword ptr [rbp - 0x48], rdi
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x1b0]
	mov	rbp, rbp
	mov	rdi, rax
	mov	qword ptr [rbp - 0x1d8], rax
	call	memcpy
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1b8], rax
	mov	rdx, qword ptr [rbp - 0x1b8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdi, qword ptr [rbp - 0xe0]
	call	free
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	call	chdir
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_381
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.1_0
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe4], esi
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x1c0], rax
	mov	rsp, rsp
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xe4]
	mov	rdx, qword ptr [rbp - 0x1c0]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rbp, rbp
	call	error
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], 0
	lea	rdi, [rdi]
	jmp	.label_383
.label_381:
	movabs	rdi, OFFSET FLAT:.str_2
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x1a8]
	mov	rsp, rsp
	call	stat
	mov	rbp, rbp
	cmp	eax, 0
	jge	.label_385
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.3_0
	mov	rsp, rsp
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x30], esi
	lea	rsi, [rsi]
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	jmp	.label_378
.label_385:
	jmp	.label_380
.label_380:
	mov	rbp, rbp
	jmp	.label_379
.label_379:
	movabs	rdi, OFFSET FLAT:.str.4_0
	lea	rsi, [rbp - 0xd8]
	call	stat
	lea	rdi, [rdi]
	cmp	eax, 0
	jge	.label_387
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.5_0
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1c4], esi
	call	gettext
	mov	edi, 4
	movabs	rsi, OFFSET FLAT:.str.4_0
	mov	qword ptr [rbp - 0x18], rax
	nop	
	call	quotearg_style
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x1c4]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_378
.label_387:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	jne	.label_382
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd0]
	cmp	rax, qword ptr [rbp - 0x1a0]
	jne	.label_386
.label_382:
	mov	rbp, rbp
	jmp	.label_390
.label_386:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.4_0
	call	chdir
	nop	
	cmp	eax, 0
	nop	
	jge	.label_391
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.1_0
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xfc], esi
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.4_0
	mov	qword ptr [rbp - 0x1e8], rax
	call	quotearg_style
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xfc]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x1e8]
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	error
	lea	rdi, [rdi]
	jmp	.label_378
.label_391:
	nop	
	mov	eax, 0x90
	mov	edx, eax
	mov	rbp, rbp
	lea	rcx, [rbp - 0xd8]
	mov	rbp, rbp
	lea	rsi, [rbp - 0x1a8]
	nop	
	mov	rdi, rsi
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcpy
	lea	rsi, [rsi]
	jmp	.label_379
.label_390:
	call	xgetcwd
	nop	
	mov	qword ptr [rbp - 0x38], rax
.label_378:
	call	__errno_location
	lea	rdi, [rbp - 0x110]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	lea	rsi, [rsi]
	call	restore_cwd
	nop	
	cmp	eax, 0
	je	.label_388
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.6_0
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x40], esi
	call	gettext
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_388:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x110]
	nop	
	call	free_cwd
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0xc]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xf0], rax
.label_383:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rsp, rbp
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x407c50
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
	jb	.label_392
	jmp	.label_394
.label_394:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, -0x41
	lea	rdi, [rdi]
	sub	eax, 0x1a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	jb	.label_392
	nop	
	jmp	.label_393
.label_393:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, -0x61
	sub	eax, 0x19
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], eax
	mov	rbp, rbp
	ja	.label_396
	jmp	.label_392
.label_392:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x15], 1
	lea	rsi, [rsi]
	jmp	.label_395
.label_396:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x15], 0
.label_395:
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
	#Procedure 0x407ce0
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
	jb	.label_397
	nop	
	jmp	.label_398
.label_398:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	add	eax, -0x61
	nop	
	sub	eax, 0x19
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	mov	rsp, rsp
	ja	.label_399
	lea	rdi, [rdi]
	jmp	.label_397
.label_397:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	jmp	.label_400
.label_399:
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
.label_400:
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
	#Procedure 0x407d60
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
	ja	.label_401
	mov	rsp, rsp
	jmp	.label_403
.label_403:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_402
.label_401:
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 0
.label_402:
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
	#Procedure 0x407db0
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
	je	.label_404
	cmp	dword ptr [rbp - 4], 9
	lea	rsi, [rsi]
	sete	al
	mov	byte ptr [rbp - 5], al
.label_404:
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
	#Procedure 0x407e00

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
	jb	.label_405
	nop	
	jmp	.label_406
.label_406:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0xc], eax
	jne	.label_407
	lea	rsi, [rsi]
	jmp	.label_405
.label_405:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_408
.label_407:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 5], 0
.label_408:
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
	#Procedure 0x407e70
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
	ja	.label_410
	jmp	.label_411
.label_411:
	mov	byte ptr [rbp - 5], 1
	lea	rdi, [rdi]
	jmp	.label_409
.label_410:
	mov	byte ptr [rbp - 5], 0
.label_409:
	mov	al, byte ptr [rbp - 5]
	mov	rsp, rsp
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ec0
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
	ja	.label_413
	lea	rsi, [rsi]
	jmp	.label_414
.label_414:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_412
.label_413:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], 0
.label_412:
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
	#Procedure 0x407f10
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
	ja	.label_415
	jmp	.label_416
.label_416:
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_417
.label_415:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
.label_417:
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
	#Procedure 0x407f60
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
	ja	.label_418
	jmp	.label_420
.label_420:
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 1
	jmp	.label_419
.label_418:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], 0
.label_419:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407fb0
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
	jb	.label_421
	jmp	.label_423
.label_423:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	eax, -0x3a
	sub	eax, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	jb	.label_421
	nop	
	jmp	.label_426
.label_426:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	eax, -0x5b
	mov	rsp, rsp
	sub	eax, 6
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_421
	jmp	.label_424
.label_424:
	mov	eax, dword ptr [rbp - 4]
	add	eax, -0x7b
	mov	rsp, rsp
	sub	eax, 3
	mov	dword ptr [rbp - 0xc], eax
	ja	.label_422
	mov	rsp, rsp
	jmp	.label_421
.label_421:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_425
.label_422:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], 0
.label_425:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408060
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
	jb	.label_427
	mov	rbp, rbp
	jmp	.label_428
.label_428:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	jne	.label_430
	mov	rsp, rsp
	jmp	.label_427
.label_427:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_429
.label_430:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
.label_429:
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
	#Procedure 0x4080d0
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
	ja	.label_431
	jmp	.label_433
.label_433:
	mov	byte ptr [rbp - 5], 1
	nop	
	jmp	.label_432
.label_431:
	mov	byte ptr [rbp - 5], 0
.label_432:
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
	#Procedure 0x408120
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
	jb	.label_434
	lea	rdi, [rdi]
	jmp	.label_438
.label_438:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	eax, -0x41
	mov	rbp, rbp
	sub	eax, 6
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jb	.label_434
	jmp	.label_435
.label_435:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	add	eax, -0x61
	sub	eax, 5
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_437
	jmp	.label_434
.label_434:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_436
.label_437:
	nop	
	mov	byte ptr [rbp - 9], 0
.label_436:
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
	#Procedure 0x4081b0

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
	ja	.label_439
	jmp	.label_440
.label_440:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x41
	nop	
	add	eax, 0x61
	nop	
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	jmp	.label_441
.label_439:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
.label_441:
	nop	
	mov	eax, dword ptr [rbp - 8]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x408200
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
	ja	.label_442
	mov	rbp, rbp
	jmp	.label_443
.label_443:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	sub	eax, 0x61
	mov	rsp, rsp
	add	eax, 0x41
	nop	
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_444
.label_442:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_444:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408260

	.globl canonicalize_filename_mode
	.type canonicalize_filename_mode, @function
canonicalize_filename_mode:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x180
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x178], rdi
	mov	dword ptr [rbp - 0x40], esi
	mov	qword ptr [rbp - 8], 0
	mov	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x118], 0
	mov	esi, dword ptr [rbp - 0x40]
	nop	
	and	esi, 0xfffffffc
	nop	
	mov	dword ptr [rbp - 0x6c], esi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x6c]
	lea	rdi, [rdi]
	and	esi, 4
	cmp	esi, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x119], al
	mov	esi, dword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	and	esi, 3
	mov	dword ptr [rbp - 0x40], esi
	mov	esi, dword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	sub	ecx, 1
	mov	rbp, rbp
	and	esi, ecx
	mov	rsp, rsp
	cmp	esi, 0
	mov	rbp, rbp
	je	.label_478
	call	__errno_location
	mov	dword ptr [rax], 0x16
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jmp	.label_459
.label_478:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x178], 0
	jne	.label_448
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 0x68], 0
	mov	rsp, rsp
	jmp	.label_459
.label_448:
	mov	rax, qword ptr [rbp - 0x178]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_469
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 2
	mov	qword ptr [rbp - 0x68], 0
	mov	rsp, rsp
	jmp	.label_459
.label_469:
	mov	qword ptr [rbp - 0x128], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x178]
	nop	
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	je	.label_485
	call	xgetcwd
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	jne	.label_494
	mov	qword ptr [rbp - 0x68], 0
	mov	rbp, rbp
	jmp	.label_459
.label_494:
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x10]
	call	strchr
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	sub	rax, rdi
	cmp	rax, 0x1000
	mov	rbp, rbp
	jge	.label_504
	mov	eax, 0x1000
	mov	rsp, rsp
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	xrealloc
	nop	
	mov	qword ptr [rbp - 0x150], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x150]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	sub	rsi, rdi
	lea	rsi, [rsi]
	add	rax, rsi
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x1000
	mov	qword ptr [rbp - 0x28], rax
	nop	
	jmp	.label_514
.label_504:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
.label_514:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x160], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x128], 0
	lea	rdi, [rdi]
	jmp	.label_474
.label_485:
	mov	eax, 0x1000
	mov	rbp, rbp
	mov	edi, eax
	nop	
	call	xmalloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rax, 0x1000
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x128], 0
	mov	rsp, rsp
	je	.label_491
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x128]
	lea	rsi, [rsi]
	call	memcpy
	nop	
	mov	rdx, qword ptr [rbp - 0x128]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rbp - 0x38], rdx
.label_491:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	qword ptr [rbp - 0x38], rcx
	mov	byte ptr [rax], 0x2f
	mov	rax, qword ptr [rbp - 0x178]
	add	rax, qword ptr [rbp - 0x128]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x160], rax
.label_474:
	mov	rsp, rsp
	jmp	.label_460
.label_460:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x160]
	mov	rsp, rsp
	cmp	byte ptr [rax], 0
	je	.label_453
	jmp	.label_471
.label_471:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x160]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x2f
	jne	.label_498
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x160]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x160], rax
	jmp	.label_471
.label_498:
	mov	rax, qword ptr [rbp - 0x160]
	mov	qword ptr [rbp - 0x78], rax
.label_511:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x41], cl
	je	.label_489
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	sete	dl
	mov	rbp, rbp
	xor	dl, 0xff
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x41], dl
.label_489:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	mov	rbp, rbp
	jne	.label_451
	mov	rbp, rbp
	jmp	.label_506
.label_451:
	lea	rsi, [rsi]
	jmp	.label_510
.label_510:
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_511
.label_506:
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x160]
	sub	rax, rcx
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_513
	mov	rsp, rsp
	jmp	.label_453
.label_513:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x160]
	sub	rax, rcx
	cmp	rax, 1
	lea	rdi, [rdi]
	jne	.label_457
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x160]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	lea	rdi, [rdi]
	jne	.label_457
	jmp	.label_477
.label_457:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x160]
	lea	rsi, [rsi]
	sub	rax, rcx
	cmp	rax, 2
	mov	rsp, rsp
	jne	.label_479
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x160]
	nop	
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_479
	mov	rax, qword ptr [rbp - 0x160]
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	cmp	ecx, 0x2e
	jne	.label_479
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x128]
	add	rcx, 1
	lea	rdi, [rdi]
	cmp	rax, rcx
	jbe	.label_473
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	add	rax, -1
	nop	
	mov	qword ptr [rbp - 0x38], rax
.label_512:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x38]
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x161], cl
	mov	rbp, rbp
	jbe	.label_461
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rax - 1]
	mov	rsp, rsp
	cmp	ecx, 0x2f
	sete	dl
	nop	
	xor	dl, 0xff
	nop	
	mov	byte ptr [rbp - 0x161], dl
.label_461:
	mov	al, byte ptr [rbp - 0x161]
	mov	rbp, rbp
	test	al, 1
	mov	rsp, rsp
	jne	.label_455
	jmp	.label_464
.label_455:
	lea	rsi, [rsi]
	jmp	.label_465
.label_465:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_512
.label_464:
	jmp	.label_473
.label_473:
	lea	rdi, [rdi]
	jmp	.label_476
.label_479:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x2f
	je	.label_480
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x38], rcx
	mov	byte ptr [rax], 0x2f
.label_480:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x78]
	nop	
	mov	rdx, qword ptr [rbp - 0x160]
	lea	rsi, [rsi]
	sub	rcx, rdx
	add	rax, rcx
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jb	.label_490
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	sub	rax, rcx
	mov	qword ptr [rbp - 0x170], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x160]
	sub	rax, rcx
	lea	rdi, [rdi]
	add	rax, 1
	lea	rsi, [rsi]
	cmp	rax, 0x1000
	mov	rsp, rsp
	jle	.label_502
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x160]
	lea	rdi, [rdi]
	sub	rax, rcx
	nop	
	add	rax, 1
	add	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	nop	
	jmp	.label_446
.label_502:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, 0x1000
	mov	qword ptr [rbp - 0x18], rax
.label_446:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	xrealloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0x38], rax
.label_490:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x160]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x160]
	mov	rbp, rbp
	sub	rcx, rdx
	mov	rdi, rax
	mov	rdx, rcx
	mov	qword ptr [rbp - 0x148], rax
	nop	
	call	memcpy
	mov	rax, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x160]
	sub	rcx, rdx
	nop	
	add	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	byte ptr [rcx], 0
	test	byte ptr [rbp - 0x119], 1
	je	.label_501
	cmp	dword ptr [rbp - 0x40], 2
	jne	.label_501
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xf8], 0
	lea	rsi, [rsi]
	jmp	.label_507
.label_501:
	nop	
	test	byte ptr [rbp - 0x119], 1
	je	.label_456
	nop	
	lea	rsi, [rbp - 0x110]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	stat
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_463
.label_456:
	mov	rbp, rbp
	lea	rsi, [rbp - 0x110]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	call	__lstat
	mov	dword ptr [rbp - 0x7c], eax
.label_463:
	mov	eax, dword ptr [rbp - 0x7c]
	cmp	eax, 0
	je	.label_472
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x12c], ecx
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x40], 0
	lea	rsi, [rsi]
	jne	.label_508
	jmp	.label_468
.label_508:
	cmp	dword ptr [rbp - 0x40], 1
	jne	.label_487
	nop	
	movabs	rsi, OFFSET FLAT:.str.3_1
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x78]
	call	strspn
	mov	rsi, qword ptr [rbp - 0x78]
	movsx	ecx, byte ptr [rsi + rax]
	lea	rdi, [rdi]
	cmp	ecx, 0
	jne	.label_496
	cmp	dword ptr [rbp - 0x12c], 2
	mov	rbp, rbp
	je	.label_503
.label_496:
	jmp	.label_468
.label_503:
	jmp	.label_481
.label_487:
	mov	dword ptr [rbp - 0xf8], 0
.label_472:
	jmp	.label_507
.label_507:
	mov	eax, dword ptr [rbp - 0xf8]
	and	eax, 0xf000
	cmp	eax, 0xa000
	nop	
	jne	.label_509
	lea	rdi, [rbp - 0x118]
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0x110]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	call	seen_triple
	test	al, 1
	jne	.label_454
	lea	rsi, [rsi]
	jmp	.label_458
.label_454:
	cmp	dword ptr [rbp - 0x40], 2
	nop	
	jne	.label_462
	mov	rbp, rbp
	jmp	.label_481
.label_462:
	mov	dword ptr [rbp - 0x12c], 0x28
	jmp	.label_468
.label_458:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0xe0]
	call	areadlink_with_size
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x140], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x140], 0
	jne	.label_445
	cmp	dword ptr [rbp - 0x40], 2
	mov	rbp, rbp
	jne	.label_484
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	je	.label_484
	lea	rsi, [rsi]
	jmp	.label_481
.label_484:
	mov	rbp, rbp
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x12c], ecx
	jmp	.label_468
.label_445:
	mov	rdi, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_447
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	cmp	rax, 0x1000
	mov	rsp, rsp
	jbe	.label_488
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_452
.label_488:
	nop	
	mov	eax, 0x1000
	mov	rsp, rsp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x58], rcx
	jmp	.label_452
.label_452:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	xmalloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_449
.label_447:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jbe	.label_482
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	xrealloc
	nop	
	mov	qword ptr [rbp - 8], rax
.label_482:
	nop	
	jmp	.label_449
.label_449:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	rbp, rbp
	call	memmove
	mov	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x138], rax
	mov	rbp, rbp
	call	memcpy
	nop	
	mov	rax, qword ptr [rbp - 0x138]
	nop	
	mov	qword ptr [rbp - 0x78], rax
	mov	qword ptr [rbp - 0x178], rax
	mov	rcx, qword ptr [rbp - 0x140]
	nop	
	movsx	r8d, byte ptr [rcx]
	cmp	r8d, 0x2f
	mov	rsp, rsp
	jne	.label_492
	mov	qword ptr [rbp - 0x60], 0
	cmp	qword ptr [rbp - 0x60], 0
	je	.label_467
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x140]
	mov	rdx, qword ptr [rbp - 0x60]
	call	memcpy
.label_467:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rcx, rax
	add	rcx, 1
	nop	
	mov	qword ptr [rbp - 0x38], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], 0x2f
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x128], rax
	lea	rdi, [rdi]
	jmp	.label_500
.label_492:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x128]
	add	rcx, 1
	mov	rsp, rsp
	cmp	rax, rcx
	mov	rsp, rsp
	jbe	.label_495
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
.label_470:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x151], cl
	lea	rdi, [rdi]
	jbe	.label_497
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x2f
	lea	rdi, [rdi]
	sete	dl
	lea	rdi, [rdi]
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x151], dl
.label_497:
	mov	al, byte ptr [rbp - 0x151]
	test	al, 1
	nop	
	jne	.label_499
	mov	rsp, rsp
	jmp	.label_515
.label_499:
	mov	rbp, rbp
	jmp	.label_466
.label_466:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_470
.label_515:
	jmp	.label_495
.label_495:
	jmp	.label_500
.label_500:
	mov	rdi, qword ptr [rbp - 0x140]
	nop	
	call	free
	jmp	.label_483
.label_509:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xf8]
	lea	rdi, [rdi]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_486
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_486
	cmp	dword ptr [rbp - 0x40], 2
	je	.label_486
	mov	dword ptr [rbp - 0x12c], 0x14
	lea	rdi, [rdi]
	jmp	.label_468
.label_486:
	mov	rbp, rbp
	jmp	.label_483
.label_483:
	jmp	.label_476
.label_476:
	lea	rdi, [rdi]
	jmp	.label_477
.label_477:
	mov	rbp, rbp
	jmp	.label_505
.label_505:
	jmp	.label_481
.label_481:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x160], rax
	jmp	.label_460
.label_453:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, qword ptr [rbp - 0x128]
	add	rcx, 1
	cmp	rax, rcx
	jbe	.label_450
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	jne	.label_450
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
.label_450:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	add	rcx, 1
	cmp	rax, rcx
	je	.label_475
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	add	rax, 1
	mov	rsi, rax
	call	xrealloc
	mov	qword ptr [rbp - 0x10], rax
.label_475:
	mov	rdi, qword ptr [rbp - 8]
	call	free
	cmp	qword ptr [rbp - 0x118], 0
	nop	
	je	.label_493
	mov	rdi, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	call	hash_free
.label_493:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rax
	lea	rdi, [rdi]
	jmp	.label_459
.label_468:
	mov	rdi, qword ptr [rbp - 8]
	call	free
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	free
	cmp	qword ptr [rbp - 0x118], 0
	je	.label_516
	nop	
	mov	rdi, qword ptr [rbp - 0x118]
	call	hash_free
.label_516:
	mov	eax, dword ptr [rbp - 0x12c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	mov	dword ptr [rax], ecx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], 0
.label_459:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	add	rsp, 0x180
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408f30

	.globl seen_triple
	.type seen_triple, @function
seen_triple:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rdx], 0
	jne	.label_517
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	esi, eax
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:triple_hash
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:triple_compare_ino_str
	mov	rsp, rsp
	movabs	r8, OFFSET FLAT:triple_free
	nop	
	mov	qword ptr [rbp - 0x20], 7
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	hash_initialize
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rcx], rax
	nop	
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_518
	lea	rdi, [rdi]
	call	xalloc_die
.label_518:
	jmp	.label_517
.label_517:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	call	seen_file
	mov	rsp, rsp
	test	al, 1
	jne	.label_519
	jmp	.label_520
.label_519:
	mov	byte ptr [rbp - 0x21], 1
	jmp	.label_521
.label_520:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	record_file
	nop	
	mov	byte ptr [rbp - 0x21], 0
.label_521:
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409040
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
	#Procedure 0x409070
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
	#Procedure 0x4090a0

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
	je	.label_522
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_523
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_522
.label_523:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_4
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_526
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
	jmp	.label_524
.label_526:
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
.label_524:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_522:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_525
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_525:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4091d0

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
	jne	.label_527
	lea	rsi, [rsi]
	call	xalloc_die
.label_527:
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
	.align	16
	#Procedure 0x409220

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
	je	.label_528
	xor	eax, eax
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	jmp	.label_531
.label_528:
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
.label_531:
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
.label_532:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x18]
	nop	
	jae	.label_533
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	cmp	edx, 0x2f
	je	.label_529
	jmp	.label_533
.label_529:
	jmp	.label_530
.label_530:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_532
.label_533:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409310

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
	je	.label_535
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	byte ptr [rbp - 0x22], cl
	lea	rdi, [rdi]
	jmp	.label_535
.label_535:
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
	jne	.label_537
	nop	
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jmp	.label_534
.label_537:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcpy
	test	byte ptr [rbp - 0x21], 1
	lea	rdi, [rdi]
	je	.label_536
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
.label_536:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx + rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 8], rax
.label_534:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x409430

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
.label_544:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	jne	.label_540
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_544
.label_540:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
.label_542:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_538
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	jne	.label_541
	mov	byte ptr [rbp - 0x19], 1
	nop	
	jmp	.label_539
.label_541:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x19], 1
	lea	rdi, [rdi]
	je	.label_543
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], 0
.label_543:
	jmp	.label_539
.label_539:
	jmp	.label_545
.label_545:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_542
.label_538:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409500

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
.label_547:
	xor	eax, eax
	mov	cl, al
	mov	eax, 1
	lea	rsi, [rsi]
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 1], cl
	mov	rsp, rsp
	jae	.label_546
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
.label_546:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	test	al, 1
	nop	
	jne	.label_548
	mov	rbp, rbp
	jmp	.label_549
.label_548:
	jmp	.label_550
.label_550:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_547
.label_549:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4095c0

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
	jne	.label_551
	jmp	.label_553
.label_551:
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
	jne	.label_552
	mov	rbp, rbp
	call	xalloc_die
.label_552:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	je	.label_553
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	nop	
	call	triple_free
.label_553:
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4096a0

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
	jne	.label_554
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], 0
	jmp	.label_555
.label_554:
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
.label_555:
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
	.align	16
	#Procedure 0x409740

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
	.align	16
	#Procedure 0x409760

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
	.align	16
	#Procedure 0x409780

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
	.align	16
	#Procedure 0x4097a0

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
.label_561:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	jae	.label_556
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_558
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], 1
.label_562:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	je	.label_557
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	nop	
	jmp	.label_562
.label_557:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	jbe	.label_559
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
.label_559:
	jmp	.label_558
.label_558:
	mov	rbp, rbp
	jmp	.label_560
.label_560:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_561
.label_556:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409880
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
.label_563:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jae	.label_568
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_567
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
.label_564:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	je	.label_565
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_564
.label_565:
	jmp	.label_567
.label_567:
	jmp	.label_570
.label_570:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_563
.label_568:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	jne	.label_569
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_569
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_566
.label_569:
	mov	byte ptr [rbp - 0x19], 0
.label_566:
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
	.align	16
	#Procedure 0x4099b0
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
	movabs	rax, OFFSET FLAT:.str.2_0
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
	mov	ecx, OFFSET FLAT:.str_5
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
	mov	ecx, OFFSET FLAT:.str.1_2
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
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_176]]
	punpckldq	xmm0, xmm1
	mov	rbp, rbp
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_177]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	movsd	xmm0,  qword ptr [word ptr [rip + label_217]]
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
	movabs	rsi, OFFSET FLAT:.str.3_2
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
	.align	16
	#Procedure 0x409b30

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
	jne	.label_577
	mov	qword ptr [rbp - 0x18], 0
	nop	
	jmp	.label_575
.label_577:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
.label_574:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_572
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	je	.label_571
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
	jne	.label_571
	mov	rsp, rsp
	jmp	.label_573
.label_571:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_575
.label_573:
	nop	
	jmp	.label_576
.label_576:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_574
.label_572:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], 0
.label_575:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409c20

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
	jb	.label_578
	call	abort
.label_578:
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
	.align	16
	#Procedure 0x409cb0
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
	jne	.label_579
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_582
.label_579:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
.label_583:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jb	.label_580
	lea	rsi, [rsi]
	call	abort
.label_580:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_585
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_582
.label_585:
	jmp	.label_581
.label_581:
	nop	
	jmp	.label_584
.label_584:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_583
.label_582:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d70
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
.label_589:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_587
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 8], 0
	je	.label_587
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_591
.label_587:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jne	.label_589
	jmp	.label_586
.label_586:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_590
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_588
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_591
.label_588:
	jmp	.label_586
.label_590:
	mov	qword ptr [rbp - 0x28], 0
.label_591:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409e70
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
.label_599:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jae	.label_592
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	nop	
	je	.label_594
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
.label_593:
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_598
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_595
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_597
.label_595:
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
	jmp	.label_593
.label_598:
	lea	rsi, [rsi]
	jmp	.label_594
.label_594:
	jmp	.label_596
.label_596:
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_599
.label_592:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rax
.label_597:
	mov	rax, qword ptr [rbp - 0x38]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409f80
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
.label_605:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jae	.label_604
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_600
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_603:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_607
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
	jne	.label_602
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_606
.label_602:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_603
.label_607:
	mov	rbp, rbp
	jmp	.label_600
.label_600:
	nop	
	jmp	.label_601
.label_601:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_605
.label_604:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
.label_606:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a090
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
.label_608:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax]
	nop	
	mov	byte ptr [rbp - 0x19], cl
	cmp	cl, 0
	nop	
	je	.label_609
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
	jmp	.label_608
.label_609:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a100
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
	mov	rax,  qword ptr [word ptr [label_610]]
	mov	qword ptr [rdi + 8], rax
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [label_611]]
	lea	rsi, [rsi]
	mov	dword ptr [rdi + 0x10], ecx
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a150

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
	jne	.label_615
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:raw_hasher
	mov	qword ptr [rbp - 0x30], rax
.label_615:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_614
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:raw_comparator
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
.label_614:
	mov	eax, 0x50
	mov	rsp, rsp
	mov	edi, eax
	mov	rsp, rsp
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_613
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_617
.label_613:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_619
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x10], rax
.label_619:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	call	check_tuning
	test	al, 1
	mov	rbp, rbp
	jne	.label_618
	jmp	.label_616
.label_618:
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
	jne	.label_612
	mov	rsp, rsp
	jmp	.label_616
.label_612:
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
	jne	.label_620
	jmp	.label_616
.label_620:
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
	jmp	.label_617
.label_616:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], 0
.label_617:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a370

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
	.align	16
	#Procedure 0x40a3c0

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
	.align	16
	#Procedure 0x40a3f0

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
	jne	.label_624
	mov	byte ptr [rbp - 1], 1
	jmp	.label_621
.label_624:
	movss	xmm0,  dword ptr [dword ptr [label_622]]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_623
	mov	rsp, rsp
	movss	xmm0,  dword ptr [dword ptr [label_625]]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	mov	rsp, rsp
	subss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	jbe	.label_623
	nop	
	movss	xmm0,  dword ptr [dword ptr [label_625]]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 0xc]
	ucomiss	xmm1, xmm0
	lea	rsi, [rsi]
	jbe	.label_623
	xorps	xmm0, xmm0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax]
	mov	rsp, rsp
	ucomiss	xmm1, xmm0
	jb	.label_623
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 4]
	ucomiss	xmm1, xmm0
	jbe	.label_623
	mov	rsp, rsp
	movss	xmm0,  dword ptr [dword ptr [label_625]]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	ucomiss	xmm0, dword ptr [rax + 4]
	jb	.label_623
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
	jbe	.label_623
	mov	byte ptr [rbp - 1], 1
	jmp	.label_621
.label_623:
	nop	
	movabs	rax, OFFSET FLAT:default_tuning
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x28], rax
	mov	byte ptr [rbp - 1], 0
.label_621:
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
	.align	16
	#Procedure 0x40a560

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
	jne	.label_626
	lea	rsi, [rsi]
	movss	xmm0,  dword ptr [dword ptr [label_627]]
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
	js	.label_628
	movss	xmm0, dword ptr [rbp - 0xc]
	movss	dword ptr [rbp - 0x10], xmm0
.label_628:
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
	jb	.label_632
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_630
.label_632:
	nop	
	movss	xmm0, dword ptr [rbp - 0x14]
	nop	
	movss	xmm1,  dword ptr [dword ptr [rip + label_631]]
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
.label_626:
	mov	rdi, qword ptr [rbp - 8]
	call	next_prime
	lea	rsi, [rsi]
	movabs	rdi, 0xfffffffffffffff
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	cmp	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	jae	.label_629
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_630
.label_629:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
.label_630:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a6d0
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
.label_639:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jae	.label_638
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_635
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_634:
	cmp	qword ptr [rbp - 8], 0
	nop	
	je	.label_636
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x40], 0
	lea	rdi, [rdi]
	je	.label_640
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rcx]
	call	rax
.label_640:
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
	jmp	.label_634
.label_636:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_637
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	nop	
	call	rax
.label_637:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 8], 0
.label_635:
	jmp	.label_633
.label_633:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_639
.label_638:
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
	.align	16
	#Procedure 0x40a840

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
	je	.label_641
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x20], 0
	lea	rsi, [rsi]
	je	.label_641
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
.label_644:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jae	.label_647
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	je	.label_651
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
.label_650:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_642
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
	jmp	.label_650
.label_642:
	jmp	.label_651
.label_651:
	jmp	.label_645
.label_645:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_644
.label_647:
	jmp	.label_641
.label_641:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
.label_654:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_652
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
.label_649:
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	je	.label_653
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
	jmp	.label_649
.label_653:
	jmp	.label_648
.label_648:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_654
.label_652:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x48]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_646:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_643
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
	jmp	.label_646
.label_643:
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
	.align	16
	#Procedure 0x40aa30

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
	jne	.label_661
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x71], 0
	jmp	.label_660
.label_661:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_655
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x71], 1
	mov	rbp, rbp
	jmp	.label_660
.label_655:
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
	jne	.label_657
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x71], 0
	mov	rsp, rsp
	jmp	.label_660
.label_657:
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
	jne	.label_656
	lea	rsi, [rsi]
	jmp	.label_659
.label_656:
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
	jmp	.label_660
.label_659:
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
	jne	.label_662
	mov	rbp, rbp
	jmp	.label_658
.label_662:
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	call	transfer_entries
	nop	
	test	al, 1
	jne	.label_663
.label_658:
	call	abort
.label_663:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	nop	
	mov	byte ptr [rbp - 0x71], 0
.label_660:
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
	.align	16
	#Procedure 0x40ad00

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
.label_667:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_673
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_665
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
.label_669:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_672
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
	je	.label_670
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
	jmp	.label_668
.label_670:
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
.label_668:
	mov	rbp, rbp
	jmp	.label_671
.label_671:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_669
.label_672:
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rax + 8], 0
	test	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	je	.label_664
	jmp	.label_666
.label_664:
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
	je	.label_676
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	call	allocate_entry
	mov	qword ptr [rbp - 0x18], rax
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jne	.label_675
	mov	byte ptr [rbp - 0x19], 0
	mov	rbp, rbp
	jmp	.label_674
.label_675:
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
	jmp	.label_677
.label_676:
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
.label_677:
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
.label_665:
	jmp	.label_666
.label_666:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	add	rax, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	jmp	.label_667
.label_673:
	mov	byte ptr [rbp - 0x19], 1
.label_674:
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
	.align	16
	#Procedure 0x40af90

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
	jne	.label_689
	lea	rsi, [rsi]
	call	abort
.label_689:
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
	je	.label_691
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_679
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_679:
	nop	
	mov	dword ptr [rbp - 4], 0
	jmp	.label_678
.label_691:
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
	js	.label_692
	movss	xmm0, dword ptr [rbp - 0x88]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_692:
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
	js	.label_680
	movss	xmm0, dword ptr [rbp - 0x6c]
	nop	
	movss	dword ptr [rbp - 0x24], xmm0
.label_680:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0x24]
	movss	xmm1, dword ptr [rbp - 0xbc]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x60]
	ucomiss	xmm0, xmm1
	jbe	.label_681
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
	js	.label_687
	movss	xmm0, dword ptr [rbp - 0x3c]
	nop	
	movss	dword ptr [rbp - 8], xmm0
.label_687:
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
	js	.label_683
	lea	rdi, [rdi]
	movss	xmm0, dword ptr [rbp - 0x44]
	movss	dword ptr [rbp - 0x8c], xmm0
.label_683:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	xmm1, dword ptr [rbp - 0xa4]
	mov	rsp, rsp
	mulss	xmm1, xmm0
	lea	rsi, [rsi]
	movss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	nop	
	jbe	.label_686
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb8]
	test	byte ptr [rax + 0x10], 1
	mov	rsp, rsp
	je	.label_694
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
	js	.label_688
	movss	xmm0, dword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0x84], xmm0
.label_688:
	movss	xmm0, dword ptr [rbp - 0x84]
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x5c], xmm0
	mov	rbp, rbp
	jmp	.label_696
.label_694:
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
	js	.label_695
	movss	xmm0, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0x14], xmm0
.label_695:
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
.label_696:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	movss	xmm1,  dword ptr [dword ptr [label_627]]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xac], xmm0
	movss	xmm0, dword ptr [rbp - 0xac]
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	lea	rsi, [rsi]
	jb	.label_684
	mov	dword ptr [rbp - 4], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_678
.label_684:
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_631]]
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
	jne	.label_682
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_678
.label_682:
	lea	rdx, [rbp - 0x68]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x98]
	call	hash_find_entry
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_693
	call	abort
.label_693:
	jmp	.label_686
.label_686:
	lea	rdi, [rdi]
	jmp	.label_681
.label_681:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	qword ptr [rax], 0
	je	.label_685
	mov	rdi, qword ptr [rbp - 0xa0]
	call	allocate_entry
	nop	
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	jne	.label_690
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_678
.label_690:
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
	jmp	.label_678
.label_685:
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
.label_678:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xc0
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b580

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
	jne	.label_708
	nop	
	mov	qword ptr [rbp - 0x40], 0
	jmp	.label_703
.label_708:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rcx]
	je	.label_701
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
	jne	.label_701
	jmp	.label_705
.label_701:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x21], 1
	mov	rsp, rsp
	je	.label_700
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_697
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
	jmp	.label_702
.label_697:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rax], 0
.label_702:
	jmp	.label_700
.label_700:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_703
.label_705:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x10], rax
.label_704:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_709
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	je	.label_699
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
	jne	.label_699
	lea	rsi, [rsi]
	jmp	.label_706
.label_699:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_707
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
.label_707:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_703
.label_706:
	mov	rbp, rbp
	jmp	.label_698
.label_698:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_704
.label_709:
	mov	qword ptr [rbp - 0x40], 0
.label_703:
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x60
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b7c0

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
	je	.label_710
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
	jmp	.label_711
.label_710:
	mov	eax, 0x10
	lea	rdi, [rdi]
	mov	edi, eax
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_711:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b840

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
	jne	.label_714
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	jmp	.label_712
.label_714:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jne	.label_715
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_713
.label_715:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x30], rax
.label_713:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
.label_712:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b8e0
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
	jne	.label_723
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_729
.label_723:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, -1
	nop	
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	qword ptr [rax], 0
	jne	.label_719
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
	js	.label_716
	movss	xmm0, dword ptr [rbp - 0x2c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_716:
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
	js	.label_721
	movss	xmm0, dword ptr [rbp - 0x64]
	movss	dword ptr [rbp - 0x5c], xmm0
.label_721:
	movss	xmm0, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	movss	xmm1, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x14]
	ucomiss	xmm1, xmm0
	jbe	.label_717
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
	js	.label_731
	movss	xmm0, dword ptr [rbp - 0x84]
	movss	dword ptr [rbp - 0x24], xmm0
.label_731:
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
	js	.label_728
	movss	xmm0, dword ptr [rbp - 0xa4]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0x74], xmm0
.label_728:
	movss	xmm0, dword ptr [rbp - 0x74]
	movss	xmm1, dword ptr [rbp - 0x94]
	lea	rsi, [rsi]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0xb0]
	mov	rbp, rbp
	ucomiss	xmm1, xmm0
	jbe	.label_725
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rax + 0x28]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x10], 1
	je	.label_720
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
	js	.label_730
	movss	xmm0, dword ptr [rbp - 0xc]
	movss	dword ptr [rbp - 0xac], xmm0
.label_730:
	lea	rdi, [rdi]
	movss	xmm0, dword ptr [rbp - 0xac]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mulss	xmm0, dword ptr [rax + 4]
	movss	dword ptr [rbp - 0x10], xmm0
	jmp	.label_718
.label_720:
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
	js	.label_727
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x28]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_727:
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
.label_718:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x10]
	movss	xmm1,  dword ptr [dword ptr [rip + label_631]]
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
	jne	.label_722
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0xc0], rax
.label_724:
	cmp	qword ptr [rbp - 0xc0], 0
	nop	
	je	.label_726
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
	jmp	.label_724
.label_726:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rax + 0x48], 0
.label_722:
	lea	rsi, [rsi]
	jmp	.label_725
.label_725:
	jmp	.label_717
.label_717:
	nop	
	jmp	.label_719
.label_719:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
.label_729:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rsp, 0xc0
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bdb0

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
	jae	.label_732
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], 0xa
.label_732:
	mov	rax, qword ptr [rbp - 0x10]
	or	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_736:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	rdx, -1
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 1], cl
	mov	rbp, rbp
	je	.label_734
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	is_prime
	nop	
	xor	al, 0xff
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], al
.label_734:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_735
	jmp	.label_733
.label_735:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 2
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	jmp	.label_736
.label_733:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40be60

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
.label_738:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x11], cl
	mov	rbp, rbp
	jae	.label_737
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
.label_737:
	mov	al, byte ptr [rbp - 0x11]
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_740
	jmp	.label_739
.label_740:
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
	jmp	.label_738
.label_739:
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
	.align	16
	#Procedure 0x40bf60

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
	.align	16
	#Procedure 0x40bfb0

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
	.align	16
	#Procedure 0x40c020
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
	.align	16
	#Procedure 0x40c060
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
	jne	.label_741
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x19], cl
	jne	.label_741
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	same_name
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x19], al
.label_741:
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
	.align	16
	#Procedure 0x40c120

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
	jne	.label_742
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
	jne	.label_742
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
.label_742:
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
	.align	16
	#Procedure 0x40c200

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
	.align	16
	#Procedure 0x40c250

	.globl human_readable
	.type human_readable, @function
human_readable:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x1f0
	movabs	rax, OFFSET FLAT:.str_0
	movabs	r9, OFFSET FLAT:.str_2
	mov	rbp, rbp
	mov	r10d, 0x3e8
	mov	r11d, 0x400
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], rsi
	mov	dword ptr [rbp - 0x78], edx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], r8
	mov	edx, dword ptr [rbp - 0x78]
	and	edx, 3
	mov	dword ptr [rbp - 0x74], edx
	mov	edx, dword ptr [rbp - 0x78]
	and	edx, 0x20
	cmp	edx, 0
	lea	rsi, [rsi]
	cmovne	r10d, r11d
	mov	dword ptr [rbp - 0x54], r10d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14c], 0xffffffff
	mov	dword ptr [rbp - 0x140], 8
	mov	qword ptr [rbp - 0x118], r9
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x148], 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rax
	mov	qword ptr [rbp - 0x1b0], rax
	call	localeconv
	xor	edx, edx
	mov	rbp, rbp
	mov	ecx, edx
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rax]
	mov	qword ptr [rbp - 0xe0], rcx
	call	strlen
	mov	qword ptr [rbp - 0x108], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x108]
	nop	
	jae	.label_758
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x108], 0x10
	ja	.label_758
	mov	rax, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	nop	
	mov	qword ptr [rbp - 0x118], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x148], rax
.label_758:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	mov	rdi, qword ptr [rax + 8]
	call	strlen
	cmp	rax, 0x10
	mov	rsp, rsp
	ja	.label_779
	mov	rax, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1b0], rax
.label_779:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 0x28b
	lea	rdi, [rdi]
	add	rax, -1
	lea	rsi, [rsi]
	add	rax, -3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x1c0], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	ja	.label_792
	mov	rax, qword ptr [rbp - 0xa0]
	nop	
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	div	qword ptr [rbp - 0x88]
	cmp	rdx, 0
	jne	.label_752
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x130], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rbp - 0x138], rax
	nop	
	mov	rax, qword ptr [rbp - 0x138]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_756
	mov	dword ptr [rbp - 0x150], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xcc], 0
	jmp	.label_772
.label_756:
	mov	rbp, rbp
	jmp	.label_752
.label_752:
	mov	rsp, rsp
	jmp	.label_743
.label_792:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xa0], 0
	mov	rbp, rbp
	je	.label_781
	mov	rax, qword ptr [rbp - 0x88]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0xa0]
	cmp	rdx, 0
	jne	.label_781
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	div	qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	xor	ecx, ecx
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0x48]
	mov	rsp, rsp
	imul	rdx, rdx, 0xa
	nop	
	mov	qword ptr [rbp - 0x100], rdx
	mov	rdx, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rax, rdx
	mov	rbp, rbp
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	div	qword ptr [rbp - 0x48]
	shl	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe8], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x138], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x100]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x150], ecx
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	cmp	rax, qword ptr [rbp - 0x48]
	jae	.label_789
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0xe8]
	nop	
	setb	dl
	lea	rsi, [rsi]
	and	dl, 1
	nop	
	movzx	eax, dl
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x64], eax
	lea	rsi, [rsi]
	jmp	.label_791
.label_789:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0xe8]
	setb	cl
	and	cl, 1
	movzx	edx, cl
	nop	
	add	edx, 2
	mov	dword ptr [rbp - 0x64], edx
.label_791:
	mov	eax, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xcc], eax
	mov	rsp, rsp
	jmp	.label_772
.label_781:
	lea	rdi, [rdi]
	jmp	.label_743
.label_743:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc8], rax
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	setns	cl
	movzx	edx, cl
	mov	rbp, rbp
	mov	eax, edx
	nop	
	fld	dword ptr [dword ptr [+ (rax * 4) + label_746]]
	mov	rsp, rsp
	fild	qword ptr [rbp - 0xc8]
	faddp	st(1)
	lea	rsi, [rsi]
	fld	st(0)
	fstp	xword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	setns	cl
	movzx	edx, cl
	nop	
	mov	eax, edx
	nop	
	fld	dword ptr [dword ptr [+ (rax * 4) + label_746]]
	fild	qword ptr [rbp - 0x50]
	mov	rbp, rbp
	faddp	st(1)
	nop	
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x28], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	lea	rdi, [rdi]
	mov	eax, edx
	mov	rsp, rsp
	fld	dword ptr [dword ptr [+ (rax * 4) + label_746]]
	lea	rdi, [rdi]
	fild	qword ptr [rbp - 0x28]
	faddp	st(1)
	fdivrp	st(2)
	nop	
	fmulp	st(1)
	fstp	xword ptr [rbp - 0x190]
	mov	edx, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	and	edx, 0x10
	cmp	edx, 0
	nop	
	jne	.label_747
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	eax, dword ptr [rbp - 0x74]
	mov	rsp, rsp
	fld	xword ptr [rbp - 0x190]
	lea	rdi, [rdi]
	mov	rcx, rsp
	mov	rsp, rsp
	fstp	xword ptr [rcx]
	mov	qword ptr [rbp - 0x98], rdi
	mov	edi, eax
	lea	rdi, [rdi]
	call	adjust_value
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:.str.2_1
	nop	
	mov	rdx, rsp
	fstp	xword ptr [rdx]
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str.2_1
	nop	
	mov	esi, eax
	lea	rsi, [rsi]
	xor	eax, eax
	mov	r8b, al
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	al, r8b
	mov	qword ptr [rbp - 0x70], rcx
	call	sprintf
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	dword ptr [rbp - 0x17c], eax
	lea	rsi, [rsi]
	call	strlen
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xf8], rax
	mov	qword ptr [rbp - 0x80], 0
	jmp	.label_753
.label_747:
	nop	
	fld1	
	mov	rbp, rbp
	fstp	xword ptr [rbp - 0x1e0]
	mov	dword ptr [rbp - 0x14c], 0
.label_751:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rcx
	lea	rdi, [rdi]
	fild	qword ptr [rbp - 0x30]
	mov	rsp, rsp
	fld	xword ptr [rbp - 0x1e0]
	mov	rbp, rbp
	fmulp	st(1)
	fstp	xword ptr [rbp - 0x1e0]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14c]
	add	eax, 1
	mov	dword ptr [rbp - 0x14c], eax
	lea	rdi, [rdi]
	fld	xword ptr [rbp - 0x1e0]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x54]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x198], rcx
	nop	
	fild	qword ptr [rbp - 0x198]
	fmulp	st(1)
	mov	rbp, rbp
	fld	xword ptr [rbp - 0x190]
	mov	rsp, rsp
	xor	eax, eax
	mov	dl, al
	mov	rsp, rsp
	fucomip	st(1)
	mov	rsp, rsp
	fstp	st(0)
	mov	byte ptr [rbp - 0x139], dl
	jb	.label_768
	jmp	.label_785
.label_785:
	mov	eax, dword ptr [rbp - 0x14c]
	cmp	eax, dword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	setl	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x139], cl
.label_768:
	mov	al, byte ptr [rbp - 0x139]
	mov	rsp, rsp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_751
	fld	xword ptr [rbp - 0x1e0]
	fld	xword ptr [rbp - 0x190]
	lea	rdi, [rdi]
	fdivrp	st(1)
	mov	rbp, rbp
	fld	st(0)
	fstp	xword ptr [rbp - 0x190]
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	eax, dword ptr [rbp - 0x74]
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1a8], rdi
	mov	edi, eax
	nop	
	call	adjust_value
	movabs	rcx, OFFSET FLAT:.str.3_3
	nop	
	mov	rdx, rsp
	fstp	xword ptr [rdx]
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:.str.3_3
	mov	esi, eax
	xor	eax, eax
	mov	r8b, al
	mov	rdi, qword ptr [rbp - 0x1a8]
	mov	al, r8b
	mov	qword ptr [rbp - 0x168], rcx
	mov	rbp, rbp
	call	sprintf
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	dword ptr [rbp - 0x180], eax
	lea	rsi, [rsi]
	call	strlen
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf8], rax
	mov	rax, qword ptr [rbp - 0x148]
	add	rax, 1
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, 1
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rbp - 0x78]
	and	r9d, 0x20
	cmp	r9d, 0
	setne	r8b
	nop	
	xor	r8b, 0xff
	mov	rbp, rbp
	and	r8b, 1
	mov	rsp, rsp
	movzx	r9d, r8b
	movsxd	rcx, r9d
	mov	rbp, rbp
	add	rax, rcx
	cmp	rax, qword ptr [rbp - 0xf8]
	jb	.label_782
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x78]
	and	eax, 8
	mov	rsp, rsp
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_750
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0xb8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x30
	jne	.label_750
.label_782:
	nop	
	movabs	rax, OFFSET FLAT:.str.2_1
	nop	
	mov	ecx, 0xa
	mov	rbp, rbp
	mov	edx, ecx
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	ecx, dword ptr [rbp - 0x74]
	fld	xword ptr [rbp - 0x190]
	mov	rsp, rsp
	fld	dword ptr [dword ptr [rip + label_760]]
	mov	rbp, rbp
	fmul	st(1), st(0)
	mov	rsp, rsp
	mov	rsi, rsp
	lea	rsi, [rsi]
	fxch	st(1)
	fstp	xword ptr [rsi]
	mov	qword ptr [rbp - 0x1a0], rdi
	mov	edi, ecx
	mov	qword ptr [rbp - 0x110], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rdx
	fstp	xword ptr [rbp - 0x174]
	call	adjust_value
	fld	st(0)
	fld	xword ptr [rbp - 0x174]
	mov	rsp, rsp
	fdivp	st(2)
	nop	
	mov	rax, rsp
	fxch	st(1)
	fstp	xword ptr [rax]
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.2_1
	mov	esi, ecx
	xor	ecx, ecx
	mov	r8b, cl
	nop	
	mov	rdi, qword ptr [rbp - 0x1a0]
	lea	rsi, [rsi]
	mov	al, r8b
	nop	
	fstp	xword ptr [rbp - 0x15c]
	call	sprintf
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xbc], eax
	mov	rsp, rsp
	call	strlen
	mov	qword ptr [rbp - 0xf8], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], 0
.label_750:
	jmp	.label_753
.label_753:
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, rcx
	mov	rsp, rsp
	sub	rsi, qword ptr [rbp - 0xf8]
	lea	rsi, [rsi]
	add	rdx, rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1c0], rdx
	mov	rdi, qword ptr [rbp - 0x1c0]
	nop	
	mov	rsi, qword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	qword ptr [rbp - 0x38], rcx
	nop	
	call	memmove
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x1c0]
	nop	
	add	rcx, qword ptr [rbp - 0xf8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	sub	rdx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	add	rcx, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x120], rcx
	lea	rdi, [rdi]
	jmp	.label_748
.label_772:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x78]
	and	eax, 0x10
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_777
	mov	dword ptr [rbp - 0x14c], 0
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x138]
	ja	.label_780
	nop	
	jmp	.label_761
.label_761:
	mov	rax, qword ptr [rbp - 0x138]
	mov	ecx, dword ptr [rbp - 0x54]
	mov	edx, ecx
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x128], rdx
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x128]
	div	rsi
	imul	rdx, rdx, 0xa
	mov	rbp, rbp
	movsxd	rdi, dword ptr [rbp - 0x150]
	mov	rbp, rbp
	add	rdx, rdi
	mov	ecx, edx
	nop	
	mov	dword ptr [rbp - 0x1c4], ecx
	mov	ecx, dword ptr [rbp - 0x1c4]
	mov	eax, ecx
	xor	edx, edx
	mov	rbp, rbp
	div	dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	shl	edx, 1
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0xcc]
	mov	rsp, rsp
	sar	ecx, 1
	lea	rsi, [rsi]
	add	edx, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x178], edx
	mov	ecx, dword ptr [rbp - 0x54]
	mov	edi, ecx
	mov	r8, qword ptr [rbp - 0x138]
	mov	rsp, rsp
	mov	rax, r8
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	nop	
	div	rdi
	nop	
	mov	qword ptr [rbp - 0x138], rax
	mov	eax, dword ptr [rbp - 0x1c4]
	mov	rbp, rbp
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	div	dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x150], eax
	mov	eax, dword ptr [rbp - 0x178]
	cmp	eax, dword ptr [rbp - 0x54]
	nop	
	jae	.label_787
	mov	eax, dword ptr [rbp - 0x178]
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0xcc]
	cmp	eax, 0
	setne	cl
	lea	rsi, [rsi]
	and	cl, 1
	movzx	eax, cl
	nop	
	mov	dword ptr [rbp - 0xec], eax
	jmp	.label_778
.label_787:
	mov	eax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x178]
	add	ecx, dword ptr [rbp - 0xcc]
	nop	
	cmp	eax, ecx
	nop	
	setb	dl
	and	dl, 1
	mov	rsp, rsp
	movzx	eax, dl
	lea	rdi, [rdi]
	add	eax, 2
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xec], eax
.label_778:
	mov	eax, dword ptr [rbp - 0xec]
	mov	dword ptr [rbp - 0xcc], eax
	mov	eax, dword ptr [rbp - 0x14c]
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14c], eax
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x54]
	mov	edx, eax
	nop	
	cmp	rdx, qword ptr [rbp - 0x138]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa9], cl
	mov	rsp, rsp
	ja	.label_794
	mov	eax, dword ptr [rbp - 0x14c]
	cmp	eax, dword ptr [rbp - 0x140]
	setl	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa9], cl
.label_794:
	mov	al, byte ptr [rbp - 0xa9]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_761
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x138], 0xa
	jae	.label_763
	cmp	dword ptr [rbp - 0x74], 1
	lea	rsi, [rsi]
	jne	.label_769
	mov	rsp, rsp
	mov	eax, 2
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0xcc]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x150]
	mov	rsp, rsp
	and	edx, 1
	nop	
	add	ecx, edx
	cmp	eax, ecx
	mov	rsp, rsp
	jl	.label_770
	mov	rbp, rbp
	jmp	.label_764
.label_769:
	cmp	dword ptr [rbp - 0x74], 0
	jne	.label_764
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xcc]
	jge	.label_764
.label_770:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x150]
	nop	
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x150], eax
	mov	dword ptr [rbp - 0xcc], 0
	nop	
	cmp	dword ptr [rbp - 0x150], 0xa
	lea	rdi, [rdi]
	jne	.label_783
	mov	rax, qword ptr [rbp - 0x138]
	add	rax, 1
	mov	qword ptr [rbp - 0x138], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x150], 0
.label_783:
	lea	rdi, [rdi]
	jmp	.label_764
.label_764:
	nop	
	cmp	qword ptr [rbp - 0x138], 0xa
	jae	.label_755
	cmp	dword ptr [rbp - 0x150], 0
	nop	
	jne	.label_757
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x78]
	nop	
	and	eax, 8
	cmp	eax, 0
	jne	.label_755
.label_757:
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x150]
	add	eax, 0x30
	mov	dl, al
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x1c0]
	mov	rdi, rsi
	add	rdi, -1
	mov	qword ptr [rbp - 0x1c0], rdi
	lea	rsi, [rsi]
	mov	byte ptr [rsi - 1], dl
	nop	
	mov	rsi, qword ptr [rbp - 0x148]
	mov	rdi, qword ptr [rbp - 0x1c0]
	sub	rcx, rsi
	nop	
	add	rdi, rcx
	mov	qword ptr [rbp - 0x1c0], rdi
	nop	
	mov	rdi, qword ptr [rbp - 0x1c0]
	nop	
	mov	rsi, qword ptr [rbp - 0x118]
	mov	rdx, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	call	memcpy
	mov	dword ptr [rbp - 0xcc], 0
	nop	
	mov	dword ptr [rbp - 0x150], 0
.label_755:
	jmp	.label_763
.label_763:
	jmp	.label_780
.label_780:
	jmp	.label_777
.label_777:
	nop	
	cmp	dword ptr [rbp - 0x74], 1
	jne	.label_790
	lea	rsi, [rsi]
	mov	eax, 5
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, dword ptr [rbp - 0x150]
	movsxd	rsi, dword ptr [rbp - 0xcc]
	mov	rdi, qword ptr [rbp - 0x138]
	mov	rbp, rbp
	and	rdi, 1
	add	rsi, rdi
	cmp	rdx, rsi
	setb	r8b
	lea	rdi, [rdi]
	and	r8b, 1
	mov	rsp, rsp
	movzx	r9d, r8b
	lea	rsi, [rsi]
	add	ecx, r9d
	lea	rdi, [rdi]
	cmp	eax, ecx
	jl	.label_793
	lea	rsi, [rsi]
	jmp	.label_754
.label_790:
	cmp	dword ptr [rbp - 0x74], 0
	jne	.label_754
	xor	eax, eax
	mov	ecx, dword ptr [rbp - 0x150]
	add	ecx, dword ptr [rbp - 0xcc]
	nop	
	cmp	eax, ecx
	lea	rdi, [rdi]
	jge	.label_754
.label_793:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x138]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x138], rax
	mov	ecx, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	and	ecx, 0x10
	lea	rsi, [rsi]
	cmp	ecx, 0
	je	.label_767
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x138]
	mov	ecx, dword ptr [rbp - 0x54]
	mov	edx, ecx
	cmp	rax, rdx
	lea	rsi, [rsi]
	jne	.label_767
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14c]
	cmp	eax, dword ptr [rbp - 0x140]
	jge	.label_767
	mov	eax, dword ptr [rbp - 0x14c]
	nop	
	add	eax, 1
	mov	dword ptr [rbp - 0x14c], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	and	eax, 8
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_784
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x1c0]
	mov	rbp, rbp
	mov	rsi, rdx
	mov	rsp, rsp
	add	rsi, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1c0], rsi
	mov	byte ptr [rdx - 1], 0x30
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rsi, qword ptr [rbp - 0x1c0]
	sub	rcx, rdx
	nop	
	add	rsi, rcx
	mov	qword ptr [rbp - 0x1c0], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x1c0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x118]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x148]
	call	memcpy
.label_784:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x138], 1
.label_767:
	jmp	.label_754
.label_754:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1c0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x120], rax
.label_773:
	mov	rsp, rsp
	mov	eax, 0xa
	nop	
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x138]
	mov	rbp, rbp
	xor	edx, edx
	lea	rdi, [rdi]
	div	rcx
	nop	
	mov	esi, edx
	mov	dword ptr [rbp - 0x3c], esi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	add	esi, 0x30
	mov	dil, sil
	mov	rcx, qword ptr [rbp - 0x1c0]
	mov	rsp, rsp
	mov	rdx, rcx
	add	rdx, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1c0], rdx
	lea	rsi, [rsi]
	mov	byte ptr [rcx - 1], dil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x138]
	nop	
	xor	edx, edx
	div	rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x138], rax
	cmp	rax, 0
	jne	.label_773
	lea	rdi, [rdi]
	jmp	.label_748
.label_748:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x78]
	nop	
	and	eax, 4
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_771
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x1c0]
	mov	rax, qword ptr [rbp - 0x120]
	mov	rcx, qword ptr [rbp - 0x1c0]
	sub	rax, rcx
	mov	rdx, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x1b0]
	mov	rsi, rax
	call	group_number
	mov	qword ptr [rbp - 0x1c0], rax
.label_771:
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	and	eax, 0x80
	nop	
	cmp	eax, 0
	je	.label_759
	cmp	dword ptr [rbp - 0x14c], 0
	jge	.label_745
	nop	
	mov	dword ptr [rbp - 0x14c], 0
	mov	qword ptr [rbp - 0xa8], 1
.label_774:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	jae	.label_776
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14c]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 0x14c], eax
	cmp	eax, dword ptr [rbp - 0x140]
	mov	rsp, rsp
	jne	.label_765
	lea	rsi, [rsi]
	jmp	.label_776
.label_765:
	jmp	.label_788
.label_788:
	mov	eax, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	mov	ecx, eax
	imul	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xa8], rcx
	jmp	.label_774
.label_776:
	lea	rsi, [rsi]
	jmp	.label_745
.label_745:
	mov	eax, dword ptr [rbp - 0x14c]
	nop	
	mov	ecx, dword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	and	ecx, 0x100
	lea	rsi, [rsi]
	or	eax, ecx
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_749
	mov	eax, dword ptr [rbp - 0x78]
	and	eax, 0x40
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_749
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	byte ptr [rax], 0x20
.label_749:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14c], 0
	je	.label_762
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x78]
	and	eax, 0x20
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_766
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14c], 1
	lea	rdi, [rdi]
	jne	.label_766
	mov	eax, 0x6b
	mov	dword ptr [rbp - 0x1b4], eax
	lea	rdi, [rdi]
	jmp	.label_775
.label_766:
	movsxd	rax, dword ptr [rbp - 0x14c]
	mov	rbp, rbp
	movsx	ecx,  byte ptr [byte ptr [+ (rax * 1) + power_letter]]
	nop	
	mov	dword ptr [rbp - 0x1b4], ecx
.label_775:
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 8], rsi
	mov	byte ptr [rdx], cl
.label_762:
	mov	eax, dword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	and	eax, 0x100
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_786
	mov	eax, dword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	and	eax, 0x20
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_744
	cmp	dword ptr [rbp - 0x14c], 0
	je	.label_744
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rcx
	mov	byte ptr [rax], 0x69
.label_744:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0x42
.label_786:
	jmp	.label_759
.label_759:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x1c0]
	add	rsp, 0x1f0
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d270

	.globl adjust_value
	.type adjust_value, @function
adjust_value:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	fld	xword ptr [rbp + 0x10]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], edi
	lea	rdi, [rdi]
	fstp	xword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1c], 1
	lea	rdi, [rdi]
	je	.label_795
	nop	
	fld	xword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	fld	xword ptr [word ptr [rip + label_798]]
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_795
	jmp	.label_796
.label_796:
	xor	eax, eax
	nop	
	mov	cl, al
	fld	xword ptr [rbp - 0x30]
	mov	rbp, rbp
	fld	dword ptr [dword ptr [rip + label_631]]
	fld	st(1)
	mov	rsp, rsp
	fsub	st(1)
	fnstcw	word ptr [rbp - 2]
	mov	dx, word ptr [rbp - 2]
	mov	word ptr [rbp - 2], 0xc7f
	fldcw	word ptr [rbp - 2]
	mov	word ptr [rbp - 2], dx
	fistp	qword ptr [rbp - 0x48]
	fldcw	word ptr [rbp - 2]
	mov	rbp, rbp
	fnstcw	word ptr [rbp - 0x5a]
	nop	
	mov	dx, word ptr [rbp - 0x5a]
	mov	rbp, rbp
	mov	word ptr [rbp - 0x5a], 0xc7f
	lea	rdi, [rdi]
	fldcw	word ptr [rbp - 0x5a]
	mov	rsp, rsp
	mov	word ptr [rbp - 0x5a], dx
	fld	st(1)
	mov	rbp, rbp
	fistp	qword ptr [rbp - 0x38]
	fldcw	word ptr [rbp - 0x5a]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	movabs	rdi, 0x8000000000000000
	nop	
	xor	rsi, rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	fucomip	st(1)
	mov	rsp, rsp
	fstp	st(0)
	lea	rsi, [rsi]
	cmova	rsi, rdi
	mov	qword ptr [rbp - 0x58], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x1c], 0
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x39], cl
	nop	
	jne	.label_797
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	nop	
	test	rax, rax
	lea	rdi, [rdi]
	setns	cl
	nop	
	movzx	edx, cl
	mov	eax, edx
	lea	rdi, [rdi]
	fld	dword ptr [dword ptr [+ (rax * 4) + label_746]]
	nop	
	fild	qword ptr [rbp - 0x18]
	faddp	st(1)
	mov	rsp, rsp
	fld	xword ptr [rbp - 0x30]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	mov	rsp, rsp
	setp	cl
	lea	rdi, [rdi]
	setne	sil
	or	sil, cl
	mov	byte ptr [rbp - 0x39], sil
.label_797:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x39]
	and	al, 1
	movzx	ecx, al
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rsi, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rsi
	lea	rsi, [rsi]
	setns	al
	mov	rsp, rsp
	movzx	ecx, al
	mov	edx, ecx
	nop	
	fld	dword ptr [dword ptr [+ (rdx * 4) + label_746]]
	mov	rsp, rsp
	fild	qword ptr [rbp - 0x50]
	faddp	st(1)
	mov	rsp, rsp
	fstp	xword ptr [rbp - 0x30]
.label_795:
	lea	rsi, [rsi]
	fld	xword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d400

	.globl group_number
	.type group_number, @function
group_number:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x90
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x70], rsi
	mov	qword ptr [rbp - 0x78], rdx
	mov	qword ptr [rbp - 8], rcx
	mov	qword ptr [rbp - 0x68], -1
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	call	strlen
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	call	memcpy
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
.label_800:
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x81], cl
	cmp	byte ptr [rbp - 0x81], 0
	je	.label_799
	movzx	eax, byte ptr [rbp - 0x81]
	cmp	eax, 0x7f
	lea	rdi, [rdi]
	jge	.label_804
	movzx	eax, byte ptr [rbp - 0x81]
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rcx
	lea	rsi, [rsi]
	jmp	.label_803
.label_804:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x80], rax
.label_803:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
.label_799:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	jae	.label_801
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rax
.label_801:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x50]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	sub	rdx, rsi
	add	rdi, rdx
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	sub	rsi, rdx
	mov	qword ptr [rbp - 0x60], rsi
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	call	memcpy
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x60], 0
	lea	rdi, [rdi]
	jne	.label_802
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x90
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_802:
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rcx, rdx
	add	rsi, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x90]
	call	memcpy
	nop	
	jmp	.label_800
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d5d0

	.globl human_options
	.type human_options, @function
human_options:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	humblock
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	cmp	qword ptr [rdx], 0
	jne	.label_805
	call	default_block_size
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], 4
.label_805:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d650

	.globl humblock
	.type humblock, @function
humblock:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdx
	nop	
	mov	dword ptr [rbp - 0x24], 0
	cmp	qword ptr [rbp - 0x18], 0
	nop	
	jne	.label_807
	movabs	rdi, OFFSET FLAT:.str.4_1
	nop	
	call	getenv
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	mov	rsp, rsp
	jne	.label_807
	movabs	rdi, OFFSET FLAT:.str.5_1
	mov	rsp, rsp
	call	getenv
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	nop	
	cmp	rax, 0
	jne	.label_807
	lea	rdi, [rdi]
	call	default_block_size
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	jmp	.label_809
.label_807:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x27
	mov	rbp, rbp
	jne	.label_813
	mov	eax, dword ptr [rbp - 0x24]
	or	eax, 4
	nop	
	mov	dword ptr [rbp - 0x24], eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
.label_813:
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:block_size_args
	movabs	rax, OFFSET FLAT:block_size_opts
	mov	ecx, 4
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, rax
	mov	rsp, rsp
	call	argmatch
	mov	rbp, rbp
	xor	r8d, r8d
	lea	rdi, [rdi]
	mov	r9d, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], r9d
	nop	
	cmp	r8d, r9d
	lea	rdi, [rdi]
	jg	.label_821
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x34]
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + block_size_opts]]
	or	ecx, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rax], 1
	lea	rsi, [rsi]
	jmp	.label_811
.label_821:
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x30]
	xor	edx, edx
	movabs	r8, OFFSET FLAT:.str.6_1
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	xstrtoumax
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x10], 0
	je	.label_817
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x38], ecx
	nop	
	jmp	.label_814
.label_817:
	jmp	.label_806
.label_806:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rsp, rsp
	mov	eax, 0x30
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	movsx	esi, byte ptr [rdx]
	cmp	eax, esi
	mov	byte ptr [rbp - 9], cl
	jg	.label_812
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x39
	lea	rdi, [rdi]
	setle	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], dl
.label_812:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 9]
	xor	al, 0xff
	mov	rsp, rsp
	test	al, 1
	jne	.label_810
	lea	rdi, [rdi]
	jmp	.label_816
.label_810:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	jne	.label_818
	mov	eax, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	or	eax, 0x80
	nop	
	mov	dword ptr [rbp - 0x24], eax
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	movsx	eax, byte ptr [rcx - 1]
	cmp	eax, 0x42
	lea	rdi, [rdi]
	jne	.label_815
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	or	eax, 0x100
	mov	dword ptr [rbp - 0x24], eax
.label_815:
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax - 1]
	lea	rdi, [rdi]
	cmp	ecx, 0x42
	jne	.label_819
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax - 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x69
	lea	rsi, [rsi]
	jne	.label_808
.label_819:
	nop	
	mov	eax, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	or	eax, 0x20
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
.label_808:
	jmp	.label_816
.label_818:
	mov	rsp, rsp
	jmp	.label_820
.label_820:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	jmp	.label_806
.label_816:
	jmp	.label_811
.label_811:
	jmp	.label_809
.label_809:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x24]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	dword ptr [rcx], eax
	mov	dword ptr [rbp - 0x38], 0
.label_814:
	mov	eax, dword ptr [rbp - 0x38]
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d910

	.globl default_block_size
	.type default_block_size, @function
default_block_size:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	movabs	rdi, OFFSET FLAT:.str.9_0
	nop	
	call	getenv
	mov	ecx, 0x400
	lea	rsi, [rsi]
	mov	edx, 0x200
	cmp	rax, 0
	lea	rsi, [rsi]
	cmovne	ecx, edx
	movsxd	rax, ecx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d950

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rsi, 0x14
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	byte ptr [rsi], 0
	cmp	qword ptr [rbp - 0x20], 0
	jae	.label_822
	jmp	.label_825
.label_825:
	lea	rsi, [rsi]
	mov	eax, 0x30
	mov	rbp, rbp
	mov	ecx, eax
	mov	eax, 0xa
	mov	edx, eax
	mov	rax, qword ptr [rbp - 0x20]
	xor	esi, esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edx, esi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	div	rdi
	lea	rdi, [rdi]
	sub	rcx, rdx
	mov	r8b, cl
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	mov	byte ptr [rcx - 1], r8b
	mov	eax, 0xa
	nop	
	mov	ecx, eax
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	xor	edx, edx
	nop	
	div	rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_825
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, -1
	mov	qword ptr [rbp - 8], rcx
	nop	
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_824
.label_822:
	jmp	.label_823
.label_823:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x20]
	xor	edx, edx
	mov	rsp, rsp
	div	rcx
	add	rdx, 0x30
	mov	sil, dl
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, rcx
	lea	rsi, [rsi]
	add	rdx, -1
	mov	qword ptr [rbp - 8], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x20]
	xor	edx, edx
	div	rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	nop	
	jne	.label_823
	jmp	.label_824
.label_824:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40da90

	.globl mbsalign
	.type mbsalign, @function
mbsalign:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0xe0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe0], rdi
	mov	qword ptr [rbp - 0xa0], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rdx
	mov	qword ptr [rbp - 0xd8], rcx
	mov	dword ptr [rbp - 0x54], r8d
	nop	
	mov	dword ptr [rbp - 0x14], r9d
	mov	qword ptr [rbp - 0x80], -1
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xe0]
	call	strlen
	mov	rsp, rsp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], 0
	mov	qword ptr [rbp - 0xc0], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	sub	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], 0
	mov	byte ptr [rbp - 0x41], 0
	mov	byte ptr [rbp - 0x21], 0
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rbp - 0x14]
	and	r8d, 2
	cmp	r8d, 0
	jne	.label_829
	nop	
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	lea	rsi, [rsi]
	jbe	.label_829
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	rdi, rcx
	mov	rdx, rcx
	call	mbstowcs
	nop	
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_830
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_837
	nop	
	jmp	.label_826
.label_837:
	jmp	.label_833
.label_830:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	shl	rax, 2
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	call	malloc
	nop	
	mov	qword ptr [rbp - 0xc0], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xc0], 0
	jne	.label_849
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_852
	jmp	.label_826
.label_852:
	mov	rbp, rbp
	jmp	.label_833
.label_849:
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	rdx, qword ptr [rbp - 0x40]
	call	mbstowcs
	cmp	rax, 0
	je	.label_843
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	dword ptr [rcx + rax*4], 0
	mov	byte ptr [rbp - 0x21], 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	call	wc_ensure_printable
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x41], al
	nop	
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x40]
	call	wcswidth
	nop	
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rcx
.label_843:
	nop	
	jmp	.label_829
.label_829:
	test	byte ptr [rbp - 0x21], 1
	je	.label_841
	mov	rsp, rsp
	test	byte ptr [rbp - 0x41], 1
	jne	.label_838
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rcx]
	jbe	.label_841
.label_838:
	test	byte ptr [rbp - 0x41], 1
	je	.label_846
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	mov	rdi, rcx
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rbp, rbp
	call	wcstombs
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 8], rax
.label_846:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	malloc
	nop	
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x78], 0
	lea	rdi, [rdi]
	jne	.label_831
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_839
	lea	rdi, [rdi]
	jmp	.label_826
.label_839:
	jmp	.label_833
.label_831:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xc0]
	nop	
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	call	wc_truncate
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rax
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 8]
	call	wcstombs
	mov	qword ptr [rbp - 0x10], rax
.label_841:
	lea	rsi, [rsi]
	jmp	.label_826
.label_826:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx]
	jbe	.label_840
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
.label_840:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x98]
	jbe	.label_851
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	sub	rax, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
.label_851:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xd8]
	nop	
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	test	edx, edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xac], edx
	mov	rbp, rbp
	je	.label_835
	jmp	.label_848
.label_848:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x6c], eax
	mov	rbp, rbp
	je	.label_850
	lea	rsi, [rsi]
	jmp	.label_827
.label_827:
	nop	
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 2
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_828
	lea	rsi, [rsi]
	jmp	.label_836
.label_835:
	mov	qword ptr [rbp - 0x20], 0
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_845
.label_850:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_845
.label_828:
	jmp	.label_836
.label_836:
	mov	rax, qword ptr [rbp - 0x88]
	shr	rax, 1
	mov	rcx, qword ptr [rbp - 0x88]
	and	rcx, 1
	add	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	shr	rax, 1
	mov	qword ptr [rbp - 0x60], rax
.label_845:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 4
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_834
	nop	
	mov	qword ptr [rbp - 0x20], 0
.label_834:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	and	eax, 8
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_842
	mov	qword ptr [rbp - 0x60], 0
.label_842:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	je	.label_847
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, qword ptr [rbp - 0x30]
	add	rax, -1
	mov	qword ptr [rbp - 0xb8], rax
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	mbs_align_pad
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xa0]
	sub	rax, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xa8]
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdi
	mov	qword ptr [rbp - 0x50], rsi
	jae	.label_832
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_844
.label_832:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xc8], rax
.label_844:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, rax
	call	mempcpy
	mov	qword ptr [rbp - 0xa0], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	mbs_align_pad
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd0], rax
.label_847:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	add	rcx, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	shl	rcx, 0
	nop	
	add	rax, rcx
	nop	
	mov	qword ptr [rbp - 0x80], rax
.label_833:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rdi, rax
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x78]
	nop	
	call	free
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	add	rsp, 0xe0
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40e0a0

	.globl wc_ensure_printable
	.type wc_ensure_printable, @function
wc_ensure_printable:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	byte ptr [rbp - 1], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
.label_853:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	dword ptr [rax], 0
	je	.label_854
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax]
	call	iswprint
	nop	
	cmp	eax, 0
	jne	.label_855
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0xfffd
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 1
.label_855:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, 4
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	jmp	.label_853
.label_854:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
	mov	rsp, rsp
	and	al, 1
	nop	
	movzx	eax, al
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e140

	.globl wc_truncate
	.type wc_truncate, @function
wc_truncate:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0
.label_858:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_857
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	edi, dword ptr [rax]
	mov	rsp, rsp
	call	wcwidth
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], -1
	jne	.label_856
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], 0xfffd
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 1
.label_856:
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	add	rax, rcx
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_859
	jmp	.label_857
.label_859:
	movsxd	rax, dword ptr [rbp - 4]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rax, 4
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_858
.label_857:
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e220

	.globl mbs_align_pad
	.type mbs_align_pad, @function
mbs_align_pad:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
.label_861:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rsi, rdx
	add	rsi, -1
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	cmp	rdx, 0
	mov	byte ptr [rbp - 9], cl
	nop	
	je	.label_862
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x18]
	setb	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 9], cl
.label_862:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 9]
	test	al, 1
	mov	rsp, rsp
	jne	.label_863
	jmp	.label_860
.label_863:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rcx
	mov	byte ptr [rax], 0x20
	nop	
	jmp	.label_861
.label_860:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40e2c0

	.globl ambsalign
	.type ambsalign, @function
ambsalign:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44], ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0
.label_866:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jb	.label_865
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	call	realloc
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_867
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	free
	mov	qword ptr [rbp - 8], 0
	nop	
	jmp	.label_865
.label_867:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	r9d, dword ptr [rbp - 0x44]
	call	mbsalign
	nop	
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	mov	rsp, rsp
	jne	.label_864
	mov	rdi, qword ptr [rbp - 8]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_865
.label_864:
	mov	rbp, rbp
	jmp	.label_866
.label_865:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e410

	.globl gnu_mbswidth
	.type gnu_mbswidth, @function
gnu_mbswidth:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rax
	mov	rsp, rsp
	call	strlen
	mov	edx, dword ptr [rbp - 0xc]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	mbsnwidth
	mov	rbp, rbp
	add	rsp, 0x20
	nop	
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e460

	.globl mbsnwidth
	.type mbsnwidth, @function
mbsnwidth:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], edx
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x60], rsi
	mov	rsi, qword ptr [rbp - 0x60]
	add	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rsi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x58], 0
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_878
	jmp	.label_873
.label_873:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x40]
	nop	
	jae	.label_883
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	add	ecx, -0x20
	mov	eax, ecx
	sub	ecx, 0x5e
	mov	qword ptr [rbp - 0x38], rax
	mov	dword ptr [rbp - 0x44], ecx
	mov	rbp, rbp
	ja	.label_889
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_895]]
	lea	rdi, [rdi]
	jmp	rcx
.label_1550:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x58]
	add	ecx, 1
	nop	
	mov	dword ptr [rbp - 0x58], ecx
	jmp	.label_871
.label_889:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	mov	rbp, rbp
	lea	rcx, [rbp - 0x28]
	mov	rsp, rsp
	mov	rdi, rcx
	call	memset
.label_891:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x64]
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	sub	rax, rdx
	mov	rdx, rax
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], -1
	lea	rdi, [rdi]
	jne	.label_894
	mov	eax, dword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 0
	jne	.label_898
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x58]
	add	ecx, 1
	mov	dword ptr [rbp - 0x58], ecx
	lea	rsi, [rsi]
	jmp	.label_869
.label_898:
	mov	dword ptr [rbp - 0x54], 0xffffffff
	jmp	.label_877
.label_894:
	cmp	qword ptr [rbp - 0x50], -2
	jne	.label_885
	mov	eax, dword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_890
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x60], rax
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x58]
	nop	
	add	ecx, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x58], ecx
	jmp	.label_869
.label_890:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], 0xffffffff
	jmp	.label_877
.label_885:
	cmp	qword ptr [rbp - 0x50], 0
	nop	
	jne	.label_868
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], 1
.label_868:
	mov	edi, dword ptr [rbp - 0x64]
	call	wcwidth
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x68], eax
	cmp	dword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jl	.label_879
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x68]
	nop	
	sub	eax, dword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	cmp	ecx, eax
	jle	.label_886
	jmp	.label_875
.label_886:
	mov	eax, dword ptr [rbp - 0x68]
	add	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], eax
	mov	rsp, rsp
	jmp	.label_893
.label_879:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x48]
	nop	
	and	eax, 2
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_896
	mov	edi, dword ptr [rbp - 0x64]
	call	iswcntrl
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_870
	cmp	dword ptr [rbp - 0x58], 0x7fffffff
	lea	rsi, [rsi]
	jne	.label_874
	jmp	.label_875
.label_874:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x58]
	nop	
	add	eax, 1
	mov	dword ptr [rbp - 0x58], eax
.label_870:
	mov	rsp, rsp
	jmp	.label_892
.label_896:
	nop	
	mov	dword ptr [rbp - 0x54], 0xffffffff
	nop	
	jmp	.label_877
.label_892:
	jmp	.label_893
.label_893:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rbp - 0x28]
	mov	rsp, rsp
	call	mbsinit
	cmp	eax, 0
	mov	rbp, rbp
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_891
.label_869:
	mov	rsp, rsp
	jmp	.label_871
.label_871:
	jmp	.label_873
.label_883:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x58]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_877
.label_878:
	jmp	.label_880
.label_880:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x40]
	jae	.label_882
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rcx
	mov	rsp, rsp
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 1], dl
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rbp - 1]
	nop	
	movsxd	rax, esi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movzx	esi, word ptr [rax + rcx*2]
	and	esi, 0x4000
	lea	rdi, [rdi]
	cmp	esi, 0
	nop	
	je	.label_897
	cmp	dword ptr [rbp - 0x58], 0x7fffffff
	jne	.label_876
	jmp	.label_875
.label_876:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x58], eax
	nop	
	jmp	.label_881
.label_897:
	mov	eax, dword ptr [rbp - 0x48]
	mov	rsp, rsp
	and	eax, 2
	cmp	eax, 0
	jne	.label_887
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 1]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x30], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rbp, rbp
	and	edx, 2
	lea	rsi, [rsi]
	cmp	edx, 0
	lea	rsi, [rsi]
	jne	.label_888
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x58], 0x7fffffff
	jne	.label_872
	mov	rsp, rsp
	jmp	.label_875
.label_872:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x58], eax
.label_888:
	jmp	.label_884
.label_887:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], 0xffffffff
	jmp	.label_877
.label_884:
	jmp	.label_881
.label_881:
	lea	rdi, [rdi]
	jmp	.label_880
.label_882:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x54], eax
	lea	rdi, [rdi]
	jmp	.label_877
.label_875:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x54], 0x7fffffff
.label_877:
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	add	rsp, 0x70
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40e880

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
	jne	.label_899
	movabs	rdi, OFFSET FLAT:.str_6
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	call	abort
.label_899:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_901
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_902
.label_901:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_902:
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
	jl	.label_900
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_3
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
	jne	.label_900
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.2_2
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
	jne	.label_903
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_903:
	jmp	.label_900
.label_900:
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
	#Procedure 0x40ea00
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
	je	.label_904
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_905
.label_904:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_905
.label_905:
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
	#Procedure 0x40eab0
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
	je	.label_906
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_907
.label_906:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_907
.label_907:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40eb10
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
	je	.label_908
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_909
.label_908:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_909
.label_909:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40eb70

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
	je	.label_910
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jmp	.label_911
.label_910:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_911
.label_911:
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
	#Procedure 0x40ec70
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
	jne	.label_912
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
.label_912:
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
	#Procedure 0x40ecd0

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
	jne	.label_913
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
.label_913:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_915
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_914
.label_915:
	call	abort
.label_914:
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
	#Procedure 0x40ed70
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
	je	.label_916
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_917
.label_916:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_917
.label_917:
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
	#Procedure 0x40ee70

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
.label_1086:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0x88], rcx
	mov	qword ptr [rbp - 0x130], rdx
	ja	.label_1090
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_960]]
	jmp	rcx
.label_1570:
	mov	dword ptr [rbp - 0x58], 5
	mov	byte ptr [rbp - 0x3e], 1
.label_1569:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_1102
	jmp	.label_1106
.label_1106:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1107
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x22
.label_1107:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_1102
.label_1102:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	jmp	.label_927
.label_1571:
	nop	
	mov	byte ptr [rbp - 0x89], 1
	nop	
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_927
.label_1572:
	cmp	dword ptr [rbp - 0x58], 0xa
	je	.label_929
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
.label_929:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_945
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x108], rax
.label_966:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_950
	jmp	.label_921
.label_921:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_953
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rdx + rax], cl
.label_953:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_963
.label_963:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_966
.label_950:
	mov	rbp, rbp
	jmp	.label_945
.label_945:
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
	jmp	.label_927
.label_1567:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x89], 1
.label_1566:
	mov	byte ptr [rbp - 0x3e], 1
.label_1568:
	nop	
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_990
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
.label_990:
	jmp	.label_995
.label_995:
	mov	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_997
	jmp	.label_1002
.label_1002:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_1003
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1003:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_997
.label_997:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	mov	rsp, rsp
	jmp	.label_927
.label_1565:
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_927
.label_1090:
	call	abort
.label_927:
	mov	qword ptr [rbp - 0xd8], 0
.label_994:
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_1028
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
	jmp	.label_1030
.label_1028:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], edx
.label_1030:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1047
	mov	rbp, rbp
	jmp	.label_1056
.label_1047:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa6], 0
	nop	
	mov	byte ptr [rbp - 0x3f], 0
	mov	byte ptr [rbp - 0x91], 0
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_1058
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	je	.label_1058
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_1058
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], -1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jne	.label_1069
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xd0]
	jae	.label_1069
	mov	rdi, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_1082
.label_1069:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xc8], rax
.label_1082:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_1058
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
	jne	.label_1058
	nop	
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	je	.label_1099
	jmp	.label_920
.label_1099:
	nop	
	mov	byte ptr [rbp - 0xa6], 1
.label_1058:
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
	ja	.label_1105
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1115]]
	nop	
	jmp	rcx
.label_1576:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	je	.label_1118
	mov	rsp, rsp
	jmp	.label_923
.label_923:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_926
	jmp	.label_920
.label_926:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3f], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_962
	mov	rbp, rbp
	test	byte ptr [rbp - 0x42], 1
	mov	rbp, rbp
	jne	.label_962
	nop	
	jmp	.label_934
.label_934:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_937
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_937:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_946
.label_946:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_948
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_948:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_955
.label_955:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_959
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_959:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_962:
	lea	rsi, [rsi]
	jmp	.label_971
.label_971:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_973
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_973:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1084
.label_1084:
	cmp	dword ptr [rbp - 0x58], 2
	je	.label_958
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_958
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x150]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_958
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_958
	nop	
	jmp	.label_1008
.label_1008:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1009
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x30
.label_1009:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1017
.label_1017:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1027
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_1027:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_958
.label_958:
	mov	byte ptr [rbp - 0x3d], 0x30
	nop	
	jmp	.label_1033
.label_1118:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_1037
	mov	rbp, rbp
	jmp	.label_1020
.label_1037:
	jmp	.label_1033
.label_1033:
	jmp	.label_972
.label_1587:
	mov	eax, dword ptr [rbp - 0x58]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0x78], eax
	nop	
	mov	dword ptr [rbp - 0x90], ecx
	mov	rsp, rsp
	je	.label_1045
	mov	rbp, rbp
	jmp	.label_1051
.label_1051:
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb4], eax
	lea	rsi, [rsi]
	je	.label_1054
	jmp	.label_1061
.label_1045:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_1063
	jmp	.label_920
.label_1063:
	jmp	.label_968
.label_1054:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 4
	cmp	eax, 0
	je	.label_943
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	jae	.label_943
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_943
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
	je	.label_1077
	nop	
	jmp	.label_1101
.label_1101:
	nop	
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	jb	.label_1077
	jmp	.label_1092
.label_1092:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x144]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_1077
	jmp	.label_1097
.label_1097:
	mov	eax, dword ptr [rbp - 0x144]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x128], eax
	je	.label_1077
	jmp	.label_1016
.label_1016:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0xf4], eax
	lea	rdi, [rdi]
	ja	.label_1001
	jmp	.label_1077
.label_1077:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_1108
	jmp	.label_920
.label_1108:
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
	jae	.label_1112
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_1112:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_931
.label_931:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_935
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_935:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_941
.label_941:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1079
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_1079:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1116
.label_1116:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1040
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_1040:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_961
.label_1001:
	jmp	.label_961
.label_961:
	jmp	.label_943
.label_943:
	jmp	.label_968
.label_1061:
	jmp	.label_968
.label_968:
	jmp	.label_972
.label_1577:
	mov	byte ptr [rbp - 0xb6], 0x61
	jmp	.label_975
.label_1578:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb6], 0x62
	jmp	.label_975
.label_1582:
	mov	byte ptr [rbp - 0xb6], 0x66
	lea	rdi, [rdi]
	jmp	.label_975
.label_1580:
	mov	byte ptr [rbp - 0xb6], 0x6e
	mov	rbp, rbp
	jmp	.label_983
.label_1583:
	mov	byte ptr [rbp - 0xb6], 0x72
	mov	rbp, rbp
	jmp	.label_983
.label_1579:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb6], 0x74
	jmp	.label_983
.label_1581:
	mov	byte ptr [rbp - 0xb6], 0x76
	jmp	.label_975
.label_1588:
	mov	al, byte ptr [rbp - 0x3d]
	nop	
	mov	byte ptr [rbp - 0xb6], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_991
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_999
	nop	
	jmp	.label_920
.label_999:
	lea	rsi, [rsi]
	jmp	.label_1004
.label_991:
	test	byte ptr [rbp - 0x89], 1
	je	.label_1005
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_1005
	nop	
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rbp, rbp
	je	.label_1005
	jmp	.label_1004
.label_1005:
	jmp	.label_983
.label_983:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	jne	.label_1018
	test	byte ptr [rbp - 0x3e], 1
	je	.label_1018
	jmp	.label_920
.label_1018:
	mov	rsp, rsp
	jmp	.label_975
.label_975:
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_1026
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb6]
	mov	byte ptr [rbp - 0x3d], al
	jmp	.label_1029
.label_1026:
	jmp	.label_972
.label_1589:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_1034
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x150]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_1038
	jmp	.label_1044
.label_1034:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 1
	je	.label_1038
.label_1044:
	nop	
	jmp	.label_972
.label_1038:
	jmp	.label_1048
.label_1048:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rbp, rbp
	je	.label_1049
	lea	rsi, [rsi]
	jmp	.label_972
.label_1049:
	nop	
	jmp	.label_1057
.label_1057:
	mov	byte ptr [rbp - 0x91], 1
.label_1584:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_1060
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_1060
	jmp	.label_920
.label_1060:
	lea	rsi, [rsi]
	jmp	.label_972
.label_1586:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa5], 1
	mov	byte ptr [rbp - 0x91], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_1066
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_1071
	jmp	.label_920
.label_1071:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1073
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x140], 0
	lea	rdi, [rdi]
	jne	.label_1073
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x140], rax
	mov	qword ptr [rbp - 0x28], 0
.label_1073:
	jmp	.label_1083
.label_1083:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_1085
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_1085:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1089
.label_1089:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	jae	.label_1094
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_1094:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_1100
.label_1100:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1104
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1104:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_1066:
	lea	rsi, [rsi]
	jmp	.label_972
.label_1585:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 1
	jmp	.label_972
.label_1105:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xb5], 1
	je	.label_918
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
	jmp	.label_978
.label_918:
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
	jne	.label_947
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x150]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
.label_947:
	jmp	.label_954
.label_954:
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
	jne	.label_969
	jmp	.label_976
.label_969:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], -1
	jne	.label_977
	mov	byte ptr [rbp - 0x40], 0
	jmp	.label_976
.label_977:
	nop	
	cmp	qword ptr [rbp - 0x10], -2
	jne	.label_982
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_1006:
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
	jae	.label_985
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0x110]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x41], sil
.label_985:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_944
	jmp	.label_1022
.label_944:
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_1006
.label_1022:
	jmp	.label_976
.label_982:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_1015
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_1015
	mov	qword ptr [rbp - 0xe8], 1
.label_938:
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_1021
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
	jb	.label_1025
	jmp	.label_1041
.label_1041:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x148], eax
	je	.label_1025
	jmp	.label_1046
.label_1046:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	je	.label_1025
	jmp	.label_1053
.label_1053:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x48], eax
	jne	.label_1055
	mov	rsp, rsp
	jmp	.label_1025
.label_1025:
	mov	rsp, rsp
	jmp	.label_920
.label_1055:
	jmp	.label_1065
.label_1065:
	mov	rsp, rsp
	jmp	.label_951
.label_951:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe8]
	add	rax, 1
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_938
.label_1021:
	mov	rbp, rbp
	jmp	.label_1015
.label_1015:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x74]
	call	iswprint
	cmp	eax, 0
	jne	.label_988
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_988:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_1010
.label_1010:
	lea	rsi, [rsi]
	jmp	.label_1076
.label_1076:
	jmp	.label_1078
.label_1078:
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
	jne	.label_954
.label_976:
	jmp	.label_978
.label_978:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x40]
	and	dl, 1
	mov	byte ptr [rbp - 0x91], dl
	cmp	rcx, qword ptr [rbp - 0x110]
	nop	
	jb	.label_1088
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_1096
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	mov	rsp, rsp
	jne	.label_1096
.label_1088:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x110]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_1075:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	nop	
	je	.label_1032
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	jne	.label_1032
	jmp	.label_1109
.label_1109:
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_1110
	jmp	.label_920
.label_1110:
	mov	byte ptr [rbp - 0x3f], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_1114
	test	byte ptr [rbp - 0x42], 1
	jne	.label_1114
.label_1506:
	lea	rdi, [rdi]
	jmp	.label_919
.label_919:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_933
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_933:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_930
.label_930:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1012
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x24
.label_1012:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_942
.label_942:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1087
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1087:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_1114:
	jmp	.label_956
.label_956:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_957
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_957:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_989
.label_989:
	jmp	.label_965
.label_965:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_967
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
.label_967:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_981
.label_981:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_986
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
.label_986:
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
	jmp	.label_998
.label_1032:
	test	byte ptr [rbp - 0xa6], 1
	lea	rsi, [rsi]
	je	.label_1007
	lea	rdi, [rdi]
	jmp	.label_1011
.label_1011:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1014
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x5c
.label_1014:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa6], 0
.label_1007:
	nop	
	jmp	.label_998
.label_998:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xd8]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_936
	jmp	.label_1031
.label_936:
	lea	rsi, [rsi]
	jmp	.label_1035
.label_1035:
	test	byte ptr [rbp - 0x42], 1
	je	.label_996
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_996
	lea	rsi, [rsi]
	jmp	.label_1042
.label_1042:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1043
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_1043:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_1050
.label_1050:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_1059
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_1059:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_996:
	nop	
	jmp	.label_1067
.label_1067:
	mov	rsp, rsp
	jmp	.label_1036
.label_1036:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1070
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x3d]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_1070:
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
	jmp	.label_1075
.label_1031:
	mov	rsp, rsp
	jmp	.label_1004
.label_1096:
	lea	rsi, [rsi]
	jmp	.label_972
.label_972:
	test	byte ptr [rbp - 0x89], 1
	mov	rbp, rbp
	je	.label_970
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_1093
.label_970:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_1095
.label_1093:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x100], 0
	nop	
	je	.label_1095
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
	jne	.label_1072
.label_1095:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xa6], 1
	lea	rdi, [rdi]
	jne	.label_1072
	mov	rsp, rsp
	jmp	.label_1004
.label_1072:
	nop	
	jmp	.label_1029
.label_1029:
	jmp	.label_1117
.label_1117:
	test	byte ptr [rbp - 0x3e], 1
	mov	rbp, rbp
	je	.label_1111
	jmp	.label_920
.label_1111:
	mov	byte ptr [rbp - 0x3f], 1
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_922
	test	byte ptr [rbp - 0x42], 1
	lea	rdi, [rdi]
	jne	.label_922
	lea	rdi, [rdi]
	jmp	.label_928
.label_928:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1019
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_1019:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_939
.label_939:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1064
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_1064:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_949
.label_949:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_952
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_952:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_922:
	jmp	.label_1080
.label_1080:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_964
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_964:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_974
.label_974:
	nop	
	jmp	.label_1004
.label_1004:
	jmp	.label_979
.label_979:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x42], 1
	je	.label_980
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_980
	lea	rdi, [rdi]
	jmp	.label_1023
.label_1023:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_987
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_987:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_992
.label_992:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1000
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_1000:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_980:
	jmp	.label_1013
.label_1013:
	nop	
	jmp	.label_1068
.label_1068:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1074
	mov	al, byte ptr [rbp - 0x3d]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_1074:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x91], 1
	jne	.label_1024
	mov	byte ptr [rbp - 0xb7], 0
.label_1024:
	mov	rbp, rbp
	jmp	.label_1020
.label_1020:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_994
.label_1056:
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_1039
	cmp	dword ptr [rbp - 0x58], 2
	nop	
	jne	.label_1039
	mov	rbp, rbp
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_1039
	nop	
	jmp	.label_920
.label_1039:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_1052
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_1052
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa5], 1
	je	.label_1052
	test	byte ptr [rbp - 0xb7], 1
	je	.label_1062
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
	jmp	.label_932
.label_1062:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jne	.label_1081
	cmp	qword ptr [rbp - 0x140], 0
	lea	rsi, [rsi]
	je	.label_1081
	nop	
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_1086
.label_1081:
	jmp	.label_1091
.label_1091:
	mov	rbp, rbp
	jmp	.label_1052
.label_1052:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x108], 0
	je	.label_924
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_924
	mov	rbp, rbp
	jmp	.label_984
.label_984:
	mov	rax, qword ptr [rbp - 0x108]
	cmp	byte ptr [rax], 0
	je	.label_1098
	lea	rdi, [rdi]
	jmp	.label_993
.label_993:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1103
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_1103:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1113
.label_1113:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_984
.label_1098:
	jmp	.label_924
.label_924:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_925
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0
.label_925:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_932
.label_920:
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_940
	mov	rsp, rsp
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_940
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], 4
.label_940:
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
.label_932:
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
	#Procedure 0x410910
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
	#Procedure 0x410980

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
	je	.label_1119
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_1120
.label_1119:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_1120
.label_1120:
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
	je	.label_1121
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
.label_1121:
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
	#Procedure 0x410b50
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
.label_1126:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_1125
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
	jmp	.label_1126
.label_1125:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_1124
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_1122]],  rax
.label_1124:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_1123
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_1123:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410c60

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
	#Procedure 0x410cb0

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
	jge	.label_1131
	call	abort
.label_1131:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 0x64]
	jg	.label_1134
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
	jge	.label_1127
	call	xalloc_die
.label_1127:
	test	byte ptr [rbp - 0x51], 1
	je	.label_1128
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_1132
.label_1128:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_1132:
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
	je	.label_1130
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_1122]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_1130:
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
.label_1134:
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
	ja	.label_1129
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
	je	.label_1133
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	free
.label_1133:
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
.label_1129:
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
	#Procedure 0x410fe0

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
	#Procedure 0x411020
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
	#Procedure 0x411050
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
	#Procedure 0x411090

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
	#Procedure 0x4110f0

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
	jne	.label_1135
	call	abort
.label_1135:
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
	#Procedure 0x411190

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
	#Procedure 0x411200

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
	#Procedure 0x411240
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
	#Procedure 0x411280

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
	#Procedure 0x411330

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
	#Procedure 0x411370

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
	#Procedure 0x4113a0
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
	#Procedure 0x4113e0

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
	#Procedure 0x4114c0

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
	#Procedure 0x411510

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
	#Procedure 0x4115b0
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
	#Procedure 0x411600
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
	#Procedure 0x411660

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
	#Procedure 0x4116a0
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
	#Procedure 0x4116e0

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
	#Procedure 0x411720

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
	#Procedure 0x411760

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
	je	.label_1139
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1137
.label_1139:
	call	locale_charset
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.13
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1138
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
	jmp	.label_1137
.label_1138:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_1136
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
	jmp	.label_1137
.label_1136:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
.label_1137:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4118a0

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
	.align	16
	#Procedure 0x4118f0

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
	jne	.label_1140
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
.label_1140:
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
	je	.label_1143
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
	je	.label_1141
	call	__errno_location
	mov	rbp, rbp
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_1
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x180]
	mov	rbp, rbp
	mov	al, 0
	call	error
.label_1141:
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
	je	.label_1142
	call	__errno_location
	mov	rsp, rsp
	mov	edi, 1
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	al, 0
	nop	
	call	error
.label_1142:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xc0]
	cmp	rdx, qword ptr [rbp - 0x170]
	mov	byte ptr [rbp - 9], cl
	lea	rdi, [rdi]
	jne	.label_1144
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	sete	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], cl
.label_1144:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	mov	byte ptr [rbp - 0x25], al
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	free
.label_1143:
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
	.align	16
	#Procedure 0x411b60

	.globl save_cwd
	.type save_cwd, @function
save_cwd:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str_2
	mov	esi, 0x80000
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 8], 0
	mov	rdi, rax
	mov	al, 0
	call	open_safer
	nop	
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rdi], eax
	nop	
	mov	rdi, qword ptr [rbp - 8]
	cmp	dword ptr [rdi], 0
	jge	.label_1146
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, rcx
	mov	rsi, rcx
	call	getcwd
	mov	edx, 0xffffffff
	xor	r8d, r8d
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 8], 0
	cmovne	edx, r8d
	mov	dword ptr [rbp - 0xc], edx
	jmp	.label_1145
.label_1146:
	mov	dword ptr [rbp - 0xc], 0
.label_1145:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411c10

	.globl restore_cwd
	.type restore_cwd, @function
restore_cwd:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	rbp, rbp
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rdi]
	jg	.label_1147
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax]
	nop	
	call	fchdir
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1148
.label_1147:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	lea	rsi, [rsi]
	call	chdir_long
	mov	dword ptr [rbp - 4], eax
.label_1148:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x411c70

	.globl free_cwd
	.type free_cwd, @function
free_cwd:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rdi], 0
	jl	.label_1149
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	edi, dword ptr [rax]
	call	close
	mov	dword ptr [rbp - 4], eax
.label_1149:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 8]
	call	free
	nop	
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411cc0

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
	je	.label_1150
	movabs	rsi, OFFSET FLAT:.str_7
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
	jmp	.label_1153
.label_1150:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_4
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0x78]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x114], eax
.label_1153:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	eax, OFFSET FLAT:.str.2_3
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
	ja	.label_1154
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1152]]
	jmp	rcx
.label_1538:
	jmp	.label_1151
.label_1539:
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
	jmp	.label_1151
.label_1540:
	movabs	rdi, OFFSET FLAT:.str.5_2
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
	jmp	.label_1151
.label_1541:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6_2
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
	jmp	.label_1151
.label_1542:
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
	jmp	.label_1151
.label_1543:
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
	jmp	.label_1151
.label_1544:
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
	jmp	.label_1151
.label_1545:
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
	jmp	.label_1151
.label_1546:
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
	jmp	.label_1151
.label_1547:
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
	jmp	.label_1151
.label_1154:
	movabs	rdi, OFFSET FLAT:.str.13_0
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
.label_1151:
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
	#Procedure 0x412500
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
.label_1155:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1156
	mov	rbp, rbp
	jmp	.label_1157
.label_1157:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_1155
.label_1156:
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
	#Procedure 0x4125b0

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
.label_1162:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x40], 0xa
	mov	byte ptr [rbp - 0x11], cl
	jae	.label_1158
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], ecx
	ja	.label_1164
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
	jmp	.label_1163
.label_1164:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x30], rdx
.label_1163:
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
.label_1158:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_1161
	mov	rsp, rsp
	jmp	.label_1159
.label_1161:
	jmp	.label_1160
.label_1160:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1162
.label_1159:
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
	#Procedure 0x412710

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
	je	.label_1165
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
.label_1165:
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
	#Procedure 0x4128d0
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
	movabs	rdi, OFFSET FLAT:.str.16_1
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
	#Procedure 0x412980

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
	jae	.label_1166
	mov	rbp, rbp
	call	xalloc_die
.label_1166:
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
	#Procedure 0x4129e0

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
	jne	.label_1167
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_1167
	lea	rdi, [rdi]
	call	xalloc_die
.label_1167:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412a40

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
	jae	.label_1168
	mov	rsp, rsp
	call	xalloc_die
.label_1168:
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
	#Procedure 0x412ac0

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
	jne	.label_1169
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_1169
	mov	rdi, qword ptr [rbp - 8]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_1171
.label_1169:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	realloc
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_1170
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_1170
	lea	rsi, [rsi]
	call	xalloc_die
.label_1170:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
.label_1171:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412b70

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
	jne	.label_1172
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1174
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
.label_1174:
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
	jae	.label_1176
	call	xalloc_die
.label_1176:
	lea	rsi, [rsi]
	jmp	.label_1175
.label_1172:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_1173
	call	xalloc_die
.label_1173:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_1175:
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
	#Procedure 0x412ca0

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
	#Procedure 0x412cd0
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
	#Procedure 0x412d10
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
	#Procedure 0x412d60
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
	jb	.label_1177
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	calloc
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_1178
.label_1177:
	lea	rsi, [rsi]
	call	xalloc_die
.label_1178:
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
	#Procedure 0x412dd0

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
	#Procedure 0x412e20

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
	#Procedure 0x412e80

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.1_5
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
	#Procedure 0x412ee0

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdi, rcx
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	getcwd
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jne	.label_1179
	nop	
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0xc
	mov	rbp, rbp
	jne	.label_1179
	call	xalloc_die
.label_1179:
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x412f50

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
	#Procedure 0x412fb0

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
	mov	qword ptr [word ptr [rbp - 64]], OFFSET FLAT:.str_8
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
	je	.label_1185
	nop	
	jmp	.label_1181
.label_1181:
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, -2
	nop	
	sub	eax, 2
	mov	dword ptr [rbp - 0x48], eax
	jb	.label_1183
	lea	rdi, [rdi]
	jmp	.label_1188
.label_1188:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20], eax
	lea	rsi, [rsi]
	je	.label_1182
	lea	rsi, [rsi]
	jmp	.label_1186
.label_1186:
	call	abort
.label_1182:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.1_6
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	jmp	.label_1180
.label_1183:
	movabs	rax, OFFSET FLAT:.str.2_4
	nop	
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1180
.label_1185:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.3_5
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
.label_1180:
	cmp	dword ptr [rbp - 0x1c], 0
	mov	rsp, rsp
	jge	.label_1184
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
	jmp	.label_1187
.label_1184:
	movsxd	rax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	shl	rax, 5
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_1187:
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
	#Procedure 0x413160

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
	jg	.label_1215
	cmp	dword ptr [rbp - 0x54], 0x24
	lea	rdi, [rdi]
	jg	.label_1215
	jmp	.label_1237
.label_1215:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str_9
	movabs	rsi, OFFSET FLAT:.str.1_7
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
.label_1237:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1210
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	jmp	.label_1190
.label_1210:
	lea	rax, [rbp - 0x80]
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_1190
.label_1190:
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
.label_1225:
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
	je	.label_1247
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x91], dl
	lea	rsi, [rsi]
	jmp	.label_1225
.label_1247:
	movzx	eax, byte ptr [rbp - 0x91]
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	jne	.label_1235
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xf4], 4
	lea	rsi, [rsi]
	jmp	.label_1200
.label_1235:
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
	jne	.label_1251
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rsp, rsp
	je	.label_1192
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_1192
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	nop	
	je	.label_1192
	mov	qword ptr [rbp - 0xc8], 1
	jmp	.label_1218
.label_1192:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xf4], 4
	jmp	.label_1200
.label_1218:
	lea	rdi, [rdi]
	jmp	.label_1230
.label_1251:
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0
	je	.label_1234
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	lea	rdi, [rdi]
	je	.label_1236
	nop	
	mov	dword ptr [rbp - 0xf4], 4
	jmp	.label_1200
.label_1236:
	mov	dword ptr [rbp - 0x60], 1
.label_1234:
	jmp	.label_1230
.label_1230:
	nop	
	cmp	qword ptr [rbp - 0xd8], 0
	jne	.label_1246
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x60]
	mov	dword ptr [rbp - 0xf4], edx
	lea	rdi, [rdi]
	jmp	.label_1200
.label_1246:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_1193
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
	jne	.label_1213
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
	jmp	.label_1200
.label_1213:
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
	je	.label_1189
	jmp	.label_1239
.label_1239:
	nop	
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0xdc], eax
	lea	rdi, [rdi]
	je	.label_1189
	nop	
	jmp	.label_1202
.label_1202:
	mov	eax, dword ptr [rbp - 0x9c]
	nop	
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_1189
	nop	
	jmp	.label_1254
.label_1254:
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rsi, [rsi]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x34], eax
	mov	rbp, rbp
	je	.label_1189
	lea	rsi, [rsi]
	jmp	.label_1197
.label_1197:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	je	.label_1189
	jmp	.label_1203
.label_1203:
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_1189
	jmp	.label_1211
.label_1211:
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	add	eax, -0x59
	mov	rbp, rbp
	sub	eax, 2
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], eax
	lea	rdi, [rdi]
	jb	.label_1189
	mov	rsp, rsp
	jmp	.label_1223
.label_1223:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_1189
	jmp	.label_1238
.label_1238:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xf8], eax
	lea	rdi, [rdi]
	je	.label_1189
	mov	rsp, rsp
	jmp	.label_1226
.label_1226:
	mov	eax, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x44], eax
	nop	
	je	.label_1189
	jmp	.label_1244
.label_1244:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 0x74
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	jne	.label_1212
	jmp	.label_1189
.label_1189:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0xd8]
	call	strchr
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_1195
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
	je	.label_1198
	lea	rsi, [rsi]
	jmp	.label_1208
.label_1208:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x88], eax
	je	.label_1198
	jmp	.label_1222
.label_1222:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	sub	eax, 0x69
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xbc], eax
	lea	rdi, [rdi]
	jne	.label_1219
	lea	rsi, [rsi]
	jmp	.label_1228
.label_1228:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 2]
	lea	rsi, [rsi]
	cmp	ecx, 0x42
	jne	.label_1231
	mov	eax, dword ptr [rbp - 0xd0]
	nop	
	add	eax, 2
	mov	dword ptr [rbp - 0xd0], eax
.label_1231:
	jmp	.label_1219
.label_1198:
	mov	dword ptr [rbp - 0x64], 0x3e8
	mov	eax, dword ptr [rbp - 0xd0]
	add	eax, 1
	mov	dword ptr [rbp - 0xd0], eax
.label_1219:
	jmp	.label_1195
.label_1195:
	nop	
	jmp	.label_1212
.label_1212:
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
	je	.label_1250
	jmp	.label_1214
.label_1214:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x45
	nop	
	mov	dword ptr [rbp - 0x98], eax
	je	.label_1196
	jmp	.label_1199
.label_1199:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x47
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	je	.label_1201
	jmp	.label_1205
.label_1205:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	sub	eax, 0x4b
	nop	
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	je	.label_1206
	nop	
	jmp	.label_1249
.label_1249:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rdi, [rdi]
	sub	eax, 0x4d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xfc], eax
	je	.label_1217
	nop	
	jmp	.label_1224
.label_1224:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_1221
	mov	rsp, rsp
	jmp	.label_1233
.label_1233:
	nop	
	mov	eax, dword ptr [rbp - 0x6c]
	nop	
	sub	eax, 0x54
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	nop	
	je	.label_1220
	jmp	.label_1209
.label_1209:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x59
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x20], eax
	je	.label_1248
	mov	rbp, rbp
	jmp	.label_1243
.label_1243:
	mov	eax, dword ptr [rbp - 0x6c]
	nop	
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb0], eax
	je	.label_1245
	jmp	.label_1252
.label_1252:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x62
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_1253
	jmp	.label_1204
.label_1204:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x58], eax
	je	.label_1227
	jmp	.label_1207
.label_1207:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x67
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_1201
	jmp	.label_1216
.label_1216:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x6b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_1206
	jmp	.label_1194
.label_1194:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xac], eax
	je	.label_1217
	jmp	.label_1242
.label_1242:
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x30], eax
	je	.label_1220
	jmp	.label_1241
.label_1241:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0x24], eax
	je	.label_1229
	jmp	.label_1232
.label_1253:
	lea	rdi, [rbp - 0xc8]
	mov	esi, 0x200
	call	bkm_scale
	nop	
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1191
.label_1250:
	lea	rdi, [rbp - 0xc8]
	mov	esi, 0x400
	lea	rdi, [rdi]
	call	bkm_scale
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1191
.label_1227:
	mov	dword ptr [rbp - 0x84], 0
	jmp	.label_1191
.label_1196:
	nop	
	lea	rdi, [rbp - 0xc8]
	mov	edx, 6
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1191
.label_1201:
	lea	rdi, [rbp - 0xc8]
	mov	edx, 3
	nop	
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1191
.label_1206:
	lea	rdi, [rbp - 0xc8]
	mov	edx, 1
	nop	
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1191
.label_1217:
	mov	rbp, rbp
	lea	rdi, [rbp - 0xc8]
	mov	edx, 2
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x64]
	mov	rbp, rbp
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1191
.label_1221:
	lea	rdi, [rbp - 0xc8]
	mov	edx, 5
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x64]
	lea	rsi, [rsi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	mov	rsp, rsp
	jmp	.label_1191
.label_1220:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	edx, 4
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	jmp	.label_1191
.label_1229:
	lea	rdi, [rbp - 0xc8]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1191
.label_1248:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xc8]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1191
.label_1245:
	mov	rsp, rsp
	lea	rdi, [rbp - 0xc8]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1191
.label_1232:
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
	jmp	.label_1200
.label_1191:
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
	je	.label_1240
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x60]
	or	eax, 2
	nop	
	mov	dword ptr [rbp - 0x60], eax
.label_1240:
	jmp	.label_1193
.label_1193:
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x60]
	nop	
	mov	dword ptr [rbp - 0xf4], edx
.label_1200:
	mov	eax, dword ptr [rbp - 0xf4]
	add	rsp, 0x100
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413af0

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
	jae	.label_1255
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], 1
	jmp	.label_1256
.label_1255:
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 8]
	imul	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 0x10], 0
.label_1256:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x10]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413b70

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
.label_1257:
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
	je	.label_1258
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
	jmp	.label_1257
.label_1258:
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
	#Procedure 0x413bf0

	.globl chdir_long
	.type chdir_long, @function
chdir_long:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x40], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x40]
	call	chdir
	nop	
	mov	dword ptr [rbp - 4], eax
	cmp	dword ptr [rbp - 4], 0
	je	.label_1277
	call	__errno_location
	cmp	dword ptr [rax], 0x24
	lea	rsi, [rsi]
	je	.label_1264
.label_1277:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_1271
.label_1264:
	nop	
	lea	rdi, [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rax
	mov	rsp, rsp
	call	strlen
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	add	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	cdb_init
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	eax, ecx
	nop	
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1285
	nop	
	jmp	.label_1260
.label_1285:
	movabs	rdi, OFFSET FLAT:.str_10
	movabs	rsi, OFFSET FLAT:.str.1_8
	nop	
	mov	edx, 0x7e
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	lea	rdi, [rdi]
	call	__assert_fail
.label_1260:
	mov	rbp, rbp
	mov	eax, 0x1000
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_1276
	lea	rsi, [rsi]
	jmp	.label_1282
.label_1276:
	movabs	rdi, OFFSET FLAT:.str.2_5
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_8
	mov	rsp, rsp
	mov	edx, 0x7f
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_1282:
	movabs	rsi, OFFSET FLAT:.str.3_1
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	call	strspn
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	nop	
	cmp	qword ptr [rbp - 0x18], 2
	mov	rsp, rsp
	jne	.label_1270
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	add	rax, 3
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x40]
	add	rdx, 3
	sub	rcx, rdx
	mov	esi, 0x2f
	mov	rdi, rax
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rsp, rsp
	call	memchr
	nop	
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	jne	.label_1266
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0x24
	mov	dword ptr [rbp - 0x34], 0xffffffff
	jmp	.label_1271
.label_1266:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x48]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0
	mov	rsi, qword ptr [rbp - 0x40]
	call	cdb_advance_fd
	mov	dword ptr [rbp - 0x4c], eax
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	byte ptr [rsi], 0x2f
	cmp	dword ptr [rbp - 0x4c], 0
	mov	rsp, rsp
	je	.label_1274
	jmp	.label_1262
.label_1274:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	find_non_slash
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	jmp	.label_1278
.label_1270:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1259
	lea	rdi, [rbp - 0x48]
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.3_1
	call	cdb_advance_fd
	cmp	eax, 0
	je	.label_1268
	jmp	.label_1262
.label_1268:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
.label_1259:
	jmp	.label_1278
.label_1278:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	lea	rdi, [rdi]
	je	.label_1279
	lea	rdi, [rdi]
	jmp	.label_1283
.label_1279:
	nop	
	movabs	rdi, OFFSET FLAT:.str.4_3
	movabs	rsi, OFFSET FLAT:.str.1_8
	mov	rsp, rsp
	mov	edx, 0xa2
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_1283:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	ja	.label_1261
	jmp	.label_1267
.label_1261:
	movabs	rdi, OFFSET FLAT:.str.5_3
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.1_8
	mov	edx, 0xa3
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_1267:
	jmp	.label_1281
.label_1281:
	mov	eax, 0x1000
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	sub	rdx, rsi
	lea	rdi, [rdi]
	cmp	rcx, rdx
	jg	.label_1269
	lea	rdi, [rdi]
	mov	esi, 0x2f
	lea	rsi, [rsi]
	mov	eax, 0x1000
	mov	edx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x40]
	call	memrchr
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	mov	rsp, rsp
	jne	.label_1263
	call	__errno_location
	mov	dword ptr [rax], 0x24
	mov	dword ptr [rbp - 0x34], 0xffffffff
	jmp	.label_1271
.label_1263:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rax, rcx
	nop	
	cmp	rax, 0x1000
	jge	.label_1265
	jmp	.label_1284
.label_1265:
	movabs	rdi, OFFSET FLAT:.str.6_3
	movabs	rsi, OFFSET FLAT:.str.1_8
	mov	edx, 0xb3
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	mov	rbp, rbp
	call	__assert_fail
.label_1284:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	nop	
	call	cdb_advance_fd
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x58]
	mov	byte ptr [rsi], 0x2f
	nop	
	cmp	dword ptr [rbp - 0x44], 0
	je	.label_1272
	mov	rbp, rbp
	jmp	.label_1262
.label_1272:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	rdi, rax
	nop	
	call	find_non_slash
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	jmp	.label_1281
.label_1269:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1275
	lea	rdi, [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	cdb_advance_fd
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_1280
	jmp	.label_1262
.label_1280:
	jmp	.label_1275
.label_1275:
	lea	rdi, [rbp - 0x48]
	mov	rbp, rbp
	call	cdb_fchdir
	cmp	eax, 0
	je	.label_1273
	lea	rdi, [rdi]
	jmp	.label_1262
.label_1273:
	lea	rdi, [rbp - 0x48]
	call	cdb_free
	mov	dword ptr [rbp - 0x34], 0
	jmp	.label_1271
.label_1262:
	call	__errno_location
	mov	rsp, rsp
	lea	rdi, [rbp - 0x48]
	nop	
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x5c], ecx
	call	cdb_free
	mov	ecx, dword ptr [rbp - 0x5c]
	nop	
	mov	dword ptr [rbp - 0x38], ecx
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x38]
	nop	
	mov	dword ptr [rax], ecx
	nop	
	mov	dword ptr [rbp - 0x34], 0xffffffff
.label_1271:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	add	rsp, 0x60
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4140a0

	.globl cdb_init
	.type cdb_init, @function
cdb_init:
	mov	rsp, rsp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dword ptr [rdi], 0xffffff9c
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4140c0

	.globl cdb_advance_fd
	.type cdb_advance_fd, @function
cdb_advance_fd:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	edx, 0x10900
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rsi]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	al, 0
	call	openat
	nop	
	mov	dword ptr [rbp - 4], eax
	cmp	dword ptr [rbp - 4], 0
	jge	.label_1286
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], 0xffffffff
	mov	rbp, rbp
	jmp	.label_1287
.label_1286:
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	cdb_free
	mov	eax, dword ptr [rbp - 4]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	dword ptr [rdi], eax
	mov	dword ptr [rbp - 0x14], 0
.label_1287:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x414150

	.globl find_non_slash
	.type find_non_slash, @function
find_non_slash:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rsi, OFFSET FLAT:.str.3_1
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	call	strspn
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414190

	.globl cdb_fchdir
	.type cdb_fchdir, @function
cdb_fchdir:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	edi, dword ptr [rdi]
	mov	rbp, rbp
	call	fchdir
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4141c0

	.globl cdb_free
	.type cdb_free, @function
cdb_free:
	mov	rsp, rsp
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	eax, dword ptr [rdi]
	lea	rdi, [rdi]
	jg	.label_1288
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax]
	call	close
	nop	
	cmp	eax, 0
	setne	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	byte ptr [rbp - 9], cl
	lea	rsi, [rsi]
	test	byte ptr [rbp - 9], 1
	jne	.label_1290
	mov	rbp, rbp
	jmp	.label_1289
.label_1290:
	movabs	rdi, OFFSET FLAT:.str.7_1
	movabs	rsi, OFFSET FLAT:.str.1_8
	mov	edx, 0x40
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.cdb_free
	lea	rsi, [rsi]
	call	__assert_fail
.label_1289:
	jmp	.label_1288
.label_1288:
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x414260

	.globl get_fs_usage
	.type get_fs_usage, @function
get_fs_usage:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x110
	nop	
	mov	qword ptr [rbp - 0x108], rdi
	mov	qword ptr [rbp - 0x110], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rdx
	call	statvfs_works
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_1294
	mov	rsp, rsp
	lea	rsi, [rbp - 0x100]
	mov	rdi, qword ptr [rbp - 0x108]
	call	statvfs
	cmp	eax, 0
	nop	
	jge	.label_1295
	nop	
	mov	dword ptr [rbp - 0x84], 0xffffffff
	jmp	.label_1291
.label_1295:
	cmp	qword ptr [rbp - 0xf8], 0
	je	.label_1293
	mov	rax, qword ptr [rbp - 0xf8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_1296
.label_1293:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rax
.label_1296:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x90]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x90]
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	movabs	rcx, 0x8000000000000000
	and	rcx, qword ptr [rbp - 0xe0]
	sub	rcx, 1
	xor	rcx, 0xffffffffffffffff
	mov	rbp, rbp
	or	rax, rcx
	mov	rcx, qword ptr [rbp - 0x90]
	mov	qword ptr [rcx + 0x18], rax
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	and	rax, qword ptr [rbp - 0xe0]
	cmp	rax, 0
	setne	dl
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	and	dl, 1
	mov	byte ptr [rax + 0x20], dl
	nop	
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	qword ptr [rcx + 0x28], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	qword ptr [rcx + 0x30], rax
	mov	dword ptr [rbp - 0x84], 0
	jmp	.label_1291
.label_1294:
	lea	rsi, [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x108]
	call	statfs
	nop	
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_1292
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x84], 0xffffffff
	mov	rbp, rbp
	jmp	.label_1291
.label_1292:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	nop	
	mov	rcx, qword ptr [rbp - 0x90]
	mov	qword ptr [rcx + 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	qword ptr [rcx + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	movabs	rcx, 0x8000000000000000
	and	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	sub	rcx, 1
	xor	rcx, 0xffffffffffffffff
	nop	
	or	rax, rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rcx + 0x18], rax
	movabs	rax, 0x8000000000000000
	and	rax, qword ptr [rbp - 0x58]
	cmp	rax, 0
	lea	rsi, [rsi]
	setne	dl
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	and	dl, 1
	mov	byte ptr [rax + 0x20], dl
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x28], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	qword ptr [rcx + 0x30], rax
	mov	dword ptr [rbp - 0x84], 0
.label_1291:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x84]
	nop	
	add	rsp, 0x110
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4144f0

	.globl statvfs_works
	.type statvfs_works, @function
statvfs_works:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x190
	cmp	dword ptr [dword ptr [statvfs_works.statvfs_works_cache]],  0
	jge	.label_1297
	nop	
	lea	rdi, [rbp - 0x188]
	call	uname
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	dl, cl
	cmp	eax, 0
	nop	
	mov	byte ptr [rbp - 0x189], dl
	mov	rsp, rsp
	jne	.label_1298
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str_11
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x188]
	mov	rsp, rsp
	add	rax, 0x82
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strverscmp
	xor	ecx, ecx
	nop	
	cmp	ecx, eax
	setle	dl
	mov	byte ptr [rbp - 0x189], dl
.label_1298:
	mov	al, byte ptr [rbp - 0x189]
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [statvfs_works.statvfs_works_cache]],  ecx
.label_1297:
	mov	eax,  dword ptr [dword ptr [statvfs_works.statvfs_works_cache]]
	add	rsp, 0x190
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4145a0

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
	jne	.label_1299
	lea	rax, [rbp - 0x14]
	mov	qword ptr [rbp - 0x10], rax
.label_1299:
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
	ja	.label_1300
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_1300
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1300
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
	jmp	.label_1301
.label_1300:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1301:
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
	#Procedure 0x414690

	.globl read_file_system_list
	.type read_file_system_list, @function
read_file_system_list:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x130
	mov	al, dil
	movabs	rsi, OFFSET FLAT:.str.1_9
	movabs	rcx, OFFSET FLAT:.str_12
	nop	
	lea	rdx, [rbp - 0x78]
	and	al, 1
	mov	byte ptr [rbp - 0x101], al
	mov	qword ptr [rbp - 0xf0], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rcx
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	fopen
	nop	
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_1323
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc0], 0
	mov	qword ptr [rbp - 0xd0], 0
.label_1303:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xc0]
	lea	rsi, [rbp - 0xd0]
	mov	rdx, qword ptr [rbp - 0x40]
	call	getline
	cmp	rax, -1
	je	.label_1305
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.2_6
	lea	rdx, [rbp - 0x98]
	lea	rcx, [rbp - 0x64]
	lea	r8, [rbp - 0x108]
	nop	
	lea	r9, [rbp - 0x80]
	lea	rax, [rbp - 0x18]
	lea	rdi, [rbp - 0x20]
	mov	rbp, rbp
	lea	r10, [rbp - 0x91]
	mov	r11, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x100], rdi
	mov	rdi, r11
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x100]
	nop	
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	lea	rdi, [rdi]
	mov	al, 0
	nop	
	call	sscanf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa4], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xa4], 3
	je	.label_1318
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xa4], 7
	nop	
	je	.label_1318
	jmp	.label_1303
.label_1318:
	movabs	rsi, OFFSET FLAT:.str.3_6
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc0]
	movsxd	rcx, dword ptr [rbp - 0x20]
	add	rax, rcx
	mov	rdi, rax
	mov	rsp, rsp
	call	strstr
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_1326
	jmp	.label_1303
.label_1326:
	movabs	rsi, OFFSET FLAT:.str.4_4
	lea	rdx, [rbp - 0xa0]
	lea	rcx, [rbp - 0x90]
	lea	rsi, [rsi]
	lea	r8, [rbp - 0x1c]
	mov	rsp, rsp
	lea	r9, [rbp - 0x50]
	lea	rax, [rbp - 0x91]
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rax
	mov	al, 0
	lea	rsi, [rsi]
	call	sscanf
	mov	dword ptr [rbp - 0xa4], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xa4], 1
	lea	rdi, [rdi]
	je	.label_1310
	cmp	dword ptr [rbp - 0xa4], 5
	nop	
	je	.label_1310
	mov	rsp, rsp
	jmp	.label_1303
.label_1310:
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x80]
	nop	
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	byte ptr [rcx + rax], 0
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	add	rax, rcx
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	call	unescape_tab
	mov	rax, qword ptr [rbp - 0xc0]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x18]
	add	rax, rcx
	mov	rdi, rax
	lea	rsi, [rsi]
	call	unescape_tab
	mov	rax, qword ptr [rbp - 0xc0]
	movsxd	rcx, dword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rdi, rax
	mov	rsp, rsp
	call	unescape_tab
	mov	edx, 0x38
	mov	edi, edx
	lea	rsi, [rsi]
	call	xmalloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rax
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	movsxd	rcx, dword ptr [rbp - 0x1c]
	add	rax, rcx
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	xstrdup
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc0]
	movsxd	rcx, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, rcx
	mov	rdi, rax
	call	xstrdup
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0xc0]
	movsxd	rcx, dword ptr [rbp - 0x108]
	mov	rsp, rsp
	add	rax, rcx
	mov	rdi, rax
	call	xstrdup
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x60]
	movsxd	rcx, dword ptr [rbp - 0xa0]
	mov	rbp, rbp
	add	rax, rcx
	mov	rdi, rax
	call	xstrdup
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	sil, byte ptr [rax + 0x28]
	lea	rsi, [rsi]
	and	sil, 0xfb
	or	sil, 4
	mov	byte ptr [rax + 0x28], sil
	mov	edi, dword ptr [rbp - 0x98]
	mov	esi, dword ptr [rbp - 0x64]
	call	gnu_dev_makedev
	mov	r8b, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rax + 0x18]
	mov	edx, OFFSET FLAT:.str.5_4
	mov	esi, edx
	mov	byte ptr [rbp - 0x47], r8b
	nop	
	call	strcmp
	cmp	eax, 0
	mov	rsp, rsp
	mov	r8b, byte ptr [rbp - 0x47]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa7], r8b
	je	.label_1302
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.6_4
	mov	esi, edx
	nop	
	mov	byte ptr [rbp - 0x89], al
	lea	rsi, [rsi]
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0x89]
	mov	byte ptr [rbp - 0xa7], r8b
	je	.label_1302
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.7_2
	mov	rsp, rsp
	mov	esi, edx
	nop	
	mov	byte ptr [rbp - 0x9b], al
	lea	rdi, [rdi]
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0x9b]
	mov	byte ptr [rbp - 0xa7], r8b
	je	.label_1302
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	rdi, qword ptr [rcx + 0x18]
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.8_1
	mov	esi, edx
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], al
	lea	rdi, [rdi]
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0x11]
	mov	byte ptr [rbp - 0xa7], r8b
	mov	rsp, rsp
	je	.label_1302
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.9_2
	mov	rsp, rsp
	mov	esi, edx
	mov	byte ptr [rbp - 3], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 3]
	mov	byte ptr [rbp - 0xa7], r8b
	lea	rsi, [rsi]
	je	.label_1302
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.10_2
	mov	esi, edx
	mov	byte ptr [rbp - 0x49], al
	lea	rsi, [rsi]
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0x49]
	mov	byte ptr [rbp - 0xa7], r8b
	je	.label_1302
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.11_2
	mov	esi, edx
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x31], al
	lea	rdi, [rdi]
	call	strcmp
	nop	
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0x31]
	mov	byte ptr [rbp - 0xa7], r8b
	je	.label_1302
	mov	rsp, rsp
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.12_2
	mov	rbp, rbp
	mov	esi, edx
	mov	byte ptr [rbp - 0x79], al
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rbp - 0x79]
	mov	byte ptr [rbp - 0xa7], r8b
	lea	rsi, [rsi]
	je	.label_1302
	lea	rdi, [rdi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.13_1
	mov	esi, edx
	mov	byte ptr [rbp - 0xa8], al
	call	strcmp
	nop	
	cmp	eax, 0
	nop	
	mov	r8b, byte ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa7], r8b
	nop	
	je	.label_1302
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.14_2
	mov	rbp, rbp
	mov	esi, edx
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xe2], al
	mov	rsp, rsp
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xe2]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa7], r8b
	lea	rdi, [rdi]
	je	.label_1302
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.15_2
	mov	esi, edx
	nop	
	mov	byte ptr [rbp - 0xe1], al
	call	strcmp
	nop	
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xe1]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa7], r8b
	mov	rsp, rsp
	je	.label_1302
	mov	rbp, rbp
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rcx + 0x18]
	nop	
	mov	edx, OFFSET FLAT:.str.16_2
	nop	
	mov	esi, edx
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x46], al
	nop	
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rbp - 0x46]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa7], r8b
	je	.label_1302
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdx + 0x18]
	mov	eax, OFFSET FLAT:.str.17_2
	lea	rdi, [rdi]
	mov	esi, eax
	mov	byte ptr [rbp - 0xa6], cl
	nop	
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	cl, byte ptr [rbp - 0xa6]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x45], cl
	mov	rbp, rbp
	jne	.label_1319
	mov	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x45], al
	jmp	.label_1319
.label_1319:
	nop	
	mov	al, byte ptr [rbp - 0x45]
	mov	byte ptr [rbp - 0xa7], al
.label_1302:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xa7]
	mov	rbp, rbp
	mov	esi, 0x3a
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	al, cl
	mov	rsp, rsp
	mov	dil, byte ptr [rdx + 0x28]
	lea	rdi, [rdi]
	and	al, 1
	and	dil, 0xfe
	lea	rdi, [rdi]
	or	dil, al
	mov	byte ptr [rdx + 0x28], dil
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rdx]
	lea	rdi, [rdi]
	call	strchr
	lea	rdi, [rdi]
	mov	r8b, 1
	mov	rbp, rbp
	cmp	rax, 0
	mov	byte ptr [rbp - 0x12], r8b
	jne	.label_1307
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	nop	
	jne	.label_1317
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	jne	.label_1317
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.18_2
	mov	rbp, rbp
	mov	esi, edx
	mov	byte ptr [rbp - 0x9c], al
	lea	rsi, [rsi]
	call	strcmp
	cmp	eax, 0
	mov	rsp, rsp
	mov	r8b, byte ptr [rbp - 0x9c]
	mov	byte ptr [rbp - 0x12], r8b
	je	.label_1307
	lea	rdi, [rdi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.19_1
	mov	esi, edx
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xc3], al
	mov	rsp, rsp
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xc3]
	mov	byte ptr [rbp - 0x12], r8b
	je	.label_1307
.label_1317:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.20_0
	nop	
	mov	edi, ecx
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	sete	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x12], dl
.label_1307:
	mov	al, byte ptr [rbp - 0x12]
	and	al, 1
	nop	
	movzx	ecx, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	al, cl
	mov	sil, byte ptr [rdx + 0x28]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	shl	al, 1
	mov	rsp, rsp
	and	sil, 0xfd
	or	sil, al
	mov	rsp, rsp
	mov	byte ptr [rdx + 0x28], sil
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	qword ptr [rdi], rdx
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	add	rdx, 0x30
	mov	qword ptr [rbp - 0xf0], rdx
	jmp	.label_1303
.label_1305:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	call	ferror_unlocked
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_1325
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], ecx
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	call	rpl_fclose
	mov	ecx, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0xd4], eax
	mov	dword ptr [rbp - 0xb4], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xb4]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	jmp	.label_1306
.label_1325:
	mov	rdi, qword ptr [rbp - 0x40]
	call	rpl_fclose
	cmp	eax, -1
	nop	
	jne	.label_1309
	nop	
	jmp	.label_1306
.label_1309:
	jmp	.label_1311
.label_1323:
	movabs	rsi, OFFSET FLAT:.str.1_9
	movabs	rax, OFFSET FLAT:.str.21_0
	mov	qword ptr [rbp - 0xe0], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	call	setmntent
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x40], 0
	mov	rbp, rbp
	jne	.label_1315
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], 0
	mov	rsp, rsp
	jmp	.label_1313
.label_1315:
	jmp	.label_1320
.label_1320:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	call	getmntent
	nop	
	mov	qword ptr [rbp - 0x30], rax
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_1321
	nop	
	movabs	rsi, OFFSET FLAT:.str.22
	mov	rdi, qword ptr [rbp - 0x30]
	call	hasmntopt
	lea	rsi, [rsi]
	mov	ecx, 0x38
	mov	edi, ecx
	cmp	rax, 0
	lea	rdi, [rdi]
	setne	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x99], dl
	call	xmalloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax]
	lea	rdi, [rdi]
	call	xstrdup
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rsi], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rax + 8]
	call	xstrdup
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rax + 0x10], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rdi, qword ptr [rax + 0x10]
	nop	
	call	xstrdup
	mov	dl, 1
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 0x18], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	r8b, byte ptr [rax + 0x28]
	lea	rsi, [rsi]
	and	r8b, 0xfb
	or	r8b, 4
	mov	byte ptr [rax + 0x28], r8b
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rax + 0x18]
	mov	ecx, OFFSET FLAT:.str.5_4
	mov	rbp, rbp
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 5], dl
	mov	rsp, rsp
	call	strcmp
	cmp	eax, 0
	lea	rdi, [rdi]
	mov	dl, byte ptr [rbp - 5]
	mov	byte ptr [rbp - 0x65], dl
	nop	
	je	.label_1304
	lea	rdi, [rdi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.6_4
	lea	rdi, [rdi]
	mov	esi, edx
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa5], al
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xa5]
	mov	byte ptr [rbp - 0x65], r8b
	je	.label_1304
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.7_2
	mov	esi, edx
	nop	
	mov	byte ptr [rbp - 2], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 2]
	mov	byte ptr [rbp - 0x65], r8b
	nop	
	je	.label_1304
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.8_1
	mov	esi, edx
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xc1], al
	nop	
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0xc1]
	mov	byte ptr [rbp - 0x65], r8b
	je	.label_1304
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.9_2
	mov	esi, edx
	mov	byte ptr [rbp - 1], al
	nop	
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 1]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x65], r8b
	je	.label_1304
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.10_2
	mov	esi, edx
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x109], al
	call	strcmp
	cmp	eax, 0
	mov	rbp, rbp
	mov	r8b, byte ptr [rbp - 0x109]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x65], r8b
	je	.label_1304
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.11_2
	mov	rbp, rbp
	mov	esi, edx
	nop	
	mov	byte ptr [rbp - 0xd5], al
	lea	rdi, [rdi]
	call	strcmp
	cmp	eax, 0
	mov	rsp, rsp
	mov	r8b, byte ptr [rbp - 0xd5]
	nop	
	mov	byte ptr [rbp - 0x65], r8b
	mov	rsp, rsp
	je	.label_1304
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.12_2
	mov	esi, edx
	nop	
	mov	byte ptr [rbp - 0x81], al
	call	strcmp
	cmp	eax, 0
	nop	
	mov	r8b, byte ptr [rbp - 0x81]
	mov	byte ptr [rbp - 0x65], r8b
	mov	rbp, rbp
	je	.label_1304
	nop	
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.13_1
	mov	esi, edx
	mov	byte ptr [rbp - 0x102], al
	lea	rdi, [rdi]
	call	strcmp
	nop	
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0x102]
	mov	byte ptr [rbp - 0x65], r8b
	je	.label_1304
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rcx + 0x18]
	nop	
	mov	edx, OFFSET FLAT:.str.14_2
	mov	esi, edx
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xc2], al
	call	strcmp
	nop	
	cmp	eax, 0
	mov	rsp, rsp
	mov	r8b, byte ptr [rbp - 0xc2]
	mov	byte ptr [rbp - 0x65], r8b
	lea	rsi, [rsi]
	je	.label_1304
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.15_2
	nop	
	mov	esi, edx
	mov	byte ptr [rbp - 4], al
	lea	rsi, [rsi]
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rbp - 4]
	nop	
	mov	byte ptr [rbp - 0x65], r8b
	mov	rbp, rbp
	je	.label_1304
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.16_2
	mov	esi, edx
	mov	byte ptr [rbp - 0x21], al
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0x21]
	mov	byte ptr [rbp - 0x65], r8b
	je	.label_1304
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rdx + 0x18]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.17_2
	mov	esi, eax
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x48], cl
	lea	rdi, [rdi]
	call	strcmp
	cmp	eax, 0
	mov	cl, byte ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x9a], cl
	jne	.label_1312
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x99]
	mov	rsp, rsp
	xor	al, 0xff
	mov	byte ptr [rbp - 0x9a], al
.label_1312:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x9a]
	mov	byte ptr [rbp - 0x65], al
.label_1304:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x65]
	mov	rbp, rbp
	mov	esi, 0x3a
	and	al, 1
	movzx	ecx, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x70]
	mov	al, cl
	mov	dil, byte ptr [rdx + 0x28]
	mov	rbp, rbp
	and	al, 1
	nop	
	and	dil, 0xfe
	or	dil, al
	lea	rdi, [rdi]
	mov	byte ptr [rdx + 0x28], dil
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rdx]
	call	strchr
	mov	r8b, 1
	mov	rbp, rbp
	cmp	rax, 0
	mov	byte ptr [rbp - 0x8a], r8b
	nop	
	jne	.label_1314
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	jne	.label_1324
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x2f
	jne	.label_1324
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.18_2
	lea	rdi, [rdi]
	mov	esi, edx
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x8b], al
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rbp - 0x8b]
	mov	byte ptr [rbp - 0x8a], r8b
	je	.label_1314
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	rdi, qword ptr [rcx + 0x18]
	mov	edx, OFFSET FLAT:.str.19_1
	nop	
	mov	esi, edx
	nop	
	mov	byte ptr [rbp - 0x51], al
	call	strcmp
	cmp	eax, 0
	mov	r8b, byte ptr [rbp - 0x51]
	mov	byte ptr [rbp - 0x8a], r8b
	lea	rsi, [rsi]
	je	.label_1314
.label_1324:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.20_0
	mov	rsp, rsp
	mov	edi, ecx
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	sete	dl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x8a], dl
.label_1314:
	mov	al, byte ptr [rbp - 0x8a]
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	al, cl
	mov	sil, byte ptr [rdx + 0x28]
	and	al, 1
	lea	rdi, [rdi]
	shl	al, 1
	and	sil, 0xfd
	or	sil, al
	mov	rsp, rsp
	mov	byte ptr [rdx + 0x28], sil
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rdx + 0x18]
	call	dev_from_mount_options
	mov	rdx, qword ptr [rbp - 0x70]
	mov	qword ptr [rdx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	qword ptr [rdx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	add	rax, 0x30
	nop	
	mov	qword ptr [rbp - 0xf0], rax
	lea	rdi, [rdi]
	jmp	.label_1320
.label_1321:
	mov	rdi, qword ptr [rbp - 0x40]
	nop	
	call	endmntent
	cmp	eax, 0
	nop	
	jne	.label_1308
	mov	rbp, rbp
	jmp	.label_1306
.label_1308:
	mov	rsp, rsp
	jmp	.label_1311
.label_1311:
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	qword ptr [rax], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1313
.label_1306:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], ecx
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	qword ptr [rax], 0
.label_1322:
	cmp	qword ptr [rbp - 0x78], 0
	lea	rdi, [rdi]
	je	.label_1316
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x78]
	call	free_mount_entry
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1322
.label_1316:
	mov	eax, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xf4], eax
	lea	rdi, [rdi]
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xf4]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb0], 0
.label_1313:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	add	rsp, 0x130
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415620

	.globl unescape_tab
	.type unescape_tab, @function
unescape_tab:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	strlen
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	qword ptr [rbp - 0x10], 0
.label_1330:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_1331
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x5c
	lea	rdi, [rdi]
	jne	.label_1327
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rax, 4
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1327
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	movsx	edx, byte ptr [rcx + rax + 1]
	nop	
	cmp	edx, 0x30
	jl	.label_1327
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movsx	edx, byte ptr [rcx + rax + 1]
	lea	rsi, [rsi]
	cmp	edx, 0x33
	jg	.label_1327
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rcx + rax + 2]
	cmp	edx, 0x30
	lea	rdi, [rdi]
	jl	.label_1327
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rcx + rax + 2]
	cmp	edx, 0x37
	jg	.label_1327
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rcx + rax + 3]
	lea	rsi, [rsi]
	cmp	edx, 0x30
	lea	rsi, [rsi]
	jl	.label_1327
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rcx + rax + 3]
	mov	rbp, rbp
	cmp	edx, 0x37
	nop	
	jg	.label_1327
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movsx	edx, byte ptr [rcx + rax + 1]
	sub	edx, 0x30
	shl	edx, 6
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	esi, byte ptr [rcx + rax + 2]
	lea	rsi, [rsi]
	sub	esi, 0x30
	shl	esi, 3
	mov	rsp, rsp
	add	edx, esi
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rcx + rax + 3]
	sub	esi, 0x30
	lea	rdi, [rdi]
	add	edx, esi
	mov	rbp, rbp
	mov	dil, dl
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], dil
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, 3
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1328
.label_1327:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dl, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], dl
.label_1328:
	jmp	.label_1329
.label_1329:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1330
.label_1331:
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415840

	.globl dev_from_mount_options
	.type dev_from_mount_options, @function
dev_from_mount_options:
	nop	
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415860

	.globl free_mount_entry
	.type free_mount_entry, @function
free_mount_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 8]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x10]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	al, byte ptr [rdi + 0x28]
	shr	al, 2
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	rbp, rbp
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_1332
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x18]
	call	free
.label_1332:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4158f0

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
	jae	.label_1344
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_1342
.label_1344:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
.label_1342:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	jae	.label_1335
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1343
.label_1335:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x40], rax
.label_1343:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
.label_1339:
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_1340
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], 0
	nop	
	jmp	.label_1341
.label_1340:
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
	jge	.label_1334
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x22
	mov	rbp, rbp
	je	.label_1334
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
	jmp	.label_1341
.label_1334:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_1338
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_1341
.label_1338:
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	free
	movabs	rdi, 0x3fffffffffffffff
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], rdi
	ja	.label_1336
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	shl	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_1337
.label_1336:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x38], rax
	jae	.label_1333
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	jmp	.label_1345
.label_1333:
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0xc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_1341
.label_1345:
	jmp	.label_1337
.label_1337:
	lea	rdi, [rdi]
	jmp	.label_1339
.label_1341:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rsp, 0x70
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x415b30

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
	#Procedure 0x415b50

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
.label_1355:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1353
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
	jne	.label_1350
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	jne	.label_1356
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_1346
.label_1356:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1351
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_1349
.label_1351:
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_1357
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
	je	.label_1347
.label_1357:
	nop	
	mov	byte ptr [rbp - 0x21], 1
.label_1347:
	lea	rsi, [rsi]
	jmp	.label_1349
.label_1349:
	mov	rbp, rbp
	jmp	.label_1352
.label_1352:
	mov	rsp, rsp
	jmp	.label_1350
.label_1350:
	nop	
	jmp	.label_1354
.label_1354:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	jmp	.label_1355
.label_1353:
	test	byte ptr [rbp - 0x21], 1
	je	.label_1348
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], -2
	jmp	.label_1346
.label_1348:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_1346:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsp, 0x50
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x415d00

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
	jne	.label_1358
	movabs	rdi, OFFSET FLAT:.str_13
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
	nop	
	jmp	.label_1359
.label_1358:
	nop	
	movabs	rdi, OFFSET FLAT:.str.1_10
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
.label_1359:
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
	#Procedure 0x415de0

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	nop	
	movabs	rax, OFFSET FLAT:.str.2_7
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
.label_1362:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rax*8], 0
	lea	rsi, [rsi]
	je	.label_1364
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1363
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
	je	.label_1361
.label_1363:
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
	movabs	rsi, OFFSET FLAT:.str.3_7
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
	jmp	.label_1365
.label_1361:
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
	movabs	rsi, OFFSET FLAT:.str.4_5
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
.label_1365:
	jmp	.label_1360
.label_1360:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1362
.label_1364:
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
	#Procedure 0x415f90
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
	jl	.label_1366
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1367
.label_1366:
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
.label_1367:
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
	#Procedure 0x416050
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
.label_1370:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	je	.label_1372
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
	jne	.label_1369
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1368
.label_1369:
	lea	rdi, [rdi]
	jmp	.label_1371
.label_1371:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1370
.label_1372:
	nop	
	mov	qword ptr [rbp - 8], 0
.label_1368:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416120
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
	.align	16
	#Procedure 0x416170
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
	.align	16
	#Procedure 0x4161c0
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
	.align	16
	#Procedure 0x416210
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
	.align	16
	#Procedure 0x416250
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
	.align	16
	#Procedure 0x4162b0

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
	.align	16
	#Procedure 0x416310
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
	.align	16
	#Procedure 0x416360
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
	.align	16
	#Procedure 0x4163b0
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
	.align	16
	#Procedure 0x416410
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
	.align	16
	#Procedure 0x416460

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
	jne	.label_1373
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_1377
.label_1373:
	mov	rbp, rbp
	jmp	.label_1374
.label_1374:
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
	jne	.label_1375
	jmp	.label_1376
.label_1375:
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
	je	.label_1374
.label_1376:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x1a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_1377:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416550

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
	jne	.label_1380
	test	byte ptr [rbp - 0x15], 1
	je	.label_1379
	test	byte ptr [rbp - 0x16], 1
	lea	rsi, [rsi]
	jne	.label_1380
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_1379
.label_1380:
	nop	
	test	byte ptr [rbp - 0x15], 1
	mov	rsp, rsp
	jne	.label_1378
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1378:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0xffffffff
	jmp	.label_1381
.label_1379:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], 0
.label_1381:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x416630

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
	je	.label_1382
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
.label_1382:
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
	je	.label_1383
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
	ja	.label_1384
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
	jmp	.label_1385
.label_1384:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rdx
.label_1385:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x30]
	mov	rsp, rsp
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x1d4], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_1383:
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
	.align	16
	#Procedure 0x4168b0

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
	je	.label_1387
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_14
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_1388
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:.str.1_11
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1386
.label_1388:
	mov	byte ptr [rbp - 0xd], 0
.label_1386:
	jmp	.label_1387
.label_1387:
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
	#Procedure 0x416950

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
.label_1390:
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_1389
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
	jmp	.label_1390
.label_1389:
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
	.align	16
	#Procedure 0x4169e0

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
	jne	.label_1392
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_1392:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_1391
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.1_12
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_1391:
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
	#Procedure 0x416a60

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
	jg	.label_1393
	cmp	dword ptr [rbp - 4], 2
	jg	.label_1393
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
.label_1393:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416af0

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
	jge	.label_1398
	mov	rdi, qword ptr [rbp - 8]
	call	fclose
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	jmp	.label_1396
.label_1398:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_1395
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
	je	.label_1394
.label_1395:
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_1394
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_1394:
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_1397
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
.label_1397:
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x10], eax
.label_1396:
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
	#Procedure 0x416c10

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
	je	.label_1399
	mov	rdi, qword ptr [rbp - 8]
	call	__freading
	cmp	eax, 0
	jne	.label_1400
.label_1399:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_1401
.label_1400:
	mov	rdi, qword ptr [rbp - 8]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
.label_1401:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416c80

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
	je	.label_1402
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
.label_1402:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416ce0

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
	jne	.label_1403
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_1403
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1403
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
	jne	.label_1404
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	jmp	.label_1405
.label_1404:
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
	jmp	.label_1405
.label_1403:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
.label_1405:
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
	#Procedure 0x416df0

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
	ja	.label_1406
	jmp	.label_1408
.label_1408:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1407
.label_1406:
	lea	rsi, [rsi]
	jmp	.label_1407
.label_1407:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416e50

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
	.align	16
	#Procedure 0x416e90

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
	je	.label_1413
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
.label_1413:
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
	je	.label_1417
	nop	
	jmp	.label_1429
.label_1429:
	nop	
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x214], eax
	je	.label_1430
	jmp	.label_1434
.label_1417:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x1c0]
	mov	ecx, dword ptr [rbp - 0x1c0]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0xd8], rax
	nop	
	mov	dword ptr [rbp - 0x1f8], ecx
	ja	.label_1435
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
	jmp	.label_1412
.label_1435:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rcx, 8
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xe8], rdx
.label_1412:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0xe0], ecx
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0xe0]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_1424
.label_1430:
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
	ja	.label_1411
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
	jmp	.label_1426
.label_1411:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_1426:
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
	jmp	.label_1424
.label_1434:
	mov	eax, dword ptr [rbp - 0x1a4]
	test	eax, eax
	nop	
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	je	.label_1418
	nop	
	jmp	.label_1428
.label_1428:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	je	.label_1409
	jmp	.label_1432
.label_1432:
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	je	.label_1418
	nop	
	jmp	.label_1438
.label_1438:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 3
	nop	
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	je	.label_1409
	nop	
	jmp	.label_1416
.label_1416:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x234], eax
	nop	
	je	.label_1418
	lea	rsi, [rsi]
	jmp	.label_1425
.label_1425:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	sub	eax, 8
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	je	.label_1418
	lea	rsi, [rsi]
	jmp	.label_1431
.label_1431:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_1409
	mov	rsp, rsp
	jmp	.label_1437
.label_1437:
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_1418
	jmp	.label_1410
.label_1410:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	eax, 0xb
	nop	
	mov	dword ptr [rbp - 0x23c], eax
	nop	
	je	.label_1409
	lea	rsi, [rsi]
	jmp	.label_1422
.label_1422:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0x400
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	je	.label_1418
	jmp	.label_1421
.label_1421:
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_1409
	mov	rsp, rsp
	jmp	.label_1433
.label_1433:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	sub	eax, 0x402
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	je	.label_1418
	lea	rsi, [rsi]
	jmp	.label_1439
.label_1439:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_1418
	nop	
	jmp	.label_1420
.label_1420:
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x240], eax
	lea	rdi, [rdi]
	jne	.label_1423
	lea	rdi, [rdi]
	jmp	.label_1409
.label_1409:
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0x1a4]
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	fcntl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], eax
	lea	rsi, [rsi]
	jmp	.label_1414
.label_1418:
	nop	
	lea	rax, [rbp - 0x1c0]
	nop	
	mov	ecx, dword ptr [rbp - 0x1c0]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0xf0], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], ecx
	lea	rsi, [rsi]
	ja	.label_1436
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
	jmp	.label_1415
.label_1436:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x208], rdx
.label_1415:
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
	jmp	.label_1414
.label_1423:
	lea	rax, [rbp - 0x1c0]
	mov	ecx, dword ptr [rbp - 0x1c0]
	lea	rsi, [rsi]
	cmp	ecx, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x238], ecx
	lea	rdi, [rdi]
	ja	.label_1419
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
	jmp	.label_1427
.label_1419:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x90], rdx
.label_1427:
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
.label_1414:
	jmp	.label_1424
.label_1424:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	add	rsp, 0x240
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4174f0

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
	.align	16
	#Procedure 0x417540

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
	jg	.label_1440
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
	jle	.label_1447
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_1442
.label_1447:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_1444
.label_1442:
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jl	.label_1448
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_1448:
	mov	rbp, rbp
	jmp	.label_1444
.label_1444:
	jmp	.label_1445
.label_1440:
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
.label_1445:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x18]
	jg	.label_1441
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	mov	rsp, rsp
	jne	.label_1441
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0x18]
	mov	al, 0
	call	fcntl
	nop	
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x14], 0
	jl	.label_1446
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
	jne	.label_1443
.label_1446:
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
.label_1443:
	jmp	.label_1441
.label_1441:
	mov	eax, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x417770

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	16
	#Procedure 0x417780

	.globl __lstat
	.type __lstat, @function
__lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section .text
	.align	16
	#Procedure 0x417790

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat