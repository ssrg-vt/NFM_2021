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
	mov	dword ptr [rbp - 0x68], edi
	nop	
	cmp	dword ptr [rbp - 0x68], 0
	je	.label_8
	jmp	.label_9
.label_9:
	movabs	rdi, OFFSET FLAT:.str
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x90], rax
	call	gettext
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [program_name]]
	nop	
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	rsi, rax
	mov	al, 0
	nop	
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_10
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
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x78], eax
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:.str.3
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.4
	mov	dword ptr [rbp - 0x20], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.5
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x38], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.6
	mov	dword ptr [rbp - 0x44], eax
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.7
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.8
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.9
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x70], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.10
	nop	
	mov	dword ptr [rbp - 0x64], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.11
	mov	dword ptr [rbp - 0x88], eax
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
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.13
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.14
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.15
	mov	dword ptr [rbp - 0x58], eax
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.16
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.17
	nop	
	mov	dword ptr [rbp - 0x94], eax
	nop	
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.18
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	nop	
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.19
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.20
	mov	dword ptr [rbp - 0x84], eax
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.21
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.22
	nop	
	mov	dword ptr [rbp - 0x6c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.23
	mov	dword ptr [rbp - 0x80], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.24
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.25
	mov	dword ptr [rbp - 0x60], eax
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.26
	mov	dword ptr [rbp - 0x74], eax
	mov	rbp, rbp
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.27
	mov	dword ptr [rbp - 0x34], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.28
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	rbp, rbp
	mov	al, 0
	nop	
	call	printf
	movabs	rdi, OFFSET FLAT:.str.29
	mov	dword ptr [rbp - 0x48], eax
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
	mov	qword ptr [rbp - 0x50], rdi
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
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
	mov	dword ptr [rbp - 0x28], eax
	call	emit_ancillary_info
.label_10:
	mov	edi, dword ptr [rbp - 0x68]
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
	sub	rsp, 0x50
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 0x30], rdi
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x48], rax
.label_13:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	qword ptr [rdx], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x21], cl
	je	.label_15
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
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
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_13
.label_12:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_14
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
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
	mov	dword ptr [rbp - 0x3c], eax
	call	setlocale
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	nop	
	cmp	qword ptr [rbp - 8], 0
	je	.label_11
	movabs	rsi, OFFSET FLAT:.str.65
	lea	rsi, [rsi]
	mov	eax, 3
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
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
	mov	dword ptr [rbp - 0x14], eax
.label_11:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.67
	call	gettext
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.18_0
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdi, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	printf
	movabs	rdi, OFFSET FLAT:.str.68
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], eax
	lea	rsi, [rsi]
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.69
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rcx, qword ptr [rbp - 0x30]
	cmove	rdx, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x38], eax
	mov	rsp, rsp
	add	rsp, 0x50
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
	sub	rsp, 0xe0
	mov	dword ptr [rbp - 0x20], 0
	mov	dword ptr [rbp - 0xcc], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rsi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd0], 1
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x70]
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
	mov	byte ptr [rbp - 0x41], cl
	lea	rdi, [rdi]
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.32
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	nop	
	call	textdomain
	mov	edi, 0x10000
	mov	qword ptr [rbp - 0x30], rax
	call	rpl_nl_langinfo
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [decimal_point]],  rax
	nop	
	cmp	qword ptr [word ptr [decimal_point]],  0
	mov	rsp, rsp
	je	.label_85
	mov	rdi,  qword ptr [word ptr [decimal_point]]
	mov	rsp, rsp
	call	strlen
	lea	rdi, [rdi]
	cmp	rax, 0
	jne	.label_90
.label_85:
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
	mov	dword ptr [rbp - 0xb0], eax
.label_24:
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str.35
	movabs	rcx, OFFSET FLAT:longopts
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r8d, eax
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0xcc]
	mov	rsi, qword ptr [rbp - 0x70]
	call	getopt_long
	mov	dword ptr [rbp - 0xc4], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xc4], -1
	jne	.label_39
	lea	rsi, [rsi]
	jmp	.label_43
.label_39:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc4]
	mov	ecx, eax
	lea	rsi, [rsi]
	sub	ecx, 0xffffff7d
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xb4], eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], ecx
	nop	
	je	.label_45
	jmp	.label_54
.label_54:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xb4]
	sub	eax, 0xffffff7e
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x88], eax
	mov	rsp, rsp
	je	.label_52
	jmp	.label_56
.label_56:
	nop	
	mov	eax, dword ptr [rbp - 0xb4]
	lea	rsi, [rsi]
	sub	eax, 0x64
	mov	dword ptr [rbp - 8], eax
	je	.label_57
	jmp	.label_60
.label_60:
	mov	eax, dword ptr [rbp - 0xb4]
	lea	rdi, [rdi]
	sub	eax, 0x7a
	mov	dword ptr [rbp - 0x64], eax
	je	.label_62
	mov	rbp, rbp
	jmp	.label_65
.label_65:
	mov	eax, dword ptr [rbp - 0xb4]
	lea	rsi, [rsi]
	sub	eax, 0x80
	nop	
	mov	dword ptr [rbp - 0x74], eax
	je	.label_66
	lea	rsi, [rsi]
	jmp	.label_69
.label_69:
	mov	eax, dword ptr [rbp - 0xb4]
	mov	rbp, rbp
	sub	eax, 0x81
	mov	dword ptr [rbp - 0x48], eax
	je	.label_70
	lea	rsi, [rsi]
	jmp	.label_75
.label_75:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xb4]
	sub	eax, 0x82
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsp, rsp
	je	.label_77
	jmp	.label_79
.label_79:
	mov	eax, dword ptr [rbp - 0xb4]
	mov	rbp, rbp
	sub	eax, 0x83
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x80], eax
	je	.label_80
	jmp	.label_83
.label_83:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xb4]
	sub	eax, 0x84
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	je	.label_84
	jmp	.label_58
.label_58:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xb4]
	sub	eax, 0x85
	mov	dword ptr [rbp - 0xa4], eax
	lea	rdi, [rdi]
	je	.label_88
	lea	rsi, [rsi]
	jmp	.label_91
.label_91:
	mov	eax, dword ptr [rbp - 0xb4]
	lea	rsi, [rsi]
	sub	eax, 0x86
	mov	dword ptr [rbp - 0x84], eax
	je	.label_72
	jmp	.label_20
.label_20:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xb4]
	lea	rdi, [rdi]
	sub	eax, 0x87
	mov	dword ptr [rbp - 0x4c], eax
	je	.label_22
	jmp	.label_27
.label_27:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xb4]
	sub	eax, 0x88
	mov	dword ptr [rbp - 0x90], eax
	mov	rbp, rbp
	je	.label_78
	jmp	.label_32
.label_32:
	mov	eax, dword ptr [rbp - 0xb4]
	sub	eax, 0x89
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	nop	
	je	.label_33
	jmp	.label_35
.label_35:
	mov	eax, dword ptr [rbp - 0xb4]
	mov	rsp, rsp
	sub	eax, 0x8a
	mov	dword ptr [rbp - 0x78], eax
	je	.label_36
	lea	rdi, [rdi]
	jmp	.label_40
.label_40:
	nop	
	mov	eax, dword ptr [rbp - 0xb4]
	lea	rsi, [rsi]
	sub	eax, 0x8b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	je	.label_42
	jmp	.label_48
.label_48:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xb4]
	nop	
	sub	eax, 0x8c
	mov	dword ptr [rbp - 0x94], eax
	je	.label_86
	jmp	.label_51
.label_51:
	mov	eax, dword ptr [rbp - 0xb4]
	sub	eax, 0x8d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc8], eax
	nop	
	je	.label_68
	jmp	.label_55
.label_66:
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
	jmp	.label_21
.label_70:
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	unit_to_umax
	mov	qword ptr [word ptr [from_unit_size]],  rax
	mov	rsp, rsp
	jmp	.label_21
.label_77:
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
	jmp	.label_21
.label_80:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [optarg]]
	nop	
	call	unit_to_umax
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [to_unit_size]],  rax
	jmp	.label_21
.label_84:
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
	jmp	.label_21
.label_72:
	mov	dword ptr [dword ptr [grouping]],  1
	jmp	.label_21
.label_22:
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
	jne	.label_44
	cmp	qword ptr [word ptr [padding_width]],  0
	jne	.label_47
.label_44:
	movabs	rdi, OFFSET FLAT:.str.39
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [optarg]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	call	quote
	mov	rbp, rbp
	mov	edi, 1
	xor	esi, esi
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_47:
	cmp	qword ptr [word ptr [padding_width]],  0
	jge	.label_59
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	dword ptr [dword ptr [padding_alignment]],  0
	sub	rcx,  qword ptr [word ptr [padding_width]]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [padding_width]],  rcx
.label_59:
	lea	rdi, [rdi]
	jmp	.label_21
.label_78:
	mov	rsp, rsp
	cmp	qword ptr [word ptr [n_frp]],  0
	je	.label_89
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
.label_89:
	mov	rbp, rbp
	mov	esi, 1
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	set_fields
	jmp	.label_21
.label_57:
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_81
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	nop	
	je	.label_81
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
.label_81:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [delimiter]],  ecx
	mov	rsp, rsp
	jmp	.label_21
.label_62:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [line_delim]],  0
	jmp	.label_21
.label_88:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [suffix]],  rax
	lea	rdi, [rdi]
	jmp	.label_21
.label_33:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [debug]],  1
	jmp	.label_21
.label_36:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [dev_debug]],  1
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [debug]],  1
	jmp	.label_21
.label_42:
	mov	rbp, rbp
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_34
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
	jne	.label_46
	mov	rbp, rbp
	cmp	qword ptr [word ptr [header]],  0
	lea	rdi, [rdi]
	jne	.label_49
.label_46:
	nop	
	movabs	rdi, OFFSET FLAT:.str.42
	lea	rdi, [rdi]
	call	gettext
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rax
	call	quote
	lea	rdi, [rdi]
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_49:
	jmp	.label_82
.label_34:
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [header]],  1
.label_82:
	lea	rdi, [rdi]
	jmp	.label_21
.label_86:
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [format_str]],  rax
	mov	rsp, rsp
	jmp	.label_21
.label_68:
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
	jmp	.label_21
.label_52:
	xor	edi, edi
	call	usage
.label_45:
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
.label_55:
	mov	edi, 1
	nop	
	call	usage
.label_21:
	mov	rbp, rbp
	jmp	.label_24
.label_43:
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [format_str]],  0
	nop	
	je	.label_25
	cmp	dword ptr [dword ptr [grouping]],  0
	lea	rsi, [rsi]
	je	.label_25
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
.label_25:
	test	byte ptr [byte ptr [debug]],  1
	nop	
	je	.label_38
	mov	rbp, rbp
	test	byte ptr [rbp - 0x41], 1
	lea	rdi, [rdi]
	jne	.label_38
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
.label_38:
	nop	
	test	byte ptr [byte ptr [debug]],  1
	je	.label_50
	cmp	dword ptr [dword ptr [scale_from]],  0
	jne	.label_50
	cmp	dword ptr [dword ptr [scale_to]],  0
	lea	rdi, [rdi]
	jne	.label_50
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [grouping]],  0
	mov	rsp, rsp
	jne	.label_50
	nop	
	cmp	qword ptr [word ptr [padding_width]],  0
	jne	.label_50
	mov	rsp, rsp
	cmp	qword ptr [word ptr [format_str]],  0
	mov	rbp, rbp
	jne	.label_50
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
.label_50:
	cmp	qword ptr [word ptr [format_str]],  0
	je	.label_67
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [format_str]]
	call	parse_format_string
.label_67:
	cmp	dword ptr [dword ptr [grouping]],  0
	je	.label_18
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [scale_to]],  0
	lea	rdi, [rdi]
	je	.label_74
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
.label_74:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [debug]],  1
	je	.label_28
	mov	edi, 0x10001
	call	rpl_nl_langinfo
	mov	rdi, rax
	call	strlen
	cmp	rax, 0
	jne	.label_28
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
.label_28:
	nop	
	jmp	.label_18
.label_18:
	mov	rdi,  qword ptr [word ptr [padding_width]]
	lea	rdi, [rdi]
	call	setup_padding_buffer
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	cmp	qword ptr [word ptr [padding_width]],  0
	mov	byte ptr [rbp - 0xd1], cl
	jne	.label_23
	cmp	dword ptr [dword ptr [delimiter]],  0x80
	sete	al
	mov	byte ptr [rbp - 0xd1], al
.label_23:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xd1]
	and	al, 1
	movzx	ecx, al
	mov	rbp, rbp
	mov	dword ptr [dword ptr [auto_padding]],  ecx
	cmp	dword ptr [dword ptr [inval_style]],  0
	nop	
	je	.label_31
	mov	dword ptr [dword ptr [conv_exit_code]],  0
.label_31:
	mov	eax, dword ptr [rbp - 0xcc]
	lea	rsi, [rsi]
	cmp	eax,  dword ptr [dword ptr [optind]]
	jle	.label_37
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
	jmp	.label_61
.label_61:
	nop	
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 0xcc]
	jge	.label_76
	mov	esi, 1
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rdi, qword ptr [rcx + rax*8]
	call	process_line
	lea	rsi, [rsi]
	and	eax, dword ptr [rbp - 0xd0]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xd0], eax
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	mov	dword ptr [dword ptr [optind]],  eax
	jmp	.label_61
.label_76:
	nop	
	jmp	.label_63
.label_37:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], 0
	mov	qword ptr [rbp - 0xc0], 0
.label_17:
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
	mov	byte ptr [rbp - 0xb5], cl
	je	.label_71
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x38]
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0xc0]
	lea	rsi, [rsi]
	movzx	edx,  byte ptr [byte ptr [line_delim]]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [stdin]]
	call	getdelim
	cmp	rax, 0
	mov	rsp, rsp
	setg	r8b
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb5], r8b
.label_71:
	nop	
	mov	al, byte ptr [rbp - 0xb5]
	nop	
	test	al, 1
	jne	.label_87
	lea	rdi, [rdi]
	jmp	.label_19
.label_87:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x40], eax
	lea	rdi, [rdi]
	jmp	.label_17
.label_19:
	lea	rsi, [rsi]
	jmp	.label_30
.label_30:
	lea	rdi, [rbp - 0x38]
	lea	rsi, [rbp - 0xc0]
	mov	rbp, rbp
	movzx	edx,  byte ptr [byte ptr [line_delim]]
	mov	rcx,  qword ptr [word ptr [stdin]]
	nop	
	call	getdelim
	mov	qword ptr [rbp - 0x60], rax
	cmp	rax, 0
	jle	.label_26
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	movzx	esi,  byte ptr [byte ptr [line_delim]]
	cmp	edx, esi
	sete	dil
	and	dil, 1
	mov	byte ptr [rbp - 0xa9], dil
	mov	rbp, rbp
	test	byte ptr [rbp - 0xa9], 1
	je	.label_29
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	sub	rax, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0
.label_29:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	al, byte ptr [rbp - 0xa9]
	and	al, 1
	movzx	esi, al
	lea	rsi, [rsi]
	call	process_line
	and	eax, dword ptr [rbp - 0xd0]
	mov	dword ptr [rbp - 0xd0], eax
	jmp	.label_30
.label_26:
	mov	rdi,  qword ptr [word ptr [stdin]]
	mov	rbp, rbp
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_53
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.52
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x8c], esi
	call	gettext
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x8c]
	mov	rdx, rax
	nop	
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_53:
	jmp	.label_63
.label_63:
	test	byte ptr [byte ptr [debug]],  1
	lea	rdi, [rdi]
	je	.label_64
	nop	
	cmp	dword ptr [rbp - 0xd0], 0
	jne	.label_64
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
.label_64:
	mov	dword ptr [rbp - 0xa8], 0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xd0], 0
	jne	.label_73
	cmp	dword ptr [dword ptr [inval_style]],  2
	je	.label_73
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [inval_style]],  3
	je	.label_73
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa8], 2
.label_73:
	nop	
	mov	eax, dword ptr [rbp - 0xa8]
	mov	rsp, rsp
	add	rsp, 0xe0
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x402fd0

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
	mov	qword ptr [rbp - 0x30], rdi
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	mov	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	call	strlen
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	je	.label_94
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_94
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 2
	mov	rdi, rax
	mov	rbp, rbp
	call	xmalloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x28]
	nop	
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	memcpy
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x69
	jne	.label_92
	nop	
	mov	eax, 2
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	ja	.label_92
	mov	rax, qword ptr [rbp - 0x50]
	movsx	edi, byte ptr [rax - 1]
	mov	rbp, rbp
	call	c_isdigit
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_92
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	byte ptr [rax], 0
	jmp	.label_96
.label_92:
	nop	
	movabs	rax, OFFSET FLAT:.str.94
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x50], rdx
	mov	byte ptr [rcx + 1], 0x42
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	rsp, rsp
	add	rdx, 1
	mov	qword ptr [rbp - 0x50], rdx
	mov	rsp, rsp
	mov	byte ptr [rcx + 1], 0
	mov	qword ptr [rbp - 0x40], rax
.label_96:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
.label_94:
	lea	rsi, [rbp - 0x50]
	mov	edx, 0xa
	mov	rsp, rsp
	lea	rcx, [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x40]
	call	xstrtoumax
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_95
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	nop	
	jne	.label_95
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	jne	.label_93
.label_95:
	mov	rdi, qword ptr [rbp - 8]
	call	free
	nop	
	movabs	rdi, OFFSET FLAT:.str.95
	call	gettext
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x48], rax
	call	quote
	mov	edi, 1
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	call	error
.label_93:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403200

	.globl parse_format_string
	.type parse_format_string, @function
parse_format_string:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0xe0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x50], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa8], 0
	mov	byte ptr [rbp - 0x91], 0
	nop	
	mov	qword ptr [rbp - 0x40], 0
.label_132:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x78]
	movsx	eax, byte ptr [rsi + rdx]
	mov	rsp, rsp
	cmp	eax, 0x25
	mov	byte ptr [rbp - 0xc1], cl
	jne	.label_120
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x78]
	movsx	edx, byte ptr [rcx + rax + 1]
	lea	rdi, [rdi]
	cmp	edx, 0x25
	setne	sil
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xc1], sil
.label_120:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xc1]
	xor	al, 0xff
	mov	rbp, rbp
	test	al, 1
	jne	.label_118
	jmp	.label_122
.label_118:
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rbp - 0x78]
	cmp	byte ptr [rcx + rax], 0
	jne	.label_123
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.105
	call	gettext
	nop	
	mov	rdi, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x38], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_123:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x78]
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
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	jmp	.label_132
.label_122:
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
.label_104:
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.106
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	strspn
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x78]
	movsx	ecx, byte ptr [rsi + rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x27
	jne	.label_114
	mov	rbp, rbp
	mov	dword ptr [dword ptr [grouping]],  1
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_102
.label_114:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x78]
	nop	
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x30
	lea	rsi, [rsi]
	jne	.label_126
	mov	byte ptr [rbp - 0x91], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_101
.label_126:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x70], 0
	jne	.label_131
	jmp	.label_99
.label_131:
	jmp	.label_101
.label_101:
	mov	rbp, rbp
	jmp	.label_102
.label_102:
	jmp	.label_104
.label_99:
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0xa8]
	mov	rbp, rbp
	mov	edx, 0xa
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	strtol
	mov	qword ptr [rbp - 0x50], rax
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	nop	
	jne	.label_111
	movabs	rdi, OFFSET FLAT:.str.107
	call	gettext
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	call	quote
	nop	
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_111:
	nop	
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x40]
	cmp	rax, rcx
	mov	rsp, rsp
	je	.label_97
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_97
	nop	
	test	byte ptr [byte ptr [debug]],  1
	je	.label_127
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [padding_width]],  0
	je	.label_127
	test	byte ptr [rbp - 0x91], 1
	je	.label_130
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jg	.label_127
.label_130:
	movabs	rdi, OFFSET FLAT:.str.108
	lea	rdi, [rdi]
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_127:
	nop	
	cmp	qword ptr [rbp - 0x50], 0
	lea	rsi, [rsi]
	jge	.label_106
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	nop	
	mov	dword ptr [dword ptr [padding_alignment]],  0
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rbp - 0x50]
	nop	
	mov	qword ptr [word ptr [padding_width]],  rcx
	nop	
	jmp	.label_109
.label_106:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x91], 1
	lea	rdi, [rdi]
	je	.label_112
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [word ptr [zero_padding_width]],  rax
	jmp	.label_115
.label_112:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [word ptr [padding_width]],  rax
.label_115:
	jmp	.label_109
.label_109:
	jmp	.label_97
.label_97:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbp - 0x78]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rbp - 0x78]
	nop	
	movsx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	cmp	edx, 0
	jne	.label_124
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.109
	call	gettext
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	nop	
	call	quote
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_124:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2e
	jne	.label_105
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0xa8]
	mov	rbp, rbp
	mov	edx, 0xa
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	nop	
	call	strtol
	mov	qword ptr [word ptr [user_precision]],  rax
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	lea	rsi, [rsi]
	je	.label_117
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [user_precision]],  0
	jl	.label_117
	lea	rsi, [rsi]
	mov	rax, -1
	cmp	rax,  qword ptr [word ptr [user_precision]]
	lea	rdi, [rdi]
	jb	.label_117
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax]
	movsxd	rax, edx
	mov	qword ptr [rbp - 0xc0], rax
	lea	rsi, [rsi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xc0]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 1
	mov	rsp, rsp
	cmp	edx, 0
	jne	.label_117
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0x2b
	jne	.label_98
.label_117:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.110
	call	gettext
	mov	rdi, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rsp, rsp
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_98:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa8]
	nop	
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	sub	rax, rcx
	mov	qword ptr [rbp - 0x40], rax
.label_105:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x78]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x66
	mov	rbp, rbp
	je	.label_116
	movabs	rdi, OFFSET FLAT:.str.111
	call	gettext
	mov	rdi, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	nop	
	call	error
.label_116:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rax
.label_121:
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	nop	
	je	.label_134
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rcx + rax]
	nop	
	cmp	edx, 0x25
	nop	
	jne	.label_103
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	movsx	edx, byte ptr [rcx + rax + 1]
	nop	
	cmp	edx, 0x25
	je	.label_103
	movabs	rdi, OFFSET FLAT:.str.112
	nop	
	call	gettext
	mov	rdi, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
	nop	
	call	quote
	mov	edi, 1
	xor	esi, esi
	nop	
	mov	rdx, qword ptr [rbp - 0xb0]
	nop	
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_103:
	jmp	.label_119
.label_119:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x78]
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
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_121
.label_134:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	je	.label_129
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x68]
	call	xstrndup
	mov	qword ptr [word ptr [format_str_prefix]],  rax
.label_129:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x78]
	movsx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_133
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rdi, rax
	call	xstrdup
	mov	qword ptr [word ptr [format_str_suffix]],  rax
.label_133:
	mov	rsp, rsp
	jmp	.label_108
.label_108:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_110
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x78]
	nop	
	mov	qword ptr [rbp - 0x10], rax
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
	mov	qword ptr [rbp - 0x60], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], r8
	mov	qword ptr [rbp - 0x30], rsi
	nop	
	mov	qword ptr [rbp - 0x80], rdx
	je	.label_113
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [format_str_prefix]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rax
	lea	rsi, [rsi]
	jmp	.label_100
.label_113:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_100
.label_100:
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	edi, 1
	mov	rbp, rbp
	mov	rsi, rax
	nop	
	call	quote_n
	cmp	qword ptr [word ptr [format_str_suffix]],  0
	nop	
	mov	qword ptr [rbp - 8], rax
	je	.label_107
	mov	rax,  qword ptr [word ptr [format_str_suffix]]
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_125
.label_107:
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_125
.label_125:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa0]
	mov	edi, 2
	mov	rsi, rax
	lea	rsi, [rsi]
	call	quote_n
	nop	
	movabs	rsi, OFFSET FLAT:.str.113
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x80]
	mov	r8, qword ptr [rbp - 0x58]
	mov	r9, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp - 8]
	mov	qword ptr [rsp], r10
	mov	qword ptr [rsp + 8], rax
	mov	al, 0
	nop	
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
.label_110:
	mov	rbp, rbp
	jmp	.label_128
.label_128:
	lea	rdi, [rdi]
	add	rsp, 0xe0
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x403af0

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
	#Procedure 0x403b60

	.globl process_line
	.type process_line, @function
process_line:
	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x40
	nop	
	mov	al, sil
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	qword ptr [rbp - 0x30], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x31], 1
.label_142:
	lea	rdi, [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	call	next_field
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_139
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x30]
	call	process_field
	test	al, 1
	jne	.label_143
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x31], 0
.label_143:
	cmp	dword ptr [dword ptr [delimiter]],  0x80
	lea	rsi, [rsi]
	jne	.label_140
	lea	rdi, [rdi]
	mov	eax, 0x20
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	jmp	.label_145
.label_140:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [delimiter]]
	nop	
	mov	dword ptr [rbp - 0x24], eax
.label_145:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	edi, eax
	lea	rsi, [rsi]
	call	fputc_unlocked
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, 1
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x20], eax
	jmp	.label_144
.label_139:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x30]
	nop	
	call	process_field
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_138
	mov	byte ptr [rbp - 0x31], 0
.label_138:
	nop	
	jmp	.label_141
.label_144:
	mov	rsp, rsp
	jmp	.label_142
.label_141:
	test	byte ptr [rbp - 0x19], 1
	mov	rbp, rbp
	je	.label_137
	mov	rbp, rbp
	movzx	edi,  byte ptr [byte ptr [line_delim]]
	mov	rsp, rsp
	call	putchar_unlocked
	mov	dword ptr [rbp - 4], eax
.label_137:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x31]
	and	al, 1
	movzx	eax, al
	nop	
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403cd0

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
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [delimiter]],  0x80
	lea	rdi, [rdi]
	je	.label_149
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx,  dword ptr [dword ptr [delimiter]]
	lea	rsi, [rsi]
	je	.label_153
	lea	rsi, [rsi]
	jmp	.label_148
.label_148:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x1b], cl
	je	.label_160
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx,  dword ptr [dword ptr [delimiter]]
	setne	dl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1b], dl
.label_160:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x1b]
	test	al, 1
	mov	rbp, rbp
	jne	.label_146
	jmp	.label_147
.label_146:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_148
.label_147:
	lea	rdi, [rdi]
	jmp	.label_153
.label_153:
	mov	rbp, rbp
	jmp	.label_155
.label_149:
	lea	rsi, [rsi]
	jmp	.label_157
.label_157:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rdx]
	nop	
	cmp	eax, 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x19], cl
	je	.label_158
	mov	rax, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rax]
	call	field_sep
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x19], al
.label_158:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_156
	jmp	.label_159
.label_156:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_157
.label_159:
	jmp	.label_151
.label_151:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movsx	eax, byte ptr [rdx]
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x1a], cl
	mov	rbp, rbp
	je	.label_152
	mov	rax, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rax]
	mov	rsp, rsp
	call	field_sep
	xor	al, 0xff
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1a], al
.label_152:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x1a]
	test	al, 1
	jne	.label_150
	lea	rdi, [rdi]
	jmp	.label_154
.label_150:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_151
.label_154:
	jmp	.label_155
.label_155:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ea0

	.globl process_field
	.type process_field, @function
process_field:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x60
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	lea	rdi, [rdi]
	fldz	
	lea	rdi, [rdi]
	fstp	xword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], 0
	nop	
	mov	byte ptr [rbp - 0x19], 1
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	call	include_field
	test	al, 1
	jne	.label_161
	mov	rsp, rsp
	jmp	.label_163
.label_161:
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x40]
	lea	rdx, [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	call	process_suffixed_number
	cmp	eax, 0
	setne	r8b
	mov	rbp, rbp
	and	r8b, 1
	mov	byte ptr [rbp - 0x19], r8b
	mov	rbp, rbp
	test	byte ptr [rbp - 0x19], 1
	lea	rdi, [rdi]
	je	.label_165
	fld	xword ptr [rbp - 0x40]
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, rsp
	fstp	xword ptr [rax]
	lea	rsi, [rsi]
	call	prepare_padded_number
	cmp	eax, 0
	mov	rsp, rsp
	setne	cl
	and	cl, 1
	nop	
	mov	byte ptr [rbp - 0x19], cl
.label_165:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x19], 1
	lea	rsi, [rsi]
	je	.label_166
	call	print_padded_number
	mov	rbp, rbp
	jmp	.label_162
.label_166:
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], eax
.label_162:
	jmp	.label_164
.label_163:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
.label_164:
	mov	al, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	nop	
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403fc0

	.globl field_sep
	.type field_sep, @function
field_sep:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	al, dil
	mov	byte ptr [rbp - 9], al
	nop	
	movzx	edi, byte ptr [rbp - 9]
	movsxd	rcx, edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rcx
	call	__ctype_b_loc
	mov	dl, 1
	nop	
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 1
	lea	rsi, [rsi]
	cmp	edi, 0
	mov	byte ptr [rbp - 0xa], dl
	mov	rbp, rbp
	jne	.label_167
	movzx	eax, byte ptr [rbp - 9]
	mov	rbp, rbp
	cmp	eax, 0xa
	mov	rbp, rbp
	sete	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa], cl
.label_167:
	mov	al, byte ptr [rbp - 0xa]
	and	al, 1
	movzx	eax, al
	lea	rdi, [rdi]
	add	rsp, 0x10
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404040

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
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_168
	cmp	qword ptr [rbp - 0x10], 1
	sete	al
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x11], al
	nop	
	jmp	.label_169
.label_168:
	nop	
	jmp	.label_172
.label_172:
	nop	
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax], -1
	mov	rsp, rsp
	je	.label_170
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_171
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_171
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_169
.label_171:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_172
.label_170:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], 0
.label_169:
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404100

	.globl process_suffixed_number
	.type process_suffixed_number, @function
process_suffixed_number:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	nop	
	mov	qword ptr [rbp - 0xb0], rdi
	mov	qword ptr [rbp - 0x38], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rcx
	cmp	qword ptr [word ptr [suffix]],  0
	lea	rdi, [rdi]
	je	.label_173
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xb0]
	call	strlen
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [suffix]]
	mov	qword ptr [rbp - 0x98], rax
	nop	
	call	strlen
	nop	
	mov	rdi, qword ptr [rbp - 0x98]
	cmp	rdi, rax
	mov	rbp, rbp
	jbe	.label_173
	xor	eax, eax
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rdx
	mov	rbp, rbp
	call	strlen
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	add	rcx, rax
	mov	rdi,  qword ptr [word ptr [suffix]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	call	strlen
	mov	rcx, qword ptr [rbp - 0xb8]
	nop	
	sub	rcx, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], rax
	mov	rdi,  qword ptr [word ptr [suffix]]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x88]
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_193
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0
	test	byte ptr [byte ptr [dev_debug]],  1
	lea	rsi, [rsi]
	je	.label_174
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax,  qword ptr [word ptr [suffix]]
	nop	
	mov	qword ptr [rbp - 0x78], rdi
	nop	
	mov	rdi, rax
	nop	
	call	quote
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.118
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	lea	rsi, [rsi]
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
.label_174:
	jmp	.label_189
.label_189:
	jmp	.label_175
.label_193:
	lea	rdi, [rdi]
	jmp	.label_192
.label_192:
	mov	rsp, rsp
	test	byte ptr [byte ptr [dev_debug]],  1
	lea	rsi, [rsi]
	je	.label_195
	movabs	rsi, OFFSET FLAT:.str.119
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	mov	dword ptr [rbp - 0x8c], eax
.label_195:
	lea	rsi, [rsi]
	jmp	.label_180
.label_180:
	jmp	.label_175
.label_175:
	jmp	.label_173
.label_173:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rax
.label_185:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x68]
	movsx	eax, byte ptr [rdx]
	mov	rsp, rsp
	cmp	eax, 0
	mov	byte ptr [rbp - 0x39], cl
	je	.label_186
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	lea	rdi, [rdi]
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x48], rcx
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	movzx	edi, word ptr [rax + rcx*2]
	lea	rdi, [rdi]
	and	edi, 1
	cmp	edi, 0
	nop	
	setne	dl
	nop	
	mov	byte ptr [rbp - 0x39], dl
.label_186:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x39]
	test	al, 1
	mov	rsp, rsp
	jne	.label_181
	jmp	.label_183
.label_181:
	mov	rax, qword ptr [rbp - 0x68]
	nop	
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_185
.label_183:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x68]
	sub	rax, rcx
	lea	rsi, [rsi]
	mov	edx, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9c], edx
	cmp	dword ptr [dword ptr [auto_padding]],  0
	je	.label_179
	cmp	dword ptr [rbp - 0x9c], 0
	ja	.label_176
	cmp	qword ptr [rbp - 0x58], 1
	lea	rdi, [rdi]
	jle	.label_177
.label_176:
	mov	rdi, qword ptr [rbp - 0xb0]
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [padding_width]],  rax
	mov	rdi,  qword ptr [word ptr [padding_width]]
	mov	rbp, rbp
	call	setup_padding_buffer
	mov	rbp, rbp
	jmp	.label_187
.label_177:
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [padding_width]],  0
.label_187:
	nop	
	jmp	.label_191
.label_191:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_194
	nop	
	movabs	rsi, OFFSET FLAT:.str.120
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rdx,  qword ptr [word ptr [padding_width]]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x7c], eax
.label_194:
	jmp	.label_178
.label_178:
	jmp	.label_179
.label_179:
	lea	rsi, [rbp - 0x10]
	fldz	
	fstp	xword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	call	parse_human_number
	nop	
	mov	dword ptr [rbp - 0x90], eax
	nop	
	cmp	dword ptr [rbp - 0x90], 1
	jne	.label_182
	mov	rbp, rbp
	test	byte ptr [byte ptr [debug]],  1
	je	.label_182
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.121
	nop	
	call	gettext
	mov	rdi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rbp, rbp
	call	quote
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
.label_182:
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [from_unit_size]],  1
	nop	
	jne	.label_196
	mov	rbp, rbp
	cmp	qword ptr [word ptr [to_unit_size]],  1
	je	.label_190
.label_196:
	lea	rsi, [rsi]
	fld	xword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + from_unit_size]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	nop	
	test	rax, rax
	nop	
	setns	cl
	mov	rsp, rsp
	movzx	edx, cl
	mov	eax, edx
	fld	dword ptr [dword ptr [+ (rax * 4) + label_188]]
	fild	qword ptr [rbp - 0x20]
	faddp	st(1)
	fmulp	st(1)
	mov	rax,  qword ptr [word ptr [rip + to_unit_size]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	setns	cl
	mov	rsp, rsp
	movzx	edx, cl
	mov	eax, edx
	mov	rsp, rsp
	fld	dword ptr [dword ptr [+ (rax * 4) + label_188]]
	mov	rbp, rbp
	fild	qword ptr [rbp - 0x50]
	faddp	st(1)
	fdivp	st(1)
	fstp	xword ptr [rbp - 0x10]
.label_190:
	mov	al, 1
	nop	
	fld	xword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	fstp	xword ptr [rcx]
	nop	
	cmp	dword ptr [rbp - 0x90], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x29], al
	mov	rsp, rsp
	je	.label_184
	cmp	dword ptr [rbp - 0x90], 1
	nop	
	sete	al
	mov	byte ptr [rbp - 0x29], al
.label_184:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x29]
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
	#Procedure 0x4045b0

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
	fstp	xword ptr [rbp - 0xc0]
	nop	
	mov	qword ptr [rbp - 0x158], rdi
	mov	rsp, rsp
	cmp	qword ptr [word ptr [user_precision]],  -1
	jne	.label_204
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rbp - 0x150], rax
	jmp	.label_213
.label_204:
	mov	rax,  qword ptr [word ptr [user_precision]]
	mov	qword ptr [rbp - 0x150], rax
.label_213:
	mov	rax, qword ptr [rbp - 0x150]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x160], rax
	fld	xword ptr [rbp - 0xc0]
	mov	rsp, rsp
	mov	rax, rsp
	lea	rsi, [rsi]
	fstp	xword ptr [rax]
	lea	rdi, [rdi]
	mov	edi, 0xa
	mov	rbp, rbp
	lea	rsi, [rbp - 0x140]
	call	expld
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [scale_to]],  0
	fstp	xword ptr [rbp - 0xf4]
	nop	
	jne	.label_209
	nop	
	mov	eax, dword ptr [rbp - 0x140]
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x160]
	cmp	rcx, 0x12
	jbe	.label_209
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [inval_style]],  3
	je	.label_212
	cmp	qword ptr [rbp - 0x160], 0
	je	.label_198
	xor	eax, eax
	mov	edi,  dword ptr [dword ptr [rip + conv_exit_code]]
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.133
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x124], edi
	mov	rbp, rbp
	mov	rdi, rdx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xcc], eax
	mov	rsp, rsp
	call	gettext
	fld	xword ptr [rbp - 0xc0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x160]
	mov	rdx, rsp
	nop	
	fstp	xword ptr [rdx]
	mov	rsp, rsp
	xor	esi, esi
	mov	r8b, sil
	mov	edi, dword ptr [rbp - 0x124]
	nop	
	mov	rdx, rax
	mov	al, r8b
	lea	rdi, [rdi]
	call	error
	lea	rdi, [rdi]
	jmp	.label_197
.label_198:
	xor	eax, eax
	mov	edi,  dword ptr [dword ptr [rip + conv_exit_code]]
	mov	ecx, OFFSET FLAT:.str.134
	mov	edx, ecx
	mov	dword ptr [rbp - 0x13c], edi
	mov	rbp, rbp
	mov	rdi, rdx
	mov	dword ptr [rbp - 0x104], eax
	nop	
	call	gettext
	lea	rsi, [rsi]
	fld	xword ptr [rbp - 0xc0]
	nop	
	mov	rdx, rsp
	fstp	xword ptr [rdx]
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	sil, cl
	mov	edi, dword ptr [rbp - 0x13c]
	nop	
	mov	byte ptr [rbp - 0x129], sil
	nop	
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x129]
	lea	rdi, [rdi]
	call	error
.label_197:
	jmp	.label_212
.label_212:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x128], 0
	jmp	.label_201
.label_209:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x140], 0x1a
	lea	rsi, [rsi]
	jbe	.label_206
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [inval_style]],  3
	lea	rsi, [rsi]
	je	.label_202
	xor	eax, eax
	mov	edi,  dword ptr [dword ptr [rip + conv_exit_code]]
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.135
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x114], edi
	mov	rdi, rdx
	mov	dword ptr [rbp - 0x148], eax
	call	gettext
	lea	rsi, [rsi]
	fld	xword ptr [rbp - 0xc0]
	mov	rdx, rsp
	nop	
	fstp	xword ptr [rdx]
	xor	ecx, ecx
	nop	
	mov	sil, cl
	mov	edi, dword ptr [rbp - 0x114]
	mov	byte ptr [rbp - 0x141], sil
	mov	esi, ecx
	mov	rsp, rsp
	mov	rdx, rax
	nop	
	mov	al, byte ptr [rbp - 0x141]
	mov	rbp, rbp
	call	error
.label_202:
	mov	dword ptr [rbp - 0x128], 0
	mov	rbp, rbp
	jmp	.label_201
.label_206:
	mov	rbp, rbp
	lea	rsi, [rbp - 0x90]
	lea	rsi, [rsi]
	fld	xword ptr [rbp - 0xc0]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x160]
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
	mov	dword ptr [rbp - 0xf8], edx
	mov	rdx, rax
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0xf8]
	call	double_to_human
	nop	
	cmp	qword ptr [word ptr [suffix]],  0
	mov	rsp, rsp
	je	.label_199
	mov	eax, 0x80
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rbp, rbp
	lea	rdx, [rbp - 0x90]
	nop	
	mov	rsi,  qword ptr [word ptr [suffix]]
	lea	rdi, [rdi]
	mov	rdi, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe0], rcx
	mov	qword ptr [rbp - 0xa8], rdx
	mov	qword ptr [rbp - 0x120], rsi
	call	strlen
	nop	
	mov	rcx, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	sub	rcx, rax
	sub	rcx, 1
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x120]
	mov	rsp, rsp
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	strncat
	nop	
	mov	qword ptr [rbp - 0xe8], rax
.label_199:
	mov	rbp, rbp
	jmp	.label_211
.label_211:
	mov	rbp, rbp
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_203
	mov	rsp, rsp
	lea	rdi, [rbp - 0x90]
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	nop	
	fld	xword ptr [rbp - 0xc0]
	nop	
	fstp	xword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	call	quote
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.136
	mov	rcx, rsp
	fld	xword ptr [rbp - 0xa0]
	fstp	xword ptr [rcx]
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.136
	nop	
	mov	esi, edx
	lea	rsi, [rsi]
	xor	edx, edx
	mov	r8b, dl
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x138], rdi
	lea	rdi, [rdi]
	mov	rdi, rcx
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, r8b
	mov	rbp, rbp
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x94], eax
.label_203:
	jmp	.label_208
.label_208:
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [padding_width]],  0
	je	.label_210
	nop	
	lea	rdi, [rbp - 0x90]
	nop	
	call	strlen
	cmp	rax,  qword ptr [word ptr [padding_width]]
	jae	.label_210
	lea	rcx, [rbp - 0x100]
	mov	rsp, rsp
	mov	r9d, 2
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x90]
	mov	rax,  qword ptr [word ptr [padding_width]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x100], rax
	mov	rsi,  qword ptr [word ptr [padding_buffer]]
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [padding_buffer_size]]
	mov	rsp, rsp
	mov	r8d,  dword ptr [dword ptr [padding_alignment]]
	lea	rdi, [rdi]
	call	mbsalign
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x110], rax
	mov	rbp, rbp
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_200
	nop	
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [padding_buffer]]
	nop	
	mov	qword ptr [rbp - 0xd8], rdi
	lea	rsi, [rsi]
	mov	rdi, rax
	call	quote
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.137
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rdx, rax
	mov	rbp, rbp
	mov	al, 0
	nop	
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x164], eax
.label_200:
	jmp	.label_205
.label_205:
	lea	rsi, [rsi]
	jmp	.label_207
.label_210:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x90]
	call	strlen
	add	rax, 1
	nop	
	mov	rdi, rax
	call	setup_padding_buffer
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x90]
	mov	rdi,  qword ptr [word ptr [padding_buffer]]
	call	strcpy
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc8], rax
.label_207:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x128], 1
.label_201:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x128]
	mov	rbp, rbp
	add	rsp, 0x180
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404b20

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
	mov	dword ptr [rbp - 0xc], eax
.label_214:
	mov	rdi,  qword ptr [word ptr [padding_buffer]]
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	call	fputs_unlocked
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [format_str_suffix]],  0
	mov	dword ptr [rbp - 4], eax
	je	.label_215
	mov	rdi,  qword ptr [word ptr [format_str_suffix]]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], eax
.label_215:
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x404bc0

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
	#Procedure 0x404be0

	.globl parse_human_number
	.type parse_human_number, @function
parse_human_number:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x28]
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
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	call	simple_strtod_fatal
	mov	edi, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x1c], edi
	jmp	.label_219
.label_218:
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_217
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_217
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [inval_style]],  3
	je	.label_216
	movabs	rdi, OFFSET FLAT:.str.122
	mov	eax,  dword ptr [dword ptr [conv_exit_code]]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	call	gettext
	xor	edi, edi
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	call	quote_n
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	call	quote_n
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x48]
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
	mov	dword ptr [rbp - 0x1c], eax
.label_219:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x50
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d20

	.globl simple_strtod_human
	.type simple_strtod_human, @function
simple_strtod_human:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x28], rsi
	nop	
	mov	qword ptr [rbp - 0x88], rdx
	nop	
	mov	qword ptr [rbp - 0x78], rcx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], r8d
	nop	
	mov	dword ptr [rbp - 0x50], 0
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x4c]
	nop	
	call	default_scale_base
	mov	dword ptr [rbp - 0x40], eax
	nop	
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_240
	mov	rsp, rsp
	xor	edi, edi
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	call	quote_n
	lea	rdi, [rdi]
	mov	edi, 1
	nop	
	mov	rsi,  qword ptr [word ptr [decimal_point]]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	call	quote_n
	nop	
	movabs	rsi, OFFSET FLAT:.str.123
	mov	rsp, rsp
	mov	r8d, 0x12
	nop	
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], eax
.label_240:
	lea	rdi, [rdi]
	jmp	.label_241
.label_241:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	call	simple_strtod_float
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], 0
	lea	rdi, [rdi]
	je	.label_227
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x3c], 1
	je	.label_227
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x80], eax
	mov	rbp, rbp
	jmp	.label_222
.label_227:
	mov	rsp, rsp
	jmp	.label_235
.label_235:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_237
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.124
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rcx, qword ptr [rbp - 0x88]
	fld	xword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x78]
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
	mov	qword ptr [rbp - 0x70], rax
	mov	al, r9b
	lea	rsi, [rsi]
	call	fprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x68], eax
.label_237:
	jmp	.label_233
.label_233:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	nop	
	je	.label_234
	jmp	.label_229
.label_229:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	mov	rsp, rsp
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	movzx	edi, word ptr [rax + rcx*2]
	lea	rdi, [rdi]
	and	edi, 1
	cmp	edi, 0
	je	.label_220
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rax]
	add	rcx, 1
	mov	qword ptr [rax], rcx
	jmp	.label_229
.label_220:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	movsx	edi, byte ptr [rax]
	mov	rsp, rsp
	call	valid_suffix
	cmp	eax, 0
	jne	.label_228
	mov	dword ptr [rbp - 0x80], 5
	lea	rsi, [rsi]
	jmp	.label_222
.label_228:
	cmp	dword ptr [rbp - 0x4c], 0
	nop	
	jne	.label_232
	mov	dword ptr [rbp - 0x80], 4
	lea	rsi, [rsi]
	jmp	.label_222
.label_232:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	edi, byte ptr [rax]
	call	suffix_power
	mov	dword ptr [rbp - 0x50], eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rcx]
	add	rdx, 1
	mov	qword ptr [rcx], rdx
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x4c], 1
	mov	rsp, rsp
	jne	.label_224
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x69
	mov	rsp, rsp
	jne	.label_224
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40], 0x400
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax]
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rax], rcx
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_238
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.125
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	edx, dword ptr [rbp - 0x40]
	mov	al, 0
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
.label_238:
	jmp	.label_230
.label_230:
	jmp	.label_224
.label_224:
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rax], 0
.label_234:
	nop	
	cmp	dword ptr [rbp - 0x4c], 4
	mov	rbp, rbp
	jne	.label_221
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x69
	jne	.label_236
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rax]
	add	rcx, 1
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	jmp	.label_239
.label_236:
	mov	dword ptr [rbp - 0x80], 6
	mov	rbp, rbp
	jmp	.label_222
.label_239:
	jmp	.label_221
.label_221:
	mov	eax, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x30], eax
	nop	
	fild	dword ptr [rbp - 0x30]
	mov	edi, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	nop	
	call	powerld
	mov	rsp, rsp
	fstp	xword ptr [rbp - 0x60]
	test	byte ptr [byte ptr [dev_debug]],  1
	mov	rbp, rbp
	je	.label_231
	movabs	rax, OFFSET FLAT:.str.126
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	edx, dword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rbp - 0x50]
	fld	xword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rsi, rsp
	lea	rdi, [rdi]
	fstp	xword ptr [rsi]
	mov	r8d, OFFSET FLAT:.str.126
	mov	esi, r8d
	mov	rsp, rsp
	xor	r8d, r8d
	mov	r9b, r8b
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	mov	al, r9b
	mov	rbp, rbp
	call	fprintf
	mov	dword ptr [rbp - 0x64], eax
.label_231:
	nop	
	jmp	.label_223
.label_223:
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	fld	xword ptr [rax]
	fld	xword ptr [rbp - 0x60]
	fmulp	st(1)
	mov	rbp, rbp
	fstp	xword ptr [rax]
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_225
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.127
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rcx, qword ptr [rbp - 0x88]
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
	mov	qword ptr [rbp - 0x90], rax
	nop	
	mov	al, r8b
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
.label_225:
	jmp	.label_226
.label_226:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x80], eax
.label_222:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x80]
	mov	rbp, rbp
	add	rsp, 0xb0
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4051b0

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
	mov	qword ptr [rbp - 0x28], 0
	nop	
	mov	edi, dword ptr [rbp - 4]
	mov	esi, edi
	mov	rbp, rbp
	mov	rax, rsi
	sub	rax, 6
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	ja	.label_242
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_243]]
	jmp	rcx
.label_1039:
	mov	rsp, rsp
	call	abort
.label_1040:
	movabs	rax, OFFSET FLAT:.str.128
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_242
.label_1041:
	movabs	rax, OFFSET FLAT:.str.129
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_242
.label_1042:
	movabs	rax, OFFSET FLAT:.str.130
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_242
.label_1043:
	movabs	rax, OFFSET FLAT:.str.131
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_242
.label_1044:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.132
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
.label_242:
	cmp	dword ptr [dword ptr [inval_style]],  3
	mov	rbp, rbp
	je	.label_244
	mov	edi,  dword ptr [dword ptr [conv_exit_code]]
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], edi
	mov	rdi, rax
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	nop	
	call	quote
	lea	rdi, [rdi]
	xor	esi, esi
	mov	edi, dword ptr [rbp - 0x34]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
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
	#Procedure 0x4052e0

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
	mov	dword ptr [rbp - 0x14], eax
	nop	
	mov	dword ptr [rbp - 0xc], edi
	jb	.label_245
	jmp	.label_249
.label_249:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, -3
	sub	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], eax
	ja	.label_246
	mov	rsp, rsp
	jmp	.label_247
.label_247:
	mov	dword ptr [rbp - 4], 0x400
	jmp	.label_248
.label_245:
	jmp	.label_246
.label_246:
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0x3e8
.label_248:
	nop	
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405350

	.globl simple_strtod_float
	.type simple_strtod_float, @function
simple_strtod_float:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x80
	nop	
	mov	qword ptr [rbp - 0x58], rdi
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x50], rcx
	mov	dword ptr [rbp - 0x5c], 0
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_252
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rax], 0
.label_252:
	lea	rcx, [rbp - 1]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	simple_strtod_int
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], eax
	cmp	dword ptr [rbp - 0x5c], 0
	je	.label_258
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x5c], 1
	je	.label_258
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_250
.label_258:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rax]
	mov	rsi,  qword ptr [word ptr [decimal_point]]
	nop	
	movsxd	rdx,  dword ptr [dword ptr [decimal_point_length]]
	call	strncmp
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_260
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x68]
	lea	rdx, [rbp - 0x40]
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x41]
	fldz	
	fstp	xword ptr [rbp - 0x40]
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
	mov	dword ptr [rbp - 0x48], eax
	cmp	dword ptr [rbp - 0x48], 0
	je	.label_253
	cmp	dword ptr [rbp - 0x48], 1
	je	.label_253
	mov	eax, dword ptr [rbp - 0x48]
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_250
.label_253:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x48], 1
	lea	rsi, [rsi]
	jne	.label_257
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x48]
	mov	dword ptr [rbp - 0x5c], eax
.label_257:
	test	byte ptr [rbp - 0x41], 1
	lea	rsi, [rsi]
	je	.label_261
	mov	dword ptr [rbp - 0x60], 3
	jmp	.label_250
.label_261:
	mov	rax, qword ptr [rbp - 0x68]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	fld	xword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x20]
	nop	
	mov	rax, rsp
	fld	dword ptr [dword ptr [rip + label_254]]
	mov	rsp, rsp
	fstp	xword ptr [rax]
	fstp	xword ptr [rbp - 0xc]
	call	powerld
	fld	xword ptr [rbp - 0xc]
	fdivrp	st(1)
	fstp	xword ptr [rbp - 0x40]
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	je	.label_251
	mov	rbp, rbp
	test	byte ptr [rbp - 1], 1
	je	.label_256
	fld	xword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x28]
	fld	xword ptr [rax]
	lea	rsi, [rsi]
	fsubrp	st(1)
	fstp	xword ptr [rax]
	jmp	.label_259
.label_256:
	fld	xword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	fld	xword ptr [rax]
	faddp	st(1)
	fstp	xword ptr [rax]
.label_259:
	lea	rsi, [rsi]
	jmp	.label_251
.label_251:
	cmp	qword ptr [rbp - 0x50], 0
	lea	rsi, [rsi]
	je	.label_255
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx], rax
.label_255:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
.label_260:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 0x60], eax
.label_250:
	mov	eax, dword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405570

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
	#Procedure 0x4055b0

	.globl suffix_power
	.type suffix_power, @function
suffix_power:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xd], al
	movsx	edi, byte ptr [rbp - 0xd]
	mov	rbp, rbp
	mov	ecx, edi
	sub	ecx, 0x45
	mov	dword ptr [rbp - 0x18], edi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x28], ecx
	mov	rsp, rsp
	je	.label_265
	jmp	.label_270
.label_270:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x18]
	nop	
	sub	eax, 0x47
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	je	.label_271
	jmp	.label_276
.label_276:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0x4b
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
	mov	rbp, rbp
	je	.label_278
	jmp	.label_266
.label_266:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	je	.label_269
	lea	rsi, [rsi]
	jmp	.label_274
.label_274:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	je	.label_275
	lea	rdi, [rdi]
	jmp	.label_264
.label_264:
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x20], eax
	je	.label_267
	jmp	.label_272
.label_272:
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0x59
	mov	dword ptr [rbp - 0x1c], eax
	je	.label_273
	mov	rsp, rsp
	jmp	.label_277
.label_277:
	nop	
	mov	eax, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	sub	eax, 0x5a
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], eax
	je	.label_262
	mov	rbp, rbp
	jmp	.label_268
.label_278:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_263
.label_269:
	mov	dword ptr [rbp - 4], 2
	jmp	.label_263
.label_271:
	nop	
	mov	dword ptr [rbp - 4], 3
	lea	rsi, [rsi]
	jmp	.label_263
.label_267:
	mov	dword ptr [rbp - 4], 4
	lea	rsi, [rsi]
	jmp	.label_263
.label_275:
	nop	
	mov	dword ptr [rbp - 4], 5
	jmp	.label_263
.label_265:
	mov	dword ptr [rbp - 4], 6
	jmp	.label_263
.label_262:
	mov	dword ptr [rbp - 4], 7
	jmp	.label_263
.label_273:
	mov	dword ptr [rbp - 4], 8
	mov	rsp, rsp
	jmp	.label_263
.label_268:
	nop	
	mov	dword ptr [rbp - 4], 0
.label_263:
	nop	
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x405720

	.globl powerld
	.type powerld, @function
powerld:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	fld	xword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	fstp	xword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x14], edi
	nop	
	fld	xword ptr [rbp - 0x10]
	fstp	xword ptr [rbp - 0x40]
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_279
	lea	rdi, [rdi]
	fld1	
	lea	rdi, [rdi]
	fstp	xword ptr [rbp - 0x30]
	nop	
	jmp	.label_281
.label_279:
	lea	rsi, [rsi]
	jmp	.label_282
.label_282:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, -1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_280
	fld	xword ptr [rbp - 0x10]
	fld	xword ptr [rbp - 0x40]
	fmulp	st(1)
	mov	rsp, rsp
	fstp	xword ptr [rbp - 0x40]
	jmp	.label_282
.label_280:
	fld	xword ptr [rbp - 0x40]
	mov	rbp, rbp
	fstp	xword ptr [rbp - 0x30]
.label_281:
	lea	rsi, [rsi]
	fld	xword ptr [rbp - 0x30]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4057b0

	.globl simple_strtod_int
	.type simple_strtod_int, @function
simple_strtod_int:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 8], rdx
	mov	qword ptr [rbp - 0x38], rcx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], 0
	mov	rbp, rbp
	fldz	
	fstp	xword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], 0
	mov	byte ptr [rbp - 0x51], 0
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	movsx	eax, byte ptr [rcx]
	nop	
	cmp	eax, 0x2d
	jne	.label_292
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	byte ptr [rax], 1
	jmp	.label_284
.label_292:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	byte ptr [rax], 0
.label_284:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
.label_289:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x25], cl
	lea	rdi, [rdi]
	je	.label_296
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	movsx	edi, byte ptr [rax]
	call	c_isdigit
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x25], al
.label_296:
	mov	al, byte ptr [rbp - 0x25]
	test	al, 1
	jne	.label_295
	jmp	.label_288
.label_295:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], ecx
	mov	byte ptr [rbp - 0x51], 1
	fld	xword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	fldz	
	nop	
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_287
	jnp	.label_294
	jmp	.label_287
.label_294:
	nop	
	cmp	dword ptr [rbp - 0x24], 0
	je	.label_283
.label_287:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
.label_283:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x2c], 0x12
	nop	
	jbe	.label_291
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], 1
.label_291:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0x1b
	jbe	.label_297
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], 2
	nop	
	jmp	.label_285
.label_297:
	nop	
	fld	xword ptr [rbp - 0x50]
	nop	
	fld	dword ptr [dword ptr [rip + label_254]]
	fmulp	st(1)
	nop	
	fld	st(0)
	mov	rsp, rsp
	fstp	xword ptr [rbp - 0x50]
	mov	eax, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x58], eax
	lea	rdi, [rdi]
	fild	dword ptr [rbp - 0x58]
	faddp	st(1)
	fstp	xword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx]
	add	rdx, 1
	mov	rsp, rsp
	mov	qword ptr [rcx], rdx
	nop	
	jmp	.label_289
.label_288:
	test	byte ptr [rbp - 0x51], 1
	mov	rsp, rsp
	jne	.label_290
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	rsi,  qword ptr [word ptr [decimal_point]]
	mov	rbp, rbp
	movsxd	rdx,  dword ptr [dword ptr [decimal_point_length]]
	nop	
	call	strncmp
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_290
	mov	dword ptr [rbp - 0x3c], 3
	lea	rdi, [rdi]
	jmp	.label_285
.label_290:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	test	byte ptr [rax], 1
	je	.label_293
	nop	
	fld	xword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	fchs	
	fstp	xword ptr [rbp - 0x50]
.label_293:
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_286
	mov	rsp, rsp
	fld	xword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	fstp	xword ptr [rax]
.label_286:
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x3c], eax
.label_285:
	mov	eax, dword ptr [rbp - 0x3c]
	add	rsp, 0x60
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4059f0

	.globl expld
	.type expld, @function
expld:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	fld	xword ptr [rbp + 0x10]
	mov	rbp, rbp
	fstp	xword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	nop	
	mov	dword ptr [rbp - 0x14], 0
	mov	rbp, rbp
	fld	xword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	fld	xword ptr [word ptr [rip + label_301]]
	lea	rsi, [rsi]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	lea	rdi, [rdi]
	jb	.label_299
	jmp	.label_303
.label_303:
	lea	rdi, [rdi]
	fld	xword ptr [rbp - 0x30]
	fld	xword ptr [word ptr [rip + label_305]]
	fucomip	st(1)
	nop	
	fstp	st(0)
	nop	
	jb	.label_299
	mov	rsp, rsp
	jmp	.label_302
.label_302:
	jmp	.label_300
.label_300:
	mov	rsp, rsp
	fld	xword ptr [rbp - 0x30]
	mov	rax, rsp
	fstp	xword ptr [rax]
	mov	rbp, rbp
	call	absld
	fld	st(0)
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x18]
	mov	eax, ecx
	mov	qword ptr [rbp - 8], rax
	fild	qword ptr [rbp - 8]
	fxch	st(2)
	lea	rdi, [rdi]
	fucomip	st(2)
	fstp	st(1)
	nop	
	fstp	xword ptr [rbp - 0x3c]
	nop	
	jb	.label_306
	jmp	.label_298
.label_298:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	inc	eax
	mov	dword ptr [rbp - 0x14], eax
	mov	eax, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x10], rcx
	fild	qword ptr [rbp - 0x10]
	fld	xword ptr [rbp - 0x30]
	fdivrp	st(1)
	fstp	xword ptr [rbp - 0x30]
	mov	rbp, rbp
	jmp	.label_300
.label_306:
	jmp	.label_299
.label_299:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_304
	mov	eax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	dword ptr [rcx], eax
.label_304:
	lea	rsi, [rsi]
	fld	xword ptr [rbp - 0x30]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405af0

	.globl double_to_human
	.type double_to_human, @function
double_to_human:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x190
	mov	rbp, rbp
	fld	xword ptr [rbp + 0x10]
	lea	rax, [rbp - 0xb0]
	nop	
	fstp	xword ptr [rbp - 0x120]
	nop	
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x140], rsi
	mov	qword ptr [rbp - 0x58], rdx
	mov	dword ptr [rbp - 0x158], ecx
	mov	dword ptr [rbp - 0x15c], r8d
	mov	dword ptr [rbp - 0x134], r9d
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdx, rax
	add	rdx, 1
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	byte ptr [rax], 0x25
	cmp	dword ptr [rbp - 0x15c], 0
	mov	rsp, rsp
	je	.label_314
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0x27
.label_314:
	nop	
	cmp	qword ptr [word ptr [zero_padding_width]],  0
	mov	rbp, rbp
	je	.label_338
	nop	
	mov	eax, 0x3e
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:.str.138
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [zero_padding_width]]
	mov	al, 0
	call	snprintf
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movsxd	rdx, eax
	add	rcx, rdx
	mov	qword ptr [rbp - 0x18], rcx
.label_338:
	mov	rbp, rbp
	jmp	.label_326
.label_326:
	test	byte ptr [byte ptr [dev_debug]],  1
	lea	rdi, [rdi]
	je	.label_329
	movabs	rsi, OFFSET FLAT:.str.139
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x164], eax
.label_329:
	nop	
	jmp	.label_307
.label_307:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x158], 0
	lea	rdi, [rdi]
	jne	.label_308
	mov	edi, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, rsp
	mov	rsp, rsp
	fld	dword ptr [dword ptr [rip + label_254]]
	fld	st(0)
	fstp	xword ptr [rax]
	fstp	xword ptr [rbp - 0x28]
	call	powerld
	fld	xword ptr [rbp - 0x120]
	mov	rbp, rbp
	fmulp	st(1)
	fld	st(0)
	fstp	xword ptr [rbp - 0x120]
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x134]
	mov	rax, rsp
	fstp	xword ptr [rax]
	lea	rsi, [rsi]
	call	simple_round
	nop	
	fstp	xword ptr [rbp - 0x120]
	mov	edi, dword ptr [rbp - 8]
	mov	rax, rsp
	mov	rbp, rbp
	fld	xword ptr [rbp - 0x28]
	fstp	xword ptr [rax]
	call	powerld
	fld	xword ptr [rbp - 0x120]
	mov	rsp, rsp
	fdivrp	st(1)
	fstp	xword ptr [rbp - 0x120]
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_334
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x15c]
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
	mov	eax, dword ptr [rbp - 8]
	nop	
	fld	xword ptr [rbp - 0x120]
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
	mov	dword ptr [rbp - 0x14c], eax
.label_334:
	jmp	.label_340
.label_340:
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:.str.142
	mov	esi, eax
	call	stpcpy
	mov	rdi, qword ptr [rbp - 0x140]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x58]
	lea	rdx, [rbp - 0xb0]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	fld	xword ptr [rbp - 0x120]
	mov	r8, rsp
	fstp	xword ptr [r8]
	xor	r9d, r9d
	lea	rdi, [rdi]
	mov	r10b, r9b
	mov	qword ptr [rbp - 0x170], rax
	mov	al, r10b
	call	snprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x154], eax
	cmp	dword ptr [rbp - 0x154], 0
	jl	.label_330
	mov	eax, dword ptr [rbp - 0x154]
	mov	rcx, qword ptr [rbp - 0x58]
	nop	
	mov	edx, ecx
	nop	
	cmp	eax, edx
	jl	.label_336
.label_330:
	mov	eax, 1
	xor	ecx, ecx
	mov	edx, OFFSET FLAT:.str.143
	mov	edi, edx
	mov	dword ptr [rbp - 0x150], eax
	mov	dword ptr [rbp - 0xbc], ecx
	lea	rdi, [rdi]
	call	gettext
	mov	rbp, rbp
	fld	xword ptr [rbp - 0x120]
	mov	rsp, rsp
	mov	rdi, rsp
	lea	rsi, [rsi]
	fstp	xword ptr [rdi]
	xor	ecx, ecx
	mov	sil, cl
	mov	edi, 1
	mov	byte ptr [rbp - 0xcd], sil
	mov	esi, ecx
	mov	rsp, rsp
	mov	rdx, rax
	nop	
	mov	al, byte ptr [rbp - 0xcd]
	call	error
.label_336:
	jmp	.label_317
.label_308:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x158]
	call	default_scale_base
	mov	rbp, rbp
	cvtsi2sd	xmm0, eax
	movsd	qword ptr [rbp - 0xc8], xmm0
	mov	dword ptr [rbp - 0xc], 0
	mov	rsp, rsp
	fld	xword ptr [rbp - 0x120]
	lea	rsi, [rsi]
	cvttsd2si	rcx, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	eax, ecx
	mov	rbp, rbp
	mov	rcx, rsp
	lea	rsi, [rsi]
	fstp	xword ptr [rcx]
	lea	rsi, [rbp - 0xc]
	nop	
	mov	edi, eax
	lea	rdi, [rdi]
	call	expld
	fstp	xword ptr [rbp - 0x120]
	test	byte ptr [byte ptr [dev_debug]],  1
	lea	rsi, [rsi]
	je	.label_322
	nop	
	movabs	rax, OFFSET FLAT:.str.144
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	fld	xword ptr [rbp - 0x120]
	movsd	xmm0, qword ptr [rbp - 0xc8]
	mov	edx, dword ptr [rbp - 0xc]
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	mov	esi, OFFSET FLAT:.str.144
	mov	rbp, rbp
	mov	r8b, 1
	nop	
	mov	qword ptr [rbp - 0x148], rax
	mov	al, r8b
	lea	rdi, [rdi]
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x168], eax
.label_322:
	jmp	.label_315
.label_315:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x138], 0
	nop	
	cmp	qword ptr [word ptr [user_precision]],  -1
	mov	rsp, rsp
	je	.label_318
	mov	rbp, rbp
	imul	eax, dword ptr [rbp - 0xc], 3
	mov	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	rcx,  qword ptr [word ptr [user_precision]]
	jge	.label_328
	imul	eax, dword ptr [rbp - 0xc], 3
	nop	
	mov	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rcx
	jmp	.label_335
.label_328:
	mov	rax,  qword ptr [word ptr [user_precision]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
.label_335:
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x138], ecx
	jmp	.label_312
.label_318:
	fld	xword ptr [rbp - 0x120]
	mov	rax, rsp
	lea	rdi, [rdi]
	fstp	xword ptr [rax]
	call	absld
	mov	rsp, rsp
	fld	dword ptr [dword ptr [rip + label_254]]
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_320
	jmp	.label_327
.label_327:
	nop	
	mov	dword ptr [rbp - 0x138], 1
.label_320:
	jmp	.label_312
.label_312:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x138]
	nop	
	mov	rax, rsp
	lea	rdi, [rdi]
	fld	dword ptr [dword ptr [rip + label_254]]
	fld	st(0)
	fstp	xword ptr [rax]
	fstp	xword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	powerld
	fld	xword ptr [rbp - 0x120]
	lea	rdi, [rdi]
	fmulp	st(1)
	fld	st(0)
	nop	
	fstp	xword ptr [rbp - 0x120]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x134]
	mov	rax, rsp
	nop	
	fstp	xword ptr [rax]
	lea	rdi, [rdi]
	call	simple_round
	fstp	xword ptr [rbp - 0x120]
	nop	
	mov	edi, dword ptr [rbp - 0x138]
	lea	rsi, [rsi]
	mov	rax, rsp
	fld	xword ptr [rbp - 0x40]
	mov	rbp, rbp
	fstp	xword ptr [rax]
	call	powerld
	fld	xword ptr [rbp - 0x120]
	mov	rsp, rsp
	fdivrp	st(1)
	fld	st(0)
	fstp	xword ptr [rbp - 0x120]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	absld
	fld	st(0)
	mov	rsp, rsp
	fld	qword ptr [rbp - 0xc8]
	fxch	st(2)
	fucomip	st(2)
	fstp	st(1)
	fstp	xword ptr [rbp - 0xf4]
	jb	.label_339
	lea	rdi, [rdi]
	jmp	.label_313
.label_313:
	mov	rsp, rsp
	fld	qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	fld	xword ptr [rbp - 0x120]
	lea	rsi, [rsi]
	fdivrp	st(1)
	fstp	xword ptr [rbp - 0x120]
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	add	eax, 1
	nop	
	mov	dword ptr [rbp - 0xc], eax
.label_339:
	lea	rdi, [rdi]
	fld	xword ptr [rbp - 0x120]
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
	mov	byte ptr [rbp - 0xd9], cl
	lea	rdi, [rdi]
	jne	.label_323
	jp	.label_323
	mov	rbp, rbp
	jmp	.label_311
.label_323:
	fld	xword ptr [rbp - 0x120]
	mov	rsp, rsp
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	absld
	xor	ecx, ecx
	mov	dl, cl
	fld	dword ptr [dword ptr [rip + label_254]]
	mov	rbp, rbp
	fucomip	st(1)
	mov	rsp, rsp
	fstp	st(0)
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xd9], dl
	mov	rbp, rbp
	jbe	.label_311
	jmp	.label_316
.label_316:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xc], 0
	nop	
	seta	al
	nop	
	mov	byte ptr [rbp - 0xd9], al
.label_311:
	mov	al, byte ptr [rbp - 0xd9]
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0x178], ecx
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_319
	movabs	rax, OFFSET FLAT:.str.145
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	fld	xword ptr [rbp - 0x120]
	lea	rdi, [rdi]
	movsd	xmm0, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	rcx, rsp
	nop	
	fstp	xword ptr [rcx]
	nop	
	mov	esi, OFFSET FLAT:.str.145
	mov	r8b, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x100], rax
	mov	rbp, rbp
	mov	al, r8b
	call	fprintf
	mov	dword ptr [rbp - 0x1c], eax
.label_319:
	mov	rsp, rsp
	jmp	.label_321
.label_321:
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.146
	mov	rbp, rbp
	mov	esi, eax
	lea	rsi, [rsi]
	call	stpcpy
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [user_precision]],  -1
	nop	
	mov	qword ptr [rbp - 0xe8], rax
	nop	
	jne	.label_333
	movsxd	rax, dword ptr [rbp - 0x178]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_325
.label_333:
	mov	rax,  qword ptr [word ptr [user_precision]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb8], rax
.label_325:
	mov	rax, qword ptr [rbp - 0xb8]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x34], ecx
	mov	rdi, qword ptr [rbp - 0x140]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	dec	rax
	lea	rdx, [rbp - 0xb0]
	lea	rsi, [rsi]
	fld	xword ptr [rbp - 0x120]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rdi
	nop	
	mov	edi, esi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xcc], ecx
	fstp	xword ptr [rbp - 0x4c]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xd8], rdx
	call	suffix_power_char
	mov	rdx, rsp
	mov	rbp, rbp
	fld	xword ptr [rbp - 0x4c]
	fstp	xword ptr [rdx]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	r8b, cl
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xd8]
	nop	
	mov	ecx, dword ptr [rbp - 0xcc]
	mov	byte ptr [rbp - 0x171], r8b
	mov	r8, rax
	mov	al, byte ptr [rbp - 0x171]
	nop	
	call	snprintf
	mov	dword ptr [rbp - 0x154], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x154], 0
	mov	rbp, rbp
	jl	.label_324
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x154]
	nop	
	mov	rcx, qword ptr [rbp - 0x58]
	mov	edx, ecx
	sub	edx, 1
	nop	
	cmp	eax, edx
	lea	rdi, [rdi]
	jl	.label_331
.label_324:
	nop	
	mov	eax, 1
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.143
	lea	rdi, [rdi]
	mov	edi, edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x104], eax
	mov	dword ptr [rbp - 0x160], ecx
	nop	
	call	gettext
	lea	rdi, [rdi]
	fld	xword ptr [rbp - 0x120]
	mov	rdi, rsp
	lea	rsi, [rsi]
	fstp	xword ptr [rdi]
	xor	ecx, ecx
	nop	
	mov	sil, cl
	mov	rbp, rbp
	mov	edi, 1
	mov	byte ptr [rbp - 0xbd], sil
	mov	rbp, rbp
	mov	esi, ecx
	mov	rdx, rax
	mov	al, byte ptr [rbp - 0xbd]
	lea	rsi, [rsi]
	call	error
.label_331:
	cmp	dword ptr [rbp - 0x158], 4
	nop	
	jne	.label_310
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xc], 0
	jbe	.label_310
	movabs	rsi, OFFSET FLAT:.str.147
	mov	rdi, qword ptr [rbp - 0x140]
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	movsxd	rcx, dword ptr [rbp - 0x154]
	lea	rsi, [rsi]
	sub	rax, rcx
	lea	rdi, [rdi]
	sub	rax, 1
	mov	rsp, rsp
	mov	rdx, rax
	lea	rsi, [rsi]
	call	strncat
	mov	qword ptr [rbp - 0x128], rax
.label_310:
	lea	rdi, [rdi]
	jmp	.label_337
.label_337:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_309
	mov	rdi,  qword ptr [word ptr [stderr]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x130], rdi
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	quote
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.148
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x130]
	mov	rsp, rsp
	mov	rdx, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
.label_309:
	jmp	.label_332
.label_332:
	jmp	.label_317
.label_317:
	add	rsp, 0x190
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4063c0

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
	fstp	xword ptr [rbp - 0x20]
	fldz	
	mov	rbp, rbp
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_341
	jmp	.label_342
.label_342:
	fld	xword ptr [rbp - 0x20]
	mov	rbp, rbp
	fchs	
	fstp	xword ptr [rbp - 0xc]
	mov	rbp, rbp
	jmp	.label_343
.label_341:
	fld	xword ptr [rbp - 0x20]
	fstp	xword ptr [rbp - 0xc]
.label_343:
	nop	
	fld	xword ptr [rbp - 0xc]
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x406410

	.globl simple_round
	.type simple_round, @function
simple_round:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	fld	xword ptr [rbp + 0x10]
	fstp	xword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], edi
	fld	xword ptr [rbp - 0x60]
	fld	xword ptr [word ptr [rip + label_344]]
	fdiv	st(1), st(0)
	nop	
	fnstcw	word ptr [rbp - 0x2e]
	mov	rsp, rsp
	mov	ax, word ptr [rbp - 0x2e]
	mov	word ptr [rbp - 0x2e], 0xc7f
	nop	
	fldcw	word ptr [rbp - 0x2e]
	mov	word ptr [rbp - 0x2e], ax
	mov	rsp, rsp
	fxch	st(1)
	fistp	qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	fldcw	word ptr [rbp - 0x2e]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	fild	qword ptr [rbp - 0x18]
	fmulp	st(1)
	fld	xword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	fsubrp	st(1)
	fstp	xword ptr [rbp - 0x60]
	mov	edi, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	mov	ecx, edi
	mov	rsp, rsp
	mov	rdx, rcx
	sub	rdx, 4
	mov	qword ptr [rbp - 0x70], rcx
	mov	qword ptr [rbp - 0x68], rdx
	mov	rsp, rsp
	ja	.label_348
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_346]]
	jmp	rcx
.label_1027:
	mov	rsp, rsp
	fld	xword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rax, rsp
	nop	
	fstp	xword ptr [rax]
	call	simple_round_ceiling
	mov	qword ptr [rbp - 8], rax
	jmp	.label_345
.label_1028:
	fld	xword ptr [rbp - 0x60]
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	simple_round_floor
	nop	
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_345
.label_1029:
	lea	rsi, [rsi]
	fld	xword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rax, rsp
	fstp	xword ptr [rax]
	call	simple_round_from_zero
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_345
.label_1030:
	mov	rbp, rbp
	fld	xword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rax, rsp
	mov	rbp, rbp
	fstp	xword ptr [rax]
	nop	
	call	simple_round_to_zero
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_345
.label_1031:
	nop	
	fld	xword ptr [rbp - 0x60]
	mov	rax, rsp
	lea	rsi, [rsi]
	fstp	xword ptr [rax]
	mov	rsp, rsp
	call	simple_round_nearest
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_345
.label_348:
	lea	rdi, [rdi]
	fldz	
	lea	rdi, [rdi]
	fstp	xword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	jmp	.label_347
.label_345:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	fild	qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	fld	xword ptr [word ptr [rip + label_344]]
	lea	rsi, [rsi]
	fmulp	st(1)
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	fild	qword ptr [rbp - 0x28]
	mov	rsp, rsp
	faddp	st(1)
	fstp	xword ptr [rbp - 0x50]
.label_347:
	fld	xword ptr [rbp - 0x50]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4065b0

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
	mov	qword ptr [rbp - 8], rax
	mov	qword ptr [rbp - 0x18], rcx
	ja	.label_350
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_351]]
	mov	rsp, rsp
	jmp	rcx
.label_1046:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str_0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_349
.label_1047:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.149
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_349
.label_1048:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.150
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	jmp	.label_349
.label_1049:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.151
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	jmp	.label_349
.label_1050:
	movabs	rax, OFFSET FLAT:.str.152
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	nop	
	jmp	.label_349
.label_1051:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.153
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	jmp	.label_349
.label_1052:
	movabs	rax, OFFSET FLAT:.str.154
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_349
.label_1053:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.155
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	jmp	.label_349
.label_1054:
	movabs	rax, OFFSET FLAT:.str.156
	nop	
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_349
.label_350:
	movabs	rax, OFFSET FLAT:.str.157
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
.label_349:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4066e0

	.globl simple_round_ceiling
	.type simple_round_ceiling, @function
simple_round_ceiling:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	fld	xword ptr [rbp + 0x10]
	fld	st(0)
	fstp	xword ptr [rbp - 0x30]
	fnstcw	word ptr [rbp - 0xa]
	mov	ax, word ptr [rbp - 0xa]
	mov	rbp, rbp
	mov	word ptr [rbp - 0xa], 0xc7f
	nop	
	fldcw	word ptr [rbp - 0xa]
	lea	rsi, [rsi]
	mov	word ptr [rbp - 0xa], ax
	fistp	qword ptr [rbp - 8]
	fldcw	word ptr [rbp - 0xa]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rcx
	nop	
	mov	qword ptr [rbp - 0x38], rcx
	mov	rsp, rsp
	fild	qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	fld	xword ptr [rbp - 0x30]
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
	#Procedure 0x406750

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
	#Procedure 0x4067a0

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
	#Procedure 0x406810

	.globl simple_round_to_zero
	.type simple_round_to_zero, @function
simple_round_to_zero:
	push	rbp
	mov	rbp, rsp
	fld	xword ptr [rbp + 0x10]
	lea	rsi, [rsi]
	fld	st(0)
	fstp	xword ptr [rbp - 0x20]
	mov	rbp, rbp
	fld	st(0)
	fnstcw	word ptr [rbp - 2]
	lea	rsi, [rsi]
	mov	ax, word ptr [rbp - 2]
	lea	rsi, [rsi]
	mov	word ptr [rbp - 2], 0xc7f
	fldcw	word ptr [rbp - 2]
	mov	word ptr [rbp - 2], ax
	fxch	st(1)
	fistp	qword ptr [rbp - 0x10]
	fldcw	word ptr [rbp - 2]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	fstp	xword ptr [rbp - 0x2c]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x406860

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
	fstp	xword ptr [rbp - 0x30]
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
	fld	xword ptr [rbp - 0x30]
	fld	dword ptr [dword ptr [rip + label_360]]
	mov	rsp, rsp
	faddp	st(1)
	lea	rdi, [rdi]
	fstp	xword ptr [rbp - 0xc]
	mov	rsp, rsp
	jmp	.label_361
.label_357:
	fld	xword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	fld	dword ptr [dword ptr [rip + label_359]]
	faddp	st(1)
	mov	rbp, rbp
	fstp	xword ptr [rbp - 0xc]
.label_361:
	fld	xword ptr [rbp - 0xc]
	fnstcw	word ptr [rbp - 0x32]
	mov	ax, word ptr [rbp - 0x32]
	mov	word ptr [rbp - 0x32], 0xc7f
	fldcw	word ptr [rbp - 0x32]
	mov	rsp, rsp
	mov	word ptr [rbp - 0x32], ax
	fistp	qword ptr [rbp - 0x18]
	fldcw	word ptr [rbp - 0x32]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4068f0

	.globl set_fields
	.type set_fields, @function
set_fields:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0xd0
	mov	qword ptr [rbp - 0x58], rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xac], esi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	mov	byte ptr [rbp - 0x69], 0
	mov	byte ptr [rbp - 0x59], 0
	mov	byte ptr [rbp - 0x11], 0
	mov	byte ptr [rbp - 0x89], 0
	mov	esi, dword ptr [rbp - 0xac]
	mov	rbp, rbp
	and	esi, 1
	lea	rdi, [rdi]
	cmp	esi, 0
	nop	
	je	.label_382
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	eax, OFFSET FLAT:.str_1
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	jne	.label_382
	mov	qword ptr [rbp - 8], 1
	mov	byte ptr [rbp - 0x69], 1
	mov	byte ptr [rbp - 0x11], 1
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
.label_382:
	lea	rdi, [rdi]
	jmp	.label_378
.label_378:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x2d
	jne	.label_395
	mov	byte ptr [rbp - 0x89], 0
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x11], 1
	je	.label_403
	jmp	.label_407
.label_407:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xac]
	and	eax, 4
	cmp	eax, 0
	je	.label_391
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.1_0
	lea	rdi, [rdi]
	call	gettext
	mov	qword ptr [rbp - 0x98], rax
	lea	rsi, [rsi]
	jmp	.label_419
.label_391:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.2_0
	call	gettext
	mov	qword ptr [rbp - 0x98], rax
.label_419:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x98]
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
.label_403:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x58], rax
	test	byte ptr [rbp - 0x69], 1
	mov	rsp, rsp
	je	.label_376
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	jne	.label_376
	nop	
	jmp	.label_387
.label_387:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xac]
	mov	rbp, rbp
	and	eax, 4
	cmp	eax, 0
	je	.label_389
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.3_0
	call	gettext
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_402
.label_389:
	movabs	rdi, OFFSET FLAT:.str.4_0
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
.label_402:
	mov	rax, qword ptr [rbp - 0x38]
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
.label_376:
	test	byte ptr [rbp - 0x69], 1
	je	.label_418
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_362
.label_418:
	mov	eax, 1
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0xa0], rcx
	nop	
	jmp	.label_362
.label_362:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 8], 0
	jmp	.label_369
.label_395:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x2c
	mov	rsp, rsp
	je	.label_374
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	movsx	edi, byte ptr [rax]
	lea	rdi, [rdi]
	call	to_uchar_0
	movzx	edi, al
	movsxd	rcx, edi
	nop	
	mov	qword ptr [rbp - 0x80], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 1
	cmp	edi, 0
	mov	rsp, rsp
	jne	.label_374
	mov	rax, qword ptr [rbp - 0x58]
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0
	jne	.label_393
.label_374:
	mov	byte ptr [rbp - 0x89], 0
	mov	rsp, rsp
	test	byte ptr [rbp - 0x11], 1
	lea	rdi, [rdi]
	je	.label_400
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], 0
	test	byte ptr [rbp - 0x69], 1
	lea	rsi, [rsi]
	jne	.label_371
	mov	rsp, rsp
	test	byte ptr [rbp - 0x59], 1
	mov	rsp, rsp
	jne	.label_371
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xac]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_413
	mov	qword ptr [rbp - 0x20], 1
	jmp	.label_422
.label_413:
	jmp	.label_367
.label_367:
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
	jmp	.label_371
.label_371:
	test	byte ptr [rbp - 0x59], 1
	jne	.label_411
	mov	rsi, -1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	add_range_pair
	mov	rsp, rsp
	jmp	.label_385
.label_411:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_388
	jmp	.label_392
.label_392:
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
.label_388:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	call	add_range_pair
.label_385:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_412
.label_400:
	cmp	qword ptr [rbp - 8], 0
	jne	.label_417
	jmp	.label_420
.label_420:
	mov	eax, dword ptr [rbp - 0xac]
	nop	
	and	eax, 4
	cmp	eax, 0
	je	.label_398
	nop	
	movabs	rdi, OFFSET FLAT:.str.3_0
	call	gettext
	nop	
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_368
.label_398:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.4_0
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_368:
	mov	rax, qword ptr [rbp - 0x28]
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
.label_417:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	add_range_pair
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0
.label_412:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_390
	mov	rbp, rbp
	jmp	.label_394
.label_390:
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x58], rax
	mov	byte ptr [rbp - 0x69], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x59], 0
	lea	rdi, [rdi]
	jmp	.label_396
.label_393:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_386
	test	byte ptr [rbp - 0x89], 1
	je	.label_363
	cmp	qword ptr [word ptr [set_fields.num_start]],  0
	nop	
	jne	.label_365
.label_363:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [word ptr [set_fields.num_start]],  rax
.label_365:
	nop	
	mov	byte ptr [rbp - 0x89], 1
	nop	
	test	byte ptr [rbp - 0x11], 1
	je	.label_424
	mov	byte ptr [rbp - 0x59], 1
	lea	rsi, [rsi]
	jmp	.label_366
.label_424:
	nop	
	mov	byte ptr [rbp - 0x69], 1
.label_366:
	movabs	rax, 0x1999999999999999
	cmp	rax, qword ptr [rbp - 8]
	jb	.label_409
	mov	rsp, rsp
	imul	rax, qword ptr [rbp - 8], 0xa
	mov	rcx, qword ptr [rbp - 0x58]
	movsx	edx, byte ptr [rcx]
	nop	
	sub	edx, 0x30
	nop	
	movsxd	rcx, edx
	nop	
	add	rax, rcx
	cmp	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	jae	.label_373
.label_409:
	xor	eax, eax
	mov	dword ptr [rbp - 0x3c], eax
	lea	rsi, [rsi]
	jmp	.label_381
.label_373:
	lea	rsi, [rsi]
	mov	eax, 1
	imul	rcx, qword ptr [rbp - 8], 0xa
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	mov	rbp, rbp
	sub	esi, 0x30
	mov	rsp, rsp
	movsxd	rdx, esi
	lea	rsi, [rsi]
	add	rcx, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rcx
	nop	
	mov	dword ptr [rbp - 0x3c], eax
.label_381:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x3c]
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_375
	cmp	qword ptr [rbp - 8], -1
	mov	rbp, rbp
	jne	.label_405
.label_375:
	movabs	rsi, OFFSET FLAT:.str.7_0
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [set_fields.num_start]]
	call	strspn
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb8], rax
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [set_fields.num_start]]
	mov	rsi, qword ptr [rbp - 0xb8]
	call	xstrndup
	mov	qword ptr [rbp - 0x88], rax
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0xac]
	and	ecx, 4
	cmp	ecx, 0
	je	.label_423
	movabs	rdi, OFFSET FLAT:.str.8_0
	call	gettext
	nop	
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_370
.label_423:
	movabs	rdi, OFFSET FLAT:.str.9_0
	call	gettext
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
.label_370:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	call	quote
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edi, ecx
	nop	
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	rdi, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	mov	edi, 1
	call	usage
.label_405:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_399
.label_386:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xac]
	and	eax, 4
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_372
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.10_0
	lea	rdi, [rdi]
	call	gettext
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	jmp	.label_415
.label_372:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.11_0
	call	gettext
	mov	qword ptr [rbp - 0x50], rax
.label_415:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0xa8], rax
	call	quote
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	mov	edi, 1
	mov	rsp, rsp
	call	usage
.label_399:
	jmp	.label_396
.label_396:
	mov	rsp, rsp
	jmp	.label_369
.label_369:
	jmp	.label_378
.label_394:
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [n_frp]],  0
	jne	.label_379
	jmp	.label_384
.label_384:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xac]
	mov	rbp, rbp
	and	eax, 4
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_397
	movabs	rdi, OFFSET FLAT:.str.12_0
	lea	rdi, [rdi]
	call	gettext
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc8], rax
	nop	
	jmp	.label_404
.label_397:
	movabs	rdi, OFFSET FLAT:.str.13_0
	call	gettext
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc8], rax
.label_404:
	mov	rax, qword ptr [rbp - 0xc8]
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
.label_379:
	lea	rdi, [rdi]
	mov	eax, 0x10
	nop	
	mov	edx, eax
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:compare_ranges
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [frp]]
	mov	rdi,  qword ptr [word ptr [n_frp]]
	mov	qword ptr [rbp - 0xc0], rdi
	mov	rdi, rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	call	qsort
	mov	qword ptr [rbp - 0x48], 0
.label_421:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	rax,  qword ptr [word ptr [n_frp]]
	jae	.label_377
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
.label_414:
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax,  qword ptr [word ptr [n_frp]]
	nop	
	jae	.label_383
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	shl	rax, 4
	add	rax,  qword ptr [word ptr [frp]]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	shl	rcx, 4
	add	rcx,  qword ptr [word ptr [frp]]
	cmp	rax, qword ptr [rcx + 8]
	ja	.label_408
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	shl	rax, 4
	add	rax,  qword ptr [word ptr [frp]]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rcx, 4
	add	rcx,  qword ptr [word ptr [frp]]
	nop	
	cmp	rax, qword ptr [rcx + 8]
	jbe	.label_364
	mov	rax, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax,  qword ptr [word ptr [frp]]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_416
.label_364:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	shl	rax, 4
	add	rax,  qword ptr [word ptr [frp]]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_416:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rcx, 4
	nop	
	add	rcx,  qword ptr [word ptr [frp]]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rax,  qword ptr [word ptr [frp]]
	mov	rcx, qword ptr [rbp - 0x68]
	shl	rcx, 4
	mov	rbp, rbp
	add	rax, rcx
	nop	
	mov	rcx,  qword ptr [word ptr [frp]]
	nop	
	mov	rdx, qword ptr [rbp - 0x68]
	nop	
	shl	rdx, 4
	add	rcx, rdx
	add	rcx, 0x10
	mov	rdx,  qword ptr [word ptr [n_frp]]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rbp - 0x68]
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
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	add	rax, -1
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_406
.label_408:
	lea	rdi, [rdi]
	jmp	.label_383
.label_406:
	lea	rsi, [rsi]
	jmp	.label_410
.label_410:
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	mov	rsp, rsp
	jmp	.label_414
.label_383:
	jmp	.label_401
.label_401:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	jmp	.label_421
.label_377:
	nop	
	mov	eax, dword ptr [rbp - 0xac]
	lea	rsi, [rsi]
	and	eax, 2
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_380
	lea	rdi, [rdi]
	call	complement_rp
.label_380:
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
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4073e0

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
	#Procedure 0x407400

	.globl add_range_pair
	.type add_range_pair, @function
add_range_pair:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
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
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [n_frp]]
	shl	rcx, 4
	mov	rsp, rsp
	add	rcx,  qword ptr [word ptr [frp]]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 8]
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
	#Procedure 0x4074c0

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
	mov	dword ptr [rbp - 0x18], eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi]
	mov	eax, esi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	jge	.label_426
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x1c], eax
	nop	
	jmp	.label_427
.label_426:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x18]
	nop	
	cmp	eax, dword ptr [rbp - 0x14]
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
	#Procedure 0x407540

	.globl complement_rp
	.type complement_rp, @function
complement_rp:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rax,  qword ptr [word ptr [frp]]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax,  qword ptr [word ptr [n_frp]]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [frp]],  0
	mov	qword ptr [word ptr [n_frp]],  0
	mov	qword ptr [word ptr [n_frp_allocated]],  0
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rax], 1
	lea	rsi, [rsi]
	jbe	.label_428
	mov	eax, 1
	mov	edi, eax
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	sub	rcx, 1
	mov	rsi, rcx
	call	add_range_pair
.label_428:
	mov	qword ptr [rbp - 0x10], 1
.label_432:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_429
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	add	rax, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rcx, 4
	nop	
	add	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx]
	nop	
	jne	.label_433
	jmp	.label_430
.label_433:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rax, 1
	lea	rdi, [rdi]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rcx, 4
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	sub	rcx, 1
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsi, rcx
	mov	rbp, rbp
	call	add_range_pair
.label_430:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_432
.label_429:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	sub	rax, 1
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x18]
	nop	
	cmp	qword ptr [rax + 8], -1
	lea	rsi, [rsi]
	jae	.label_431
	mov	rsi, -1
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	sub	rax, 1
	mov	rbp, rbp
	shl	rax, 4
	nop	
	add	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	add	rax, 1
	mov	rdi, rax
	lea	rsi, [rsi]
	call	add_range_pair
.label_431:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4076f0
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
	#Procedure 0x407740

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
	#Procedure 0x407760

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
.label_434:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_444
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
	jne	.label_441
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	jne	.label_435
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_437
.label_435:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_442
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_440
.label_442:
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_436
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
	je	.label_438
.label_436:
	nop	
	mov	byte ptr [rbp - 0x21], 1
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
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	jmp	.label_434
.label_444:
	test	byte ptr [rbp - 0x21], 1
	je	.label_439
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], -2
	jmp	.label_437
.label_439:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_437:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsp, 0x50
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407910

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
	jne	.label_446
	movabs	rdi, OFFSET FLAT:.str_2
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
	nop	
	jmp	.label_447
.label_446:
	nop	
	movabs	rdi, OFFSET FLAT:.str.1_1
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
.label_447:
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
	.section	.text
	.align	16
	#Procedure 0x4079f0

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
.label_449:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rax*8], 0
	lea	rsi, [rsi]
	je	.label_450
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_448
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
	je	.label_453
.label_448:
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
	jmp	.label_451
.label_453:
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
.label_451:
	jmp	.label_452
.label_452:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_449
.label_450:
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
	.section	.text
	.align	16
	#Procedure 0x407ba0

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
	jl	.label_454
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_455
.label_454:
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
.label_455:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407c60
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
.label_458:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	je	.label_460
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
	jne	.label_457
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_456
.label_457:
	lea	rdi, [rdi]
	jmp	.label_459
.label_459:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
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
	#Procedure 0x407d30
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
	#Procedure 0x407da0
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
	#Procedure 0x407df0
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
	#Procedure 0x407e20
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
	#Procedure 0x407e50
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
	#Procedure 0x407ea0

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
	#Procedure 0x407ee0
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
	#Procedure 0x407f20
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
	#Procedure 0x407f60
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
	#Procedure 0x407fa0
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
	#Procedure 0x408020
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
	#Procedure 0x408070
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
	#Procedure 0x4080b0
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
	#Procedure 0x408120

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
	#Procedure 0x408160
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
	#Procedure 0x4081a0
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
	#Procedure 0x4081d0
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
	#Procedure 0x408200

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
	je	.label_517
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_514
.label_517:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_3
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_518
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
	movabs	rdx, OFFSET FLAT:.str.1_2
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 4]
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
	mov	rcx, qword ptr [rbp - 0x10]
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
	je	.label_516
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_516:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x408330

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
	jne	.label_523
	nop	
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	lea	rsi, [rsi]
	jbe	.label_523
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
	jne	.label_528
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_535
	nop	
	jmp	.label_526
.label_535:
	jmp	.label_533
.label_528:
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
	jne	.label_521
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_527
	jmp	.label_526
.label_527:
	mov	rbp, rbp
	jmp	.label_533
.label_521:
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	rdx, qword ptr [rbp - 0x40]
	call	mbstowcs
	cmp	rax, 0
	je	.label_545
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
.label_545:
	nop	
	jmp	.label_523
.label_523:
	test	byte ptr [rbp - 0x21], 1
	je	.label_542
	mov	rsp, rsp
	test	byte ptr [rbp - 0x41], 1
	jne	.label_536
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rcx]
	jbe	.label_542
.label_536:
	test	byte ptr [rbp - 0x41], 1
	je	.label_543
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
.label_543:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	malloc
	nop	
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x78], 0
	lea	rdi, [rdi]
	jne	.label_531
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_537
	lea	rdi, [rdi]
	jmp	.label_526
.label_537:
	jmp	.label_533
.label_531:
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
.label_542:
	lea	rsi, [rsi]
	jmp	.label_526
.label_526:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx]
	jbe	.label_539
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
.label_539:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x98]
	jbe	.label_524
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	sub	rax, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
.label_524:
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
	je	.label_540
	jmp	.label_520
.label_520:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x6c], eax
	mov	rbp, rbp
	je	.label_522
	lea	rsi, [rsi]
	jmp	.label_532
.label_532:
	nop	
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 2
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_529
	lea	rsi, [rsi]
	jmp	.label_519
.label_540:
	mov	qword ptr [rbp - 0x20], 0
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_530
.label_522:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_530
.label_529:
	jmp	.label_519
.label_519:
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
.label_530:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 4
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_534
	nop	
	mov	qword ptr [rbp - 0x20], 0
.label_534:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	and	eax, 8
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_541
	mov	qword ptr [rbp - 0x60], 0
.label_541:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	je	.label_544
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
	jae	.label_525
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_538
.label_525:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xc8], rax
.label_538:
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
.label_544:
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
.label_533:
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
	.section	.text
	.align	16
	#Procedure 0x408940

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
.label_546:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	dword ptr [rax], 0
	je	.label_547
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax]
	call	iswprint
	nop	
	cmp	eax, 0
	jne	.label_548
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0xfffd
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 1
.label_548:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, 4
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	jmp	.label_546
.label_547:
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
	.section	.text
	.align	16
	#Procedure 0x4089e0

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
.label_551:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_550
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	edi, dword ptr [rax]
	mov	rsp, rsp
	call	wcwidth
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], -1
	jne	.label_549
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], 0xfffd
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 1
.label_549:
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	add	rax, rcx
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_552
	jmp	.label_550
.label_552:
	movsxd	rax, dword ptr [rbp - 4]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rax, 4
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_551
.label_550:
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408ac0

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
.label_554:
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
	je	.label_555
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x18]
	setb	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 9], cl
.label_555:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 9]
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
	#Procedure 0x408b60
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
.label_559:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jb	.label_558
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
	jne	.label_560
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	free
	mov	qword ptr [rbp - 8], 0
	nop	
	jmp	.label_558
.label_560:
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
	jne	.label_557
	mov	rdi, qword ptr [rbp - 8]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_558
.label_557:
	mov	rbp, rbp
	jmp	.label_559
.label_558:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x408cb0

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
	jne	.label_563
	movabs	rdi, OFFSET FLAT:.str_5
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	call	abort
.label_563:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_561
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_565
.label_561:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_565:
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
	jl	.label_564
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
	jne	.label_564
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
	jne	.label_562
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_562:
	jmp	.label_564
.label_564:
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
	.section	.text
	.align	16
	#Procedure 0x408e30
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
	je	.label_566
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_567
.label_566:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_567
.label_567:
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
	.section	.text
	.align	16
	#Procedure 0x408ee0
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
	je	.label_568
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_569
.label_568:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_569
.label_569:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408f40
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
	je	.label_570
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_571
.label_570:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_571
.label_571:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408fa0

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
	je	.label_572
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jmp	.label_573
.label_572:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_573
.label_573:
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
	.section	.text
	.align	16
	#Procedure 0x4090a0
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
	jne	.label_574
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
.label_574:
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
	.section	.text
	.align	16
	#Procedure 0x409100

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
	jne	.label_575
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
.label_575:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 8], 0
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
	.section	.text
	.align	16
	#Procedure 0x4091a0
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
	je	.label_578
	mov	rax, qword ptr [rbp - 0x50]
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
	.section	.text
	.align	16
	#Procedure 0x4092a0

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
.label_630:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0x88], rcx
	mov	qword ptr [rbp - 0x130], rdx
	ja	.label_761
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_695]]
	jmp	rcx
.label_1070:
	mov	dword ptr [rbp - 0x58], 5
	mov	byte ptr [rbp - 0x3e], 1
.label_1069:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_583
	jmp	.label_645
.label_645:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_778
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x22
.label_778:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_583
.label_583:
	movabs	rax, OFFSET FLAT:.str.10_1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	jmp	.label_593
.label_1071:
	nop	
	mov	byte ptr [rbp - 0x89], 1
	nop	
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_593
.label_1072:
	cmp	dword ptr [rbp - 0x58], 0xa
	je	.label_613
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
.label_613:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_626
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x108], rax
.label_648:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_632
	jmp	.label_646
.label_646:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_635
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rdx + rax], cl
.label_635:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_656
.label_656:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_648
.label_632:
	mov	rbp, rbp
	jmp	.label_626
.label_626:
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
	jmp	.label_593
.label_1067:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x89], 1
.label_1066:
	mov	byte ptr [rbp - 0x3e], 1
.label_1068:
	nop	
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_670
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
.label_670:
	jmp	.label_673
.label_673:
	mov	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_674
	jmp	.label_679
.label_679:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_732
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_732:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_674
.label_674:
	movabs	rax, OFFSET FLAT:.str.12_1
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	mov	rsp, rsp
	jmp	.label_593
.label_1065:
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_593
.label_761:
	call	abort
.label_593:
	mov	qword ptr [rbp - 0xd8], 0
.label_704:
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_699
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
	jmp	.label_700
.label_699:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], edx
.label_700:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_717
	mov	rbp, rbp
	jmp	.label_726
.label_717:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa6], 0
	nop	
	mov	byte ptr [rbp - 0x3f], 0
	mov	byte ptr [rbp - 0x91], 0
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_629
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	je	.label_629
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_629
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], -1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jne	.label_694
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xd0]
	jae	.label_694
	mov	rdi, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_755
.label_694:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xc8], rax
.label_755:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_629
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
	jne	.label_629
	nop	
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	je	.label_770
	jmp	.label_584
.label_770:
	nop	
	mov	byte ptr [rbp - 0xa6], 1
.label_629:
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
	ja	.label_775
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_591]]
	nop	
	jmp	rcx
.label_1074:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	je	.label_598
	mov	rsp, rsp
	jmp	.label_603
.label_603:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_606
	jmp	.label_584
.label_606:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3f], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_610
	mov	rbp, rbp
	test	byte ptr [rbp - 0x42], 1
	mov	rbp, rbp
	jne	.label_610
	nop	
	jmp	.label_617
.label_617:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_620
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_620:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_627
.label_627:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_631
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_631:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_638
.label_638:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_641
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_641:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_610:
	lea	rsi, [rsi]
	jmp	.label_652
.label_652:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_653
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_653:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_661
.label_661:
	cmp	dword ptr [rbp - 0x58], 2
	je	.label_637
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_637
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x150]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_637
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_637
	nop	
	jmp	.label_684
.label_684:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_686
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x30
.label_686:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_703
.label_703:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_633
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_633:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_637
.label_637:
	mov	byte ptr [rbp - 0x3d], 0x30
	nop	
	jmp	.label_705
.label_598:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_708
	mov	rbp, rbp
	jmp	.label_701
.label_708:
	jmp	.label_705
.label_705:
	jmp	.label_590
.label_1085:
	mov	eax, dword ptr [rbp - 0x58]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0x78], eax
	nop	
	mov	dword ptr [rbp - 0x90], ecx
	mov	rsp, rsp
	je	.label_715
	mov	rbp, rbp
	jmp	.label_721
.label_721:
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb4], eax
	lea	rsi, [rsi]
	je	.label_724
	jmp	.label_730
.label_715:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_733
	jmp	.label_584
.label_733:
	jmp	.label_650
.label_724:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 4
	cmp	eax, 0
	je	.label_741
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	jae	.label_741
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_741
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
	je	.label_734
	nop	
	jmp	.label_758
.label_758:
	nop	
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	jb	.label_734
	jmp	.label_763
.label_763:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x144]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_734
	jmp	.label_768
.label_768:
	mov	eax, dword ptr [rbp - 0x144]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x128], eax
	je	.label_734
	jmp	.label_744
.label_744:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0xf4], eax
	lea	rdi, [rdi]
	ja	.label_608
	jmp	.label_734
.label_734:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_780
	jmp	.label_584
.label_780:
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
	jae	.label_586
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_586:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_615
.label_615:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_618
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_618:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_623
.label_623:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_693
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_693:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_634
.label_634:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_671
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_671:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_642
.label_608:
	jmp	.label_642
.label_642:
	jmp	.label_741
.label_741:
	jmp	.label_650
.label_730:
	jmp	.label_650
.label_650:
	jmp	.label_590
.label_1075:
	mov	byte ptr [rbp - 0xb6], 0x61
	jmp	.label_657
.label_1076:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb6], 0x62
	jmp	.label_657
.label_1080:
	mov	byte ptr [rbp - 0xb6], 0x66
	lea	rdi, [rdi]
	jmp	.label_657
.label_1078:
	mov	byte ptr [rbp - 0xb6], 0x6e
	mov	rbp, rbp
	jmp	.label_664
.label_1081:
	mov	byte ptr [rbp - 0xb6], 0x72
	mov	rbp, rbp
	jmp	.label_664
.label_1077:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb6], 0x74
	jmp	.label_664
.label_1079:
	mov	byte ptr [rbp - 0xb6], 0x76
	jmp	.label_657
.label_1086:
	mov	al, byte ptr [rbp - 0x3d]
	nop	
	mov	byte ptr [rbp - 0xb6], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_672
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_676
	nop	
	jmp	.label_584
.label_676:
	lea	rsi, [rsi]
	jmp	.label_588
.label_672:
	test	byte ptr [rbp - 0x89], 1
	je	.label_685
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_685
	nop	
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rbp, rbp
	je	.label_685
	jmp	.label_588
.label_685:
	jmp	.label_664
.label_664:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	jne	.label_691
	test	byte ptr [rbp - 0x3e], 1
	je	.label_691
	jmp	.label_584
.label_691:
	mov	rsp, rsp
	jmp	.label_657
.label_657:
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_697
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb6]
	mov	byte ptr [rbp - 0x3d], al
	jmp	.label_592
.label_697:
	jmp	.label_590
.label_1087:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_706
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x150]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_709
	jmp	.label_714
.label_706:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 1
	je	.label_709
.label_714:
	nop	
	jmp	.label_590
.label_709:
	jmp	.label_718
.label_718:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rbp, rbp
	je	.label_777
	lea	rsi, [rsi]
	jmp	.label_590
.label_777:
	nop	
	jmp	.label_727
.label_727:
	mov	byte ptr [rbp - 0x91], 1
.label_1082:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_729
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_729
	jmp	.label_584
.label_729:
	lea	rsi, [rsi]
	jmp	.label_590
.label_1084:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa5], 1
	mov	byte ptr [rbp - 0x91], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_743
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_749
	jmp	.label_584
.label_749:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_737
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x140], 0
	lea	rdi, [rdi]
	jne	.label_737
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x140], rax
	mov	qword ptr [rbp - 0x28], 0
.label_737:
	jmp	.label_756
.label_756:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_757
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_757:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_760
.label_760:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	jae	.label_765
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_765:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_722
.label_722:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_774
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_774:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_743:
	lea	rsi, [rsi]
	jmp	.label_590
.label_1083:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 1
	jmp	.label_590
.label_775:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xb5], 1
	je	.label_599
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
	jmp	.label_614
.label_599:
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
	jne	.label_628
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x150]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
.label_628:
	jmp	.label_636
.label_636:
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
	jne	.label_651
	jmp	.label_660
.label_651:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], -1
	jne	.label_658
	mov	byte ptr [rbp - 0x40], 0
	jmp	.label_660
.label_658:
	nop	
	cmp	qword ptr [rbp - 0x10], -2
	jne	.label_663
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_682:
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
	jae	.label_666
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0x110]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x41], sil
.label_666:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_680
	jmp	.label_681
.label_680:
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_682
.label_681:
	jmp	.label_660
.label_663:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_669
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_669
	mov	qword ptr [rbp - 0xe8], 1
.label_740:
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_692
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
	jb	.label_696
	jmp	.label_742
.label_742:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x148], eax
	je	.label_696
	jmp	.label_716
.label_716:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	je	.label_696
	jmp	.label_723
.label_723:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x48], eax
	jne	.label_725
	mov	rsp, rsp
	jmp	.label_696
.label_696:
	mov	rsp, rsp
	jmp	.label_584
.label_725:
	jmp	.label_736
.label_736:
	mov	rsp, rsp
	jmp	.label_655
.label_655:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe8]
	add	rax, 1
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_740
.label_692:
	mov	rbp, rbp
	jmp	.label_669
.label_669:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x74]
	call	iswprint
	cmp	eax, 0
	jne	.label_585
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_585:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_750
.label_750:
	lea	rsi, [rsi]
	jmp	.label_752
.label_752:
	jmp	.label_753
.label_753:
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
	jne	.label_636
.label_660:
	jmp	.label_614
.label_614:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x40]
	and	dl, 1
	mov	byte ptr [rbp - 0x91], dl
	cmp	rcx, qword ptr [rbp - 0x110]
	nop	
	jb	.label_759
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_767
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	mov	rsp, rsp
	jne	.label_767
.label_759:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x110]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_751:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	nop	
	je	.label_776
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	jne	.label_776
	jmp	.label_580
.label_580:
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_582
	jmp	.label_584
.label_582:
	mov	byte ptr [rbp - 0x3f], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_589
	test	byte ptr [rbp - 0x42], 1
	jne	.label_589
	lea	rdi, [rdi]
	jmp	.label_600
.label_600:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_662
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_662:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_698
.label_698:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_738
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x24
.label_738:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_624
.label_624:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_597
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_597:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_589:
	jmp	.label_639
.label_639:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_640
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_640:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_678
.label_678:
	jmp	.label_647
.label_647:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_649
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
.label_649:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_609
.label_609:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_667
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
.label_667:
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
	jmp	.label_675
.label_776:
	test	byte ptr [rbp - 0xa6], 1
	lea	rsi, [rsi]
	je	.label_683
	lea	rdi, [rdi]
	jmp	.label_687
.label_687:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_689
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x5c
.label_689:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa6], 0
.label_683:
	nop	
	jmp	.label_675
.label_675:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xd8]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_612
	jmp	.label_702
.label_612:
	lea	rsi, [rsi]
	jmp	.label_707
.label_707:
	test	byte ptr [rbp - 0x42], 1
	je	.label_710
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_710
	lea	rsi, [rsi]
	jmp	.label_712
.label_712:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_713
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_713:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_720
.label_720:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_728
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_728:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_710:
	nop	
	jmp	.label_745
.label_745:
	mov	rsp, rsp
	jmp	.label_746
.label_746:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_747
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x3d]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_747:
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
	jmp	.label_751
.label_702:
	mov	rsp, rsp
	jmp	.label_588
.label_767:
	lea	rsi, [rsi]
	jmp	.label_590
.label_590:
	test	byte ptr [rbp - 0x89], 1
	mov	rbp, rbp
	je	.label_772
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_764
.label_772:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_766
.label_764:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x100], 0
	nop	
	je	.label_766
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
	jne	.label_581
.label_766:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xa6], 1
	lea	rdi, [rdi]
	jne	.label_581
	mov	rsp, rsp
	jmp	.label_588
.label_581:
	nop	
	jmp	.label_592
.label_592:
	jmp	.label_594
.label_594:
	test	byte ptr [rbp - 0x3e], 1
	mov	rbp, rbp
	je	.label_596
	jmp	.label_584
.label_596:
	mov	byte ptr [rbp - 0x3f], 1
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_601
	test	byte ptr [rbp - 0x42], 1
	lea	rdi, [rdi]
	jne	.label_601
	lea	rdi, [rdi]
	jmp	.label_611
.label_611:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_625
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_625:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_621
.label_621:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_771
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_771:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_622
.label_622:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_748
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_748:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_601:
	jmp	.label_643
.label_643:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_644
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_644:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_654
.label_654:
	nop	
	jmp	.label_588
.label_588:
	jmp	.label_659
.label_659:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x42], 1
	je	.label_607
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_607
	lea	rdi, [rdi]
	jmp	.label_665
.label_665:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_668
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_668:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_739
.label_739:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_677
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_677:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_607:
	jmp	.label_688
.label_688:
	nop	
	jmp	.label_779
.label_779:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_690
	mov	al, byte ptr [rbp - 0x3d]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_690:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x91], 1
	jne	.label_735
	mov	byte ptr [rbp - 0xb7], 0
.label_735:
	mov	rbp, rbp
	jmp	.label_701
.label_701:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_704
.label_726:
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_711
	cmp	dword ptr [rbp - 0x58], 2
	nop	
	jne	.label_711
	mov	rbp, rbp
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_711
	nop	
	jmp	.label_584
.label_711:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_719
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_719
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa5], 1
	je	.label_719
	test	byte ptr [rbp - 0xb7], 1
	je	.label_731
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
	jmp	.label_616
.label_731:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jne	.label_754
	cmp	qword ptr [rbp - 0x140], 0
	lea	rsi, [rsi]
	je	.label_754
	nop	
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_630
.label_754:
	jmp	.label_762
.label_762:
	mov	rbp, rbp
	jmp	.label_719
.label_719:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x108], 0
	je	.label_604
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_604
	mov	rbp, rbp
	jmp	.label_595
.label_595:
	mov	rax, qword ptr [rbp - 0x108]
	cmp	byte ptr [rax], 0
	je	.label_769
	lea	rdi, [rdi]
	jmp	.label_602
.label_602:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_773
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_773:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_587
.label_587:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_595
.label_769:
	jmp	.label_604
.label_604:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_605
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0
.label_605:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_616
.label_584:
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_619
	mov	rsp, rsp
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_619
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], 4
.label_619:
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
.label_616:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	add	rsp, 0x168
	pop	rbx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ad40
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
	.section	.text
	.align	16
	#Procedure 0x40adb0

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
	je	.label_781
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_782
.label_781:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_782
.label_782:
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
	je	.label_783
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
.label_783:
	mov	rax, qword ptr [rbp - 0x30]
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
	#Procedure 0x40af80
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
	#Procedure 0x40b090

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
	.section	.text
	.align	16
	#Procedure 0x40b0e0

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
	jge	.label_790
	call	abort
.label_790:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 0x64]
	jg	.label_793
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
	jge	.label_794
	call	xalloc_die
.label_794:
	test	byte ptr [rbp - 0x51], 1
	je	.label_795
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_791
.label_795:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_791:
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
	je	.label_789
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_784]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_789:
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
.label_793:
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
	ja	.label_796
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
	je	.label_792
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	free
.label_792:
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
.label_796:
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
	.section	.text
	.align	16
	#Procedure 0x40b410

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
	.section	.text
	.align	16
	#Procedure 0x40b450
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
	#Procedure 0x40b480
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
	.section	.text
	.align	16
	#Procedure 0x40b4c0

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
	.section	.text
	.align	16
	#Procedure 0x40b520

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
	jne	.label_797
	call	abort
.label_797:
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
	.section	.text
	.align	16
	#Procedure 0x40b5c0

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
	.section	.text
	.align	16
	#Procedure 0x40b630
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
	.section	.text
	.align	16
	#Procedure 0x40b670
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
	.section	.text
	.align	16
	#Procedure 0x40b6b0

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
	.section	.text
	.align	16
	#Procedure 0x40b760

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
	#Procedure 0x40b7a0

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
	#Procedure 0x40b7d0
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
	#Procedure 0x40b810
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
	#Procedure 0x40b8f0

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
	.section	.text
	.align	16
	#Procedure 0x40b940

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
	.section	.text
	.align	16
	#Procedure 0x40b9e0
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
	.section	.text
	.align	16
	#Procedure 0x40ba30
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
	.section	.text
	.align	16
	#Procedure 0x40ba90

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
	.section	.text
	.align	16
	#Procedure 0x40bad0
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
	#Procedure 0x40bb10

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
	#Procedure 0x40bb50

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
	#Procedure 0x40bb90

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
	je	.label_800
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_798
.label_800:
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
	jne	.label_801
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
	jmp	.label_798
.label_801:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_799
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
	jmp	.label_798
.label_799:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_1
	movabs	rcx, OFFSET FLAT:.str.10_1
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
.label_798:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bcd0

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
	je	.label_805
	movabs	rsi, OFFSET FLAT:.str_6
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
	jmp	.label_803
.label_805:
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
.label_803:
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
	mov	ecx, OFFSET FLAT:.str.3_2
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
	ja	.label_804
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_806]]
	jmp	rcx
.label_1093:
	jmp	.label_802
.label_1094:
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
	jmp	.label_802
.label_1095:
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
	jmp	.label_802
.label_1096:
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
	jmp	.label_802
.label_1097:
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
	jmp	.label_802
.label_1098:
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
	jmp	.label_802
.label_1099:
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
	jmp	.label_802
.label_1100:
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
	jmp	.label_802
.label_1101:
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
	jmp	.label_802
.label_1102:
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
	jmp	.label_802
.label_804:
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
.label_802:
	lea	rdi, [rdi]
	add	rsp, 0x170
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c510
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
.label_807:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_808
	mov	rbp, rbp
	jmp	.label_809
.label_809:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_807
.label_808:
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
	.section	.text
	.align	16
	#Procedure 0x40c5c0

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
.label_811:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x40], 0xa
	mov	byte ptr [rbp - 0x11], cl
	jae	.label_814
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], ecx
	ja	.label_813
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
	jmp	.label_812
.label_813:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x30], rdx
.label_812:
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
.label_814:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_810
	mov	rsp, rsp
	jmp	.label_816
.label_810:
	jmp	.label_815
.label_815:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_811
.label_816:
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
	.section	.text
	.align	16
	#Procedure 0x40c720

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
	je	.label_817
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
.label_817:
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
	.section	.text
	.align	16
	#Procedure 0x40c8e0
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
	.section	.text
	.align	16
	#Procedure 0x40c990
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
	#Procedure 0x40c9f0

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
	jne	.label_819
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_819
	lea	rdi, [rdi]
	call	xalloc_die
.label_819:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ca50
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
	jae	.label_820
	mov	rsp, rsp
	call	xalloc_die
.label_820:
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
	.section	.text
	.align	16
	#Procedure 0x40cad0

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
	jne	.label_821
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_821
	mov	rdi, qword ptr [rbp - 8]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_823
.label_821:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	realloc
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_822
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_822
	lea	rsi, [rsi]
	call	xalloc_die
.label_822:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
.label_823:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cb80

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
	jne	.label_824
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_826
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
.label_826:
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
	div	qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_825
	call	xalloc_die
.label_825:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_827:
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
	.section	.text
	.align	16
	#Procedure 0x40ccb0

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
	#Procedure 0x40cce0
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
	#Procedure 0x40cd20
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
	#Procedure 0x40cd70
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
	jb	.label_829
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	calloc
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_830
.label_829:
	lea	rsi, [rsi]
	call	xalloc_die
.label_830:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cde0

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
	.section	.text
	.align	16
	#Procedure 0x40ce30

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
	.section	.text
	.align	16
	#Procedure 0x40ce90

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
	#Procedure 0x40cef0

	.globl xstrndup
	.type xstrndup, @function
xstrndup:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 8]
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
	#Procedure 0x40cf50

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
	mov	qword ptr [rbp - 0x38], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], rsi
	nop	
	mov	dword ptr [rbp - 0x9c], edx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rcx
	mov	qword ptr [rbp - 0xd8], r8
	mov	dword ptr [rbp - 0xe4], 0
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x9c]
	nop	
	jg	.label_854
	cmp	dword ptr [rbp - 0x9c], 0x24
	jg	.label_854
	lea	rsi, [rsi]
	jmp	.label_878
.label_854:
	nop	
	movabs	rdi, OFFSET FLAT:.str_7
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.1_6
	mov	edx, 0x54
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtol
	call	__assert_fail
.label_878:
	cmp	qword ptr [rbp - 0x88], 0
	je	.label_889
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_834
.label_889:
	lea	rax, [rbp - 0x40]
	nop	
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_834
.label_834:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x9c]
	call	strtol
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	nop	
	cmp	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	jne	.label_857
	cmp	qword ptr [rbp - 0xd8], 0
	je	.label_867
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_867
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_867
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], 1
	mov	rbp, rbp
	jmp	.label_880
.label_867:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe0], 4
	jmp	.label_836
.label_880:
	mov	rsp, rsp
	jmp	.label_845
.label_857:
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0
	je	.label_891
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	nop	
	je	.label_833
	mov	dword ptr [rbp - 0xe0], 4
	lea	rsi, [rsi]
	jmp	.label_836
.label_833:
	mov	dword ptr [rbp - 0xe4], 1
.label_891:
	lea	rdi, [rdi]
	jmp	.label_845
.label_845:
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rbp, rbp
	jne	.label_848
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0xe4]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe0], edx
	mov	rsp, rsp
	jmp	.label_836
.label_848:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_865
	mov	dword ptr [rbp - 0x80], 0x400
	mov	dword ptr [rbp - 0xe8], 1
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_852
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx], rax
	nop	
	mov	edx, dword ptr [rbp - 0xe4]
	lea	rsi, [rsi]
	or	edx, 2
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe0], edx
	jmp	.label_836
.label_852:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	mov	edx, ecx
	lea	rsi, [rsi]
	sub	edx, 0x45
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44], ecx
	mov	dword ptr [rbp - 0x58], edx
	je	.label_843
	lea	rdi, [rdi]
	jmp	.label_839
.label_839:
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x20], eax
	je	.label_843
	mov	rbp, rbp
	jmp	.label_894
.label_894:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0xac], eax
	je	.label_843
	nop	
	jmp	.label_853
.label_853:
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x2c], eax
	je	.label_843
	lea	rsi, [rsi]
	jmp	.label_862
.label_862:
	mov	eax, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	sub	eax, 0x50
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_843
	jmp	.label_870
.label_870:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x44]
	lea	rdi, [rdi]
	sub	eax, 0x54
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_843
	jmp	.label_874
.label_874:
	mov	eax, dword ptr [rbp - 0x44]
	add	eax, -0x59
	lea	rdi, [rdi]
	sub	eax, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], eax
	nop	
	jb	.label_843
	jmp	.label_863
.label_863:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0x67
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd0], eax
	lea	rdi, [rdi]
	je	.label_843
	nop	
	jmp	.label_887
.label_887:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0x6b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], eax
	lea	rdi, [rdi]
	je	.label_843
	jmp	.label_892
.label_892:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0x6d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], eax
	lea	rsi, [rsi]
	je	.label_843
	mov	rsp, rsp
	jmp	.label_838
.label_838:
	mov	eax, dword ptr [rbp - 0x44]
	mov	rbp, rbp
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x10], eax
	mov	rbp, rbp
	jne	.label_842
	jmp	.label_843
.label_843:
	mov	esi, 0x30
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xd8]
	call	strchr
	lea	rdi, [rdi]
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_840
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	rsp, rsp
	mov	edx, ecx
	sub	edx, 0x42
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xbc], ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], edx
	lea	rdi, [rdi]
	je	.label_844
	lea	rsi, [rsi]
	jmp	.label_851
.label_851:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x44
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa8], eax
	je	.label_844
	jmp	.label_837
.label_837:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rdi, [rdi]
	sub	eax, 0x69
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x78], eax
	jne	.label_879
	jmp	.label_885
.label_885:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	cmp	ecx, 0x42
	jne	.label_886
	nop	
	mov	eax, dword ptr [rbp - 0xe8]
	mov	rsp, rsp
	add	eax, 2
	mov	dword ptr [rbp - 0xe8], eax
.label_886:
	jmp	.label_879
.label_844:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x80], 0x3e8
	mov	eax, dword ptr [rbp - 0xe8]
	nop	
	add	eax, 1
	mov	dword ptr [rbp - 0xe8], eax
.label_879:
	mov	rsp, rsp
	jmp	.label_840
.label_840:
	lea	rdi, [rdi]
	jmp	.label_842
.label_842:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rbp, rbp
	sub	edx, 0x42
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x74], ecx
	nop	
	mov	dword ptr [rbp - 4], edx
	je	.label_846
	jmp	.label_858
.label_858:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x45
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	je	.label_860
	jmp	.label_866
.label_866:
	mov	eax, dword ptr [rbp - 0x74]
	lea	rdi, [rdi]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_868
	jmp	.label_893
.label_893:
	mov	eax, dword ptr [rbp - 0x74]
	mov	rbp, rbp
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0xc], eax
	nop	
	je	.label_873
	jmp	.label_875
.label_875:
	mov	eax, dword ptr [rbp - 0x74]
	mov	rsp, rsp
	sub	eax, 0x4d
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x98], eax
	mov	rsp, rsp
	je	.label_876
	jmp	.label_881
.label_881:
	mov	eax, dword ptr [rbp - 0x74]
	lea	rsi, [rsi]
	sub	eax, 0x50
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	je	.label_882
	jmp	.label_888
.label_888:
	mov	eax, dword ptr [rbp - 0x74]
	mov	rsp, rsp
	sub	eax, 0x54
	mov	dword ptr [rbp - 0xc0], eax
	mov	rbp, rbp
	je	.label_861
	jmp	.label_855
.label_855:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x59
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_835
	mov	rbp, rbp
	jmp	.label_869
.label_869:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x5a
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_877
	mov	rsp, rsp
	jmp	.label_849
.label_849:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x74]
	mov	rbp, rbp
	sub	eax, 0x62
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_850
	nop	
	jmp	.label_856
.label_856:
	mov	eax, dword ptr [rbp - 0x74]
	mov	rbp, rbp
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x70], eax
	je	.label_859
	jmp	.label_864
.label_864:
	nop	
	mov	eax, dword ptr [rbp - 0x74]
	nop	
	sub	eax, 0x67
	nop	
	mov	dword ptr [rbp - 0x48], eax
	lea	rsi, [rsi]
	je	.label_868
	lea	rdi, [rdi]
	jmp	.label_872
.label_872:
	mov	eax, dword ptr [rbp - 0x74]
	lea	rsi, [rsi]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0x94], eax
	je	.label_873
	lea	rsi, [rsi]
	jmp	.label_884
.label_884:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	je	.label_876
	lea	rsi, [rsi]
	jmp	.label_871
.label_871:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x74]
	mov	rsp, rsp
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_861
	lea	rdi, [rdi]
	jmp	.label_847
.label_847:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x77
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x8c], eax
	mov	rsp, rsp
	je	.label_890
	lea	rdi, [rdi]
	jmp	.label_832
.label_850:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x50]
	mov	esi, 0x200
	lea	rdi, [rdi]
	call	bkm_scale
	mov	dword ptr [rbp - 0x90], eax
	jmp	.label_841
.label_846:
	lea	rdi, [rbp - 0x50]
	mov	esi, 0x400
	lea	rsi, [rsi]
	call	bkm_scale
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x90], eax
	mov	rbp, rbp
	jmp	.label_841
.label_859:
	mov	dword ptr [rbp - 0x90], 0
	jmp	.label_841
.label_860:
	lea	rdi, [rbp - 0x50]
	mov	rsp, rsp
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x90], eax
	jmp	.label_841
.label_868:
	lea	rdi, [rbp - 0x50]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x80]
	call	bkm_scale_by_power
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x90], eax
	jmp	.label_841
.label_873:
	lea	rdi, [rbp - 0x50]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x80]
	call	bkm_scale_by_power
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x90], eax
	mov	rbp, rbp
	jmp	.label_841
.label_876:
	lea	rdi, [rbp - 0x50]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x90], eax
	mov	rsp, rsp
	jmp	.label_841
.label_882:
	nop	
	lea	rdi, [rbp - 0x50]
	mov	edx, 5
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	call	bkm_scale_by_power
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x90], eax
	lea	rdi, [rdi]
	jmp	.label_841
.label_861:
	lea	rdi, [rbp - 0x50]
	mov	rbp, rbp
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x80]
	mov	rsp, rsp
	call	bkm_scale_by_power
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x90], eax
	nop	
	jmp	.label_841
.label_890:
	lea	rdi, [rbp - 0x50]
	mov	rsp, rsp
	mov	esi, 2
	lea	rsi, [rsi]
	call	bkm_scale
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x90], eax
	nop	
	jmp	.label_841
.label_835:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x50]
	mov	edx, 8
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x80]
	mov	rbp, rbp
	call	bkm_scale_by_power
	nop	
	mov	dword ptr [rbp - 0x90], eax
	lea	rsi, [rsi]
	jmp	.label_841
.label_877:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x50]
	mov	edx, 7
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x80]
	call	bkm_scale_by_power
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x90], eax
	lea	rdi, [rdi]
	jmp	.label_841
.label_832:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0xe4]
	or	edx, 2
	mov	dword ptr [rbp - 0xe0], edx
	mov	rsp, rsp
	jmp	.label_836
.label_841:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x90]
	or	eax, dword ptr [rbp - 0xe4]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xe4], eax
	mov	eax, dword ptr [rbp - 0xe8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	cmp	byte ptr [rcx], 0
	nop	
	je	.label_883
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xe4]
	lea	rsi, [rsi]
	or	eax, 2
	mov	dword ptr [rbp - 0xe4], eax
.label_883:
	jmp	.label_865
.label_865:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x68]
	nop	
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0xe4]
	mov	dword ptr [rbp - 0xe0], edx
.label_836:
	nop	
	mov	eax, dword ptr [rbp - 0xe0]
	nop	
	add	rsp, 0xf0
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d860

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
	#Procedure 0x40d940

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
	mov	dword ptr [rbp - 0x14], esi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], 0
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
	mov	esi, dword ptr [rbp - 0x14]
	call	bkm_scale
	lea	rsi, [rsi]
	or	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	jmp	.label_899
.label_898:
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d9b0

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
	jg	.label_913
	cmp	dword ptr [rbp - 0x54], 0x24
	lea	rdi, [rdi]
	jg	.label_913
	jmp	.label_901
.label_913:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str_7
	movabs	rsi, OFFSET FLAT:.str.1_7
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
.label_901:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_920
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	jmp	.label_924
.label_920:
	lea	rax, [rbp - 0x80]
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_924
.label_924:
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
.label_956:
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
	je	.label_950
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x91], dl
	lea	rsi, [rsi]
	jmp	.label_956
.label_950:
	movzx	eax, byte ptr [rbp - 0x91]
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	jne	.label_965
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xf4], 4
	lea	rsi, [rsi]
	jmp	.label_903
.label_965:
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
	jne	.label_922
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rsp, rsp
	je	.label_910
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_910
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	nop	
	je	.label_910
	mov	qword ptr [rbp - 0xc8], 1
	jmp	.label_952
.label_910:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xf4], 4
	jmp	.label_903
.label_952:
	lea	rdi, [rdi]
	jmp	.label_914
.label_922:
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0
	je	.label_962
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	lea	rdi, [rdi]
	je	.label_900
	nop	
	mov	dword ptr [rbp - 0xf4], 4
	jmp	.label_903
.label_900:
	mov	dword ptr [rbp - 0x60], 1
.label_962:
	jmp	.label_914
.label_914:
	nop	
	cmp	qword ptr [rbp - 0xd8], 0
	jne	.label_915
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x60]
	mov	dword ptr [rbp - 0xf4], edx
	lea	rdi, [rdi]
	jmp	.label_903
.label_915:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_929
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
	jne	.label_948
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
	jmp	.label_903
.label_948:
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
	je	.label_907
	jmp	.label_928
.label_928:
	nop	
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0xdc], eax
	lea	rdi, [rdi]
	je	.label_907
	nop	
	jmp	.label_917
.label_917:
	mov	eax, dword ptr [rbp - 0x9c]
	nop	
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_907
	nop	
	jmp	.label_927
.label_927:
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rsi, [rsi]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x34], eax
	mov	rbp, rbp
	je	.label_907
	lea	rsi, [rsi]
	jmp	.label_933
.label_933:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	je	.label_907
	jmp	.label_941
.label_941:
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_907
	jmp	.label_947
.label_947:
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	add	eax, -0x59
	mov	rbp, rbp
	sub	eax, 2
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], eax
	lea	rdi, [rdi]
	jb	.label_907
	mov	rsp, rsp
	jmp	.label_954
.label_954:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_907
	jmp	.label_957
.label_957:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xf8], eax
	lea	rdi, [rdi]
	je	.label_907
	mov	rsp, rsp
	jmp	.label_906
.label_906:
	mov	eax, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x44], eax
	nop	
	je	.label_907
	jmp	.label_918
.label_918:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 0x74
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	jne	.label_939
	jmp	.label_907
.label_907:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0xd8]
	call	strchr
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_909
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
	je	.label_935
	lea	rsi, [rsi]
	jmp	.label_946
.label_946:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x88], eax
	je	.label_935
	jmp	.label_930
.label_930:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	sub	eax, 0x69
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xbc], eax
	lea	rdi, [rdi]
	jne	.label_908
	lea	rsi, [rsi]
	jmp	.label_958
.label_958:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 2]
	lea	rsi, [rsi]
	cmp	ecx, 0x42
	jne	.label_960
	mov	eax, dword ptr [rbp - 0xd0]
	nop	
	add	eax, 2
	mov	dword ptr [rbp - 0xd0], eax
.label_960:
	jmp	.label_908
.label_935:
	mov	dword ptr [rbp - 0x64], 0x3e8
	mov	eax, dword ptr [rbp - 0xd0]
	add	eax, 1
	mov	dword ptr [rbp - 0xd0], eax
.label_908:
	jmp	.label_909
.label_909:
	nop	
	jmp	.label_939
.label_939:
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
	je	.label_921
	jmp	.label_931
.label_931:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x45
	nop	
	mov	dword ptr [rbp - 0x98], eax
	je	.label_932
	jmp	.label_936
.label_936:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x47
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	je	.label_934
	jmp	.label_943
.label_943:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	sub	eax, 0x4b
	nop	
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	je	.label_944
	nop	
	jmp	.label_949
.label_949:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rdi, [rdi]
	sub	eax, 0x4d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xfc], eax
	je	.label_940
	nop	
	jmp	.label_955
.label_955:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_902
	mov	rsp, rsp
	jmp	.label_961
.label_961:
	nop	
	mov	eax, dword ptr [rbp - 0x6c]
	nop	
	sub	eax, 0x54
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	nop	
	je	.label_951
	jmp	.label_919
.label_919:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x59
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x20], eax
	je	.label_942
	mov	rbp, rbp
	jmp	.label_912
.label_912:
	mov	eax, dword ptr [rbp - 0x6c]
	nop	
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb0], eax
	je	.label_945
	jmp	.label_923
.label_923:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x62
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_925
	jmp	.label_911
.label_911:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x58], eax
	je	.label_916
	jmp	.label_963
.label_963:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x67
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_934
	jmp	.label_926
.label_926:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x6b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_944
	jmp	.label_964
.label_964:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xac], eax
	je	.label_940
	jmp	.label_937
.label_937:
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x30], eax
	je	.label_951
	jmp	.label_953
.label_953:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0x24], eax
	je	.label_959
	jmp	.label_938
.label_925:
	lea	rdi, [rbp - 0xc8]
	mov	esi, 0x200
	call	bkm_scale_0
	nop	
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_904
.label_921:
	lea	rdi, [rbp - 0xc8]
	mov	esi, 0x400
	lea	rdi, [rdi]
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_904
.label_916:
	mov	dword ptr [rbp - 0x84], 0
	jmp	.label_904
.label_932:
	nop	
	lea	rdi, [rbp - 0xc8]
	mov	edx, 6
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_904
.label_934:
	lea	rdi, [rbp - 0xc8]
	mov	edx, 3
	nop	
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_904
.label_944:
	lea	rdi, [rbp - 0xc8]
	mov	edx, 1
	nop	
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_904
.label_940:
	mov	rbp, rbp
	lea	rdi, [rbp - 0xc8]
	mov	edx, 2
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x64]
	mov	rbp, rbp
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_904
.label_902:
	lea	rdi, [rbp - 0xc8]
	mov	edx, 5
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x64]
	lea	rsi, [rsi]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x84], eax
	mov	rsp, rsp
	jmp	.label_904
.label_951:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	edx, 4
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	jmp	.label_904
.label_959:
	lea	rdi, [rbp - 0xc8]
	mov	esi, 2
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_904
.label_942:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xc8]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_904
.label_945:
	mov	rsp, rsp
	lea	rdi, [rbp - 0xc8]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_904
.label_938:
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
	jmp	.label_903
.label_904:
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
	je	.label_905
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x60]
	or	eax, 2
	nop	
	mov	dword ptr [rbp - 0x60], eax
.label_905:
	jmp	.label_929
.label_929:
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x60]
	nop	
	mov	dword ptr [rbp - 0xf4], edx
.label_903:
	mov	eax, dword ptr [rbp - 0xf4]
	add	rsp, 0x100
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e340

	.globl bkm_scale_0
	.type bkm_scale_0, @function
bkm_scale_0:
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
	jae	.label_966
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], 1
	jmp	.label_967
.label_966:
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 8]
	imul	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 0x10], 0
.label_967:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e3c0

	.globl bkm_scale_by_power_0
	.type bkm_scale_by_power_0, @function
bkm_scale_by_power_0:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	dword ptr [rbp - 4], esi
	mov	dword ptr [rbp - 8], edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], 0
.label_968:
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
	je	.label_969
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	call	bkm_scale_0
	mov	rsp, rsp
	or	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_968
.label_969:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e440

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
	jne	.label_970
	lea	rax, [rbp - 0x14]
	mov	qword ptr [rbp - 0x10], rax
.label_970:
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
	ja	.label_971
	nop	
	cmp	qword ptr [rbp - 0x28], 0
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
	jmp	.label_972
.label_971:
	mov	rax, qword ptr [rbp - 0x20]
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
	#Procedure 0x40e530

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
	#Procedure 0x40e590

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
	jne	.label_976
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_979
.label_976:
	mov	rbp, rbp
	jmp	.label_977
.label_977:
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
	jne	.label_978
	jmp	.label_980
.label_978:
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
	je	.label_977
.label_980:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x1a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_979:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e680

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
	jne	.label_983
	test	byte ptr [rbp - 0x15], 1
	je	.label_982
	test	byte ptr [rbp - 0x16], 1
	lea	rsi, [rsi]
	jne	.label_983
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_982
.label_983:
	nop	
	test	byte ptr [rbp - 0x15], 1
	mov	rsp, rsp
	jne	.label_981
	call	__errno_location
	mov	dword ptr [rax], 0
.label_981:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0xffffffff
	jmp	.label_984
.label_982:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], 0
.label_984:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e760

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
	je	.label_986
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_8
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_987
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:.str.1_8
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_985
.label_987:
	mov	byte ptr [rbp - 0xd], 0
.label_985:
	jmp	.label_986
.label_986:
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
	.section	.text
	.align	16
	#Procedure 0x40e800

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
	#Procedure 0x40e880

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
	jge	.label_993
	mov	rdi, qword ptr [rbp - 8]
	call	fclose
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	jmp	.label_991
.label_993:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_990
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
	je	.label_992
.label_990:
	mov	rdi, qword ptr [rbp - 8]
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
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_994
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
.label_994:
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x10], eax
.label_991:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e9a0

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
	je	.label_995
	mov	rdi, qword ptr [rbp - 8]
	call	__freading
	cmp	eax, 0
	jne	.label_996
.label_995:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_997
.label_996:
	mov	rdi, qword ptr [rbp - 8]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
.label_997:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ea10

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
	je	.label_998
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
.label_998:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ea70

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
	jne	.label_999
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_999
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_999
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
	jne	.label_1001
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	jmp	.label_1000
.label_1001:
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
	jmp	.label_1000
.label_999:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
.label_1000:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
