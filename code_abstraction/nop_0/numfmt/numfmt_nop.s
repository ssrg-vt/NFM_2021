	.section	.text
	.align	16
	#Procedure 0x401910

	.globl usage
	.type usage, @function
usage:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0xb8
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], edi
	nop	
	cmp	dword ptr [rbp - 0xc], 0
	je	.label_8
	jmp	.label_10
.label_10:
	movabs	rdi, OFFSET FLAT:.str
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x18], rax
	call	gettext
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [program_name]]
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, rax
	mov	al, 0
	nop	
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_9
.label_8:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.1
	mov	rsp, rsp
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [program_name]]
	nop	
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.2
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:.str.3
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.4
	mov	dword ptr [rbp - 0x28], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.5
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.6
	mov	dword ptr [rbp - 0x30], eax
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.7
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.8
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.9
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.10
	nop	
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.11
	mov	dword ptr [rbp - 0x44], eax
	lea	rsi, [rsi]
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.12
	mov	dword ptr [rbp - 0x48], eax
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.13
	mov	dword ptr [rbp - 0x4c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.14
	mov	dword ptr [rbp - 0x50], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.15
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.16
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x58], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.17
	nop	
	mov	dword ptr [rbp - 0x5c], eax
	nop	
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.18
	nop	
	mov	dword ptr [rbp - 0x60], eax
	nop	
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.19
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x64], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.20
	mov	dword ptr [rbp - 0x68], eax
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.21
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x6c], eax
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.22
	nop	
	mov	dword ptr [rbp - 0x70], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.23
	mov	dword ptr [rbp - 0x74], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.24
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x78], eax
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.25
	mov	dword ptr [rbp - 0x7c], eax
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.26
	mov	dword ptr [rbp - 0x80], eax
	mov	rbp, rbp
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.27
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.28
	mov	dword ptr [rbp - 0x88], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	rbp, rbp
	mov	al, 0
	nop	
	call	printf
	movabs	rdi, OFFSET FLAT:.str.29
	mov	dword ptr [rbp - 0x8c], eax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [program_name]]
	nop	
	mov	r8,  qword ptr [word ptr [program_name]]
	lea	rsi, [rsi]
	mov	r9,  qword ptr [word ptr [program_name]]
	mov	rdi,  qword ptr [word ptr [program_name]]
	nop	
	mov	r10,  qword ptr [word ptr [program_name]]
	mov	r11,  qword ptr [word ptr [program_name]]
	lea	rdi, [rdi]
	mov	rbx,  qword ptr [word ptr [program_name]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rdi
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], r11
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rbx
	lea	rdi, [rdi]
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.30
	mov	dword ptr [rbp - 0x9c], eax
	call	emit_ancillary_info
.label_9:
	mov	edi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x401ec0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.54
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f00

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rax
.label_13:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x21], cl
	je	.label_15
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_15:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x21]
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_16
	jmp	.label_12
.label_16:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_13
.label_12:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_14
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_14:
	movabs	rdi, OFFSET FLAT:.str.63
	call	gettext
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.17_0
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str.18_0
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	printf
	mov	edi, 5
	nop	
	xor	ecx, ecx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x28], eax
	call	setlocale
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_11
	movabs	rsi, OFFSET FLAT:.str.65
	lea	rsi, [rsi]
	mov	eax, 3
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	strncmp
	cmp	eax, 0
	je	.label_11
	movabs	rdi, OFFSET FLAT:.str.66
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_11:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.67
	call	gettext
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.18_0
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	printf
	movabs	rdi, OFFSET FLAT:.str.68
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x30], eax
	lea	rsi, [rsi]
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.69
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 8]
	cmove	rdx, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdi
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x402110

	.globl main
	.type main, @function
main:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], 1
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.32
	movabs	rsi, OFFSET FLAT:.str.33
	lea	rdi, [rdi]
	cmp	rax, 0
	setne	cl
	xor	cl, 0xff
	lea	rdi, [rdi]
	xor	cl, 0xff
	lea	rdi, [rdi]
	and	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x15], cl
	lea	rdi, [rdi]
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.32
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	nop	
	call	textdomain
	mov	edi, 0x10000
	mov	qword ptr [rbp - 0x50], rax
	call	rpl_nl_langinfo
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [decimal_point]],  rax
	nop	
	cmp	qword ptr [word ptr [decimal_point]],  0
	mov	rsp, rsp
	je	.label_81
	mov	rdi,  qword ptr [word ptr [decimal_point]]
	mov	rsp, rsp
	call	strlen
	lea	rdi, [rdi]
	cmp	rax, 0
	jne	.label_90
.label_81:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.34
	mov	rsp, rsp
	mov	qword ptr [word ptr [decimal_point]],  rax
.label_90:
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [decimal_point]]
	mov	qword ptr [rbp - 0x58], rdi
	mov	rdi, rax
	mov	rbp, rbp
	call	strlen
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	mov	dword ptr [dword ptr [decimal_point_length]],  ecx
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	atexit
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], eax
.label_88:
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str.35
	movabs	rcx, OFFSET FLAT:longopts
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r8d, eax
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1c], -1
	jne	.label_65
	lea	rsi, [rsi]
	jmp	.label_42
.label_65:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1c]
	mov	ecx, eax
	lea	rsi, [rsi]
	sub	ecx, 0xffffff7d
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x60], eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x64], ecx
	nop	
	je	.label_80
	jmp	.label_47
.label_47:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0xffffff7e
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x68], eax
	mov	rsp, rsp
	je	.label_48
	jmp	.label_52
.label_52:
	nop	
	mov	eax, dword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_53
	jmp	.label_54
.label_54:
	mov	eax, dword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	sub	eax, 0x7a
	mov	dword ptr [rbp - 0x70], eax
	je	.label_55
	mov	rbp, rbp
	jmp	.label_57
.label_57:
	mov	eax, dword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	sub	eax, 0x80
	nop	
	mov	dword ptr [rbp - 0x74], eax
	je	.label_61
	lea	rsi, [rsi]
	jmp	.label_64
.label_64:
	mov	eax, dword ptr [rbp - 0x60]
	mov	rbp, rbp
	sub	eax, 0x81
	mov	dword ptr [rbp - 0x78], eax
	je	.label_66
	lea	rsi, [rsi]
	jmp	.label_69
.label_69:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x82
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsp, rsp
	je	.label_70
	jmp	.label_71
.label_71:
	mov	eax, dword ptr [rbp - 0x60]
	mov	rbp, rbp
	sub	eax, 0x83
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x80], eax
	je	.label_73
	jmp	.label_62
.label_62:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x84
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x84], eax
	mov	rbp, rbp
	je	.label_75
	jmp	.label_77
.label_77:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x85
	mov	dword ptr [rbp - 0x88], eax
	lea	rdi, [rdi]
	je	.label_78
	lea	rsi, [rsi]
	jmp	.label_83
.label_83:
	mov	eax, dword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	sub	eax, 0x86
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_84
	jmp	.label_85
.label_85:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	sub	eax, 0x87
	mov	dword ptr [rbp - 0x90], eax
	je	.label_74
	jmp	.label_19
.label_19:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x88
	mov	dword ptr [rbp - 0x94], eax
	mov	rbp, rbp
	je	.label_21
	jmp	.label_24
.label_24:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x89
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], eax
	nop	
	je	.label_25
	jmp	.label_28
.label_28:
	mov	eax, dword ptr [rbp - 0x60]
	mov	rsp, rsp
	sub	eax, 0x8a
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_29
	lea	rdi, [rdi]
	jmp	.label_32
.label_32:
	nop	
	mov	eax, dword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	sub	eax, 0x8b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa0], eax
	mov	rbp, rbp
	je	.label_34
	jmp	.label_58
.label_58:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x60]
	nop	
	sub	eax, 0x8c
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_39
	jmp	.label_87
.label_87:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x8d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa8], eax
	nop	
	je	.label_43
	jmp	.label_46
.label_61:
	movabs	rdi, OFFSET FLAT:.str.36
	movabs	rdx, OFFSET FLAT:scale_from_args
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:scale_from_types
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	lea	rdi, [rdi]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + scale_from_types]]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [scale_from]],  r10d
	jmp	.label_18
.label_66:
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	unit_to_umax
	mov	qword ptr [word ptr [from_unit_size]],  rax
	mov	rsp, rsp
	jmp	.label_18
.label_70:
	movabs	rdi, OFFSET FLAT:.str.37
	movabs	rdx, OFFSET FLAT:scale_to_args
	nop	
	movabs	rax, OFFSET FLAT:scale_to_types
	mov	ecx, 4
	mov	rbp, rbp
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	lea	rdi, [rdi]
	mov	rcx, rax
	nop	
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + scale_to_types]]
	mov	dword ptr [dword ptr [scale_to]],  r10d
	mov	rsp, rsp
	jmp	.label_18
.label_73:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [optarg]]
	nop	
	call	unit_to_umax
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [to_unit_size]],  rax
	jmp	.label_18
.label_75:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.38
	movabs	rdx, OFFSET FLAT:round_args
	movabs	rax, OFFSET FLAT:round_types
	mov	rbp, rbp
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	rsp, rsp
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rbp, rbp
	mov	rcx, rax
	call	__xargmatch_internal
	lea	rsi, [rsi]
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + round_types]]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [round_style]],  r10d
	mov	rsp, rsp
	jmp	.label_18
.label_84:
	mov	dword ptr [dword ptr [grouping]],  1
	jmp	.label_18
.label_74:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, eax
	lea	rsi, [rsi]
	mov	edx, 0xa
	movabs	rcx, OFFSET FLAT:padding_width
	lea	rdi, [rdi]
	movabs	r8, OFFSET FLAT:.str_0
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	rsp, rsp
	call	xstrtol
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_35
	cmp	qword ptr [word ptr [padding_width]],  0
	jne	.label_36
.label_35:
	movabs	rdi, OFFSET FLAT:.str.39
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [optarg]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rbp, rbp
	call	quote
	mov	rbp, rbp
	mov	edi, 1
	xor	esi, esi
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_36:
	cmp	qword ptr [word ptr [padding_width]],  0
	jge	.label_51
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	dword ptr [dword ptr [padding_alignment]],  0
	sub	rcx,  qword ptr [word ptr [padding_width]]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [padding_width]],  rcx
.label_51:
	lea	rdi, [rdi]
	jmp	.label_18
.label_21:
	mov	rsp, rsp
	cmp	qword ptr [word ptr [n_frp]],  0
	je	.label_59
	nop	
	movabs	rdi, OFFSET FLAT:.str.40
	mov	rbp, rbp
	call	gettext
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	nop	
	call	error
.label_59:
	mov	rbp, rbp
	mov	esi, 1
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	set_fields
	jmp	.label_18
.label_53:
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_72
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	nop	
	je	.label_72
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.41
	call	gettext
	mov	edi, 1
	xor	esi, esi
	nop	
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
.label_72:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [delimiter]],  ecx
	mov	rsp, rsp
	jmp	.label_18
.label_55:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [line_delim]],  0
	jmp	.label_18
.label_78:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [suffix]],  rax
	lea	rdi, [rdi]
	jmp	.label_18
.label_25:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [debug]],  1
	jmp	.label_18
.label_29:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [dev_debug]],  1
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [debug]],  1
	jmp	.label_18
.label_34:
	mov	rbp, rbp
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_27
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, eax
	nop	
	mov	edx, 0xa
	movabs	rcx, OFFSET FLAT:header
	lea	rsi, [rsi]
	movabs	r8, OFFSET FLAT:.str_0
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	xstrtoumax
	cmp	eax, 0
	jne	.label_37
	mov	rbp, rbp
	cmp	qword ptr [word ptr [header]],  0
	lea	rdi, [rdi]
	jne	.label_26
.label_37:
	nop	
	movabs	rdi, OFFSET FLAT:.str.42
	lea	rdi, [rdi]
	call	gettext
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb8], rax
	call	quote
	lea	rdi, [rdi]
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_26:
	jmp	.label_50
.label_27:
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [header]],  1
.label_50:
	lea	rdi, [rdi]
	jmp	.label_18
.label_39:
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [format_str]],  rax
	mov	rsp, rsp
	jmp	.label_18
.label_43:
	movabs	rdi, OFFSET FLAT:.str.43
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:inval_args
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:inval_types
	mov	ecx, 4
	mov	r8d, ecx
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [optarg]]
	nop	
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	mov	rbp, rbp
	call	__xargmatch_internal
	lea	rsi, [rsi]
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + inval_types]]
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [inval_style]],  r10d
	nop	
	jmp	.label_18
.label_48:
	xor	edi, edi
	call	usage
.label_80:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.30
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str.17_0
	movabs	r8, OFFSET FLAT:.str.45
	nop	
	xor	eax, eax
	mov	r9d, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	al, 0
	lea	rsi, [rsi]
	call	version_etc
	lea	rsi, [rsi]
	xor	edi, edi
	call	exit
.label_46:
	mov	edi, 1
	nop	
	call	usage
.label_18:
	mov	rbp, rbp
	jmp	.label_88
.label_42:
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [format_str]],  0
	nop	
	je	.label_20
	cmp	dword ptr [dword ptr [grouping]],  0
	lea	rsi, [rsi]
	je	.label_20
	movabs	rdi, OFFSET FLAT:.str.46
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_20:
	test	byte ptr [byte ptr [debug]],  1
	nop	
	je	.label_31
	mov	rbp, rbp
	test	byte ptr [rbp - 0x15], 1
	lea	rdi, [rdi]
	jne	.label_31
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.47
	nop	
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_31:
	nop	
	test	byte ptr [byte ptr [debug]],  1
	je	.label_38
	cmp	dword ptr [dword ptr [scale_from]],  0
	jne	.label_38
	cmp	dword ptr [dword ptr [scale_to]],  0
	lea	rdi, [rdi]
	jne	.label_38
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [grouping]],  0
	mov	rsp, rsp
	jne	.label_38
	nop	
	cmp	qword ptr [word ptr [padding_width]],  0
	jne	.label_38
	mov	rsp, rsp
	cmp	qword ptr [word ptr [format_str]],  0
	mov	rbp, rbp
	jne	.label_38
	movabs	rdi, OFFSET FLAT:.str.48
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	nop	
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_38:
	cmp	qword ptr [word ptr [format_str]],  0
	je	.label_56
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [format_str]]
	call	parse_format_string
.label_56:
	cmp	dword ptr [dword ptr [grouping]],  0
	je	.label_63
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [scale_to]],  0
	lea	rdi, [rdi]
	je	.label_67
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.49
	lea	rsi, [rsi]
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_67:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [debug]],  1
	je	.label_23
	mov	edi, 0x10001
	call	rpl_nl_langinfo
	mov	rdi, rax
	call	strlen
	cmp	rax, 0
	jne	.label_23
	nop	
	movabs	rdi, OFFSET FLAT:.str.50
	lea	rsi, [rsi]
	call	gettext
	mov	rsp, rsp
	xor	ecx, ecx
	nop	
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_23:
	nop	
	jmp	.label_63
.label_63:
	mov	rdi,  qword ptr [word ptr [padding_width]]
	lea	rdi, [rdi]
	call	setup_padding_buffer
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	cmp	qword ptr [word ptr [padding_width]],  0
	mov	byte ptr [rbp - 0xb9], cl
	jne	.label_86
	cmp	dword ptr [dword ptr [delimiter]],  0x80
	sete	al
	mov	byte ptr [rbp - 0xb9], al
.label_86:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xb9]
	and	al, 1
	movzx	ecx, al
	mov	rbp, rbp
	mov	dword ptr [dword ptr [auto_padding]],  ecx
	cmp	dword ptr [dword ptr [inval_style]],  0
	nop	
	je	.label_22
	mov	dword ptr [dword ptr [conv_exit_code]],  0
.label_22:
	mov	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	eax,  dword ptr [dword ptr [optind]]
	jle	.label_30
	test	byte ptr [byte ptr [debug]],  1
	je	.label_41
	cmp	qword ptr [word ptr [header]],  0
	mov	rbp, rbp
	je	.label_41
	movabs	rdi, OFFSET FLAT:.str.51
	call	gettext
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_41:
	jmp	.label_44
.label_44:
	nop	
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_45
	mov	esi, 1
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rcx + rax*8]
	call	process_line
	lea	rsi, [rsi]
	and	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	mov	dword ptr [dword ptr [optind]],  eax
	jmp	.label_44
.label_45:
	nop	
	jmp	.label_17
.label_30:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x30], 0
.label_79:
	xor	eax, eax
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [header]]
	lea	rdi, [rdi]
	mov	rsi, rdx
	add	rsi, -1
	mov	rsp, rsp
	mov	qword ptr [word ptr [header]],  rsi
	mov	rsp, rsp
	cmp	rdx, 0
	mov	byte ptr [rbp - 0xba], cl
	je	.label_60
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x28]
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x30]
	lea	rsi, [rsi]
	movzx	edx,  byte ptr [byte ptr [line_delim]]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [stdin]]
	call	getdelim
	cmp	rax, 0
	mov	rsp, rsp
	setg	r8b
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xba], r8b
.label_60:
	nop	
	mov	al, byte ptr [rbp - 0xba]
	nop	
	test	al, 1
	jne	.label_68
	lea	rdi, [rdi]
	jmp	.label_76
.label_68:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xc0], eax
	lea	rdi, [rdi]
	jmp	.label_79
.label_76:
	lea	rsi, [rsi]
	jmp	.label_82
.label_82:
	lea	rdi, [rbp - 0x28]
	lea	rsi, [rbp - 0x30]
	mov	rbp, rbp
	movzx	edx,  byte ptr [byte ptr [line_delim]]
	mov	rcx,  qword ptr [word ptr [stdin]]
	nop	
	call	getdelim
	mov	qword ptr [rbp - 0x38], rax
	cmp	rax, 0
	jle	.label_89
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	movzx	esi,  byte ptr [byte ptr [line_delim]]
	cmp	edx, esi
	sete	dil
	and	dil, 1
	mov	byte ptr [rbp - 0x39], dil
	mov	rbp, rbp
	test	byte ptr [rbp - 0x39], 1
	je	.label_91
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	sub	rax, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0
.label_91:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	al, byte ptr [rbp - 0x39]
	and	al, 1
	movzx	esi, al
	lea	rsi, [rsi]
	call	process_line
	and	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_82
.label_89:
	mov	rdi,  qword ptr [word ptr [stdin]]
	mov	rbp, rbp
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_40
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.52
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc4], esi
	call	gettext
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xc4]
	mov	rdx, rax
	nop	
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_40:
	jmp	.label_17
.label_17:
	test	byte ptr [byte ptr [debug]],  1
	lea	rdi, [rdi]
	je	.label_49
	nop	
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_49
	movabs	rdi, OFFSET FLAT:.str.53
	mov	rsp, rsp
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_49:
	mov	dword ptr [rbp - 0x40], 0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_33
	cmp	dword ptr [dword ptr [inval_style]],  2
	je	.label_33
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [inval_style]],  3
	je	.label_33
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40], 2
.label_33:
	nop	
	mov	eax, dword ptr [rbp - 0x40]
	mov	rsp, rsp
	add	rsp, 0xd0
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x402f60

	.globl unit_to_umax
	.type unit_to_umax, @function
unit_to_umax:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x50
	nop	
	movabs	rax, OFFSET FLAT:.str.93
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	call	strlen
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	je	.label_96
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_96
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 2
	mov	rdi, rax
	mov	rbp, rbp
	call	xmalloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x28]
	nop	
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	memcpy
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x69
	jne	.label_95
	nop	
	mov	eax, 2
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	ja	.label_95
	mov	rax, qword ptr [rbp - 0x30]
	movsx	edi, byte ptr [rax - 1]
	mov	rbp, rbp
	call	c_isdigit
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_95
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	byte ptr [rax], 0
	jmp	.label_93
.label_95:
	nop	
	movabs	rax, OFFSET FLAT:.str.94
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x30], rdx
	mov	byte ptr [rcx + 1], 0x42
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	rsp, rsp
	add	rdx, 1
	mov	qword ptr [rbp - 0x30], rdx
	mov	rsp, rsp
	mov	byte ptr [rcx + 1], 0
	mov	qword ptr [rbp - 0x40], rax
.label_93:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
.label_96:
	lea	rsi, [rbp - 0x30]
	mov	edx, 0xa
	mov	rsp, rsp
	lea	rcx, [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x40]
	call	xstrtoumax
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_92
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	nop	
	jne	.label_92
	cmp	qword ptr [rbp - 0x38], 0
	nop	
	jne	.label_94
.label_92:
	mov	rdi, qword ptr [rbp - 0x20]
	call	free
	nop	
	movabs	rdi, OFFSET FLAT:.str.95
	call	gettext
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x50], rax
	call	quote
	mov	edi, 1
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	call	error
.label_94:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	call	free
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403190

	.globl parse_format_string
	.type parse_format_string, @function
parse_format_string:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0xe0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	mov	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], 0
	mov	byte ptr [rbp - 0x31], 0
	nop	
	mov	qword ptr [rbp - 0x10], 0
.label_116:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 8]
	movsx	eax, byte ptr [rsi + rdx]
	mov	rsp, rsp
	cmp	eax, 0x25
	mov	byte ptr [rbp - 0x41], cl
	jne	.label_128
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax + 1]
	lea	rdi, [rdi]
	cmp	edx, 0x25
	setne	sil
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x41], sil
.label_128:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x41]
	xor	al, 0xff
	mov	rbp, rbp
	test	al, 1
	jne	.label_99
	jmp	.label_104
.label_99:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	cmp	byte ptr [rcx + rax], 0
	jne	.label_106
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.105
	call	gettext
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x50], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_106:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x25
	sete	sil
	nop	
	and	sil, 1
	mov	rsp, rsp
	movzx	edx, sil
	lea	rdi, [rdi]
	add	edx, 1
	lea	rsi, [rsi]
	movsxd	rax, edx
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_116
.label_104:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
.label_124:
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.106
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	strspn
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rsi + rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x27
	jne	.label_134
	mov	rbp, rbp
	mov	dword ptr [dword ptr [grouping]],  1
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_103
.label_134:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x30
	lea	rsi, [rsi]
	jne	.label_109
	mov	byte ptr [rbp - 0x31], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_112
.label_109:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_118
	jmp	.label_121
.label_118:
	jmp	.label_112
.label_112:
	mov	rbp, rbp
	jmp	.label_103
.label_103:
	jmp	.label_124
.label_121:
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x30]
	mov	rbp, rbp
	mov	edx, 0xa
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	strtol
	mov	qword ptr [rbp - 0x28], rax
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	nop	
	jne	.label_129
	movabs	rdi, OFFSET FLAT:.str.107
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	call	quote
	nop	
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_129:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x10]
	cmp	rax, rcx
	mov	rsp, rsp
	je	.label_101
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_101
	nop	
	test	byte ptr [byte ptr [debug]],  1
	je	.label_111
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [padding_width]],  0
	je	.label_111
	test	byte ptr [rbp - 0x31], 1
	je	.label_114
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	jg	.label_111
.label_114:
	movabs	rdi, OFFSET FLAT:.str.108
	lea	rdi, [rdi]
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_111:
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jge	.label_125
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	nop	
	mov	dword ptr [dword ptr [padding_alignment]],  0
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [word ptr [padding_width]],  rcx
	nop	
	jmp	.label_100
.label_125:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x31], 1
	lea	rdi, [rdi]
	je	.label_130
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [word ptr [zero_padding_width]],  rax
	jmp	.label_123
.label_130:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [word ptr [padding_width]],  rax
.label_123:
	jmp	.label_100
.label_100:
	jmp	.label_101
.label_101:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	nop	
	movsx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	cmp	edx, 0
	jne	.label_126
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.109
	call	gettext
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	nop	
	call	quote
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	rdx, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_126:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2e
	jne	.label_122
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	call	__errno_location
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x30]
	mov	rbp, rbp
	mov	edx, 0xa
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	nop	
	call	strtol
	mov	qword ptr [word ptr [user_precision]],  rax
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	lea	rsi, [rsi]
	je	.label_102
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [user_precision]],  0
	jl	.label_102
	lea	rsi, [rsi]
	mov	rax, -1
	cmp	rax,  qword ptr [word ptr [user_precision]]
	lea	rdi, [rdi]
	jb	.label_102
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax]
	movsxd	rax, edx
	mov	qword ptr [rbp - 0x68], rax
	lea	rsi, [rsi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x68]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 1
	mov	rsp, rsp
	cmp	edx, 0
	jne	.label_102
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0x2b
	jne	.label_119
.label_102:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.110
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x70], rax
	mov	rsp, rsp
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_119:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	sub	rax, rcx
	mov	qword ptr [rbp - 0x10], rax
.label_122:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x66
	mov	rbp, rbp
	je	.label_131
	movabs	rdi, OFFSET FLAT:.str.111
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	nop	
	call	error
.label_131:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
.label_133:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	nop	
	je	.label_98
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rcx + rax]
	nop	
	cmp	edx, 0x25
	nop	
	jne	.label_115
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	movsx	edx, byte ptr [rcx + rax + 1]
	nop	
	cmp	edx, 0x25
	je	.label_115
	movabs	rdi, OFFSET FLAT:.str.112
	nop	
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rax
	nop	
	call	quote
	mov	edi, 1
	xor	esi, esi
	nop	
	mov	rdx, qword ptr [rbp - 0x80]
	nop	
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_115:
	jmp	.label_132
.label_132:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	cmp	edx, 0x25
	sete	sil
	and	sil, 1
	movzx	edx, sil
	nop	
	add	edx, 1
	lea	rsi, [rsi]
	movsxd	rax, edx
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_133
.label_98:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	je	.label_105
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	call	xstrndup
	mov	qword ptr [word ptr [format_str_prefix]],  rax
.label_105:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_110
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdi, rax
	call	xstrdup
	mov	qword ptr [word ptr [format_str_suffix]],  rax
.label_110:
	mov	rsp, rsp
	jmp	.label_120
.label_120:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_113
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x88], rax
	lea	rsi, [rsi]
	call	quote_n
	movabs	rsi, OFFSET FLAT:.str.117
	movabs	rcx, OFFSET FLAT:.str.116
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str.115
	movabs	r8, OFFSET FLAT:.str.114
	cmp	dword ptr [dword ptr [grouping]],  0
	cmovne	rdx, r8
	nop	
	mov	r8,  qword ptr [word ptr [padding_width]]
	cmp	dword ptr [dword ptr [padding_alignment]],  0
	nop	
	cmove	rsi, rcx
	mov	rsp, rsp
	cmp	qword ptr [word ptr [format_str_prefix]],  0
	mov	qword ptr [rbp - 0x90], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x98], r8
	mov	qword ptr [rbp - 0xa0], rsi
	nop	
	mov	qword ptr [rbp - 0xa8], rdx
	je	.label_127
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [format_str_prefix]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
	lea	rsi, [rsi]
	jmp	.label_107
.label_127:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_107
.label_107:
	nop	
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	mov	edi, 1
	mov	rbp, rbp
	mov	rsi, rax
	nop	
	call	quote_n
	cmp	qword ptr [word ptr [format_str_suffix]],  0
	nop	
	mov	qword ptr [rbp - 0xb8], rax
	je	.label_117
	mov	rax,  qword ptr [word ptr [format_str_suffix]]
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_97
.label_117:
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_97
.label_97:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc0]
	mov	edi, 2
	mov	rsi, rax
	lea	rsi, [rsi]
	call	quote_n
	nop	
	movabs	rsi, OFFSET FLAT:.str.113
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	r8, qword ptr [rbp - 0x98]
	mov	r9, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp - 0xb8]
	mov	qword ptr [rsp], r10
	mov	qword ptr [rsp + 8], rax
	mov	al, 0
	nop	
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc4], eax
.label_113:
	mov	rbp, rbp
	jmp	.label_108
.label_108:
	lea	rdi, [rdi]
	add	rsp, 0xe0
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a60

	.globl setup_padding_buffer
	.type setup_padding_buffer, @function
setup_padding_buffer:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi,  qword ptr [word ptr [padding_buffer_size]]
	lea	rdi, [rdi]
	cmp	rdi, qword ptr [rbp - 8]
	jbe	.label_135
	jmp	.label_136
.label_135:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [word ptr [padding_buffer_size]],  rax
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [padding_buffer]]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [padding_buffer_size]]
	call	xrealloc
	mov	qword ptr [word ptr [padding_buffer]],  rax
.label_136:
	lea	rsi, [rsi]
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ad0

	.globl process_line
	.type process_line, @function
process_line:
	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], 1
.label_137:
	lea	rdi, [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	call	next_field
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_144
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	byte ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	call	process_field
	test	al, 1
	jne	.label_140
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x21], 0
.label_140:
	cmp	dword ptr [dword ptr [delimiter]],  0x80
	lea	rsi, [rsi]
	jne	.label_145
	lea	rdi, [rdi]
	mov	eax, 0x20
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	jmp	.label_142
.label_145:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [delimiter]]
	nop	
	mov	dword ptr [rbp - 0x28], eax
.label_142:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	edi, eax
	lea	rsi, [rsi]
	call	fputc_unlocked
	mov	rsi, qword ptr [rbp - 8]
	add	rsi, 1
	nop	
	mov	qword ptr [rbp - 8], rsi
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_141
.label_144:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	call	process_field
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_143
	mov	byte ptr [rbp - 0x21], 0
.label_143:
	nop	
	jmp	.label_138
.label_141:
	mov	rsp, rsp
	jmp	.label_137
.label_138:
	test	byte ptr [rbp - 9], 1
	mov	rbp, rbp
	je	.label_139
	mov	rbp, rbp
	movzx	edi,  byte ptr [byte ptr [line_delim]]
	mov	rsp, rsp
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x30], eax
.label_139:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	eax, al
	nop	
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403c40

	.globl next_field
	.type next_field, @function
next_field:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [delimiter]],  0x80
	lea	rdi, [rdi]
	je	.label_146
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx,  dword ptr [dword ptr [delimiter]]
	lea	rsi, [rsi]
	je	.label_149
	lea	rsi, [rsi]
	jmp	.label_154
.label_154:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x19], cl
	je	.label_158
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx,  dword ptr [dword ptr [delimiter]]
	setne	dl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x19], dl
.label_158:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	mov	rbp, rbp
	jne	.label_155
	jmp	.label_159
.label_155:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_154
.label_159:
	lea	rdi, [rdi]
	jmp	.label_149
.label_149:
	mov	rbp, rbp
	jmp	.label_151
.label_146:
	lea	rsi, [rsi]
	jmp	.label_153
.label_153:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rdx]
	nop	
	cmp	eax, 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x1a], cl
	je	.label_156
	mov	rax, qword ptr [rbp - 0x18]
	movzx	edi, byte ptr [rax]
	call	field_sep
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x1a], al
.label_156:
	mov	al, byte ptr [rbp - 0x1a]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_152
	jmp	.label_157
.label_152:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_153
.label_157:
	jmp	.label_147
.label_147:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	movsx	eax, byte ptr [rdx]
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x1b], cl
	mov	rbp, rbp
	je	.label_148
	mov	rax, qword ptr [rbp - 0x18]
	movzx	edi, byte ptr [rax]
	mov	rsp, rsp
	call	field_sep
	xor	al, 0xff
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1b], al
.label_148:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x1b]
	test	al, 1
	jne	.label_160
	lea	rdi, [rdi]
	jmp	.label_150
.label_160:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_147
.label_150:
	jmp	.label_151
.label_151:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e10

	.globl process_field
	.type process_field, @function
process_field:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x50
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	fldz	
	lea	rdi, [rdi]
	fstp	xword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], 0
	nop	
	mov	byte ptr [rbp - 0x29], 1
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	include_field
	test	al, 1
	jne	.label_162
	mov	rsp, rsp
	jmp	.label_164
.label_162:
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x20]
	lea	rdx, [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	call	process_suffixed_number
	cmp	eax, 0
	setne	r8b
	mov	rbp, rbp
	and	r8b, 1
	mov	byte ptr [rbp - 0x29], r8b
	mov	rbp, rbp
	test	byte ptr [rbp - 0x29], 1
	lea	rdi, [rdi]
	je	.label_166
	fld	xword ptr [rbp - 0x20]
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, rsp
	fstp	xword ptr [rax]
	lea	rsi, [rsi]
	call	prepare_padded_number
	cmp	eax, 0
	mov	rsp, rsp
	setne	cl
	and	cl, 1
	nop	
	mov	byte ptr [rbp - 0x29], cl
.label_166:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x29], 1
	lea	rsi, [rsi]
	je	.label_161
	call	print_padded_number
	mov	rbp, rbp
	jmp	.label_163
.label_161:
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x30], eax
.label_163:
	jmp	.label_165
.label_164:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
.label_165:
	mov	al, byte ptr [rbp - 0x29]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	nop	
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f30

	.globl field_sep
	.type field_sep, @function
field_sep:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	nop	
	movzx	edi, byte ptr [rbp - 1]
	movsxd	rcx, edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rcx
	call	__ctype_b_loc
	mov	dl, 1
	nop	
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 1
	lea	rsi, [rsi]
	cmp	edi, 0
	mov	byte ptr [rbp - 0x11], dl
	mov	rbp, rbp
	jne	.label_167
	movzx	eax, byte ptr [rbp - 1]
	mov	rbp, rbp
	cmp	eax, 0xa
	mov	rbp, rbp
	sete	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11], cl
.label_167:
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	eax, al
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403fb0

	.globl include_field
	.type include_field, @function
include_field:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi,  qword ptr [word ptr [frp]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdi
	cmp	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	jne	.label_168
	cmp	qword ptr [rbp - 0x10], 1
	sete	al
	and	al, 1
	nop	
	mov	byte ptr [rbp - 1], al
	nop	
	jmp	.label_169
.label_168:
	nop	
	jmp	.label_172
.label_172:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], -1
	mov	rsp, rsp
	je	.label_170
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_171
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_171
	mov	byte ptr [rbp - 1], 1
	jmp	.label_169
.label_171:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_172
.label_170:
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
.label_169:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404070

	.globl process_suffixed_number
	.type process_suffixed_number, @function
process_suffixed_number:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	cmp	qword ptr [word ptr [suffix]],  0
	lea	rdi, [rdi]
	je	.label_180
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [suffix]]
	mov	qword ptr [rbp - 0x70], rax
	nop	
	call	strlen
	nop	
	mov	rdi, qword ptr [rbp - 0x70]
	cmp	rdi, rax
	mov	rbp, rbp
	jbe	.label_180
	xor	eax, eax
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x78], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rdx
	mov	rbp, rbp
	call	strlen
	mov	rcx, qword ptr [rbp - 0x80]
	nop	
	add	rcx, rax
	mov	rdi,  qword ptr [word ptr [suffix]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rcx
	mov	rsp, rsp
	call	strlen
	mov	rcx, qword ptr [rbp - 0x78]
	nop	
	sub	rcx, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi,  qword ptr [word ptr [suffix]]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_188
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0
	test	byte ptr [byte ptr [dev_debug]],  1
	lea	rsi, [rsi]
	je	.label_192
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax,  qword ptr [word ptr [suffix]]
	nop	
	mov	qword ptr [rbp - 0x90], rdi
	nop	
	mov	rdi, rax
	nop	
	call	quote
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.118
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	lea	rsi, [rsi]
	call	fprintf
	mov	dword ptr [rbp - 0x94], eax
.label_192:
	jmp	.label_187
.label_187:
	jmp	.label_179
.label_188:
	lea	rdi, [rdi]
	jmp	.label_190
.label_190:
	mov	rsp, rsp
	test	byte ptr [byte ptr [dev_debug]],  1
	lea	rsi, [rsi]
	je	.label_191
	movabs	rsi, OFFSET FLAT:.str.119
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	mov	dword ptr [rbp - 0x98], eax
.label_191:
	lea	rsi, [rsi]
	jmp	.label_194
.label_194:
	jmp	.label_179
.label_179:
	jmp	.label_180
.label_180:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
.label_186:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	movsx	eax, byte ptr [rdx]
	mov	rsp, rsp
	cmp	eax, 0
	mov	byte ptr [rbp - 0x99], cl
	je	.label_182
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	lea	rdi, [rdi]
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0xa8], rcx
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	movzx	edi, word ptr [rax + rcx*2]
	lea	rdi, [rdi]
	and	edi, 1
	cmp	edi, 0
	nop	
	setne	dl
	nop	
	mov	byte ptr [rbp - 0x99], dl
.label_182:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x99]
	test	al, 1
	mov	rsp, rsp
	jne	.label_193
	jmp	.label_184
.label_193:
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_186
.label_184:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rax, rcx
	lea	rsi, [rsi]
	mov	edx, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], edx
	cmp	dword ptr [dword ptr [auto_padding]],  0
	je	.label_177
	cmp	dword ptr [rbp - 0x34], 0
	ja	.label_195
	cmp	qword ptr [rbp - 0x20], 1
	lea	rdi, [rdi]
	jle	.label_174
.label_195:
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [padding_width]],  rax
	mov	rdi,  qword ptr [word ptr [padding_width]]
	mov	rbp, rbp
	call	setup_padding_buffer
	mov	rbp, rbp
	jmp	.label_183
.label_174:
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [padding_width]],  0
.label_183:
	nop	
	jmp	.label_189
.label_189:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_196
	nop	
	movabs	rsi, OFFSET FLAT:.str.120
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rdx,  qword ptr [word ptr [padding_width]]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xac], eax
.label_196:
	jmp	.label_175
.label_175:
	jmp	.label_177
.label_177:
	lea	rsi, [rbp - 0x50]
	fldz	
	fstp	xword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	parse_human_number
	nop	
	mov	dword ptr [rbp - 0x54], eax
	nop	
	cmp	dword ptr [rbp - 0x54], 1
	jne	.label_173
	mov	rbp, rbp
	test	byte ptr [byte ptr [debug]],  1
	je	.label_173
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.121
	nop	
	call	gettext
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rbp, rbp
	call	quote
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
.label_173:
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [from_unit_size]],  1
	nop	
	jne	.label_178
	mov	rbp, rbp
	cmp	qword ptr [word ptr [to_unit_size]],  1
	je	.label_176
.label_178:
	lea	rsi, [rsi]
	fld	xword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + from_unit_size]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	nop	
	test	rax, rax
	nop	
	setns	cl
	mov	rsp, rsp
	movzx	edx, cl
	mov	eax, edx
	fld	dword ptr [dword ptr [+ (rax * 4) + label_185]]
	fild	qword ptr [rbp - 0x68]
	faddp	st(1)
	fmulp	st(1)
	mov	rax,  qword ptr [word ptr [rip + to_unit_size]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	setns	cl
	mov	rsp, rsp
	movzx	edx, cl
	mov	eax, edx
	mov	rsp, rsp
	fld	dword ptr [dword ptr [+ (rax * 4) + label_185]]
	mov	rbp, rbp
	fild	qword ptr [rbp - 0x60]
	faddp	st(1)
	fdivp	st(1)
	fstp	xword ptr [rbp - 0x50]
.label_176:
	mov	al, 1
	nop	
	fld	xword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	fstp	xword ptr [rcx]
	nop	
	cmp	dword ptr [rbp - 0x54], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb9], al
	mov	rsp, rsp
	je	.label_181
	cmp	dword ptr [rbp - 0x54], 1
	nop	
	sete	al
	mov	byte ptr [rbp - 0xb9], al
.label_181:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb9]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	lea	rsi, [rsi]
	add	rsp, 0xc0
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x404510

	.globl prepare_padded_number
	.type prepare_padded_number, @function
prepare_padded_number:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x180
	lea	rsi, [rsi]
	fld	xword ptr [rbp + 0x10]
	fstp	xword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x28], rdi
	mov	rsp, rsp
	cmp	qword ptr [word ptr [user_precision]],  -1
	jne	.label_199
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xd0], rax
	jmp	.label_203
.label_199:
	mov	rax,  qword ptr [word ptr [user_precision]]
	mov	qword ptr [rbp - 0xd0], rax
.label_203:
	mov	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb8], rax
	fld	xword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, rsp
	lea	rsi, [rsi]
	fstp	xword ptr [rax]
	lea	rdi, [rdi]
	mov	edi, 0xa
	mov	rbp, rbp
	lea	rsi, [rbp - 0xbc]
	call	expld
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [scale_to]],  0
	fstp	xword ptr [rbp - 0xdc]
	nop	
	jne	.label_200
	nop	
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0xb8]
	cmp	rcx, 0x12
	jbe	.label_200
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [inval_style]],  3
	je	.label_202
	cmp	qword ptr [rbp - 0xb8], 0
	je	.label_208
	xor	eax, eax
	mov	edi,  dword ptr [dword ptr [rip + conv_exit_code]]
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.133
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe0], edi
	mov	rbp, rbp
	mov	rdi, rdx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xe4], eax
	mov	rsp, rsp
	call	gettext
	fld	xword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	rdx, rsp
	nop	
	fstp	xword ptr [rdx]
	mov	rsp, rsp
	xor	esi, esi
	mov	r8b, sil
	mov	edi, dword ptr [rbp - 0xe0]
	nop	
	mov	rdx, rax
	mov	al, r8b
	lea	rdi, [rdi]
	call	error
	lea	rdi, [rdi]
	jmp	.label_206
.label_208:
	xor	eax, eax
	mov	edi,  dword ptr [dword ptr [rip + conv_exit_code]]
	mov	ecx, OFFSET FLAT:.str.134
	mov	edx, ecx
	mov	dword ptr [rbp - 0xe8], edi
	mov	rbp, rbp
	mov	rdi, rdx
	mov	dword ptr [rbp - 0xec], eax
	nop	
	call	gettext
	lea	rsi, [rsi]
	fld	xword ptr [rbp - 0x20]
	nop	
	mov	rdx, rsp
	fstp	xword ptr [rdx]
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	sil, cl
	mov	edi, dword ptr [rbp - 0xe8]
	nop	
	mov	byte ptr [rbp - 0xed], sil
	nop	
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xed]
	lea	rdi, [rdi]
	call	error
.label_206:
	jmp	.label_202
.label_202:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
	jmp	.label_204
.label_200:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xbc], 0x1a
	lea	rsi, [rsi]
	jbe	.label_207
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [inval_style]],  3
	lea	rsi, [rsi]
	je	.label_205
	xor	eax, eax
	mov	edi,  dword ptr [dword ptr [rip + conv_exit_code]]
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.135
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xf4], edi
	mov	rdi, rdx
	mov	dword ptr [rbp - 0xf8], eax
	call	gettext
	lea	rsi, [rsi]
	fld	xword ptr [rbp - 0x20]
	mov	rdx, rsp
	nop	
	fstp	xword ptr [rdx]
	xor	ecx, ecx
	nop	
	mov	sil, cl
	mov	edi, dword ptr [rbp - 0xf4]
	mov	byte ptr [rbp - 0xf9], sil
	mov	esi, ecx
	mov	rsp, rsp
	mov	rdx, rax
	nop	
	mov	al, byte ptr [rbp - 0xf9]
	mov	rbp, rbp
	call	error
.label_205:
	mov	dword ptr [rbp - 4], 0
	mov	rbp, rbp
	jmp	.label_204
.label_207:
	mov	rbp, rbp
	lea	rsi, [rbp - 0xb0]
	lea	rsi, [rsi]
	fld	xword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	mov	ecx, eax
	mov	rsp, rsp
	mov	edx,  dword ptr [dword ptr [scale_to]]
	lea	rsi, [rsi]
	mov	r8d,  dword ptr [dword ptr [grouping]]
	mov	r9d,  dword ptr [dword ptr [round_style]]
	lea	rdi, [rdi]
	mov	rax, rsp
	lea	rdi, [rdi]
	fstp	xword ptr [rax]
	mov	edi, 0x80
	mov	eax, edi
	mov	rsp, rsp
	mov	edi, ecx
	nop	
	mov	dword ptr [rbp - 0x100], edx
	mov	rdx, rax
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x100]
	call	double_to_human
	nop	
	cmp	qword ptr [word ptr [suffix]],  0
	mov	rsp, rsp
	je	.label_212
	mov	eax, 0x80
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rbp, rbp
	lea	rdx, [rbp - 0xb0]
	nop	
	mov	rsi,  qword ptr [word ptr [suffix]]
	lea	rdi, [rdi]
	mov	rdi, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x108], rcx
	mov	qword ptr [rbp - 0x110], rdx
	mov	qword ptr [rbp - 0x118], rsi
	call	strlen
	nop	
	mov	rcx, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	sub	rcx, rax
	sub	rcx, 1
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x118]
	mov	rsp, rsp
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	strncat
	nop	
	mov	qword ptr [rbp - 0x120], rax
.label_212:
	mov	rbp, rbp
	jmp	.label_209
.label_209:
	mov	rbp, rbp
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_210
	mov	rsp, rsp
	lea	rdi, [rbp - 0xb0]
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	nop	
	fld	xword ptr [rbp - 0x20]
	nop	
	fstp	xword ptr [rbp - 0x12c]
	mov	qword ptr [rbp - 0x138], rax
	lea	rsi, [rsi]
	call	quote
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.136
	mov	rcx, rsp
	fld	xword ptr [rbp - 0x12c]
	fstp	xword ptr [rcx]
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.136
	nop	
	mov	esi, edx
	lea	rsi, [rsi]
	xor	edx, edx
	mov	r8b, dl
	mov	rcx, qword ptr [rbp - 0x138]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x140], rdi
	lea	rdi, [rdi]
	mov	rdi, rcx
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, r8b
	mov	rbp, rbp
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x144], eax
.label_210:
	jmp	.label_197
.label_197:
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [padding_width]],  0
	je	.label_198
	nop	
	lea	rdi, [rbp - 0xb0]
	nop	
	call	strlen
	cmp	rax,  qword ptr [word ptr [padding_width]]
	jae	.label_198
	lea	rcx, [rbp - 0xc8]
	mov	rsp, rsp
	mov	r9d, 2
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xb0]
	mov	rax,  qword ptr [word ptr [padding_width]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rsi,  qword ptr [word ptr [padding_buffer]]
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [padding_buffer_size]]
	mov	rsp, rsp
	mov	r8d,  dword ptr [dword ptr [padding_alignment]]
	lea	rdi, [rdi]
	call	mbsalign
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x150], rax
	mov	rbp, rbp
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_201
	nop	
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [padding_buffer]]
	nop	
	mov	qword ptr [rbp - 0x158], rdi
	lea	rsi, [rsi]
	mov	rdi, rax
	call	quote
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.137
	mov	rdi, qword ptr [rbp - 0x158]
	mov	rbp, rbp
	mov	rdx, rax
	mov	rbp, rbp
	mov	al, 0
	nop	
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x15c], eax
.label_201:
	jmp	.label_211
.label_211:
	lea	rsi, [rsi]
	jmp	.label_213
.label_198:
	mov	rbp, rbp
	lea	rdi, [rbp - 0xb0]
	call	strlen
	add	rax, 1
	nop	
	mov	rdi, rax
	call	setup_padding_buffer
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0xb0]
	mov	rdi,  qword ptr [word ptr [padding_buffer]]
	call	strcpy
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x168], rax
.label_213:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 1
.label_204:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	rsp, 0x180
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404a60

	.globl print_padded_number
	.type print_padded_number, @function
print_padded_number:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x10
	cmp	qword ptr [word ptr [format_str_prefix]],  0
	je	.label_214
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [format_str_prefix]]
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
.label_214:
	mov	rdi,  qword ptr [word ptr [padding_buffer]]
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	call	fputs_unlocked
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [format_str_suffix]],  0
	mov	dword ptr [rbp - 8], eax
	je	.label_215
	mov	rdi,  qword ptr [word ptr [format_str_suffix]]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
.label_215:
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x404b00

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rbp, rbp
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 1]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404b20

	.globl parse_human_number
	.type parse_human_number, @function
parse_human_number:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x40
	lea	rax, [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8d,  dword ptr [dword ptr [scale_from]]
	lea	rdi, [rdi]
	mov	rsi, rax
	nop	
	call	simple_strtod_human
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	je	.label_218
	cmp	dword ptr [rbp - 0x2c], 1
	je	.label_218
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x2c]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	simple_strtod_fatal
	mov	edi, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], edi
	jmp	.label_219
.label_218:
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_217
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_217
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [inval_style]],  3
	je	.label_216
	movabs	rdi, OFFSET FLAT:.str.122
	mov	eax,  dword ptr [dword ptr [conv_exit_code]]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x30], eax
	lea	rsi, [rsi]
	call	gettext
	xor	edi, edi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	call	quote_n
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	call	quote_n
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	mov	r8, rax
	mov	rbp, rbp
	mov	al, 0
	nop	
	call	error
.label_216:
	mov	dword ptr [rbp - 0x2c], 5
.label_217:
	nop	
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
.label_219:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c60

	.globl simple_strtod_human
	.type simple_strtod_human, @function
simple_strtod_human:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0xd0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], r8d
	nop	
	mov	dword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x2c]
	nop	
	call	default_scale_base
	mov	dword ptr [rbp - 0x34], eax
	nop	
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_228
	mov	rsp, rsp
	xor	edi, edi
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x60], rax
	mov	rbp, rbp
	call	quote_n
	lea	rdi, [rdi]
	mov	edi, 1
	nop	
	mov	rsi,  qword ptr [word ptr [decimal_point]]
	mov	qword ptr [rbp - 0x68], rax
	lea	rsi, [rsi]
	call	quote_n
	nop	
	movabs	rsi, OFFSET FLAT:.str.123
	mov	rsp, rsp
	mov	r8d, 0x12
	nop	
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x6c], eax
.label_228:
	lea	rdi, [rdi]
	jmp	.label_236
.label_236:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	simple_strtod_float
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x38], eax
	cmp	dword ptr [rbp - 0x38], 0
	lea	rdi, [rdi]
	je	.label_229
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x38], 1
	je	.label_229
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	jmp	.label_224
.label_229:
	mov	rsp, rsp
	jmp	.label_241
.label_241:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_221
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.124
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rcx, qword ptr [rbp - 0x20]
	fld	xword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	mov	rcx, rsp
	mov	rbp, rbp
	fstp	xword ptr [rcx]
	mov	esi, OFFSET FLAT:.str.124
	mov	rsp, rsp
	xor	r8d, r8d
	mov	r9b, r8b
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
	mov	al, r9b
	lea	rsi, [rsi]
	call	fprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], eax
.label_221:
	jmp	.label_239
.label_239:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	nop	
	je	.label_240
	jmp	.label_225
.label_225:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	mov	rsp, rsp
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x88], rcx
	nop	
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x88]
	movzx	edi, word ptr [rax + rcx*2]
	lea	rdi, [rdi]
	and	edi, 1
	cmp	edi, 0
	je	.label_230
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax]
	add	rcx, 1
	mov	qword ptr [rax], rcx
	jmp	.label_225
.label_230:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	movsx	edi, byte ptr [rax]
	mov	rsp, rsp
	call	valid_suffix
	cmp	eax, 0
	jne	.label_220
	mov	dword ptr [rbp - 4], 5
	lea	rsi, [rsi]
	jmp	.label_224
.label_220:
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	jne	.label_226
	mov	dword ptr [rbp - 4], 4
	lea	rsi, [rsi]
	jmp	.label_224
.label_226:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	edi, byte ptr [rax]
	call	suffix_power
	mov	dword ptr [rbp - 0x30], eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rcx]
	add	rdx, 1
	mov	qword ptr [rcx], rdx
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 1
	mov	rsp, rsp
	jne	.label_234
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x69
	mov	rsp, rsp
	jne	.label_234
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], 0x400
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax]
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rax], rcx
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_223
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.125
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	edx, dword ptr [rbp - 0x34]
	mov	al, 0
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x8c], eax
.label_223:
	jmp	.label_232
.label_232:
	jmp	.label_234
.label_234:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rax], 0
.label_240:
	nop	
	cmp	dword ptr [rbp - 0x2c], 4
	mov	rbp, rbp
	jne	.label_231
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x69
	jne	.label_222
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rax]
	add	rcx, 1
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	jmp	.label_227
.label_222:
	mov	dword ptr [rbp - 4], 6
	mov	rbp, rbp
	jmp	.label_224
.label_227:
	jmp	.label_231
.label_231:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x54], eax
	nop	
	fild	dword ptr [rbp - 0x54]
	mov	edi, dword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	nop	
	call	powerld
	mov	rsp, rsp
	fstp	xword ptr [rbp - 0x50]
	test	byte ptr [byte ptr [dev_debug]],  1
	mov	rbp, rbp
	je	.label_237
	movabs	rax, OFFSET FLAT:.str.126
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	edx, dword ptr [rbp - 0x34]
	mov	ecx, dword ptr [rbp - 0x30]
	fld	xword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rsi, rsp
	lea	rdi, [rdi]
	fstp	xword ptr [rsi]
	mov	r8d, OFFSET FLAT:.str.126
	mov	esi, r8d
	mov	rsp, rsp
	xor	r8d, r8d
	mov	r9b, r8b
	mov	qword ptr [rbp - 0x98], rax
	lea	rsi, [rsi]
	mov	al, r9b
	mov	rbp, rbp
	call	fprintf
	mov	dword ptr [rbp - 0x9c], eax
.label_237:
	nop	
	jmp	.label_233
.label_233:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	fld	xword ptr [rax]
	fld	xword ptr [rbp - 0x50]
	fmulp	st(1)
	mov	rbp, rbp
	fstp	xword ptr [rax]
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_235
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.127
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rcx, qword ptr [rbp - 0x20]
	fld	xword ptr [rcx]
	fld	st(0)
	lea	rdi, [rdi]
	mov	rcx, rsp
	nop	
	fxch	st(1)
	lea	rdi, [rdi]
	fstp	xword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	fstp	xword ptr [rcx]
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.127
	mov	esi, edx
	lea	rsi, [rsi]
	xor	edx, edx
	mov	r8b, dl
	mov	qword ptr [rbp - 0xa8], rax
	nop	
	mov	al, r8b
	call	fprintf
	mov	dword ptr [rbp - 0xac], eax
.label_235:
	jmp	.label_238
.label_238:
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 4], eax
.label_224:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	rsp, 0xd0
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405100

	.globl simple_strtod_fatal
	.type simple_strtod_fatal, @function
simple_strtod_fatal:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
	nop	
	mov	edi, dword ptr [rbp - 4]
	mov	esi, edi
	mov	rbp, rbp
	mov	rax, rsi
	sub	rax, 6
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	ja	.label_242
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_243]]
	jmp	rcx
.label_1116:
	mov	rsp, rsp
	call	abort
.label_1117:
	movabs	rax, OFFSET FLAT:.str.128
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_242
.label_1118:
	movabs	rax, OFFSET FLAT:.str.129
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_242
.label_1119:
	movabs	rax, OFFSET FLAT:.str.130
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_242
.label_1120:
	movabs	rax, OFFSET FLAT:.str.131
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_242
.label_1121:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.132
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
.label_242:
	cmp	dword ptr [dword ptr [inval_style]],  3
	mov	rbp, rbp
	je	.label_244
	mov	edi,  dword ptr [dword ptr [conv_exit_code]]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], edi
	mov	rdi, rax
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	call	quote
	lea	rdi, [rdi]
	xor	esi, esi
	mov	edi, dword ptr [rbp - 0x2c]
	nop	
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	nop	
	call	error
.label_244:
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405230

	.globl default_scale_base
	.type default_scale_base, @function
default_scale_base:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	sub	edi, 3
	mov	dword ptr [rbp - 0xc], eax
	nop	
	mov	dword ptr [rbp - 0x10], edi
	jb	.label_245
	jmp	.label_249
.label_249:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -3
	sub	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_246
	mov	rsp, rsp
	jmp	.label_248
.label_248:
	mov	dword ptr [rbp - 4], 0x400
	jmp	.label_247
.label_245:
	jmp	.label_246
.label_246:
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0x3e8
.label_247:
	nop	
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4052a0

	.globl simple_strtod_float
	.type simple_strtod_float, @function
simple_strtod_float:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x80
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x30], 0
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_256
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rax], 0
.label_256:
	lea	rcx, [rbp - 0x29]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	simple_strtod_int
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x30], eax
	cmp	dword ptr [rbp - 0x30], 0
	je	.label_254
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x30], 1
	je	.label_254
	mov	eax, dword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_255
.label_254:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rax]
	mov	rsi,  qword ptr [word ptr [decimal_point]]
	nop	
	movsxd	rdx,  dword ptr [dword ptr [decimal_point_length]]
	call	strncmp
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_251
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x38]
	lea	rdx, [rbp - 0x50]
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x51]
	fldz	
	fstp	xword ptr [rbp - 0x50]
	mov	eax,  dword ptr [dword ptr [decimal_point_length]]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	r8, qword ptr [rdi]
	movsxd	r9, eax
	add	r8, r9
	mov	rsp, rsp
	mov	qword ptr [rdi], r8
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdi]
	call	simple_strtod_int
	mov	dword ptr [rbp - 0x58], eax
	cmp	dword ptr [rbp - 0x58], 0
	je	.label_257
	cmp	dword ptr [rbp - 0x58], 1
	je	.label_257
	mov	eax, dword ptr [rbp - 0x58]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_255
.label_257:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 1
	lea	rsi, [rsi]
	jne	.label_261
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x58]
	mov	dword ptr [rbp - 0x30], eax
.label_261:
	test	byte ptr [rbp - 0x51], 1
	lea	rsi, [rsi]
	je	.label_252
	mov	dword ptr [rbp - 4], 3
	jmp	.label_255
.label_252:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x60], rax
	fld	xword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x60]
	nop	
	mov	rax, rsp
	fld	dword ptr [dword ptr [rip + label_259]]
	mov	rsp, rsp
	fstp	xword ptr [rax]
	fstp	xword ptr [rbp - 0x6c]
	call	powerld
	fld	xword ptr [rbp - 0x6c]
	fdivrp	st(1)
	fstp	xword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	je	.label_253
	mov	rbp, rbp
	test	byte ptr [rbp - 0x29], 1
	je	.label_260
	fld	xword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x20]
	fld	xword ptr [rax]
	lea	rsi, [rsi]
	fsubrp	st(1)
	fstp	xword ptr [rax]
	jmp	.label_250
.label_260:
	fld	xword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	fld	xword ptr [rax]
	faddp	st(1)
	fstp	xword ptr [rax]
.label_250:
	lea	rsi, [rsi]
	jmp	.label_253
.label_253:
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	je	.label_258
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
.label_258:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
.label_251:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 4], eax
.label_255:
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4054c0

	.globl valid_suffix
	.type valid_suffix, @function
valid_suffix:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	al, dil
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], al
	mov	rdi,  qword ptr [word ptr [valid_suffix.valid_suffixes]]
	movsx	esi, byte ptr [rbp - 1]
	call	strchr
	lea	rdi, [rdi]
	cmp	rax, 0
	setne	cl
	nop	
	and	cl, 1
	movzx	eax, cl
	mov	rsp, rsp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405500

	.globl suffix_power
	.type suffix_power, @function
suffix_power:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 5], al
	movsx	edi, byte ptr [rbp - 5]
	mov	rbp, rbp
	mov	ecx, edi
	sub	ecx, 0x45
	mov	dword ptr [rbp - 0xc], edi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], ecx
	mov	rsp, rsp
	je	.label_262
	jmp	.label_274
.label_274:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	sub	eax, 0x47
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	je	.label_275
	jmp	.label_278
.label_278:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x4b
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
	mov	rbp, rbp
	je	.label_267
	jmp	.label_270
.label_270:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x1c], eax
	mov	rsp, rsp
	je	.label_273
	lea	rsi, [rsi]
	jmp	.label_263
.label_263:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x20], eax
	je	.label_265
	lea	rdi, [rdi]
	jmp	.label_269
.label_269:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x24], eax
	je	.label_271
	jmp	.label_276
.label_276:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x59
	mov	dword ptr [rbp - 0x28], eax
	je	.label_277
	mov	rsp, rsp
	jmp	.label_266
.label_266:
	nop	
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	sub	eax, 0x5a
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], eax
	je	.label_268
	mov	rbp, rbp
	jmp	.label_272
.label_267:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_264
.label_273:
	mov	dword ptr [rbp - 4], 2
	jmp	.label_264
.label_275:
	nop	
	mov	dword ptr [rbp - 4], 3
	lea	rsi, [rsi]
	jmp	.label_264
.label_271:
	mov	dword ptr [rbp - 4], 4
	lea	rsi, [rsi]
	jmp	.label_264
.label_265:
	nop	
	mov	dword ptr [rbp - 4], 5
	jmp	.label_264
.label_262:
	mov	dword ptr [rbp - 4], 6
	jmp	.label_264
.label_268:
	mov	dword ptr [rbp - 4], 7
	jmp	.label_264
.label_277:
	mov	dword ptr [rbp - 4], 8
	mov	rsp, rsp
	jmp	.label_264
.label_272:
	nop	
	mov	dword ptr [rbp - 4], 0
.label_264:
	nop	
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x405670

	.globl powerld
	.type powerld, @function
powerld:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	fld	xword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	fstp	xword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x24], edi
	nop	
	fld	xword ptr [rbp - 0x20]
	fstp	xword ptr [rbp - 0x40]
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_279
	lea	rdi, [rdi]
	fld1	
	lea	rdi, [rdi]
	fstp	xword ptr [rbp - 0x10]
	nop	
	jmp	.label_281
.label_279:
	lea	rsi, [rsi]
	jmp	.label_282
.label_282:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x24]
	add	eax, -1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	mov	rbp, rbp
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_280
	fld	xword ptr [rbp - 0x20]
	fld	xword ptr [rbp - 0x40]
	fmulp	st(1)
	mov	rsp, rsp
	fstp	xword ptr [rbp - 0x40]
	jmp	.label_282
.label_280:
	fld	xword ptr [rbp - 0x40]
	mov	rbp, rbp
	fstp	xword ptr [rbp - 0x10]
.label_281:
	lea	rsi, [rsi]
	fld	xword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405700

	.globl simple_strtod_int
	.type simple_strtod_int, @function
simple_strtod_int:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], 0
	mov	rbp, rbp
	fldz	
	fstp	xword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44], 0
	mov	byte ptr [rbp - 0x45], 0
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	movsx	eax, byte ptr [rcx]
	nop	
	cmp	eax, 0x2d
	jne	.label_283
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	byte ptr [rax], 1
	jmp	.label_295
.label_283:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	byte ptr [rax], 0
.label_295:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
.label_294:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x51], cl
	lea	rdi, [rdi]
	je	.label_287
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	movsx	edi, byte ptr [rax]
	call	c_isdigit
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x51], al
.label_287:
	mov	al, byte ptr [rbp - 0x51]
	test	al, 1
	jne	.label_285
	jmp	.label_289
.label_285:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], ecx
	mov	byte ptr [rbp - 0x45], 1
	fld	xword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	fldz	
	nop	
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_286
	jnp	.label_284
	jmp	.label_286
.label_284:
	nop	
	cmp	dword ptr [rbp - 0x4c], 0
	je	.label_288
.label_286:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44], eax
.label_288:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x44], 0x12
	nop	
	jbe	.label_296
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], 1
.label_296:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x44], 0x1b
	jbe	.label_292
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 2
	nop	
	jmp	.label_290
.label_292:
	nop	
	fld	xword ptr [rbp - 0x40]
	nop	
	fld	dword ptr [dword ptr [rip + label_259]]
	fmulp	st(1)
	nop	
	fld	st(0)
	mov	rsp, rsp
	fstp	xword ptr [rbp - 0x40]
	mov	eax, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x50], eax
	lea	rdi, [rdi]
	fild	dword ptr [rbp - 0x50]
	faddp	st(1)
	fstp	xword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx]
	add	rdx, 1
	mov	rsp, rsp
	mov	qword ptr [rcx], rdx
	nop	
	jmp	.label_294
.label_289:
	test	byte ptr [rbp - 0x45], 1
	mov	rsp, rsp
	jne	.label_293
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	mov	rsi,  qword ptr [word ptr [decimal_point]]
	mov	rbp, rbp
	movsxd	rdx,  dword ptr [dword ptr [decimal_point_length]]
	nop	
	call	strncmp
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_293
	mov	dword ptr [rbp - 4], 3
	lea	rdi, [rdi]
	jmp	.label_290
.label_293:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	test	byte ptr [rax], 1
	je	.label_297
	nop	
	fld	xword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	fchs	
	fstp	xword ptr [rbp - 0x40]
.label_297:
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	je	.label_291
	mov	rsp, rsp
	fld	xword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	fstp	xword ptr [rax]
.label_291:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
.label_290:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x60
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x405940

	.globl expld
	.type expld, @function
expld:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	fld	xword ptr [rbp + 0x10]
	mov	rbp, rbp
	fstp	xword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	nop	
	mov	dword ptr [rbp - 0x24], 0
	mov	rbp, rbp
	fld	xword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	fld	xword ptr [word ptr [rip + label_298]]
	lea	rsi, [rsi]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	lea	rdi, [rdi]
	jb	.label_299
	jmp	.label_301
.label_301:
	lea	rdi, [rdi]
	fld	xword ptr [rbp - 0x10]
	fld	xword ptr [word ptr [rip + label_303]]
	fucomip	st(1)
	nop	
	fstp	st(0)
	nop	
	jb	.label_299
	mov	rsp, rsp
	jmp	.label_300
.label_300:
	jmp	.label_302
.label_302:
	mov	rsp, rsp
	fld	xword ptr [rbp - 0x10]
	mov	rax, rsp
	fstp	xword ptr [rax]
	mov	rbp, rbp
	call	absld
	fld	st(0)
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	eax, ecx
	mov	qword ptr [rbp - 0x30], rax
	fild	qword ptr [rbp - 0x30]
	fxch	st(2)
	lea	rdi, [rdi]
	fucomip	st(2)
	fstp	st(1)
	nop	
	fstp	xword ptr [rbp - 0x44]
	nop	
	jb	.label_306
	jmp	.label_305
.label_305:
	mov	eax, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	inc	eax
	mov	dword ptr [rbp - 0x24], eax
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x38], rcx
	fild	qword ptr [rbp - 0x38]
	fld	xword ptr [rbp - 0x10]
	fdivrp	st(1)
	fstp	xword ptr [rbp - 0x10]
	mov	rbp, rbp
	jmp	.label_302
.label_306:
	jmp	.label_299
.label_299:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_304
	mov	eax, dword ptr [rbp - 0x24]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	dword ptr [rcx], eax
.label_304:
	lea	rsi, [rsi]
	fld	xword ptr [rbp - 0x10]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405a40

	.globl double_to_human
	.type double_to_human, @function
double_to_human:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x190
	mov	rbp, rbp
	fld	xword ptr [rbp + 0x10]
	lea	rax, [rbp - 0x80]
	nop	
	fstp	xword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rbp - 0x14], edi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	dword ptr [rbp - 0x2c], ecx
	mov	dword ptr [rbp - 0x30], r8d
	mov	dword ptr [rbp - 0x34], r9d
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdx, rax
	add	rdx, 1
	mov	qword ptr [rbp - 0x88], rdx
	mov	rbp, rbp
	mov	byte ptr [rax], 0x25
	cmp	dword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	je	.label_321
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x88], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0x27
.label_321:
	nop	
	cmp	qword ptr [word ptr [zero_padding_width]],  0
	mov	rbp, rbp
	je	.label_322
	nop	
	mov	eax, 0x3e
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:.str.138
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [zero_padding_width]]
	mov	al, 0
	call	snprintf
	nop	
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	movsxd	rdx, eax
	add	rcx, rdx
	mov	qword ptr [rbp - 0x88], rcx
.label_322:
	mov	rbp, rbp
	jmp	.label_313
.label_313:
	test	byte ptr [byte ptr [dev_debug]],  1
	lea	rdi, [rdi]
	je	.label_315
	movabs	rsi, OFFSET FLAT:.str.139
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xa4], eax
.label_315:
	nop	
	jmp	.label_338
.label_338:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rdi, [rdi]
	jne	.label_329
	mov	edi, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	mov	rax, rsp
	mov	rsp, rsp
	fld	dword ptr [dword ptr [rip + label_259]]
	fld	st(0)
	fstp	xword ptr [rax]
	fstp	xword ptr [rbp - 0xb0]
	call	powerld
	fld	xword ptr [rbp - 0x10]
	mov	rbp, rbp
	fmulp	st(1)
	fld	st(0)
	fstp	xword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x34]
	mov	rax, rsp
	fstp	xword ptr [rax]
	lea	rsi, [rsi]
	call	simple_round
	nop	
	fstp	xword ptr [rbp - 0x10]
	mov	edi, dword ptr [rbp - 0x14]
	mov	rax, rsp
	mov	rbp, rbp
	fld	xword ptr [rbp - 0xb0]
	fstp	xword ptr [rax]
	call	powerld
	fld	xword ptr [rbp - 0x10]
	mov	rsp, rsp
	fdivrp	st(1)
	fstp	xword ptr [rbp - 0x10]
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_323
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	test	eax, eax
	mov	eax, OFFSET FLAT:.str.140
	nop	
	mov	ecx, eax
	mov	eax, OFFSET FLAT:.str.141
	mov	rsp, rsp
	mov	edx, eax
	nop	
	cmovne	rdx, rcx
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	fld	xword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	xor	esi, esi
	nop	
	mov	r8b, sil
	mov	rbp, rbp
	mov	rsi, rdx
	mov	rsp, rsp
	mov	edx, eax
	nop	
	mov	al, r8b
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb4], eax
.label_323:
	jmp	.label_319
.label_319:
	nop	
	mov	rdi, qword ptr [rbp - 0x88]
	mov	eax, OFFSET FLAT:.str.142
	mov	esi, eax
	call	stpcpy
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdx, [rbp - 0x80]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	fld	xword ptr [rbp - 0x10]
	mov	r8, rsp
	fstp	xword ptr [r8]
	xor	r9d, r9d
	lea	rdi, [rdi]
	mov	r10b, r9b
	mov	qword ptr [rbp - 0xc0], rax
	mov	al, r10b
	call	snprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x38], eax
	cmp	dword ptr [rbp - 0x38], 0
	jl	.label_328
	mov	eax, dword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	edx, ecx
	nop	
	cmp	eax, edx
	jl	.label_314
.label_328:
	mov	eax, 1
	xor	ecx, ecx
	mov	edx, OFFSET FLAT:.str.143
	mov	edi, edx
	mov	dword ptr [rbp - 0xc4], eax
	mov	dword ptr [rbp - 0xc8], ecx
	lea	rdi, [rdi]
	call	gettext
	mov	rbp, rbp
	fld	xword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, rsp
	lea	rsi, [rsi]
	fstp	xword ptr [rdi]
	xor	ecx, ecx
	mov	sil, cl
	mov	edi, 1
	mov	byte ptr [rbp - 0xc9], sil
	mov	esi, ecx
	mov	rsp, rsp
	mov	rdx, rax
	nop	
	mov	al, byte ptr [rbp - 0xc9]
	call	error
.label_314:
	jmp	.label_309
.label_329:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x2c]
	call	default_scale_base
	mov	rbp, rbp
	cvtsi2sd	xmm0, eax
	movsd	qword ptr [rbp - 0x90], xmm0
	mov	dword ptr [rbp - 0x94], 0
	mov	rsp, rsp
	fld	xword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cvttsd2si	rcx, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	eax, ecx
	mov	rbp, rbp
	mov	rcx, rsp
	lea	rsi, [rsi]
	fstp	xword ptr [rcx]
	lea	rsi, [rbp - 0x94]
	nop	
	mov	edi, eax
	lea	rdi, [rdi]
	call	expld
	fstp	xword ptr [rbp - 0x10]
	test	byte ptr [byte ptr [dev_debug]],  1
	lea	rsi, [rsi]
	je	.label_333
	nop	
	movabs	rax, OFFSET FLAT:.str.144
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	fld	xword ptr [rbp - 0x10]
	movsd	xmm0, qword ptr [rbp - 0x90]
	mov	edx, dword ptr [rbp - 0x94]
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	mov	esi, OFFSET FLAT:.str.144
	mov	rbp, rbp
	mov	r8b, 1
	nop	
	mov	qword ptr [rbp - 0xd8], rax
	mov	al, r8b
	lea	rdi, [rdi]
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xdc], eax
.label_333:
	jmp	.label_326
.label_326:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x98], 0
	nop	
	cmp	qword ptr [word ptr [user_precision]],  -1
	mov	rsp, rsp
	je	.label_327
	mov	rbp, rbp
	imul	eax, dword ptr [rbp - 0x94], 3
	mov	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	rcx,  qword ptr [word ptr [user_precision]]
	jge	.label_337
	imul	eax, dword ptr [rbp - 0x94], 3
	nop	
	mov	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe8], rcx
	jmp	.label_312
.label_337:
	mov	rax,  qword ptr [word ptr [user_precision]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe8], rax
.label_312:
	mov	rax, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_310
.label_327:
	fld	xword ptr [rbp - 0x10]
	mov	rax, rsp
	lea	rdi, [rdi]
	fstp	xword ptr [rax]
	call	absld
	mov	rsp, rsp
	fld	dword ptr [dword ptr [rip + label_259]]
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_332
	jmp	.label_340
.label_340:
	nop	
	mov	dword ptr [rbp - 0x98], 1
.label_332:
	jmp	.label_310
.label_310:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x98]
	nop	
	mov	rax, rsp
	lea	rdi, [rdi]
	fld	dword ptr [dword ptr [rip + label_259]]
	fld	st(0)
	fstp	xword ptr [rax]
	fstp	xword ptr [rbp - 0xf4]
	lea	rsi, [rsi]
	call	powerld
	fld	xword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	fmulp	st(1)
	fld	st(0)
	nop	
	fstp	xword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x34]
	mov	rax, rsp
	nop	
	fstp	xword ptr [rax]
	lea	rdi, [rdi]
	call	simple_round
	fstp	xword ptr [rbp - 0x10]
	nop	
	mov	edi, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rax, rsp
	fld	xword ptr [rbp - 0xf4]
	mov	rbp, rbp
	fstp	xword ptr [rax]
	call	powerld
	fld	xword ptr [rbp - 0x10]
	mov	rsp, rsp
	fdivrp	st(1)
	fld	st(0)
	fstp	xword ptr [rbp - 0x10]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	absld
	fld	st(0)
	mov	rsp, rsp
	fld	qword ptr [rbp - 0x90]
	fxch	st(2)
	fucomip	st(2)
	fstp	st(1)
	fstp	xword ptr [rbp - 0x100]
	jb	.label_336
	lea	rdi, [rdi]
	jmp	.label_317
.label_317:
	mov	rsp, rsp
	fld	qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	fld	xword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	fdivrp	st(1)
	fstp	xword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x94]
	lea	rsi, [rsi]
	add	eax, 1
	nop	
	mov	dword ptr [rbp - 0x94], eax
.label_336:
	lea	rdi, [rdi]
	fld	xword ptr [rbp - 0x10]
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	fldz	
	nop	
	fxch	st(1)
	lea	rdi, [rdi]
	fucomip	st(1)
	mov	rbp, rbp
	fstp	st(0)
	mov	byte ptr [rbp - 0x101], cl
	lea	rdi, [rdi]
	jne	.label_311
	jp	.label_311
	mov	rbp, rbp
	jmp	.label_307
.label_311:
	fld	xword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	absld
	xor	ecx, ecx
	mov	dl, cl
	fld	dword ptr [dword ptr [rip + label_259]]
	mov	rbp, rbp
	fucomip	st(1)
	mov	rsp, rsp
	fstp	st(0)
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x101], dl
	mov	rbp, rbp
	jbe	.label_307
	jmp	.label_331
.label_331:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x94], 0
	nop	
	seta	al
	nop	
	mov	byte ptr [rbp - 0x101], al
.label_307:
	mov	al, byte ptr [rbp - 0x101]
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0x9c], ecx
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_335
	movabs	rax, OFFSET FLAT:.str.145
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	fld	xword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsd	xmm0, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x94]
	lea	rsi, [rsi]
	mov	rcx, rsp
	nop	
	fstp	xword ptr [rcx]
	nop	
	mov	esi, OFFSET FLAT:.str.145
	mov	r8b, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x110], rax
	mov	rbp, rbp
	mov	al, r8b
	call	fprintf
	mov	dword ptr [rbp - 0x114], eax
.label_335:
	mov	rsp, rsp
	jmp	.label_330
.label_330:
	mov	rdi, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.146
	mov	rbp, rbp
	mov	esi, eax
	lea	rsi, [rsi]
	call	stpcpy
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [user_precision]],  -1
	nop	
	mov	qword ptr [rbp - 0x120], rax
	nop	
	jne	.label_308
	movsxd	rax, dword ptr [rbp - 0x9c]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x128], rax
	jmp	.label_324
.label_308:
	mov	rax,  qword ptr [word ptr [user_precision]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x128], rax
.label_324:
	mov	rax, qword ptr [rbp - 0x128]
	mov	ecx, eax
	mov	dword ptr [rbp - 0xa0], ecx
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	dec	rax
	lea	rdx, [rbp - 0x80]
	lea	rsi, [rsi]
	fld	xword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x94]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x130], rdi
	nop	
	mov	edi, esi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x134], ecx
	fstp	xword ptr [rbp - 0x140]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x148], rax
	mov	qword ptr [rbp - 0x150], rdx
	call	suffix_power_char
	mov	rdx, rsp
	mov	rbp, rbp
	fld	xword ptr [rbp - 0x140]
	fstp	xword ptr [rdx]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	r8b, cl
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x130]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x150]
	nop	
	mov	ecx, dword ptr [rbp - 0x134]
	mov	byte ptr [rbp - 0x151], r8b
	mov	r8, rax
	mov	al, byte ptr [rbp - 0x151]
	nop	
	call	snprintf
	mov	dword ptr [rbp - 0x38], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x38], 0
	mov	rbp, rbp
	jl	.label_320
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x38]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	edx, ecx
	sub	edx, 1
	nop	
	cmp	eax, edx
	lea	rdi, [rdi]
	jl	.label_339
.label_320:
	nop	
	mov	eax, 1
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.143
	lea	rdi, [rdi]
	mov	edi, edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x158], eax
	mov	dword ptr [rbp - 0x15c], ecx
	nop	
	call	gettext
	lea	rdi, [rdi]
	fld	xword ptr [rbp - 0x10]
	mov	rdi, rsp
	lea	rsi, [rsi]
	fstp	xword ptr [rdi]
	xor	ecx, ecx
	nop	
	mov	sil, cl
	mov	rbp, rbp
	mov	edi, 1
	mov	byte ptr [rbp - 0x15d], sil
	mov	rbp, rbp
	mov	esi, ecx
	mov	rdx, rax
	mov	al, byte ptr [rbp - 0x15d]
	lea	rsi, [rsi]
	call	error
.label_339:
	cmp	dword ptr [rbp - 0x2c], 4
	nop	
	jne	.label_316
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x94], 0
	jbe	.label_316
	movabs	rsi, OFFSET FLAT:.str.147
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	movsxd	rcx, dword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	sub	rax, rcx
	lea	rdi, [rdi]
	sub	rax, 1
	mov	rsp, rsp
	mov	rdx, rax
	lea	rsi, [rsi]
	call	strncat
	mov	qword ptr [rbp - 0x168], rax
.label_316:
	lea	rdi, [rdi]
	jmp	.label_318
.label_318:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_334
	mov	rdi,  qword ptr [word ptr [stderr]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x170], rdi
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	quote
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.148
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x170]
	mov	rsp, rsp
	mov	rdx, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x174], eax
.label_334:
	jmp	.label_325
.label_325:
	jmp	.label_309
.label_309:
	add	rsp, 0x190
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4062f0

	.globl absld
	.type absld, @function
absld:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	fld	xword ptr [rbp + 0x10]
	fld	st(0)
	nop	
	fstp	xword ptr [rbp - 0x10]
	fldz	
	mov	rbp, rbp
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_341
	jmp	.label_342
.label_342:
	fld	xword ptr [rbp - 0x10]
	mov	rbp, rbp
	fchs	
	fstp	xword ptr [rbp - 0x1c]
	mov	rbp, rbp
	jmp	.label_343
.label_341:
	fld	xword ptr [rbp - 0x10]
	fstp	xword ptr [rbp - 0x1c]
.label_343:
	nop	
	fld	xword ptr [rbp - 0x1c]
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x406340

	.globl simple_round
	.type simple_round, @function
simple_round:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	fld	xword ptr [rbp + 0x10]
	fstp	xword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], edi
	fld	xword ptr [rbp - 0x20]
	fld	xword ptr [word ptr [rip + label_344]]
	fdiv	st(1), st(0)
	nop	
	fnstcw	word ptr [rbp - 0x5a]
	mov	rsp, rsp
	mov	ax, word ptr [rbp - 0x5a]
	mov	word ptr [rbp - 0x5a], 0xc7f
	nop	
	fldcw	word ptr [rbp - 0x5a]
	mov	word ptr [rbp - 0x5a], ax
	mov	rsp, rsp
	fxch	st(1)
	fistp	qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	fldcw	word ptr [rbp - 0x5a]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rcx
	mov	qword ptr [rbp - 0x40], rcx
	lea	rsi, [rsi]
	fild	qword ptr [rbp - 0x40]
	fmulp	st(1)
	fld	xword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	fsubrp	st(1)
	fstp	xword ptr [rbp - 0x20]
	mov	edi, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	ecx, edi
	mov	rsp, rsp
	mov	rdx, rcx
	sub	rdx, 4
	mov	qword ptr [rbp - 0x68], rcx
	mov	qword ptr [rbp - 0x70], rdx
	mov	rsp, rsp
	ja	.label_345
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_347]]
	jmp	rcx
.label_1108:
	mov	rsp, rsp
	fld	xword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, rsp
	nop	
	fstp	xword ptr [rax]
	call	simple_round_ceiling
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_346
.label_1109:
	fld	xword ptr [rbp - 0x20]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	simple_round_floor
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_346
.label_1110:
	lea	rsi, [rsi]
	fld	xword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	simple_round_from_zero
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_346
.label_1111:
	mov	rbp, rbp
	fld	xword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, rsp
	mov	rbp, rbp
	fstp	xword ptr [rax]
	nop	
	call	simple_round_to_zero
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_346
.label_1112:
	nop	
	fld	xword ptr [rbp - 0x20]
	mov	rax, rsp
	lea	rsi, [rsi]
	fstp	xword ptr [rax]
	mov	rsp, rsp
	call	simple_round_nearest
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_346
.label_345:
	lea	rdi, [rdi]
	fldz	
	lea	rdi, [rdi]
	fstp	xword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	jmp	.label_348
.label_346:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	fild	qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	fld	xword ptr [word ptr [rip + label_344]]
	lea	rsi, [rsi]
	fmulp	st(1)
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	fild	qword ptr [rbp - 0x50]
	mov	rsp, rsp
	faddp	st(1)
	fstp	xword ptr [rbp - 0x10]
.label_348:
	fld	xword ptr [rbp - 0x10]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4064e0

	.globl suffix_power_char
	.type suffix_power_char, @function
suffix_power_char:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], edi
	mov	edi, dword ptr [rbp - 0xc]
	mov	eax, edi
	mov	rcx, rax
	sub	rcx, 8
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x20], rcx
	ja	.label_349
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_351]]
	mov	rsp, rsp
	jmp	rcx
.label_1005:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str_0
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_350
.label_1006:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.149
	mov	qword ptr [rbp - 8], rax
	jmp	.label_350
.label_1007:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.150
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_350
.label_1008:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.151
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_350
.label_1009:
	movabs	rax, OFFSET FLAT:.str.152
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_350
.label_1010:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.153
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_350
.label_1011:
	movabs	rax, OFFSET FLAT:.str.154
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_350
.label_1012:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.155
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_350
.label_1013:
	movabs	rax, OFFSET FLAT:.str.156
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_350
.label_349:
	movabs	rax, OFFSET FLAT:.str.157
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_350:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x406610

	.globl simple_round_ceiling
	.type simple_round_ceiling, @function
simple_round_ceiling:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	fld	xword ptr [rbp + 0x10]
	fld	st(0)
	fstp	xword ptr [rbp - 0x10]
	fnstcw	word ptr [rbp - 0x2a]
	mov	ax, word ptr [rbp - 0x2a]
	mov	rbp, rbp
	mov	word ptr [rbp - 0x2a], 0xc7f
	nop	
	fldcw	word ptr [rbp - 0x2a]
	lea	rsi, [rsi]
	mov	word ptr [rbp - 0x2a], ax
	fistp	qword ptr [rbp - 0x28]
	fldcw	word ptr [rbp - 0x2a]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rcx
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	fild	qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	fld	xword ptr [rbp - 0x10]
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_352
	jmp	.label_353
.label_353:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_352:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406680

	.globl simple_round_floor
	.type simple_round_floor, @function
simple_round_floor:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	lea	rsi, [rsi]
	fld	xword ptr [rbp + 0x10]
	fld	st(0)
	fstp	xword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	fchs	
	mov	rax, rsp
	fstp	xword ptr [rax]
	lea	rdi, [rdi]
	call	simple_round_ceiling
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	rsp, rsp
	sub	rdx, rax
	mov	rax, rdx
	lea	rsi, [rsi]
	add	rsp, 0x20
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4066d0

	.globl simple_round_from_zero
	.type simple_round_from_zero, @function
simple_round_from_zero:
	nop	
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x30
	fld	xword ptr [rbp + 0x10]
	mov	rbp, rbp
	fld	st(0)
	fstp	xword ptr [rbp - 0x10]
	nop	
	fldz	
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_354
	jmp	.label_355
.label_355:
	fld	xword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	simple_round_floor
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_356
.label_354:
	fld	xword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	simple_round_ceiling
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
.label_356:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406740

	.globl simple_round_to_zero
	.type simple_round_to_zero, @function
simple_round_to_zero:
	push	rbp
	mov	rbp, rsp
	fld	xword ptr [rbp + 0x10]
	lea	rsi, [rsi]
	fld	st(0)
	fstp	xword ptr [rbp - 0x10]
	mov	rbp, rbp
	fld	st(0)
	fnstcw	word ptr [rbp - 0x1a]
	lea	rsi, [rsi]
	mov	ax, word ptr [rbp - 0x1a]
	lea	rsi, [rsi]
	mov	word ptr [rbp - 0x1a], 0xc7f
	fldcw	word ptr [rbp - 0x1a]
	mov	word ptr [rbp - 0x1a], ax
	fxch	st(1)
	fistp	qword ptr [rbp - 0x18]
	fldcw	word ptr [rbp - 0x1a]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	fstp	xword ptr [rbp - 0x24]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x406790

	.globl simple_round_nearest
	.type simple_round_nearest, @function
simple_round_nearest:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	fld	xword ptr [rbp + 0x10]
	nop	
	fld	st(0)
	nop	
	fstp	xword ptr [rbp - 0x10]
	mov	rsp, rsp
	fldz	
	lea	rdi, [rdi]
	fucomip	st(1)
	lea	rsi, [rsi]
	fstp	st(0)
	lea	rdi, [rdi]
	jbe	.label_357
	mov	rbp, rbp
	jmp	.label_358
.label_358:
	lea	rsi, [rsi]
	fld	xword ptr [rbp - 0x10]
	fld	dword ptr [dword ptr [rip + label_360]]
	mov	rsp, rsp
	faddp	st(1)
	lea	rdi, [rdi]
	fstp	xword ptr [rbp - 0x24]
	mov	rsp, rsp
	jmp	.label_361
.label_357:
	fld	xword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	fld	dword ptr [dword ptr [rip + label_359]]
	faddp	st(1)
	mov	rbp, rbp
	fstp	xword ptr [rbp - 0x24]
.label_361:
	fld	xword ptr [rbp - 0x24]
	fnstcw	word ptr [rbp - 0x1a]
	mov	ax, word ptr [rbp - 0x1a]
	mov	word ptr [rbp - 0x1a], 0xc7f
	fldcw	word ptr [rbp - 0x1a]
	mov	rsp, rsp
	mov	word ptr [rbp - 0x1a], ax
	fistp	qword ptr [rbp - 0x18]
	fldcw	word ptr [rbp - 0x1a]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406820

	.globl set_fields
	.type set_fields, @function
set_fields:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], esi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], 0
	mov	byte ptr [rbp - 0x21], 0
	mov	byte ptr [rbp - 0x22], 0
	mov	byte ptr [rbp - 0x23], 0
	mov	byte ptr [rbp - 0x24], 0
	mov	esi, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	and	esi, 1
	lea	rdi, [rdi]
	cmp	esi, 0
	nop	
	je	.label_367
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:.str_1
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	jne	.label_367
	mov	qword ptr [rbp - 0x20], 1
	mov	byte ptr [rbp - 0x21], 1
	mov	byte ptr [rbp - 0x23], 1
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
.label_367:
	lea	rdi, [rdi]
	jmp	.label_379
.label_379:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x2d
	jne	.label_403
	mov	byte ptr [rbp - 0x24], 0
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x23], 1
	je	.label_406
	jmp	.label_375
.label_375:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 4
	cmp	eax, 0
	je	.label_415
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.1_0
	lea	rdi, [rdi]
	call	gettext
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_363
.label_415:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.2_0
	call	gettext
	mov	qword ptr [rbp - 0x50], rax
.label_363:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	xor	ecx, ecx
	mov	edi, ecx
	mov	rsp, rsp
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	lea	rdi, [rdi]
	mov	edi, 1
	call	usage
.label_406:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x23], 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 8], rax
	test	byte ptr [rbp - 0x21], 1
	mov	rsp, rsp
	je	.label_384
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jne	.label_384
	nop	
	jmp	.label_392
.label_392:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	and	eax, 4
	cmp	eax, 0
	je	.label_395
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.3_0
	call	gettext
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_402
.label_395:
	movabs	rdi, OFFSET FLAT:.str.4_0
	call	gettext
	mov	qword ptr [rbp - 0x58], rax
.label_402:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	nop	
	mov	edi, 1
	call	usage
.label_384:
	test	byte ptr [rbp - 0x21], 1
	je	.label_423
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_362
.label_423:
	mov	eax, 1
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	nop	
	jmp	.label_362
.label_362:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_369
.label_403:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x2c
	mov	rsp, rsp
	je	.label_376
	mov	rax, qword ptr [rbp - 8]
	nop	
	movsx	edi, byte ptr [rax]
	lea	rdi, [rdi]
	call	to_uchar_0
	movzx	edi, al
	movsxd	rcx, edi
	nop	
	mov	qword ptr [rbp - 0x68], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 1
	cmp	edi, 0
	mov	rsp, rsp
	jne	.label_376
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0
	jne	.label_396
.label_376:
	mov	byte ptr [rbp - 0x24], 0
	mov	rsp, rsp
	test	byte ptr [rbp - 0x23], 1
	lea	rdi, [rdi]
	je	.label_400
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x23], 0
	test	byte ptr [rbp - 0x21], 1
	lea	rsi, [rsi]
	jne	.label_381
	mov	rsp, rsp
	test	byte ptr [rbp - 0x22], 1
	mov	rsp, rsp
	jne	.label_381
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_414
	mov	qword ptr [rbp - 0x18], 1
	jmp	.label_422
.label_414:
	jmp	.label_372
.label_372:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.5_0
	call	gettext
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edi, ecx
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	rsp, rsp
	mov	edi, 1
	lea	rdi, [rdi]
	call	usage
.label_422:
	lea	rdi, [rdi]
	jmp	.label_381
.label_381:
	test	byte ptr [rbp - 0x22], 1
	jne	.label_383
	mov	rsi, -1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	add_range_pair
	mov	rsp, rsp
	jmp	.label_420
.label_383:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	jae	.label_399
	jmp	.label_386
.label_386:
	nop	
	movabs	rdi, OFFSET FLAT:.str.6_0
	call	gettext
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edi, ecx
	mov	rsp, rsp
	mov	esi, ecx
	nop	
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_399:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	call	add_range_pair
.label_420:
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_412
.label_400:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_416
	jmp	.label_418
.label_418:
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	and	eax, 4
	cmp	eax, 0
	je	.label_409
	nop	
	movabs	rdi, OFFSET FLAT:.str.3_0
	call	gettext
	nop	
	mov	qword ptr [rbp - 0x70], rax
	lea	rsi, [rsi]
	jmp	.label_366
.label_409:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.4_0
	call	gettext
	mov	qword ptr [rbp - 0x70], rax
.label_366:
	mov	rax, qword ptr [rbp - 0x70]
	xor	ecx, ecx
	nop	
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_416:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	add_range_pair
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], 0
.label_412:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_421
	mov	rbp, rbp
	jmp	.label_389
.label_421:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 8], rax
	mov	byte ptr [rbp - 0x21], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x22], 0
	lea	rdi, [rdi]
	jmp	.label_374
.label_396:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_404
	test	byte ptr [rbp - 0x24], 1
	je	.label_411
	cmp	qword ptr [word ptr [set_fields.num_start]],  0
	nop	
	jne	.label_413
.label_411:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [set_fields.num_start]],  rax
.label_413:
	nop	
	mov	byte ptr [rbp - 0x24], 1
	nop	
	test	byte ptr [rbp - 0x23], 1
	je	.label_424
	mov	byte ptr [rbp - 0x22], 1
	lea	rsi, [rsi]
	jmp	.label_364
.label_424:
	nop	
	mov	byte ptr [rbp - 0x21], 1
.label_364:
	movabs	rax, 0x1999999999999999
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_370
	mov	rsp, rsp
	imul	rax, qword ptr [rbp - 0x20], 0xa
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx]
	nop	
	sub	edx, 0x30
	nop	
	movsxd	rcx, edx
	nop	
	add	rax, rcx
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_373
.label_370:
	xor	eax, eax
	mov	dword ptr [rbp - 0x74], eax
	lea	rsi, [rsi]
	jmp	.label_390
.label_373:
	lea	rsi, [rsi]
	mov	eax, 1
	imul	rcx, qword ptr [rbp - 0x20], 0xa
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	mov	rbp, rbp
	sub	esi, 0x30
	mov	rsp, rsp
	movsxd	rdx, esi
	lea	rsi, [rsi]
	add	rcx, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	mov	dword ptr [rbp - 0x74], eax
.label_390:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x74]
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_410
	cmp	qword ptr [rbp - 0x20], -1
	mov	rbp, rbp
	jne	.label_419
.label_410:
	movabs	rsi, OFFSET FLAT:.str.7_0
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [set_fields.num_start]]
	call	strspn
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [set_fields.num_start]]
	mov	rsi, qword ptr [rbp - 0x30]
	call	xstrndup
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0xc]
	and	ecx, 4
	cmp	ecx, 0
	je	.label_407
	movabs	rdi, OFFSET FLAT:.str.8_0
	call	gettext
	nop	
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_393
.label_407:
	movabs	rdi, OFFSET FLAT:.str.9_0
	call	gettext
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rax
.label_393:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rax
	call	quote
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edi, ecx
	nop	
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	mov	edi, 1
	call	usage
.label_419:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_394
.label_404:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 4
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_398
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.10_0
	lea	rdi, [rdi]
	call	gettext
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], rax
	mov	rbp, rbp
	jmp	.label_405
.label_398:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.11_0
	call	gettext
	mov	qword ptr [rbp - 0x90], rax
.label_405:
	mov	rax, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x98], rax
	call	quote
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	mov	edi, 1
	mov	rsp, rsp
	call	usage
.label_394:
	jmp	.label_374
.label_374:
	mov	rsp, rsp
	jmp	.label_369
.label_369:
	jmp	.label_379
.label_389:
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [n_frp]],  0
	jne	.label_382
	jmp	.label_377
.label_377:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	and	eax, 4
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_388
	movabs	rdi, OFFSET FLAT:.str.12_0
	lea	rdi, [rdi]
	call	gettext
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rax
	nop	
	jmp	.label_387
.label_388:
	movabs	rdi, OFFSET FLAT:.str.13_0
	call	gettext
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa0], rax
.label_387:
	mov	rax, qword ptr [rbp - 0xa0]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edi, ecx
	mov	rsp, rsp
	mov	esi, ecx
	mov	rdx, rax
	nop	
	mov	al, 0
	call	error
	nop	
	mov	edi, 1
	mov	rbp, rbp
	call	usage
.label_382:
	lea	rdi, [rdi]
	mov	eax, 0x10
	nop	
	mov	edx, eax
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:compare_ranges
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [frp]]
	mov	rdi,  qword ptr [word ptr [n_frp]]
	mov	qword ptr [rbp - 0xa8], rdi
	mov	rdi, rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	call	qsort
	mov	qword ptr [rbp - 0x40], 0
.label_401:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	cmp	rax,  qword ptr [word ptr [n_frp]]
	jae	.label_371
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
.label_368:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax,  qword ptr [word ptr [n_frp]]
	nop	
	jae	.label_385
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	shl	rax, 4
	add	rax,  qword ptr [word ptr [frp]]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	shl	rcx, 4
	add	rcx,  qword ptr [word ptr [frp]]
	cmp	rax, qword ptr [rcx + 8]
	ja	.label_391
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 4
	add	rax,  qword ptr [word ptr [frp]]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rcx, 4
	add	rcx,  qword ptr [word ptr [frp]]
	nop	
	cmp	rax, qword ptr [rcx + 8]
	jbe	.label_380
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax,  qword ptr [word ptr [frp]]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
	mov	rsp, rsp
	jmp	.label_408
.label_380:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	shl	rax, 4
	add	rax,  qword ptr [word ptr [frp]]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0xb0], rax
.label_408:
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rcx, 4
	nop	
	add	rcx,  qword ptr [word ptr [frp]]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rax,  qword ptr [word ptr [frp]]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rcx, 4
	mov	rbp, rbp
	add	rax, rcx
	nop	
	mov	rcx,  qword ptr [word ptr [frp]]
	nop	
	mov	rdx, qword ptr [rbp - 0x48]
	nop	
	shl	rdx, 4
	add	rcx, rdx
	add	rcx, 0x10
	mov	rdx,  qword ptr [word ptr [n_frp]]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rbp - 0x48]
	sub	rdx, 1
	lea	rsi, [rsi]
	shl	rdx, 4
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, rcx
	call	memmove
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [n_frp]]
	add	rax, -1
	mov	qword ptr [word ptr [n_frp]],  rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	add	rax, -1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_397
.label_391:
	lea	rdi, [rdi]
	jmp	.label_385
.label_397:
	lea	rsi, [rsi]
	jmp	.label_365
.label_365:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	jmp	.label_368
.label_385:
	jmp	.label_417
.label_417:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_401
.label_371:
	nop	
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	and	eax, 2
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_378
	lea	rdi, [rdi]
	call	complement_rp
.label_378:
	nop	
	mov	rax,  qword ptr [word ptr [n_frp]]
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [n_frp]],  rax
	mov	rax,  qword ptr [word ptr [frp]]
	nop	
	mov	rcx,  qword ptr [word ptr [n_frp]]
	shl	rcx, 4
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsi, rcx
	mov	rbp, rbp
	call	xrealloc
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [frp]],  rax
	nop	
	mov	rax,  qword ptr [word ptr [n_frp]]
	mov	rsp, rsp
	sub	rax, 1
	mov	rsp, rsp
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax,  qword ptr [word ptr [frp]]
	mov	rsp, rsp
	mov	qword ptr [rax + 8], -1
	mov	rax,  qword ptr [word ptr [n_frp]]
	lea	rsi, [rsi]
	sub	rax, 1
	shl	rax, 4
	mov	rsp, rsp
	add	rax,  qword ptr [word ptr [frp]]
	nop	
	mov	qword ptr [rax], -1
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4072e0

	.globl to_uchar_0
	.type to_uchar_0, @function
to_uchar_0:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	al, dil
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], al
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 1]
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407300

	.globl add_range_pair
	.type add_range_pair, @function
add_range_pair:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [n_frp]]
	nop	
	cmp	rsi,  qword ptr [word ptr [n_frp_allocated]]
	lea	rsi, [rsi]
	jne	.label_425
	nop	
	movabs	rsi, OFFSET FLAT:n_frp_allocated
	mov	eax, 0x10
	mov	edx, eax
	mov	rcx,  qword ptr [word ptr [frp]]
	mov	rdi, rcx
	mov	rbp, rbp
	call	x2nrealloc
	mov	rbp, rbp
	mov	qword ptr [word ptr [frp]],  rax
.label_425:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [n_frp]]
	shl	rcx, 4
	mov	rsp, rsp
	add	rcx,  qword ptr [word ptr [frp]]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [n_frp]]
	mov	rsp, rsp
	shl	rcx, 4
	add	rcx,  qword ptr [word ptr [frp]]
	nop	
	mov	qword ptr [rcx + 8], rax
	mov	rax,  qword ptr [word ptr [n_frp]]
	add	rax, 1
	mov	qword ptr [word ptr [n_frp]],  rax
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4073c0

	.globl compare_ranges
	.type compare_ranges, @function
compare_ranges:
	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi]
	nop	
	mov	eax, esi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi]
	mov	eax, esi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	jge	.label_426
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x1c], eax
	nop	
	jmp	.label_427
.label_426:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	cmp	eax, dword ptr [rbp - 0x18]
	nop	
	setg	cl
	and	cl, 1
	nop	
	movzx	eax, cl
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
.label_427:
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407440

	.globl complement_rp
	.type complement_rp, @function
complement_rp:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rax,  qword ptr [word ptr [frp]]
	mov	qword ptr [rbp - 8], rax
	mov	rax,  qword ptr [word ptr [n_frp]]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [frp]],  0
	mov	qword ptr [word ptr [n_frp]],  0
	mov	qword ptr [word ptr [n_frp_allocated]],  0
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	qword ptr [rax], 1
	lea	rsi, [rsi]
	jbe	.label_428
	mov	eax, 1
	mov	edi, eax
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	sub	rcx, 1
	mov	rsi, rcx
	call	add_range_pair
.label_428:
	mov	qword ptr [rbp - 0x18], 1
.label_431:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_430
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	add	rax, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 4
	nop	
	add	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx]
	nop	
	jne	.label_433
	jmp	.label_432
.label_433:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	sub	rax, 1
	lea	rdi, [rdi]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 4
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	sub	rcx, 1
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsi, rcx
	mov	rbp, rbp
	call	add_range_pair
.label_432:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_431
.label_430:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rax, 1
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 8]
	nop	
	cmp	qword ptr [rax + 8], -1
	lea	rsi, [rsi]
	jae	.label_429
	mov	rsi, -1
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	mov	rbp, rbp
	shl	rax, 4
	nop	
	add	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	add	rax, 1
	mov	rdi, rax
	lea	rsi, [rsi]
	call	add_range_pair
.label_429:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4075f0
	.globl reset_fields
	.type reset_fields, @function
reset_fields:

	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	mov	qword ptr [word ptr [n_frp]],  0
	mov	qword ptr [word ptr [n_frp_allocated]],  0
	mov	rax,  qword ptr [word ptr [frp]]
	mov	rdi, rax
	call	free
	mov	rsp, rsp
	mov	qword ptr [word ptr [frp]],  0
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407640

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
	#Procedure 0x407660

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
.label_434:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_444
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
	jne	.label_441
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	jne	.label_435
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_437
.label_435:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_442
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_440
.label_442:
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_436
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
	je	.label_438
.label_436:
	nop	
	mov	byte ptr [rbp - 0x41], 1
.label_438:
	lea	rsi, [rsi]
	jmp	.label_440
.label_440:
	mov	rbp, rbp
	jmp	.label_443
.label_443:
	mov	rsp, rsp
	jmp	.label_441
.label_441:
	nop	
	jmp	.label_445
.label_445:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_434
.label_444:
	test	byte ptr [rbp - 0x41], 1
	je	.label_439
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], -2
	jmp	.label_437
.label_439:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_437:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x50
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407810

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
	jne	.label_446
	movabs	rdi, OFFSET FLAT:.str_2
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	nop	
	jmp	.label_447
.label_446:
	nop	
	movabs	rdi, OFFSET FLAT:.str.1_1
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_447:
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
	#Procedure 0x4078f0

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	nop	
	movabs	rax, OFFSET FLAT:.str.2_1
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
.label_453:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rax*8], 0
	lea	rsi, [rsi]
	je	.label_450
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_448
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
	je	.label_452
.label_448:
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
	jmp	.label_449
.label_452:
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
.label_449:
	jmp	.label_451
.label_451:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_453
.label_450:
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
	#Procedure 0x407aa0

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
	jl	.label_454
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_455
.label_454:
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
.label_455:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407b60
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
.label_458:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	je	.label_460
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
	jne	.label_457
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_456
.label_457:
	lea	rdi, [rdi]
	jmp	.label_459
.label_459:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_458
.label_460:
	nop	
	mov	qword ptr [rbp - 8], 0
.label_456:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407c30
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
	jb	.label_461
	jmp	.label_464
.label_464:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_461
	jmp	.label_462
.label_462:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_463
	jmp	.label_461
.label_461:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_465
.label_463:
	mov	byte ptr [rbp - 1], 0
.label_465:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407ca0
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
	jb	.label_466
	jmp	.label_469
.label_469:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_467
	jmp	.label_466
.label_466:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_468
.label_467:
	mov	byte ptr [rbp - 1], 0
.label_468:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407cf0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_470
	jmp	.label_471
.label_471:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_472
.label_470:
	mov	byte ptr [rbp - 1], 0
.label_472:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407d20
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_473
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_473:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407d50
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
	jb	.label_474
	jmp	.label_476
.label_476:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_477
	jmp	.label_474
.label_474:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_475
.label_477:
	mov	byte ptr [rbp - 1], 0
.label_475:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407da0

	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_478
	jmp	.label_480
.label_480:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_479
.label_478:
	mov	byte ptr [rbp - 1], 0
.label_479:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407de0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_481
	jmp	.label_483
.label_483:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_482
.label_481:
	mov	byte ptr [rbp - 1], 0
.label_482:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407e20
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_484
	jmp	.label_486
.label_486:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_485
.label_484:
	mov	byte ptr [rbp - 1], 0
.label_485:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407e60
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_487
	jmp	.label_489
.label_489:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_488
.label_487:
	mov	byte ptr [rbp - 1], 0
.label_488:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407ea0
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
	jb	.label_490
	jmp	.label_493
.label_493:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x3a
	sub	eax, 7
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_490
	jmp	.label_494
.label_494:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x5b
	sub	eax, 6
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_490
	jmp	.label_492
.label_492:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x7b
	sub	eax, 3
	mov	dword ptr [rbp - 0x1c], eax
	ja	.label_495
	jmp	.label_490
.label_490:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_491
.label_495:
	mov	byte ptr [rbp - 1], 0
.label_491:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407f20
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
	jb	.label_496
	jmp	.label_499
.label_499:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_498
	jmp	.label_496
.label_496:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_497
.label_498:
	mov	byte ptr [rbp - 1], 0
.label_497:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407f70
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_500
	jmp	.label_502
.label_502:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_501
.label_500:
	mov	byte ptr [rbp - 1], 0
.label_501:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407fb0
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
	jb	.label_503
	jmp	.label_505
.label_505:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_503
	jmp	.label_504
.label_504:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_506
	jmp	.label_503
.label_503:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_507
.label_506:
	mov	byte ptr [rbp - 1], 0
.label_507:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408020

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_508
	jmp	.label_510
.label_510:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_509
.label_508:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_509:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408060
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_511
	jmp	.label_513
.label_513:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_512
.label_511:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_512:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4080a0
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
	#Procedure 0x4080d0
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
	#Procedure 0x408100

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
	je	.label_514
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_516
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_514
.label_516:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_3
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_518
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
	movabs	rdx, OFFSET FLAT:.str.1_2
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_515
.label_518:
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
.label_515:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_514:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_517
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_517:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x408230

	.globl mbsalign
	.type mbsalign, @function
mbsalign:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0xd0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	nop	
	mov	dword ptr [rbp - 0x28], r9d
	mov	qword ptr [rbp - 0x30], -1
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	mov	rsp, rsp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x48], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	sub	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], 0
	mov	byte ptr [rbp - 0x69], 0
	mov	byte ptr [rbp - 0x6a], 0
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rbp - 0x28]
	and	r8d, 2
	cmp	r8d, 0
	jne	.label_531
	nop	
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	lea	rsi, [rsi]
	jbe	.label_531
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rcx
	mov	rdx, rcx
	call	mbstowcs
	nop	
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], -1
	jne	.label_525
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_527
	nop	
	jmp	.label_522
.label_527:
	jmp	.label_529
.label_525:
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	shl	rax, 2
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	call	malloc
	nop	
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_541
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_543
	jmp	.label_522
.label_543:
	mov	rbp, rbp
	jmp	.label_529
.label_541:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x78]
	call	mbstowcs
	cmp	rax, 0
	je	.label_530
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x48]
	mov	dword ptr [rcx + rax*4], 0
	mov	byte ptr [rbp - 0x6a], 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	call	wc_ensure_printable
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x69], al
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x78]
	call	wcswidth
	nop	
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rcx
.label_530:
	nop	
	jmp	.label_531
.label_531:
	test	byte ptr [rbp - 0x6a], 1
	je	.label_519
	mov	rsp, rsp
	test	byte ptr [rbp - 0x69], 1
	jne	.label_524
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx]
	jbe	.label_519
.label_524:
	test	byte ptr [rbp - 0x69], 1
	je	.label_534
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdi, rcx
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rbp, rbp
	call	wcstombs
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x38], rax
.label_534:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	malloc
	nop	
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	lea	rdi, [rdi]
	jne	.label_542
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_521
	lea	rdi, [rdi]
	jmp	.label_522
.label_521:
	jmp	.label_529
.label_542:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	call	wc_truncate
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x38]
	call	wcstombs
	mov	qword ptr [rbp - 0x60], rax
.label_519:
	lea	rsi, [rsi]
	jmp	.label_522
.label_522:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx]
	jbe	.label_544
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
.label_544:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x58]
	jbe	.label_533
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	sub	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rax
.label_533:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	test	edx, edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x9c], edx
	mov	rbp, rbp
	je	.label_540
	jmp	.label_523
.label_523:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa0], eax
	mov	rbp, rbp
	je	.label_526
	lea	rsi, [rsi]
	jmp	.label_532
.label_532:
	nop	
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 2
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_535
	lea	rsi, [rsi]
	jmp	.label_538
.label_540:
	mov	qword ptr [rbp - 0x80], 0
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_528
.label_526:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x80], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], 0
	jmp	.label_528
.label_535:
	jmp	.label_538
.label_538:
	mov	rax, qword ptr [rbp - 0x68]
	shr	rax, 1
	mov	rcx, qword ptr [rbp - 0x68]
	and	rcx, 1
	add	rax, rcx
	mov	qword ptr [rbp - 0x80], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	shr	rax, 1
	mov	qword ptr [rbp - 0x88], rax
.label_528:
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 4
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_537
	nop	
	mov	qword ptr [rbp - 0x80], 0
.label_537:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	and	eax, 8
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_539
	mov	qword ptr [rbp - 0x88], 0
.label_539:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_545
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x98], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	call	mbs_align_pad
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rax, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x50]
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb0], rdi
	mov	qword ptr [rbp - 0xb8], rsi
	jae	.label_536
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_520
.label_536:
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_520:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	rdx, rax
	call	mempcpy
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	call	mbs_align_pad
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rax
.label_545:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x80]
	nop	
	add	rcx, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	shl	rcx, 0
	nop	
	add	rax, rcx
	nop	
	mov	qword ptr [rbp - 0x30], rax
.label_529:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x40]
	nop	
	call	free
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4087d0

	.globl wc_ensure_printable
	.type wc_ensure_printable, @function
wc_ensure_printable:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
.label_546:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	dword ptr [rax], 0
	je	.label_547
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rax]
	call	iswprint
	nop	
	cmp	eax, 0
	jne	.label_548
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0xfffd
	mov	rbp, rbp
	mov	byte ptr [rbp - 9], 1
.label_548:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, 4
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_546
.label_547:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 9]
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
	.section	.text
	.align	16
	#Procedure 0x408870

	.globl wc_truncate
	.type wc_truncate, @function
wc_truncate:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], 0
.label_551:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_550
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	edi, dword ptr [rax]
	mov	rsp, rsp
	call	wcwidth
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1c], -1
	jne	.label_549
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xfffd
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], 1
.label_549:
	mov	rax, qword ptr [rbp - 0x18]
	movsxd	rcx, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	add	rax, rcx
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x10]
	jbe	.label_552
	jmp	.label_550
.label_552:
	movsxd	rax, dword ptr [rbp - 0x1c]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rax, 4
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_551
.label_550:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408950

	.globl mbs_align_pad
	.type mbs_align_pad, @function
mbs_align_pad:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_554:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, rdx
	add	rsi, -1
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	cmp	rdx, 0
	mov	byte ptr [rbp - 0x19], cl
	nop	
	je	.label_555
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x10]
	setb	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x19], cl
.label_555:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	mov	rsp, rsp
	jne	.label_556
	jmp	.label_553
.label_556:
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
	jmp	.label_554
.label_553:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4089f0
	.globl ambsalign
	.type ambsalign, @function
ambsalign:

	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], 0
.label_560:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jb	.label_557
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	realloc
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_558
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	free
	mov	qword ptr [rbp - 0x38], 0
	nop	
	jmp	.label_557
.label_558:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	r8d, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	r9d, dword ptr [rbp - 0x18]
	call	mbsalign
	nop	
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], -1
	mov	rsp, rsp
	jne	.label_559
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_557
.label_559:
	mov	rbp, rbp
	jmp	.label_560
.label_557:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x408b40

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
	jne	.label_561
	movabs	rdi, OFFSET FLAT:.str_5
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	call	abort
.label_561:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_563
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_564
.label_563:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_564:
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
	jl	.label_562
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_3
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
	jne	.label_562
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.2_2
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
	jne	.label_565
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_565:
	jmp	.label_562
.label_562:
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
	#Procedure 0x408cc0
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
	je	.label_566
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_567
.label_566:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_567
.label_567:
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
	#Procedure 0x408d70
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
	je	.label_568
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_569
.label_568:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_569
.label_569:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408dd0
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
	je	.label_570
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_571
.label_570:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_571
.label_571:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408e30

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
	je	.label_572
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_573
.label_572:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_573
.label_573:
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
	#Procedure 0x408f30
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
	jne	.label_574
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_574:
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
	#Procedure 0x408f90

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
	jne	.label_575
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_575:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_577
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_576
.label_577:
	call	abort
.label_576:
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
	#Procedure 0x409030
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
	je	.label_578
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_579
.label_578:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_579
.label_579:
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
	#Procedure 0x409130

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
.label_633:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_695
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_699]]
	jmp	rcx
.label_1022:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_1021:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_706
	jmp	.label_710
.label_710:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_713
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_713:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_706
.label_706:
	movabs	rax, OFFSET FLAT:.str.10_1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_594
.label_1023:
	nop	
	mov	byte ptr [rbp - 0x79], 1
	nop	
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_594
.label_1024:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_731
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
.label_731:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_745
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_762:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_751
	jmp	.label_752
.label_752:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_755
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_755:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_586
.label_586:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_762
.label_751:
	mov	rbp, rbp
	jmp	.label_745
.label_745:
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
	jmp	.label_594
.label_1019:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x79], 1
.label_1018:
	mov	byte ptr [rbp - 0x7b], 1
.label_1020:
	nop	
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_771
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
.label_771:
	jmp	.label_750
.label_750:
	mov	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_589
	jmp	.label_778
.label_778:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_770
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_770:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_589
.label_589:
	movabs	rax, OFFSET FLAT:.str.12_1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	mov	rsp, rsp
	jmp	.label_594
.label_1017:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_594
.label_695:
	call	abort
.label_594:
	mov	qword ptr [rbp - 0x58], 0
.label_744:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_609
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
	jmp	.label_612
.label_609:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], edx
.label_612:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_628
	mov	rbp, rbp
	jmp	.label_637
.label_628:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x81], 0
	nop	
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_640
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	je	.label_640
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_640
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	lea	rsi, [rsi]
	jne	.label_662
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_662
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_667
.label_662:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_667:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_640
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
	jne	.label_640
	nop	
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	je	.label_685
	jmp	.label_608
.label_685:
	nop	
	mov	byte ptr [rbp - 0x81], 1
.label_640:
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
	ja	.label_690
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_700]]
	nop	
	jmp	rcx
.label_1050:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	je	.label_704
	mov	rsp, rsp
	jmp	.label_708
.label_708:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_686
	jmp	.label_608
.label_686:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x82], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_716
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7c], 1
	mov	rbp, rbp
	jne	.label_716
	nop	
	jmp	.label_722
.label_722:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_723
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_723:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_730
.label_730:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_736
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_736:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_743
.label_743:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_748
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_748:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_716:
	lea	rsi, [rsi]
	jmp	.label_757
.label_757:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_756
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_756:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_760
.label_760:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_595
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_595
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_595
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_595
	nop	
	jmp	.label_773
.label_773:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_774
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_774:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_779
.label_779:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_584
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_584:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_595
.label_595:
	mov	byte ptr [rbp - 0x7f], 0x30
	nop	
	jmp	.label_675
.label_704:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x38]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_602
	mov	rbp, rbp
	jmp	.label_610
.label_602:
	jmp	.label_675
.label_675:
	jmp	.label_604
.label_1061:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	nop	
	mov	dword ptr [rbp - 0x100], ecx
	mov	rsp, rsp
	je	.label_613
	mov	rbp, rbp
	jmp	.label_619
.label_619:
	mov	eax, dword ptr [rbp - 0xfc]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x104], eax
	lea	rsi, [rsi]
	je	.label_622
	jmp	.label_629
.label_613:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_632
	jmp	.label_608
.label_632:
	jmp	.label_635
.label_622:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_638
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jae	.label_638
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_638
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
	je	.label_655
	nop	
	jmp	.label_777
.label_777:
	nop	
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	mov	rsp, rsp
	jb	.label_655
	jmp	.label_668
.label_668:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x108]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	mov	rsp, rsp
	je	.label_655
	jmp	.label_673
.label_673:
	mov	eax, dword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x118], eax
	je	.label_655
	jmp	.label_678
.label_678:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	lea	rdi, [rdi]
	ja	.label_680
	jmp	.label_655
.label_655:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_687
	jmp	.label_608
.label_687:
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
	jae	.label_732
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_732:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_705
.label_705:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_712
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_712:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_719
.label_719:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_721
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_721:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_728
.label_728:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_606
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_606:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_739
.label_680:
	jmp	.label_739
.label_739:
	jmp	.label_638
.label_638:
	jmp	.label_635
.label_629:
	jmp	.label_635
.label_635:
	jmp	.label_604
.label_1051:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_749
.label_1052:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_749
.label_1056:
	mov	byte ptr [rbp - 0x80], 0x66
	lea	rdi, [rdi]
	jmp	.label_749
.label_1054:
	mov	byte ptr [rbp - 0x80], 0x6e
	mov	rbp, rbp
	jmp	.label_597
.label_1057:
	mov	byte ptr [rbp - 0x80], 0x72
	mov	rbp, rbp
	jmp	.label_597
.label_1053:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_597
.label_1055:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_749
.label_1062:
	mov	al, byte ptr [rbp - 0x7f]
	nop	
	mov	byte ptr [rbp - 0x80], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_758
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_761
	nop	
	jmp	.label_608
.label_761:
	lea	rsi, [rsi]
	jmp	.label_649
.label_758:
	test	byte ptr [rbp - 0x79], 1
	je	.label_767
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_767
	nop	
	cmp	qword ptr [rbp - 0x78], 0
	mov	rbp, rbp
	je	.label_767
	jmp	.label_649
.label_767:
	jmp	.label_597
.label_597:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	jne	.label_735
	test	byte ptr [rbp - 0x7b], 1
	je	.label_735
	jmp	.label_608
.label_735:
	mov	rsp, rsp
	jmp	.label_749
.label_749:
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_776
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_689
.label_776:
	jmp	.label_604
.label_1063:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_582
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_585
	jmp	.label_592
.label_582:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_585
.label_592:
	nop	
	jmp	.label_604
.label_585:
	jmp	.label_599
.label_599:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	je	.label_600
	lea	rsi, [rsi]
	jmp	.label_604
.label_600:
	nop	
	jmp	.label_607
.label_607:
	mov	byte ptr [rbp - 0x83], 1
.label_1058:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_611
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_611
	jmp	.label_608
.label_611:
	lea	rsi, [rsi]
	jmp	.label_604
.label_1060:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_618
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_627
	jmp	.label_608
.label_627:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_631
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jne	.label_631
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_631:
	jmp	.label_642
.label_642:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_644
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_644:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_652
.label_652:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_658
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_658:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_665
.label_665:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_616
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_616:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_618:
	lea	rsi, [rsi]
	jmp	.label_604
.label_1059:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_604
.label_690:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7a], 1
	je	.label_681
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
	jmp	.label_657
.label_681:
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
	jne	.label_707
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_707:
	jmp	.label_715
.label_715:
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
	jne	.label_733
	jmp	.label_738
.label_733:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_741
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_738
.label_741:
	nop	
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_746
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_772:
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
	jae	.label_661
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_661:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_720
	jmp	.label_763
.label_720:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_772
.label_763:
	jmp	.label_738
.label_746:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_625
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_625
	mov	qword ptr [rbp - 0xb8], 1
.label_617:
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	cmp	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	jae	.label_769
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
	jb	.label_590
	jmp	.label_587
.label_587:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x138], eax
	je	.label_590
	jmp	.label_596
.label_596:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x13c], eax
	mov	rsp, rsp
	je	.label_590
	jmp	.label_603
.label_603:
	mov	eax, dword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_605
	mov	rsp, rsp
	jmp	.label_590
.label_590:
	mov	rsp, rsp
	jmp	.label_608
.label_605:
	jmp	.label_615
.label_615:
	mov	rsp, rsp
	jmp	.label_753
.label_753:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_617
.label_769:
	mov	rbp, rbp
	jmp	.label_625
.label_625:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_630
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_630:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_634
.label_634:
	lea	rsi, [rsi]
	jmp	.label_643
.label_643:
	jmp	.label_645
.label_645:
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
	jne	.label_715
.label_738:
	jmp	.label_657
.label_657:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	nop	
	jb	.label_659
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_666
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	mov	rsp, rsp
	jne	.label_666
.label_659:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 0xc0], rax
.label_636:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	nop	
	je	.label_669
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	jne	.label_669
	jmp	.label_677
.label_677:
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_679
	jmp	.label_608
.label_679:
	mov	byte ptr [rbp - 0x82], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_684
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_684
	lea	rdi, [rdi]
	jmp	.label_691
.label_691:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_693
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_693:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_698
.label_698:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_702
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_702:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_714
.label_714:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_709
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_709:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_684:
	jmp	.label_724
.label_724:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_726
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_726:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_614
.label_614:
	jmp	.label_737
.label_737:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_650
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
.label_650:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_703
.label_703:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_742
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
.label_742:
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
	jmp	.label_759
.label_669:
	test	byte ptr [rbp - 0x81], 1
	lea	rsi, [rsi]
	je	.label_766
	lea	rdi, [rdi]
	jmp	.label_670
.label_670:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_768
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_768:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x81], 0
.label_766:
	nop	
	jmp	.label_759
.label_759:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_775
	jmp	.label_780
.label_775:
	lea	rsi, [rsi]
	jmp	.label_581
.label_581:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_583
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x82], 1
	jne	.label_583
	lea	rsi, [rsi]
	jmp	.label_591
.label_591:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_593
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_593:
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
	jae	.label_718
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_718:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_583:
	nop	
	jmp	.label_621
.label_621:
	mov	rsp, rsp
	jmp	.label_623
.label_623:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_626
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_626:
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
	jmp	.label_636
.label_780:
	mov	rsp, rsp
	jmp	.label_649
.label_666:
	lea	rsi, [rsi]
	jmp	.label_604
.label_604:
	test	byte ptr [rbp - 0x79], 1
	mov	rbp, rbp
	je	.label_653
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_656
.label_653:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_660
.label_656:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_660
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
	jne	.label_663
.label_660:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x81], 1
	lea	rdi, [rdi]
	jne	.label_663
	mov	rsp, rsp
	jmp	.label_649
.label_663:
	nop	
	jmp	.label_689
.label_689:
	jmp	.label_696
.label_696:
	test	byte ptr [rbp - 0x7b], 1
	mov	rbp, rbp
	je	.label_676
	jmp	.label_608
.label_676:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_683
	test	byte ptr [rbp - 0x7c], 1
	lea	rdi, [rdi]
	jne	.label_683
	lea	rdi, [rdi]
	jmp	.label_688
.label_688:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_692
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_692:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_697
.label_697:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_701
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_701:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_711
.label_711:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_717
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_717:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_683:
	jmp	.label_725
.label_725:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_727
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_727:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_734
.label_734:
	nop	
	jmp	.label_649
.label_649:
	jmp	.label_740
.label_740:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7c], 1
	je	.label_674
	test	byte ptr [rbp - 0x82], 1
	jne	.label_674
	lea	rdi, [rdi]
	jmp	.label_729
.label_729:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_747
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_747:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_754
.label_754:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_764
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_764:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_674:
	jmp	.label_646
.label_646:
	nop	
	jmp	.label_672
.label_672:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_765
	mov	al, byte ptr [rbp - 0x7f]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_765:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x83], 1
	jne	.label_694
	mov	byte ptr [rbp - 0x7e], 0
.label_694:
	mov	rbp, rbp
	jmp	.label_610
.label_610:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_744
.label_637:
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
	jmp	.label_608
.label_580:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_588
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_588
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7d], 1
	je	.label_588
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
	jmp	.label_620
.label_598:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jne	.label_624
	cmp	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	je	.label_624
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_633
.label_624:
	jmp	.label_639
.label_639:
	mov	rbp, rbp
	jmp	.label_588
.label_588:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_641
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_641
	mov	rbp, rbp
	jmp	.label_647
.label_647:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_648
	lea	rdi, [rdi]
	jmp	.label_651
.label_651:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_654
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_654:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_664
.label_664:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_647
.label_648:
	jmp	.label_641
.label_641:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_671
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_671:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_620
.label_608:
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_682
	mov	rsp, rsp
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_682
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], 4
.label_682:
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
.label_620:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aa50
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
	#Procedure 0x40aac0

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
	je	.label_781
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_782
.label_781:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_782
.label_782:
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
	je	.label_783
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_783:
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
	#Procedure 0x40ac90
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
.label_788:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_787
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
	jmp	.label_788
.label_787:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_786
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_784]],  rax
.label_786:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_785
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_785:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ada0

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
	#Procedure 0x40adf0

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
	jge	.label_793
	call	abort
.label_793:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_796
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
	jge	.label_789
	call	xalloc_die
.label_789:
	test	byte ptr [rbp - 0x31], 1
	je	.label_790
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_794
.label_790:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_794:
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
	je	.label_792
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_784]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_792:
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
.label_796:
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
	ja	.label_791
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
	je	.label_795
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	free
.label_795:
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
.label_791:
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
	#Procedure 0x40b120

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
	#Procedure 0x40b160
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
	#Procedure 0x40b190
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
	#Procedure 0x40b1d0

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
	#Procedure 0x40b230

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
	jne	.label_797
	call	abort
.label_797:
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
	#Procedure 0x40b2d0

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
	#Procedure 0x40b340
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
	#Procedure 0x40b380
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
	#Procedure 0x40b3c0

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
	#Procedure 0x40b470

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
	#Procedure 0x40b4b0

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
	#Procedure 0x40b4e0
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
	#Procedure 0x40b520
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
	#Procedure 0x40b610

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
	#Procedure 0x40b660

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
	#Procedure 0x40b700
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
	#Procedure 0x40b750
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
	#Procedure 0x40b7b0

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
	#Procedure 0x40b7f0
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
	#Procedure 0x40b830

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
	#Procedure 0x40b870

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
	#Procedure 0x40b8b0

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
	je	.label_801
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_798
.label_801:
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
	jne	.label_799
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
	jmp	.label_798
.label_799:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_800
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
	jmp	.label_798
.label_800:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_1
	movabs	rcx, OFFSET FLAT:.str.10_1
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_798:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b9f0

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
	je	.label_805
	movabs	rsi, OFFSET FLAT:.str_6
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
	jmp	.label_804
.label_805:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_4
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_804:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:.str.2_3
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
	mov	ecx, OFFSET FLAT:.str.3_2
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
	ja	.label_802
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_806]]
	jmp	rcx
.label_1086:
	jmp	.label_803
.label_1087:
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
	jmp	.label_803
.label_1088:
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
	jmp	.label_803
.label_1089:
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
	jmp	.label_803
.label_1090:
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
	jmp	.label_803
.label_1091:
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
	jmp	.label_803
.label_1092:
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
	jmp	.label_803
.label_1093:
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
	jmp	.label_803
.label_1094:
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
	jmp	.label_803
.label_1095:
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
	jmp	.label_803
.label_802:
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
.label_803:
	lea	rdi, [rdi]
	add	rsp, 0x180
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c160
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
.label_807:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_808
	mov	rbp, rbp
	jmp	.label_809
.label_809:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_807
.label_808:
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
	#Procedure 0x40c210

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
.label_812:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_811
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_814
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
	jmp	.label_815
.label_814:
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_815:
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
.label_811:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x81]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_810
	mov	rsp, rsp
	jmp	.label_813
.label_810:
	jmp	.label_816
.label_816:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_812
.label_813:
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
	#Procedure 0x40c370

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
	je	.label_817
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
.label_817:
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
	#Procedure 0x40c520
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
	movabs	rsi, OFFSET FLAT:.str.17_0
	movabs	rdx, OFFSET FLAT:.str.18_0
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
	#Procedure 0x40c5d0
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
	jae	.label_818
	mov	rbp, rbp
	call	xalloc_die
.label_818:
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
	#Procedure 0x40c630

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
	jne	.label_819
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_819
	lea	rdi, [rdi]
	call	xalloc_die
.label_819:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c690
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
	jae	.label_820
	mov	rsp, rsp
	call	xalloc_die
.label_820:
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
	#Procedure 0x40c710

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
	jne	.label_821
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_821
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_823
.label_821:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_822
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_822
	lea	rsi, [rsi]
	call	xalloc_die
.label_822:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_823:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c7c0

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
	jne	.label_824
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_826
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
.label_826:
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
	jae	.label_828
	call	xalloc_die
.label_828:
	lea	rsi, [rsi]
	jmp	.label_827
.label_824:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_825
	call	xalloc_die
.label_825:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_827:
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
	#Procedure 0x40c8f0

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
	#Procedure 0x40c920
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
	#Procedure 0x40c960
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
	#Procedure 0x40c9b0
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
	jb	.label_829
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_830
.label_829:
	lea	rsi, [rsi]
	call	xalloc_die
.label_830:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ca20

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
	#Procedure 0x40ca70

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
	#Procedure 0x40cad0

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
	movabs	rdx, OFFSET FLAT:.str_4
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40cb30

	.globl xstrndup
	.type xstrndup, @function
xstrndup:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	strndup
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jne	.label_831
	nop	
	call	xalloc_die
.label_831:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cb90

	.globl xstrtol
	.type xstrtol, @function
xstrtol:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0xf0
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x1c]
	nop	
	jg	.label_874
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_874
	lea	rsi, [rsi]
	jmp	.label_893
.label_874:
	nop	
	movabs	rdi, OFFSET FLAT:.str_7
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.1_6
	mov	edx, 0x54
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtol
	call	__assert_fail
.label_893:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_867
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_843
.label_867:
	lea	rax, [rbp - 0x38]
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_843
.label_843:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtol
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	jne	.label_866
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_875
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_875
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_875
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], 1
	mov	rbp, rbp
	jmp	.label_892
.label_875:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 4
	jmp	.label_844
.label_892:
	mov	rsp, rsp
	jmp	.label_853
.label_866:
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0
	je	.label_833
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	nop	
	je	.label_840
	mov	dword ptr [rbp - 4], 4
	lea	rsi, [rsi]
	jmp	.label_844
.label_840:
	mov	dword ptr [rbp - 0x4c], 1
.label_833:
	lea	rdi, [rdi]
	jmp	.label_853
.label_853:
	cmp	qword ptr [rbp - 0x30], 0
	mov	rbp, rbp
	jne	.label_868
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x4c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edx
	mov	rsp, rsp
	jmp	.label_844
.label_868:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_845
	mov	dword ptr [rbp - 0x50], 0x400
	mov	dword ptr [rbp - 0x54], 1
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_884
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	nop	
	mov	edx, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	or	edx, 2
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edx
	jmp	.label_844
.label_884:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	mov	edx, ecx
	lea	rsi, [rsi]
	sub	edx, 0x45
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x64], ecx
	mov	dword ptr [rbp - 0x68], edx
	je	.label_839
	lea	rdi, [rdi]
	jmp	.label_836
.label_836:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_839
	mov	rbp, rbp
	jmp	.label_846
.label_846:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x70], eax
	je	.label_839
	nop	
	jmp	.label_855
.label_855:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x74], eax
	je	.label_839
	lea	rsi, [rsi]
	jmp	.label_861
.label_861:
	mov	eax, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x78], eax
	je	.label_839
	jmp	.label_865
.label_865:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	sub	eax, 0x54
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_839
	jmp	.label_872
.label_872:
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, -0x59
	lea	rdi, [rdi]
	sub	eax, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x80], eax
	nop	
	jb	.label_839
	jmp	.label_879
.label_879:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x67
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	je	.label_839
	nop	
	jmp	.label_886
.label_886:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x6b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x88], eax
	lea	rdi, [rdi]
	je	.label_839
	jmp	.label_851
.label_851:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x6d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x8c], eax
	lea	rsi, [rsi]
	je	.label_839
	mov	rsp, rsp
	jmp	.label_856
.label_856:
	mov	eax, dword ptr [rbp - 0x64]
	mov	rbp, rbp
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x90], eax
	mov	rbp, rbp
	jne	.label_885
	jmp	.label_839
.label_839:
	mov	esi, 0x30
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	lea	rdi, [rdi]
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_834
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	rsp, rsp
	mov	edx, ecx
	sub	edx, 0x42
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x94], ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], edx
	lea	rdi, [rdi]
	je	.label_871
	lea	rsi, [rsi]
	jmp	.label_869
.label_869:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x44
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_871
	jmp	.label_877
.label_877:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x94]
	lea	rdi, [rdi]
	sub	eax, 0x69
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa0], eax
	jne	.label_880
	jmp	.label_888
.label_888:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	cmp	ecx, 0x42
	jne	.label_890
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	add	eax, 2
	mov	dword ptr [rbp - 0x54], eax
.label_890:
	jmp	.label_880
.label_871:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x50], 0x3e8
	mov	eax, dword ptr [rbp - 0x54]
	nop	
	add	eax, 1
	mov	dword ptr [rbp - 0x54], eax
.label_880:
	mov	rsp, rsp
	jmp	.label_834
.label_834:
	lea	rdi, [rdi]
	jmp	.label_885
.label_885:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rbp, rbp
	sub	edx, 0x42
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa4], ecx
	nop	
	mov	dword ptr [rbp - 0xa8], edx
	je	.label_842
	jmp	.label_858
.label_858:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x45
	mov	dword ptr [rbp - 0xac], eax
	lea	rdi, [rdi]
	je	.label_860
	jmp	.label_863
.label_863:
	mov	eax, dword ptr [rbp - 0xa4]
	lea	rdi, [rdi]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0xb0], eax
	je	.label_862
	jmp	.label_870
.label_870:
	mov	eax, dword ptr [rbp - 0xa4]
	mov	rbp, rbp
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0xb4], eax
	nop	
	je	.label_850
	jmp	.label_878
.label_878:
	mov	eax, dword ptr [rbp - 0xa4]
	mov	rsp, rsp
	sub	eax, 0x4d
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb8], eax
	mov	rsp, rsp
	je	.label_881
	jmp	.label_889
.label_889:
	mov	eax, dword ptr [rbp - 0xa4]
	lea	rsi, [rsi]
	sub	eax, 0x50
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xbc], eax
	mov	rsp, rsp
	je	.label_891
	jmp	.label_873
.label_873:
	mov	eax, dword ptr [rbp - 0xa4]
	mov	rsp, rsp
	sub	eax, 0x54
	mov	dword ptr [rbp - 0xc0], eax
	mov	rbp, rbp
	je	.label_882
	jmp	.label_835
.label_835:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x59
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_838
	mov	rbp, rbp
	jmp	.label_847
.label_847:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x5a
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_849
	mov	rsp, rsp
	jmp	.label_857
.label_857:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	mov	rbp, rbp
	sub	eax, 0x62
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_859
	nop	
	jmp	.label_864
.label_864:
	mov	eax, dword ptr [rbp - 0xa4]
	mov	rbp, rbp
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_883
	jmp	.label_848
.label_848:
	nop	
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	sub	eax, 0x67
	nop	
	mov	dword ptr [rbp - 0xd4], eax
	lea	rsi, [rsi]
	je	.label_862
	lea	rdi, [rdi]
	jmp	.label_832
.label_832:
	mov	eax, dword ptr [rbp - 0xa4]
	lea	rsi, [rsi]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xd8], eax
	je	.label_850
	lea	rsi, [rsi]
	jmp	.label_887
.label_887:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xdc], eax
	lea	rsi, [rsi]
	je	.label_881
	lea	rsi, [rsi]
	jmp	.label_894
.label_894:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa4]
	mov	rsp, rsp
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_882
	lea	rdi, [rdi]
	jmp	.label_876
.label_876:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x77
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe4], eax
	mov	rsp, rsp
	je	.label_841
	lea	rdi, [rdi]
	jmp	.label_852
.label_859:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	lea	rdi, [rdi]
	call	bkm_scale
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_854
.label_842:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	lea	rsi, [rsi]
	call	bkm_scale
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x58], eax
	mov	rbp, rbp
	jmp	.label_854
.label_883:
	mov	dword ptr [rbp - 0x58], 0
	jmp	.label_854
.label_860:
	lea	rdi, [rbp - 0x48]
	mov	rsp, rsp
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_854
.label_862:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_854
.label_850:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x58], eax
	mov	rbp, rbp
	jmp	.label_854
.label_881:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	mov	rsp, rsp
	jmp	.label_854
.label_891:
	nop	
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	call	bkm_scale_by_power
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x58], eax
	lea	rdi, [rdi]
	jmp	.label_854
.label_882:
	lea	rdi, [rbp - 0x48]
	mov	rbp, rbp
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	call	bkm_scale_by_power
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x58], eax
	nop	
	jmp	.label_854
.label_841:
	lea	rdi, [rbp - 0x48]
	mov	rsp, rsp
	mov	esi, 2
	lea	rsi, [rsi]
	call	bkm_scale
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x58], eax
	nop	
	jmp	.label_854
.label_838:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	call	bkm_scale_by_power
	nop	
	mov	dword ptr [rbp - 0x58], eax
	lea	rsi, [rsi]
	jmp	.label_854
.label_849:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], eax
	lea	rdi, [rdi]
	jmp	.label_854
.label_852:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	mov	rsp, rsp
	jmp	.label_844
.label_854:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x58]
	or	eax, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	cmp	byte ptr [rcx], 0
	nop	
	je	.label_837
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_837:
	jmp	.label_845
.label_845:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_844:
	nop	
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0xf0
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d460

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	movsxd	rcx, dword ptr [rbp - 0x14]
	cqo	
	idiv	rcx
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	jge	.label_895
	movabs	rax, 0x8000000000000000
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 1
	jmp	.label_896
.label_895:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	cqo	
	lea	rsi, [rsi]
	idiv	rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx]
	jge	.label_897
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	nop	
	mov	dword ptr [rbp - 4], 1
	jmp	.label_896
.label_897:
	movsxd	rax, dword ptr [rbp - 0x14]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_896:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d540

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0
.label_899:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_898
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	lea	rsi, [rsi]
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	jmp	.label_899
.label_898:
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d5b0

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
	jg	.label_949
	cmp	dword ptr [rbp - 0x1c], 0x24
	lea	rdi, [rdi]
	jg	.label_949
	jmp	.label_930
.label_949:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str_7
	movabs	rsi, OFFSET FLAT:.str.1_7
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
.label_930:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_919
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	jmp	.label_921
.label_919:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	nop	
	jmp	.label_921
.label_921:
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
.label_936:
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
	je	.label_943
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	lea	rsi, [rsi]
	jmp	.label_936
.label_943:
	movzx	eax, byte ptr [rbp - 0x59]
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	jne	.label_959
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 4
	lea	rsi, [rsi]
	jmp	.label_907
.label_959:
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
	jne	.label_909
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	je	.label_920
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_920
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	nop	
	je	.label_920
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_939
.label_920:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 4
	jmp	.label_907
.label_939:
	lea	rdi, [rdi]
	jmp	.label_947
.label_909:
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0
	je	.label_951
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	lea	rdi, [rdi]
	je	.label_956
	nop	
	mov	dword ptr [rbp - 4], 4
	jmp	.label_907
.label_956:
	mov	dword ptr [rbp - 0x4c], 1
.label_951:
	jmp	.label_947
.label_947:
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_933
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	lea	rdi, [rdi]
	jmp	.label_907
.label_933:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_908
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
	jne	.label_929
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
	jmp	.label_907
.label_929:
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
	je	.label_910
	jmp	.label_948
.label_948:
	nop	
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	je	.label_910
	nop	
	jmp	.label_957
.label_957:
	mov	eax, dword ptr [rbp - 0x7c]
	nop	
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	mov	rsp, rsp
	je	.label_910
	nop	
	jmp	.label_960
.label_960:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	mov	rbp, rbp
	je	.label_910
	lea	rsi, [rsi]
	jmp	.label_905
.label_905:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x90], eax
	lea	rsi, [rsi]
	je	.label_910
	jmp	.label_914
.label_914:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_910
	jmp	.label_922
.label_922:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	add	eax, -0x59
	mov	rbp, rbp
	sub	eax, 2
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], eax
	lea	rdi, [rdi]
	jb	.label_910
	mov	rsp, rsp
	jmp	.label_931
.label_931:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_910
	jmp	.label_938
.label_938:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	lea	rdi, [rdi]
	je	.label_910
	mov	rsp, rsp
	jmp	.label_946
.label_946:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	nop	
	je	.label_910
	jmp	.label_955
.label_955:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_953
	jmp	.label_910
.label_910:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_945
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
	je	.label_958
	lea	rsi, [rsi]
	jmp	.label_918
.label_918:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_958
	jmp	.label_926
.label_926:
	mov	eax, dword ptr [rbp - 0xac]
	mov	rbp, rbp
	sub	eax, 0x69
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb8], eax
	lea	rdi, [rdi]
	jne	.label_928
	lea	rsi, [rsi]
	jmp	.label_934
.label_934:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 2]
	lea	rsi, [rsi]
	cmp	ecx, 0x42
	jne	.label_935
	mov	eax, dword ptr [rbp - 0x64]
	nop	
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_935:
	jmp	.label_928
.label_958:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_928:
	jmp	.label_945
.label_945:
	nop	
	jmp	.label_953
.label_953:
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
	je	.label_954
	jmp	.label_964
.label_964:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x45
	nop	
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_962
	jmp	.label_902
.label_902:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x47
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_904
	jmp	.label_912
.label_912:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rsi, [rsi]
	sub	eax, 0x4b
	nop	
	mov	dword ptr [rbp - 0xcc], eax
	mov	rsp, rsp
	je	.label_925
	nop	
	jmp	.label_924
.label_924:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rdi, [rdi]
	sub	eax, 0x4d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_927
	nop	
	jmp	.label_932
.label_932:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd4], eax
	je	.label_900
	mov	rsp, rsp
	jmp	.label_940
.label_940:
	nop	
	mov	eax, dword ptr [rbp - 0xbc]
	nop	
	sub	eax, 0x54
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd8], eax
	nop	
	je	.label_915
	jmp	.label_901
.label_901:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x59
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_911
	mov	rbp, rbp
	jmp	.label_950
.label_950:
	mov	eax, dword ptr [rbp - 0xbc]
	nop	
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_941
	jmp	.label_961
.label_961:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x62
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_963
	jmp	.label_903
.label_903:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xe8], eax
	je	.label_906
	jmp	.label_913
.label_913:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x67
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xec], eax
	je	.label_904
	jmp	.label_923
.label_923:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xf0], eax
	je	.label_925
	jmp	.label_965
.label_965:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xf4], eax
	je	.label_927
	jmp	.label_937
.label_937:
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rsi, [rsi]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xf8], eax
	je	.label_915
	jmp	.label_942
.label_942:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0xfc], eax
	je	.label_944
	jmp	.label_952
.label_963:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale_0
	nop	
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_916
.label_954:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	lea	rdi, [rdi]
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_916
.label_906:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_916
.label_962:
	nop	
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_916
.label_904:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	nop	
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_916
.label_925:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	nop	
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_916
.label_927:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_916
.label_900:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	mov	rsp, rsp
	jmp	.label_916
.label_915:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x48]
	lea	rdi, [rdi]
	mov	edx, 4
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	lea	rdi, [rdi]
	jmp	.label_916
.label_944:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_916
.label_911:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	mov	rsp, rsp
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_916
.label_941:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_916
.label_952:
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
	jmp	.label_907
.label_916:
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
	je	.label_917
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	nop	
	mov	dword ptr [rbp - 0x4c], eax
.label_917:
	jmp	.label_908
.label_908:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	nop	
	mov	dword ptr [rbp - 4], edx
.label_907:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x100
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dea0

	.globl bkm_scale_0
	.type bkm_scale_0, @function
bkm_scale_0:
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
	jae	.label_966
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 1
	jmp	.label_967
.label_966:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_967:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40df20

	.globl bkm_scale_by_power_0
	.type bkm_scale_by_power_0, @function
bkm_scale_by_power_0:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], 0
.label_968:
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
	je	.label_969
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	bkm_scale_0
	mov	rsp, rsp
	or	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	nop	
	jmp	.label_968
.label_969:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dfa0

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
	jne	.label_970
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_970:
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
	ja	.label_971
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_971
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_971
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
	jmp	.label_972
.label_971:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_972:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e090

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
	ja	.label_973
	jmp	.label_975
.label_975:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_974
.label_973:
	lea	rsi, [rsi]
	jmp	.label_974
.label_974:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e0f0

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
	jne	.label_976
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_978
.label_976:
	mov	rbp, rbp
	jmp	.label_977
.label_977:
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
	jne	.label_980
	jmp	.label_979
.label_980:
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
	je	.label_977
.label_979:
	movzx	eax, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x2a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_978:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e1e0

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
	jne	.label_983
	test	byte ptr [rbp - 0x13], 1
	je	.label_982
	test	byte ptr [rbp - 0x11], 1
	lea	rsi, [rsi]
	jne	.label_983
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_982
.label_983:
	nop	
	test	byte ptr [rbp - 0x13], 1
	mov	rsp, rsp
	jne	.label_981
	call	__errno_location
	mov	dword ptr [rax], 0
.label_981:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_984
.label_982:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
.label_984:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e2c0

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
	je	.label_986
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_8
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_987
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_8
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_985
.label_987:
	mov	byte ptr [rbp - 5], 0
.label_985:
	jmp	.label_986
.label_986:
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
	#Procedure 0x40e360

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
	jne	.label_989
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_989:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_988
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.1_9
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_988:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e3e0

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
	jge	.label_993
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_991
.label_993:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_990
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
	je	.label_992
.label_990:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_992
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_992:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_994
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
.label_994:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_991:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e500

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
	je	.label_995
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_996
.label_995:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_997
.label_996:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_997:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e570

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
	je	.label_998
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
.label_998:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e5d0

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
	jne	.label_999
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_999
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_999
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
	jne	.label_1000
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1001
.label_1000:
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
	jmp	.label_1001
.label_999:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
.label_1001:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
