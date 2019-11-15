	.section	.text
	.align	32
	#Procedure 0x401720

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	cmp	dword ptr [rbp - 4], 0
	je	.label_7
	mov	rsp, rsp
	jmp	.label_9
.label_9:
	movabs	rdi, OFFSET FLAT:.str
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_8
.label_7:
	movabs	rdi, OFFSET FLAT:.str.1
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	printf
	movabs	rdi, OFFSET FLAT:.str.2
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	nop	
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.3
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.4
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x20], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.5
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6
	mov	dword ptr [rbp - 0x28], eax
	mov	rbp, rbp
	call	emit_ancillary_info
.label_8:
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x401880

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	nop	
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
.label_11:
	xor	eax, eax
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_13
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	nop	
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_13:
	mov	al, byte ptr [rbp - 0x21]
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_12
	jmp	.label_14
.label_12:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_11
.label_14:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	je	.label_10
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_10:
	nop	
	movabs	rdi, OFFSET FLAT:.str.30
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18
	mov	rdi, rax
	mov	al, 0
	nop	
	call	printf
	nop	
	mov	edi, 5
	xor	ecx, ecx
	mov	rbp, rbp
	mov	esi, ecx
	mov	dword ptr [rbp - 0x28], eax
	lea	rdi, [rdi]
	call	setlocale
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_15
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.32
	mov	rsp, rsp
	mov	eax, 3
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	strncmp
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_15
	movabs	rdi, OFFSET FLAT:.str.33
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
.label_15:
	movabs	rdi, OFFSET FLAT:.str.34
	call	gettext
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.18
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.35
	mov	dword ptr [rbp - 0x30], eax
	lea	rsi, [rsi]
	call	gettext
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.36
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 8]
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x38], rdi
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x38]
	mov	al, 0
	nop	
	call	printf
	mov	dword ptr [rbp - 0x3c], eax
	add	rsp, 0x40
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401a90

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], 1
	mov	dword ptr [rbp - 0x1c], 2
	mov	byte ptr [rbp - 0x1d], 0
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	mov	rsp, rsp
	call	set_program_name
	lea	rdi, [rdi]
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.8
	movabs	rsi, OFFSET FLAT:.str.9
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	call	bindtextdomain
	nop	
	movabs	rdi, OFFSET FLAT:.str.8
	mov	qword ptr [rbp - 0x80], rax
	nop	
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x88], rax
	nop	
	call	atexit
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x8c], eax
.label_31:
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str.10
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:long_options
	lea	rsi, [rsi]
	xor	eax, eax
	mov	r8d, eax
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x18], eax
	nop	
	cmp	eax, -1
	nop	
	je	.label_42
	mov	eax, dword ptr [rbp - 0x18]
	mov	ecx, eax
	lea	rdi, [rdi]
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x90], eax
	mov	dword ptr [rbp - 0x94], ecx
	je	.label_16
	jmp	.label_26
.label_26:
	mov	eax, dword ptr [rbp - 0x90]
	mov	rbp, rbp
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x98], eax
	je	.label_27
	jmp	.label_34
.label_34:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	sub	eax, 0x62
	nop	
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_35
	jmp	.label_40
.label_40:
	mov	eax, dword ptr [rbp - 0x90]
	sub	eax, 0x63
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa0], eax
	lea	rdi, [rdi]
	je	.label_41
	mov	rsp, rsp
	jmp	.label_18
.label_18:
	mov	eax, dword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	sub	eax, 0x70
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa4], eax
	lea	rsi, [rsi]
	je	.label_19
	mov	rbp, rbp
	jmp	.label_28
.label_35:
	mov	dword ptr [rbp - 0x1c], 0
	nop	
	jmp	.label_24
.label_41:
	mov	dword ptr [rbp - 0x1c], 1
	nop	
	jmp	.label_24
.label_19:
	mov	byte ptr [rbp - 0x1d], 1
	jmp	.label_24
.label_27:
	xor	edi, edi
	lea	rsi, [rsi]
	call	usage
.label_16:
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.6
	movabs	rdx, OFFSET FLAT:.str.17
	movabs	r8, OFFSET FLAT:.str.12
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	r9d, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	nop	
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_28:
	mov	rbp, rbp
	mov	edi, 1
	call	usage
.label_24:
	nop	
	jmp	.label_31
.label_42:
	nop	
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	ecx, dword ptr [rbp - 8]
	sub	ecx, eax
	mov	dword ptr [rbp - 8], ecx
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [optind]]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	movsxd	rsi, eax
	nop	
	shl	rsi, 3
	lea	rdi, [rdi]
	add	rdx, rsi
	nop	
	mov	qword ptr [rbp - 0x10], rdx
	test	byte ptr [rbp - 0x1d], 1
	je	.label_33
	cmp	dword ptr [rbp - 0x1c], 2
	lea	rdi, [rdi]
	je	.label_33
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.13
	call	gettext
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edi, ecx
	nop	
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	rbp, rbp
	mov	edi, 1
	call	usage
.label_33:
	nop	
	mov	al, byte ptr [rbp - 0x1d]
	xor	al, 0xff
	nop	
	and	al, 1
	nop	
	movzx	ecx, al
	nop	
	cmp	ecx, dword ptr [rbp - 8]
	nop	
	jge	.label_38
	movabs	rdi, OFFSET FLAT:.str.14
	call	gettext
	mov	cl, byte ptr [rbp - 0x1d]
	xor	cl, 0xff
	mov	rbp, rbp
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	movsxd	rdi, edx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsi + rdi*8]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rbp, rbp
	call	quote
	xor	edx, edx
	mov	rsp, rsp
	mov	edi, edx
	mov	esi, edx
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
	mov	rsp, rsp
	test	byte ptr [rbp - 0x1d], 1
	nop	
	je	.label_30
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.16
	nop	
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0xb8], rax
	call	gettext
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str_1
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xbc], eax
.label_30:
	mov	edi, 1
	call	usage
.label_38:
	test	byte ptr [rbp - 0x1d], 1
	mov	rsp, rsp
	je	.label_22
	movabs	rax, OFFSET FLAT:G_line
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
.label_43:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:G_line
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	sub	rcx, rax
	cmp	rcx, 0x10c4
	lea	rdi, [rdi]
	jae	.label_32
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	call	puts
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	mov	dword ptr [rbp - 0xc0], eax
	call	strlen
	add	rax, 1
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_43
.label_32:
	mov	rsp, rsp
	jmp	.label_21
.label_22:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x1c], 2
	jne	.label_25
	call	guess_shell_syntax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 2
	jne	.label_29
	movabs	rdi, OFFSET FLAT:.str.17_0
	nop	
	call	gettext
	nop	
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	nop	
	mov	rdx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_29:
	jmp	.label_25
.label_25:
	movabs	rdi, OFFSET FLAT:lsc_obstack
	xor	eax, eax
	mov	ecx, eax
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:malloc
	mov	rsp, rsp
	movabs	r8, OFFSET FLAT:free
	mov	rsi, rcx
	nop	
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	call	_obstack_begin
	cmp	dword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0xcc], eax
	jne	.label_23
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdi, rcx
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	dc_parse_stream
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], al
	jmp	.label_36
.label_23:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax]
	mov	rbp, rbp
	call	dc_parse_file
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
.label_36:
	test	byte ptr [rbp - 0x11], 1
	je	.label_17
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:lsc_obstack
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x10]
	sub	rcx, rdx
	mov	qword ptr [rbp - 0x40], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	jne	.label_37
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x50]
	mov	rbp, rbp
	and	cl, 0xfd
	or	cl, 2
	nop	
	mov	byte ptr [rax + 0x50], cl
.label_37:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x18]
	lea	rdi, [rdi]
	sub	rdx, 0
	nop	
	mov	rsi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rsi + 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rsi + 0x30]
	lea	rsi, [rsi]
	xor	rsi, 0xffffffffffffffff
	and	rdx, rsi
	mov	rbp, rbp
	add	rcx, rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	qword ptr [rdx + 0x18], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	sub	rcx, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rdx + 0x20]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rsi + 8]
	mov	rsp, rsp
	sub	rdx, rsi
	lea	rdi, [rdi]
	cmp	rcx, rdx
	nop	
	jbe	.label_20
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax + 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x18], rax
.label_20:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x1c], 0
	lea	rsi, [rsi]
	jne	.label_39
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.19
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:.str.18_0
	nop	
	mov	qword ptr [rbp - 0x68], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
	mov	rsp, rsp
	jmp	.label_44
.label_39:
	movabs	rax, OFFSET FLAT:.str.21
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:.str.20
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rcx
	mov	qword ptr [rbp - 0x70], rax
.label_44:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	call	fputs_unlocked
	mov	ecx, 1
	nop	
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	mov	rcx,  qword ptr [word ptr [stdout]]
	nop	
	mov	dword ptr [rbp - 0xd0], eax
	nop	
	call	fwrite_unlocked
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	qword ptr [rbp - 0xd8], rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	nop	
	mov	dword ptr [rbp - 0xdc], eax
.label_17:
	jmp	.label_21
.label_21:
	mov	eax, 1
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	dl, byte ptr [rbp - 0x11]
	lea	rdi, [rdi]
	test	dl, 1
	nop	
	cmovne	eax, ecx
	mov	rsp, rsp
	add	rsp, 0xe0
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4021f0

	.globl guess_shell_syntax
	.type guess_shell_syntax, @function
guess_shell_syntax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.44
	call	getenv
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	je	.label_45
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	jne	.label_49
.label_45:
	mov	dword ptr [rbp - 4], 2
	lea	rdi, [rdi]
	jmp	.label_47
.label_49:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	last_component
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.39
	mov	esi, ecx
	lea	rdi, [rdi]
	call	strcmp
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_46
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	eax, OFFSET FLAT:.str.45
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_48
.label_46:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 1
	nop	
	jmp	.label_47
.label_48:
	mov	dword ptr [rbp - 4], 0
.label_47:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4022d0

	.globl dc_parse_stream
	.type dc_parse_stream, @function
dc_parse_stream:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x160
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.46
	movabs	rcx, OFFSET FLAT:G_line
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x30], 0
	mov	byte ptr [rbp - 0x41], 1
	mov	dword ptr [rbp - 0x48], 3
	mov	rdi, rax
	mov	rbp, rbp
	call	getenv
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_61
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	lea	rsi, [rsi]
	jne	.label_66
.label_61:
	movabs	rax, OFFSET FLAT:.str.47
	mov	qword ptr [rbp - 0x40], rax
.label_66:
	jmp	.label_62
.label_62:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_76
	lea	rdi, [rbp - 0x28]
	mov	rsp, rsp
	lea	rsi, [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	call	getline
	mov	rsp, rsp
	cmp	rax, 0
	jg	.label_83
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	free
	jmp	.label_87
.label_83:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_86
.label_76:
	nop	
	movabs	rax, OFFSET FLAT:G_line
	add	rax, 0x10c4
	cmp	qword ptr [rbp - 0x20], rax
	jne	.label_91
	jmp	.label_87
.label_91:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	call	strlen
	lea	rdi, [rdi]
	add	rax, 1
	nop	
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_86:
	lea	rsi, [rbp - 0x50]
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x58]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	parse_line
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x50], 0
	lea	rsi, [rsi]
	jne	.label_60
	mov	rbp, rbp
	jmp	.label_62
.label_60:
	cmp	qword ptr [rbp - 0x58], 0
	nop	
	jne	.label_68
	movabs	rdi, OFFSET FLAT:.str.48
	lea	rsi, [rsi]
	call	gettext
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x148], rax
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	edi, esi
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x41], 0
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	rbp, rbp
	jmp	.label_62
.label_68:
	movabs	rsi, OFFSET FLAT:.str.46
	mov	byte ptr [rbp - 0x59], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x50]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_92
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	fnmatch
	cmp	eax, 0
	jne	.label_51
	mov	dword ptr [rbp - 0x48], 2
	jmp	.label_55
.label_51:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x48], 2
	lea	rsi, [rsi]
	je	.label_58
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x48], 0
.label_58:
	mov	rbp, rbp
	jmp	.label_55
.label_55:
	mov	rsp, rsp
	jmp	.label_64
.label_92:
	cmp	dword ptr [rbp - 0x48], 2
	nop	
	jne	.label_94
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x48], 1
.label_94:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x48], 0
	je	.label_73
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x2e
	jne	.label_79
	nop	
	movabs	rax, OFFSET FLAT:lsc_obstack
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x18]
	lea	rsi, [rsi]
	sub	rax, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 1
	mov	rsp, rsp
	jae	.label_78
	mov	rbp, rbp
	mov	eax, 1
	mov	rsp, rsp
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x68]
	call	_obstack_newchunk
.label_78:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rax + 0x18], rdx
	lea	rsi, [rsi]
	mov	byte ptr [rcx], 0x2a
	mov	rdi, qword ptr [rbp - 0x50]
	call	append_quoted
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:lsc_obstack
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	nop	
	mov	qword ptr [rbp - 0x90], rax
	nop	
	cmp	qword ptr [rbp - 0x90], 1
	jae	.label_52
	lea	rdi, [rdi]
	mov	eax, 1
	nop	
	mov	esi, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	call	_obstack_newchunk
.label_52:
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rax + 0x18]
	mov	rdx, rcx
	add	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [rax + 0x18], rdx
	lea	rsi, [rsi]
	mov	byte ptr [rcx], 0x3d
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x58]
	call	append_quoted
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:lsc_obstack
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax + 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	sub	rax, rcx
	nop	
	mov	qword ptr [rbp - 0xa8], rax
	cmp	qword ptr [rbp - 0xa8], 1
	lea	rdi, [rdi]
	jae	.label_80
	lea	rsi, [rsi]
	mov	eax, 1
	mov	esi, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	call	_obstack_newchunk
.label_80:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	rdx, rcx
	lea	rdi, [rdi]
	add	rdx, 1
	mov	qword ptr [rax + 0x18], rdx
	mov	rbp, rbp
	mov	byte ptr [rcx], 0x3a
	jmp	.label_71
.label_79:
	mov	rax, qword ptr [rbp - 0x50]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x2a
	jne	.label_65
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	call	append_quoted
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:lsc_obstack
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb0], rdi
	mov	rdi, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb8], rdi
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	sub	rdi, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc0], rdi
	nop	
	cmp	qword ptr [rbp - 0xc0], 1
	jae	.label_74
	mov	eax, 1
	mov	esi, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	call	_obstack_newchunk
.label_74:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rax + 0x18], rdx
	mov	byte ptr [rcx], 0x3d
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	call	append_quoted
	movabs	rax, OFFSET FLAT:lsc_obstack
	mov	qword ptr [rbp - 0xc8], rax
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xd0], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rax, qword ptr [rax + 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xd0]
	nop	
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0xd8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 1
	jae	.label_54
	mov	eax, 1
	lea	rdi, [rdi]
	mov	esi, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xc8]
	call	_obstack_newchunk
.label_54:
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	mov	rdx, rcx
	add	rdx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x18], rdx
	lea	rdi, [rdi]
	mov	byte ptr [rcx], 0x3a
	nop	
	jmp	.label_67
.label_65:
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.49
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	nop	
	je	.label_90
	movabs	rsi, OFFSET FLAT:.str.50
	mov	rdi, qword ptr [rbp - 0x50]
	call	c_strcasecmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_90
	movabs	rsi, OFFSET FLAT:.str.51
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x50]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_50
.label_90:
	mov	rsp, rsp
	jmp	.label_53
.label_50:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xdc], 0
.label_77:
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0xdc]
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [+ (rax * 8) + slack_codes]],  0
	mov	rbp, rbp
	je	.label_59
	mov	rdi, qword ptr [rbp - 0x50]
	movsxd	rax, dword ptr [rbp - 0xdc]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [+ (rax * 8) + slack_codes]]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_63
	lea	rdi, [rdi]
	jmp	.label_59
.label_63:
	nop	
	jmp	.label_89
.label_89:
	mov	eax, dword ptr [rbp - 0xdc]
	add	eax, 1
	mov	dword ptr [rbp - 0xdc], eax
	lea	rdi, [rdi]
	jmp	.label_77
.label_59:
	nop	
	movsxd	rax, dword ptr [rbp - 0xdc]
	cmp	qword ptr [word ptr [+ (rax * 8) + slack_codes]],  0
	mov	rbp, rbp
	je	.label_70
	jmp	.label_82
.label_82:
	movabs	rax, OFFSET FLAT:lsc_obstack
	mov	qword ptr [rbp - 0xe8], rax
	mov	rax, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xf0], rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rax, qword ptr [rax + 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0xf8], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xf8], 1
	mov	rsp, rsp
	jae	.label_85
	lea	rdi, [rdi]
	mov	eax, 1
	mov	esi, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xe8]
	call	_obstack_newchunk
.label_85:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:lsc_obstack
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0xdc]
	mov	rcx,  qword ptr [word ptr [+ (rcx * 8) + ls_codes]]
	mov	dl, byte ptr [rcx]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx + 0x18]
	mov	rdi, rsi
	add	rdi, 1
	mov	qword ptr [rcx + 0x18], rdi
	mov	byte ptr [rsi], dl
	mov	qword ptr [rbp - 0x100], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x100]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x108], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x108]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	sub	rax, rcx
	nop	
	mov	qword ptr [rbp - 0x110], rax
	cmp	qword ptr [rbp - 0x110], 1
	lea	rdi, [rdi]
	jae	.label_56
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x100]
	call	_obstack_newchunk
.label_56:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0xdc]
	mov	rax,  qword ptr [word ptr [+ (rax * 8) + ls_codes]]
	mov	cl, byte ptr [rax + 1]
	mov	rax, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + 0x18]
	mov	rsi, rdx
	mov	rsp, rsp
	add	rsi, 1
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x18], rsi
	mov	rbp, rbp
	mov	byte ptr [rdx], cl
	movabs	rax, OFFSET FLAT:lsc_obstack
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x118], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rbp - 0x120], rax
	mov	rax, qword ptr [rbp - 0x120]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x120]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	sub	rax, rcx
	mov	qword ptr [rbp - 0x128], rax
	cmp	qword ptr [rbp - 0x128], 1
	lea	rdi, [rdi]
	jae	.label_88
	mov	eax, 1
	lea	rdi, [rdi]
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	call	_obstack_newchunk
.label_88:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + 0x18]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rdx, 1
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], rdx
	mov	rbp, rbp
	mov	byte ptr [rcx], 0x3d
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	append_quoted
	movabs	rax, OFFSET FLAT:lsc_obstack
	mov	qword ptr [rbp - 0x130], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x130]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x138], rax
	mov	rax, qword ptr [rbp - 0x138]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x138]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	sub	rax, rcx
	mov	qword ptr [rbp - 0x140], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x140], 1
	jae	.label_84
	mov	eax, 1
	mov	esi, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x130]
	mov	rsp, rsp
	call	_obstack_newchunk
.label_84:
	mov	rax, qword ptr [rbp - 0x130]
	mov	rcx, qword ptr [rax + 0x18]
	mov	rbp, rbp
	mov	rdx, rcx
	nop	
	add	rdx, 1
	mov	qword ptr [rax + 0x18], rdx
	lea	rdi, [rdi]
	mov	byte ptr [rcx], 0x3a
	jmp	.label_57
.label_70:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x59], 1
.label_57:
	mov	rsp, rsp
	jmp	.label_53
.label_53:
	mov	rsp, rsp
	jmp	.label_67
.label_67:
	jmp	.label_71
.label_71:
	jmp	.label_72
.label_73:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x59], 1
.label_72:
	jmp	.label_64
.label_64:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x59], 1
	je	.label_75
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x48], 2
	je	.label_93
	cmp	dword ptr [rbp - 0x48], 1
	jne	.label_75
.label_93:
	movabs	rdi, OFFSET FLAT:.str.52
	call	gettext
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x150], rax
	nop	
	je	.label_81
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x10]
	call	quotearg_n_style_colon
	mov	qword ptr [rbp - 0x158], rax
	jmp	.label_69
.label_81:
	movabs	rdi, OFFSET FLAT:.str.53
	lea	rsi, [rsi]
	call	gettext
	mov	qword ptr [rbp - 0x158], rax
.label_69:
	mov	rax, qword ptr [rbp - 0x158]
	nop	
	xor	ecx, ecx
	mov	r8, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	r9, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	edi, ecx
	mov	esi, ecx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
	mov	byte ptr [rbp - 0x41], 0
.label_75:
	mov	rdi, qword ptr [rbp - 0x50]
	nop	
	call	free
	nop	
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
	nop	
	jmp	.label_62
.label_87:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x41]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x160
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402d70

	.globl dc_parse_file
	.type dc_parse_file, @function
dc_parse_file:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:.str.115
	mov	esi, eax
	mov	rsp, rsp
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_97
	movabs	rsi, OFFSET FLAT:.str.116
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx,  qword ptr [word ptr [stdin]]
	call	freopen_safer
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_97
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], ecx
	nop	
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_2
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x18]
	nop	
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rbp, rbp
	call	error
	mov	byte ptr [rbp - 1], 0
	lea	rdi, [rdi]
	jmp	.label_95
.label_97:
	mov	rdi,  qword ptr [word ptr [stdin]]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	dc_parse_stream
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [stdin]]
	mov	rsp, rsp
	call	rpl_fclose
	cmp	eax, 0
	je	.label_96
	call	__errno_location
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x1c], ecx
	mov	rbp, rbp
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_95
.label_96:
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 1], al
.label_95:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ed0

	.globl parse_line
	.type parse_line, @function
parse_line:
	mov	rsp, rsp
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x60
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx], 0
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx], 0
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rdx
.label_112:
	mov	rax, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rax]
	nop	
	call	to_uchar
	movzx	edi, al
	nop	
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x38], rcx
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x38]
	movzx	edi, word ptr [rax + rcx*2]
	lea	rsi, [rsi]
	and	edi, 0x2000
	cmp	edi, 0
	mov	rbp, rbp
	je	.label_118
	jmp	.label_109
.label_109:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x20], rax
	nop	
	jmp	.label_112
.label_118:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_116
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x23
	jne	.label_100
.label_116:
	jmp	.label_104
.label_100:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_114:
	mov	rax, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	nop	
	movzx	edi, al
	nop	
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x40], rcx
	mov	rbp, rbp
	call	__ctype_b_loc
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	dl, dil
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	movzx	edi, word ptr [rax + rcx*2]
	lea	rsi, [rsi]
	and	edi, 0x2000
	lea	rdi, [rdi]
	cmp	edi, 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x41], dl
	jne	.label_101
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0
	setne	dl
	nop	
	mov	byte ptr [rbp - 0x41], dl
.label_101:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_106
	jmp	.label_113
.label_106:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_114
.label_113:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rax, rcx
	mov	rsi, rax
	mov	rbp, rbp
	call	xstrndup
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0
	jne	.label_111
	jmp	.label_104
.label_111:
	jmp	.label_117
.label_117:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	nop	
	mov	qword ptr [rbp - 0x50], rcx
	nop	
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	movzx	edi, word ptr [rax + rcx*2]
	mov	rbp, rbp
	and	edi, 0x2000
	lea	rsi, [rsi]
	cmp	edi, 0
	jne	.label_117
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0
	je	.label_105
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x23
	jne	.label_115
.label_105:
	jmp	.label_104
.label_115:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
.label_110:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x51], cl
	lea	rsi, [rsi]
	je	.label_102
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x23
	lea	rsi, [rsi]
	setne	dl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x51], dl
.label_102:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x51]
	lea	rdi, [rdi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_98
	jmp	.label_108
.label_98:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	jmp	.label_110
.label_108:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rax, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
.label_103:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rcx
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x60]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	lea	rsi, [rsi]
	cmp	edi, 0
	je	.label_107
	jmp	.label_99
.label_99:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_103
.label_107:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rax, rcx
	mov	rsi, rax
	mov	rbp, rbp
	call	xstrndup
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
.label_104:
	mov	rbp, rbp
	add	rsp, 0x60
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x403230

	.globl append_quoted
	.type append_quoted, @function
append_quoted:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0xa0
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], 1
.label_119:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_121
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	mov	rsp, rsp
	sub	edx, 0x27
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x8c], ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x90], edx
	je	.label_129
	mov	rbp, rbp
	jmp	.label_122
.label_122:
	mov	eax, dword ptr [rbp - 0x8c]
	mov	rsp, rsp
	sub	eax, 0x3a
	mov	dword ptr [rbp - 0x94], eax
	mov	rsp, rsp
	je	.label_125
	jmp	.label_132
.label_132:
	mov	eax, dword ptr [rbp - 0x8c]
	mov	rbp, rbp
	sub	eax, 0x3d
	mov	dword ptr [rbp - 0x98], eax
	je	.label_125
	lea	rsi, [rsi]
	jmp	.label_134
.label_134:
	mov	eax, dword ptr [rbp - 0x8c]
	nop	
	sub	eax, 0x5c
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_130
	jmp	.label_120
.label_120:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x8c]
	mov	rsp, rsp
	sub	eax, 0x5e
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_130
	jmp	.label_123
.label_129:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:lsc_obstack
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x18]
	lea	rsi, [rsi]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x28], 1
	jae	.label_126
	lea	rsi, [rsi]
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x18]
	call	_obstack_newchunk
.label_126:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:lsc_obstack
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx + 0x18]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rcx + 0x18], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rdx], 0x27
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 1
	jae	.label_133
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	_obstack_newchunk
.label_133:
	movabs	rax, OFFSET FLAT:lsc_obstack
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rcx + 0x18]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rcx + 0x18], rsi
	nop	
	mov	byte ptr [rdx], 0x5c
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	nop	
	cmp	qword ptr [rbp - 0x58], 1
	lea	rsi, [rsi]
	jae	.label_131
	lea	rdi, [rdi]
	mov	eax, 1
	nop	
	mov	esi, eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	call	_obstack_newchunk
.label_131:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rax + 0x18]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rax + 0x18], rdx
	mov	byte ptr [rcx], 0x27
	mov	byte ptr [rbp - 9], 1
	jmp	.label_135
.label_130:
	mov	al, byte ptr [rbp - 9]
	xor	al, 0xff
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 9], al
	jmp	.label_135
.label_125:
	test	byte ptr [rbp - 9], 1
	je	.label_124
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:lsc_obstack
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x70], rax
	cmp	qword ptr [rbp - 0x70], 1
	jae	.label_128
	nop	
	mov	eax, 1
	mov	rsp, rsp
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x60]
	call	_obstack_newchunk
.label_128:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 0x18]
	mov	rdx, rcx
	add	rdx, 1
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], rdx
	nop	
	mov	byte ptr [rcx], 0x5c
.label_124:
	jmp	.label_123
.label_123:
	mov	byte ptr [rbp - 9], 1
.label_135:
	nop	
	movabs	rax, OFFSET FLAT:lsc_obstack
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	sub	rax, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x88], 1
	jae	.label_127
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	call	_obstack_newchunk
.label_127:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rax + 0x18]
	nop	
	mov	rsi, rdx
	add	rsi, 1
	mov	rbp, rbp
	mov	qword ptr [rax + 0x18], rsi
	nop	
	mov	byte ptr [rdx], cl
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_119
.label_121:
	add	rsp, 0xa0
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4035d0

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	al, dil
	nop	
	mov	byte ptr [rbp - 1], al
	nop	
	movzx	eax, byte ptr [rbp - 1]
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4035f0

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
	jne	.label_136
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_139
.label_136:
	mov	rbp, rbp
	jmp	.label_137
.label_137:
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
	jne	.label_138
	jmp	.label_140
.label_138:
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
	je	.label_137
.label_140:
	movzx	eax, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x2a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_139:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4036e0
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
	.align	32
	#Procedure 0x403710
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
	#Procedure 0x403740

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
	je	.label_141
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_144
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_141
.label_144:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_3
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_145
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
	movabs	rdx, OFFSET FLAT:.str.1_0
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_142
.label_145:
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_142:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_141:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_143
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_143:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x403870

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
.label_152:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	jne	.label_148
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_152
.label_148:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
.label_151:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_146
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	jne	.label_150
	mov	byte ptr [rbp - 0x19], 1
	nop	
	jmp	.label_147
.label_150:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x19], 1
	lea	rdi, [rdi]
	je	.label_149
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], 0
.label_149:
	jmp	.label_147
.label_147:
	jmp	.label_153
.label_153:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_151
.label_146:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403940
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
.label_155:
	xor	eax, eax
	mov	cl, al
	mov	eax, 1
	lea	rsi, [rsi]
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x19], cl
	mov	rsp, rsp
	jae	.label_154
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
.label_154:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	test	al, 1
	nop	
	jne	.label_156
	mov	rbp, rbp
	jmp	.label_157
.label_156:
	jmp	.label_158
.label_158:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_155
.label_157:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403a00

	.globl freopen_safer
	.type freopen_safer, @function
freopen_safer:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x19], 0
	mov	byte ptr [rbp - 0x1a], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1b], 0
	mov	rdi, qword ptr [rbp - 0x18]
	call	fileno
	nop	
	mov	ecx, eax
	test	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], ecx
	mov	rsp, rsp
	je	.label_169
	mov	rsp, rsp
	jmp	.label_174
.label_174:
	nop	
	mov	eax, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	sub	eax, 1
	mov	dword ptr [rbp - 0x28], eax
	lea	rsi, [rsi]
	je	.label_175
	mov	rsp, rsp
	jmp	.label_177
.label_177:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x24]
	sub	eax, 2
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	je	.label_168
	lea	rdi, [rdi]
	jmp	.label_159
.label_159:
	mov	eax, 2
	mov	rbp, rbp
	mov	edi, eax
	nop	
	mov	esi, eax
	mov	rsp, rsp
	call	dup2
	cmp	eax, 2
	lea	rdi, [rdi]
	je	.label_165
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x1b], 1
.label_165:
	mov	rbp, rbp
	jmp	.label_168
.label_168:
	nop	
	mov	eax, 1
	nop	
	mov	edi, eax
	mov	rsp, rsp
	mov	esi, eax
	mov	rbp, rbp
	call	dup2
	cmp	eax, 1
	je	.label_176
	mov	byte ptr [rbp - 0x1a], 1
.label_176:
	nop	
	jmp	.label_175
.label_175:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edi, eax
	nop	
	mov	esi, eax
	call	dup2
	cmp	eax, 0
	je	.label_173
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x19], 1
.label_173:
	lea	rdi, [rdi]
	jmp	.label_169
.label_169:
	nop	
	jmp	.label_161
.label_161:
	test	byte ptr [rbp - 0x19], 1
	lea	rdi, [rdi]
	je	.label_163
	nop	
	xor	edi, edi
	nop	
	call	protect_fd
	test	al, 1
	jne	.label_163
	mov	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	jmp	.label_167
.label_163:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x1a], 1
	je	.label_171
	mov	edi, 1
	call	protect_fd
	test	al, 1
	nop	
	jne	.label_171
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_170
.label_171:
	nop	
	test	byte ptr [rbp - 0x1b], 1
	je	.label_160
	lea	rsi, [rsi]
	mov	edi, 2
	call	protect_fd
	test	al, 1
	jne	.label_160
	nop	
	mov	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	jmp	.label_162
.label_160:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	call	rpl_freopen
	mov	qword ptr [rbp - 0x18], rax
.label_162:
	jmp	.label_170
.label_170:
	jmp	.label_167
.label_167:
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x20], ecx
	nop	
	test	byte ptr [rbp - 0x1b], 1
	je	.label_172
	mov	rbp, rbp
	mov	edi, 2
	call	close
	mov	dword ptr [rbp - 0x30], eax
.label_172:
	nop	
	test	byte ptr [rbp - 0x1a], 1
	je	.label_178
	mov	edi, 1
	nop	
	call	close
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], eax
.label_178:
	nop	
	test	byte ptr [rbp - 0x19], 1
	lea	rdi, [rdi]
	je	.label_166
	lea	rdi, [rdi]
	xor	edi, edi
	call	close
	mov	dword ptr [rbp - 0x38], eax
.label_166:
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	jne	.label_164
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x3c], eax
	lea	rdi, [rdi]
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	dword ptr [rax], ecx
.label_164:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403c60

	.globl protect_fd
	.type protect_fd, @function
protect_fd:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_4
	xor	esi, esi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], edi
	mov	rdi, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rsp, rsp
	call	open
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 8]
	je	.label_179
	xor	eax, eax
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_181
	mov	edi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	close
	mov	dword ptr [rbp - 0x10], eax
	mov	rbp, rbp
	call	__errno_location
	nop	
	mov	dword ptr [rax], 9
.label_181:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_180
.label_179:
	nop	
	mov	byte ptr [rbp - 1], 1
.label_180:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d00

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
	jne	.label_182
	movabs	rdi, OFFSET FLAT:.str_5
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	call	abort
.label_182:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_185
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_184
.label_185:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_184:
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
	jl	.label_183
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_1
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
	jne	.label_183
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.2_0
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
	jne	.label_186
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_186:
	jmp	.label_183
.label_183:
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
	#Procedure 0x403e80
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
	je	.label_188
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_187
.label_188:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_187
.label_187:
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
	#Procedure 0x403f30
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
	je	.label_189
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_190
.label_189:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_190
.label_190:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403f90
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
	je	.label_191
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_192
.label_191:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_192
.label_192:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ff0

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
	je	.label_193
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_194
.label_193:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_194
.label_194:
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
	#Procedure 0x4040f0
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
	jne	.label_195
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_195:
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
	#Procedure 0x404150

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
	jne	.label_196
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_196:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_198
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_197
.label_198:
	call	abort
.label_197:
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
	#Procedure 0x4041f0
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
	je	.label_199
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_200
.label_199:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_200
.label_200:
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
	#Procedure 0x4042f0

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
.label_342:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_392
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_395]]
	jmp	rcx
.label_655:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_654:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_214
	jmp	.label_202
.label_202:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_205
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_205:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_214
.label_214:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_217
.label_656:
	nop	
	mov	byte ptr [rbp - 0x79], 1
	nop	
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_217
.label_657:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_228
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.11
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	call	gettext_quote
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_228:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_245
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_267:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_253
	jmp	.label_254
.label_254:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_257
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_257:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_344
.label_344:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_267
.label_253:
	mov	rbp, rbp
	jmp	.label_245
.label_245:
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
	jmp	.label_217
.label_652:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x79], 1
.label_651:
	mov	byte ptr [rbp - 0x7b], 1
.label_653:
	nop	
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_282
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
.label_282:
	jmp	.label_305
.label_305:
	mov	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_288
	jmp	.label_294
.label_294:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_324
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_324:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_288
.label_288:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	mov	rsp, rsp
	jmp	.label_217
.label_650:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_217
.label_392:
	call	abort
.label_217:
	mov	qword ptr [rbp - 0x58], 0
.label_280:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_321
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
	jmp	.label_262
.label_321:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], edx
.label_262:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_337
	mov	rbp, rbp
	jmp	.label_346
.label_337:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x81], 0
	nop	
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_261
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	je	.label_261
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_261
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	lea	rsi, [rsi]
	jne	.label_269
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_269
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_369
.label_269:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_369:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_261
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
	jne	.label_261
	nop	
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	je	.label_385
	jmp	.label_208
.label_385:
	nop	
	mov	byte ptr [rbp - 0x81], 1
.label_261:
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
	ja	.label_387
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_396]]
	nop	
	jmp	rcx
.label_575:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	je	.label_399
	mov	rsp, rsp
	jmp	.label_201
.label_201:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_219
	jmp	.label_208
.label_219:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x82], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_209
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7c], 1
	mov	rbp, rbp
	jne	.label_209
	nop	
	jmp	.label_286
.label_286:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_218
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_218:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_227
.label_227:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_231
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_231:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_241
.label_241:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_251
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_251:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_209:
	lea	rsi, [rsi]
	jmp	.label_300
.label_300:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_260
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_260:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_265
.label_265:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_270
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_270
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_270
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_270
	nop	
	jmp	.label_284
.label_284:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_287
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_287:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_295
.label_295:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_301
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_301:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_270
.label_270:
	mov	byte ptr [rbp - 0x7f], 0x30
	nop	
	jmp	.label_211
.label_399:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x38]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_317
	mov	rbp, rbp
	jmp	.label_272
.label_317:
	jmp	.label_211
.label_211:
	jmp	.label_232
.label_586:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	nop	
	mov	dword ptr [rbp - 0x100], ecx
	mov	rsp, rsp
	je	.label_323
	mov	rbp, rbp
	jmp	.label_329
.label_329:
	mov	eax, dword ptr [rbp - 0xfc]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x104], eax
	lea	rsi, [rsi]
	je	.label_332
	jmp	.label_339
.label_323:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_341
	jmp	.label_208
.label_341:
	jmp	.label_224
.label_332:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_243
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jae	.label_243
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_243
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
	je	.label_360
	nop	
	jmp	.label_365
.label_365:
	nop	
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	mov	rsp, rsp
	jb	.label_360
	jmp	.label_370
.label_370:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x108]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	mov	rsp, rsp
	je	.label_360
	jmp	.label_373
.label_373:
	mov	eax, dword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x118], eax
	je	.label_360
	jmp	.label_242
.label_242:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	lea	rdi, [rdi]
	ja	.label_381
	jmp	.label_360
.label_360:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_292
	jmp	.label_208
.label_292:
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
	jae	.label_390
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_390:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_400
.label_400:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_204
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_204:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_213
.label_213:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_216
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_216:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_226
.label_226:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_357
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_357:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_237
.label_381:
	jmp	.label_237
.label_237:
	jmp	.label_243
.label_243:
	jmp	.label_224
.label_339:
	jmp	.label_224
.label_224:
	jmp	.label_232
.label_576:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_252
.label_577:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_252
.label_581:
	mov	byte ptr [rbp - 0x80], 0x66
	lea	rdi, [rdi]
	jmp	.label_252
.label_579:
	mov	byte ptr [rbp - 0x80], 0x6e
	mov	rbp, rbp
	jmp	.label_258
.label_582:
	mov	byte ptr [rbp - 0x80], 0x72
	mov	rbp, rbp
	jmp	.label_258
.label_578:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_258
.label_580:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_252
.label_587:
	mov	al, byte ptr [rbp - 0x7f]
	nop	
	mov	byte ptr [rbp - 0x80], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_263
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_266
	nop	
	jmp	.label_208
.label_266:
	lea	rsi, [rsi]
	jmp	.label_235
.label_263:
	test	byte ptr [rbp - 0x79], 1
	je	.label_274
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_274
	nop	
	cmp	qword ptr [rbp - 0x78], 0
	mov	rbp, rbp
	je	.label_274
	jmp	.label_235
.label_274:
	jmp	.label_258
.label_258:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	jne	.label_248
	test	byte ptr [rbp - 0x7b], 1
	je	.label_248
	jmp	.label_208
.label_248:
	mov	rsp, rsp
	jmp	.label_252
.label_252:
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_291
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_225
.label_291:
	jmp	.label_232
.label_588:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_298
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_308
	jmp	.label_306
.label_298:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_308
.label_306:
	nop	
	jmp	.label_232
.label_308:
	jmp	.label_314
.label_314:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	je	.label_315
	lea	rsi, [rsi]
	jmp	.label_232
.label_315:
	nop	
	jmp	.label_320
.label_320:
	mov	byte ptr [rbp - 0x83], 1
.label_583:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_322
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_322
	jmp	.label_208
.label_322:
	lea	rsi, [rsi]
	jmp	.label_232
.label_585:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_327
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_336
	jmp	.label_208
.label_336:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_343
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jne	.label_343
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_343:
	jmp	.label_349
.label_349:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_351
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_351:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_356
.label_356:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_290
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_290:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_367
.label_367:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_364
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_364:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_327:
	lea	rsi, [rsi]
	jmp	.label_232
.label_584:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_232
.label_387:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7a], 1
	je	.label_382
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
	jmp	.label_312
.label_382:
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
	jne	.label_401
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_401:
	jmp	.label_215
.label_215:
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
	jne	.label_229
	jmp	.label_207
.label_229:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_239
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_207
.label_239:
	nop	
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_246
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_309:
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
	jae	.label_259
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_259:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_233
	jmp	.label_268
.label_233:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_309
.label_268:
	jmp	.label_207
.label_246:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_275
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_275
	mov	qword ptr [rbp - 0xb8], 1
.label_326:
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	cmp	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	jae	.label_281
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
	jb	.label_285
	jmp	.label_302
.label_302:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x138], eax
	je	.label_285
	jmp	.label_310
.label_310:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x13c], eax
	mov	rsp, rsp
	je	.label_285
	jmp	.label_318
.label_318:
	mov	eax, dword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_319
	mov	rsp, rsp
	jmp	.label_285
.label_285:
	mov	rsp, rsp
	jmp	.label_208
.label_319:
	jmp	.label_325
.label_325:
	mov	rsp, rsp
	jmp	.label_293
.label_293:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_326
.label_281:
	mov	rbp, rbp
	jmp	.label_275
.label_275:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_340
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_340:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_375
.label_375:
	lea	rsi, [rsi]
	jmp	.label_350
.label_350:
	jmp	.label_352
.label_352:
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
	jne	.label_215
.label_207:
	jmp	.label_312
.label_312:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	nop	
	jb	.label_362
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_368
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	mov	rsp, rsp
	jne	.label_368
.label_362:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 0xc0], rax
.label_345:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	nop	
	je	.label_338
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	jne	.label_338
	jmp	.label_378
.label_378:
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_380
	jmp	.label_208
.label_380:
	mov	byte ptr [rbp - 0x82], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_384
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_384
	lea	rdi, [rdi]
	jmp	.label_388
.label_388:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_391
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_391:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_394
.label_394:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_398
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_398:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_206
.label_206:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_250
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_250:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_384:
	jmp	.label_220
.label_220:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_222
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_222:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_283
.label_283:
	jmp	.label_234
.label_234:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_236
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
.label_236:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_244
.label_244:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_278
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
.label_278:
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
	jmp	.label_264
.label_338:
	test	byte ptr [rbp - 0x81], 1
	lea	rsi, [rsi]
	je	.label_273
	lea	rdi, [rdi]
	jmp	.label_276
.label_276:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_277
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_277:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x81], 0
.label_273:
	nop	
	jmp	.label_264
.label_264:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_289
	jmp	.label_296
.label_289:
	lea	rsi, [rsi]
	jmp	.label_297
.label_297:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_299
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x82], 1
	jne	.label_299
	lea	rsi, [rsi]
	jmp	.label_304
.label_304:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_307
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_307:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_316
.label_316:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_255
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_255:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_299:
	nop	
	jmp	.label_331
.label_331:
	mov	rsp, rsp
	jmp	.label_333
.label_333:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_335
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_335:
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
	jmp	.label_345
.label_296:
	mov	rsp, rsp
	jmp	.label_235
.label_368:
	lea	rsi, [rsi]
	jmp	.label_232
.label_232:
	test	byte ptr [rbp - 0x79], 1
	mov	rbp, rbp
	je	.label_358
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_361
.label_358:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_363
.label_361:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_363
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
	jne	.label_328
.label_363:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x81], 1
	lea	rdi, [rdi]
	jne	.label_328
	mov	rsp, rsp
	jmp	.label_235
.label_328:
	nop	
	jmp	.label_225
.label_225:
	jmp	.label_376
.label_376:
	test	byte ptr [rbp - 0x7b], 1
	mov	rbp, rbp
	je	.label_377
	jmp	.label_208
.label_377:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_383
	test	byte ptr [rbp - 0x7c], 1
	lea	rdi, [rdi]
	jne	.label_383
	lea	rdi, [rdi]
	jmp	.label_386
.label_386:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_389
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_389:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_393
.label_393:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_397
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_397:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_203
.label_203:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_210
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_210:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_383:
	jmp	.label_221
.label_221:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_223
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_223:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_230
.label_230:
	nop	
	jmp	.label_235
.label_235:
	jmp	.label_238
.label_238:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7c], 1
	je	.label_240
	test	byte ptr [rbp - 0x82], 1
	jne	.label_240
	lea	rdi, [rdi]
	jmp	.label_247
.label_247:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_249
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_249:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_256
.label_256:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_311
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_311:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_240:
	jmp	.label_371
.label_371:
	nop	
	jmp	.label_374
.label_374:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_271
	mov	al, byte ptr [rbp - 0x7f]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_271:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x83], 1
	jne	.label_279
	mov	byte ptr [rbp - 0x7e], 0
.label_279:
	mov	rbp, rbp
	jmp	.label_272
.label_272:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_280
.label_346:
	cmp	qword ptr [rbp - 0x60], 0
	mov	rbp, rbp
	jne	.label_212
	cmp	dword ptr [rbp - 0x34], 2
	nop	
	jne	.label_212
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_212
	nop	
	jmp	.label_208
.label_212:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_303
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_303
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7d], 1
	je	.label_303
	test	byte ptr [rbp - 0x7e], 1
	je	.label_313
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
	jmp	.label_330
.label_313:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jne	.label_334
	cmp	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	je	.label_334
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_342
.label_334:
	jmp	.label_347
.label_347:
	mov	rbp, rbp
	jmp	.label_303
.label_303:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_348
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_348
	mov	rbp, rbp
	jmp	.label_353
.label_353:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_354
	lea	rdi, [rdi]
	jmp	.label_355
.label_355:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_359
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_359:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_366
.label_366:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_353
.label_354:
	jmp	.label_348
.label_348:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_372
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_372:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_330
.label_208:
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_379
	mov	rsp, rsp
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_379
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], 4
.label_379:
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
.label_330:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x405c10
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
	#Procedure 0x405c80

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
	je	.label_402
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_403
.label_402:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_403
.label_403:
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
	je	.label_404
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_404:
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
	#Procedure 0x405e50
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
.label_409:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_408
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
	jmp	.label_409
.label_408:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_407
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_405]],  rax
.label_407:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_406
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_406:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405f60

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
	#Procedure 0x405fb0

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
	jge	.label_414
	call	abort
.label_414:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_417
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
	jge	.label_410
	call	xalloc_die
.label_410:
	test	byte ptr [rbp - 0x31], 1
	je	.label_411
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_415
.label_411:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_415:
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
	je	.label_413
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_405]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_413:
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
.label_417:
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
	ja	.label_412
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
	je	.label_416
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	free
.label_416:
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
.label_412:
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
	#Procedure 0x4062e0

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
	#Procedure 0x406320
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
	#Procedure 0x406350
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
	#Procedure 0x406390

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
	#Procedure 0x4063f0

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
	jne	.label_418
	call	abort
.label_418:
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
	#Procedure 0x406490

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
	#Procedure 0x406500
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
	#Procedure 0x406540
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
	#Procedure 0x406580

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
	#Procedure 0x406630

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
	#Procedure 0x406670

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
	#Procedure 0x4066a0
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
	#Procedure 0x4066e0

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
	#Procedure 0x4067d0

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
	#Procedure 0x406820

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
	#Procedure 0x4068c0
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
	#Procedure 0x406910
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
	#Procedure 0x406970

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
	#Procedure 0x4069b0
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
	#Procedure 0x4069f0

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
	#Procedure 0x406a30

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
	#Procedure 0x406a70

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
	je	.label_422
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_419
.label_422:
	call	locale_charset
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.13_0
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_420
	movabs	rax, OFFSET FLAT:.str.15
	movabs	rcx, OFFSET FLAT:.str.14_0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_419
.label_420:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_421
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
	jmp	.label_419
.label_421:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_419:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406bb0

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
	je	.label_426
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
	jmp	.label_425
.label_426:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_2
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_425:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:.str.2_1
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
	mov	ecx, OFFSET FLAT:.str.3_0
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
	ja	.label_423
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_427]]
	jmp	rcx
.label_611:
	jmp	.label_424
.label_612:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.4_0
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
	jmp	.label_424
.label_613:
	movabs	rdi, OFFSET FLAT:.str.5_0
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
	jmp	.label_424
.label_614:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6_0
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
	jmp	.label_424
.label_615:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.7
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
	jmp	.label_424
.label_616:
	nop	
	movabs	rdi, OFFSET FLAT:.str.8_0
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
	jmp	.label_424
.label_617:
	nop	
	movabs	rdi, OFFSET FLAT:.str.9_0
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
	jmp	.label_424
.label_618:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.10_1
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
	jmp	.label_424
.label_619:
	movabs	rdi, OFFSET FLAT:.str.11_0
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
	jmp	.label_424
.label_620:
	movabs	rdi, OFFSET FLAT:.str.12_1
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
	jmp	.label_424
.label_423:
	movabs	rdi, OFFSET FLAT:.str.13_1
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
.label_424:
	lea	rdi, [rdi]
	add	rsp, 0x180
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407320
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
.label_428:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_429
	mov	rbp, rbp
	jmp	.label_430
.label_430:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_428
.label_429:
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
	#Procedure 0x4073d0

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
.label_433:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_432
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_435
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
	jmp	.label_436
.label_435:
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_436:
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
.label_432:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x81]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_431
	mov	rsp, rsp
	jmp	.label_434
.label_431:
	jmp	.label_437
.label_437:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_433
.label_434:
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
	#Procedure 0x407530

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
	je	.label_438
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
.label_438:
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
	#Procedure 0x4076e0
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
	movabs	rsi, OFFSET FLAT:.str.15_0
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
	#Procedure 0x407790
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
	jae	.label_439
	mov	rbp, rbp
	call	xalloc_die
.label_439:
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
	#Procedure 0x4077f0

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
	jne	.label_440
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_440
	lea	rdi, [rdi]
	call	xalloc_die
.label_440:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x407850
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
	jae	.label_441
	mov	rsp, rsp
	call	xalloc_die
.label_441:
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
	#Procedure 0x4078d0

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
	jne	.label_442
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_442
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_444
.label_442:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_443
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_443
	lea	rsi, [rsi]
	call	xalloc_die
.label_443:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_444:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x407980

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
	jne	.label_445
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_447
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
.label_447:
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
	jae	.label_449
	call	xalloc_die
.label_449:
	lea	rsi, [rsi]
	jmp	.label_448
.label_445:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_446
	call	xalloc_die
.label_446:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_448:
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
	#Procedure 0x407ab0

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
	#Procedure 0x407ae0
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
	#Procedure 0x407b20
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
	#Procedure 0x407b70
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
	jb	.label_450
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_451
.label_450:
	lea	rsi, [rsi]
	call	xalloc_die
.label_451:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407be0

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
	#Procedure 0x407c30
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
	#Procedure 0x407c90

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.1_3
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	nop	
	mov	dword ptr [rbp - 4], eax
	call	gettext
	mov	rsp, rsp
	xor	esi, esi
	nop	
	movabs	rdx, OFFSET FLAT:.str_2
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x407cf0

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
	jne	.label_452
	nop	
	call	xalloc_die
.label_452:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407d50

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
	jge	.label_457
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_455
.label_457:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_454
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
	je	.label_453
.label_454:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_453
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_453:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_456
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
.label_456:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_455:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407e70

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
	je	.label_458
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_459
.label_458:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_460
.label_459:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_460:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x407ee0

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
	je	.label_461
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
.label_461:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x407f40

	.globl rpl_freopen
	.type rpl_freopen, @function
rpl_freopen:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:.str_4
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	orig_freopen
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	jne	.label_462
	jmp	.label_464
.label_462:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_466
	mov	rdi, qword ptr [rbp - 0x20]
	call	fileno
	mov	dword ptr [rbp - 0x2c], eax
	mov	edi, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x2c]
	call	dup2
	nop	
	cmp	eax, 0
	mov	rbp, rbp
	jge	.label_465
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_465
	mov	esi, 0x80000
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	al, 0
	nop	
	call	open
	mov	dword ptr [rbp - 0x30], eax
	nop	
	mov	dword ptr [rbp - 0x34], 0
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x30]
	cmp	eax, dword ptr [rbp - 0x2c]
	nop	
	je	.label_468
	mov	edi, dword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	call	dup2
	mov	rsp, rsp
	cmp	eax, 0
	jge	.label_467
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], 1
.label_467:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	call	close
	mov	dword ptr [rbp - 0x38], eax
.label_468:
	cmp	dword ptr [rbp - 0x34], 0
	mov	rbp, rbp
	jne	.label_463
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	call	orig_freopen
	mov	qword ptr [rbp - 0x20], rax
.label_463:
	mov	rbp, rbp
	jmp	.label_465
.label_465:
	mov	rbp, rbp
	jmp	.label_466
.label_466:
	lea	rdi, [rdi]
	jmp	.label_464
.label_464:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4080a0

	.globl orig_freopen
	.type orig_freopen, @function
orig_freopen:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	call	freopen
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4080e0

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
	jne	.label_469
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_469
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_469
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
	jne	.label_470
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_471
.label_470:
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
	jmp	.label_471
.label_469:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
.label_471:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4081f0

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
	jne	.label_472
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_472:
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
	ja	.label_473
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_473
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_473
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
	jmp	.label_474
.label_473:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_474:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4082e0

	.globl _obstack_begin
	.type _obstack_begin, @function
_obstack_begin:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], r8
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x40], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	al, byte ptr [rcx + 0x50]
	nop	
	and	al, 0xfe
	mov	rsp, rsp
	mov	byte ptr [rcx + 0x50], al
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	_obstack_begin_worker
	add	rsp, 0x30
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408360

	.globl _obstack_begin_worker
	.type _obstack_begin_worker, @function
_obstack_begin_worker:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_475
	nop	
	mov	qword ptr [rbp - 0x18], 0x10
.label_475:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_476
	lea	rsi, [rsi]
	mov	eax, 0x1000
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], 0x20
	nop	
	sub	eax, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x10], rcx
.label_476:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rcx + 0x30], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	call	call_chunkfun
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	jne	.label_477
	mov	rbp, rbp
	call	qword ptr [word ptr [obstack_alloc_failed_handler]]
.label_477:
	mov	eax, 1
	xor	ecx, ecx
	mov	edx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rsi, 0x10
	sub	rsi, 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	sub	rdi, 1
	add	rsi, rdi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	sub	rdi, 1
	lea	rsi, [rsi]
	xor	rdi, 0xffffffffffffffff
	and	rsi, rdi
	lea	rsi, [rsi]
	add	rdx, rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x10], rdx
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rdx, qword ptr [rsi]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi], rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx + 8], 0
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	r8b, byte ptr [rdx + 0x50]
	mov	rbp, rbp
	and	r8b, 0xfd
	mov	rsp, rsp
	mov	byte ptr [rdx + 0x50], r8b
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	r8b, byte ptr [rdx + 0x50]
	lea	rdi, [rdi]
	and	r8b, 0xfb
	mov	byte ptr [rdx + 0x50], r8b
	lea	rdi, [rdi]
	add	rsp, 0x30
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4084f0

	.globl _obstack_begin_1
	.type _obstack_begin_1, @function
_obstack_begin_1:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x40], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x48], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	al, byte ptr [rcx + 0x50]
	and	al, 0xfe
	or	al, 1
	mov	rbp, rbp
	mov	byte ptr [rcx + 0x50], al
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	_obstack_begin_worker
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408580

	.globl _obstack_newchunk
	.type _obstack_newchunk, @function
_obstack_newchunk:
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], 0
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x10]
	sub	rsi, rdi
	mov	qword ptr [rbp - 0x28], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rsi
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	shr	rdi, 3
	mov	rsp, rsp
	add	rsi, rdi
	add	rsi, 0x64
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x48]
	cmp	rsi, qword ptr [rbp - 0x40]
	jae	.label_478
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
.label_478:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx]
	jae	.label_480
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
.label_480:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	ja	.label_479
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	ja	.label_479
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x48]
	call	call_chunkfun
	mov	qword ptr [rbp - 0x20], rax
.label_479:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_481
	nop	
	call	qword ptr [word ptr [obstack_alloc_failed_handler]]
.label_481:
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rsi], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	add	rdx, 0x10
	lea	rdi, [rdi]
	sub	rdx, 0
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rsi + 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x30]
	mov	rsp, rsp
	xor	rsi, 0xffffffffffffffff
	and	rdx, rsi
	add	rcx, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rcx
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	call	memcpy
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	r8b, byte ptr [rcx + 0x50]
	shr	r8b, 1
	and	r8b, 1
	movzx	eax, r8b
	cmp	eax, 0
	nop	
	jne	.label_482
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rsi, 0x10
	mov	rsp, rsp
	sub	rsi, 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	add	rsi, qword ptr [rdi + 0x30]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi + 0x30]
	xor	rdi, 0xffffffffffffffff
	and	rsi, rdi
	add	rcx, rsi
	cmp	rdx, rcx
	jne	.label_482
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rsp, rsp
	call	call_freefun
.label_482:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rax + 0x50]
	and	dl, 0xfd
	mov	byte ptr [rax + 0x50], dl
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408810

	.globl call_chunkfun
	.type call_chunkfun, @function
call_chunkfun:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rsi + 0x50]
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	lea	rdi, [rdi]
	cmp	ecx, 0
	nop	
	je	.label_483
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx + 0x48]
	mov	rsi, qword ptr [rbp - 0x18]
	call	rax
	mov	qword ptr [rbp - 8], rax
	jmp	.label_484
.label_483:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x38]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_484:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408890

	.globl call_freefun
	.type call_freefun, @function
call_freefun:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	al, byte ptr [rsi + 0x50]
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_485
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + 0x48]
	mov	rsi, qword ptr [rbp - 0x10]
	call	rax
	jmp	.label_486
.label_485:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	rax
.label_486:
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408900

	.globl _obstack_allocated_p
	.type _obstack_allocated_p, @function
_obstack_allocated_p:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x18], rsi
.label_490:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x21], cl
	je	.label_491
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	byte ptr [rbp - 0x22], al
	lea	rsi, [rsi]
	jae	.label_489
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x10]
	nop	
	setb	cl
	nop	
	mov	byte ptr [rbp - 0x22], cl
.label_489:
	nop	
	mov	al, byte ptr [rbp - 0x22]
	mov	byte ptr [rbp - 0x21], al
.label_491:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_487
	jmp	.label_488
.label_487:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_490
.label_488:
	cmp	qword ptr [rbp - 0x18], 0
	setne	al
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4089d0

	.globl _obstack_free
	.type _obstack_free, @function
_obstack_free:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x18], rsi
.label_493:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	cmp	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_495
	lea	rsi, [rsi]
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	byte ptr [rbp - 0x22], al
	jae	.label_494
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	setb	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x22], cl
.label_494:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x22]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], al
.label_495:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_496
	mov	rbp, rbp
	jmp	.label_498
.label_496:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	lea	rsi, [rsi]
	call	call_freefun
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	cl, byte ptr [rax + 0x50]
	lea	rsi, [rsi]
	and	cl, 0xfd
	lea	rsi, [rsi]
	or	cl, 2
	mov	byte ptr [rax + 0x50], cl
	jmp	.label_493
.label_498:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	je	.label_497
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rcx + 8], rax
	jmp	.label_492
.label_497:
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	je	.label_499
	mov	rbp, rbp
	call	abort
.label_499:
	jmp	.label_492
.label_492:
	lea	rsi, [rsi]
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408b30

	.globl _obstack_memory_used
	.type _obstack_memory_used, @function
_obstack_memory_used:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
.label_500:
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_501
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_500
.label_501:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408bb0

	.globl print_and_abort
	.type print_and_abort, @function
print_and_abort:
	nop
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.1_3
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	call	gettext
	movabs	rsi, OFFSET FLAT:.str_1
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 0xc], eax
	nop	
	call	exit
	.section	.text
	.align	32
	#Procedure 0x408c10
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
	jb	.label_502
	jmp	.label_504
.label_504:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_502
	jmp	.label_503
.label_503:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_505
	jmp	.label_502
.label_502:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_506
.label_505:
	mov	byte ptr [rbp - 1], 0
.label_506:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408c80
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
	jb	.label_507
	jmp	.label_510
.label_510:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_508
	jmp	.label_507
.label_507:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_509
.label_508:
	mov	byte ptr [rbp - 1], 0
.label_509:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408cd0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_511
	jmp	.label_512
.label_512:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_513
.label_511:
	mov	byte ptr [rbp - 1], 0
.label_513:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408d00
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_514
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_514:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408d30
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
	jb	.label_515
	jmp	.label_517
.label_517:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_518
	jmp	.label_515
.label_515:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_516
.label_518:
	mov	byte ptr [rbp - 1], 0
.label_516:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408d80
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_519
	jmp	.label_521
.label_521:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_520
.label_519:
	mov	byte ptr [rbp - 1], 0
.label_520:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408dc0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_522
	jmp	.label_524
.label_524:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_523
.label_522:
	mov	byte ptr [rbp - 1], 0
.label_523:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408e00
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_525
	jmp	.label_527
.label_527:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_526
.label_525:
	mov	byte ptr [rbp - 1], 0
.label_526:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408e40
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_528
	jmp	.label_530
.label_530:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_529
.label_528:
	mov	byte ptr [rbp - 1], 0
.label_529:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408e80
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
	jb	.label_531
	jmp	.label_534
.label_534:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x3a
	sub	eax, 7
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_531
	jmp	.label_535
.label_535:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x5b
	sub	eax, 6
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_531
	jmp	.label_533
.label_533:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x7b
	sub	eax, 3
	mov	dword ptr [rbp - 0x1c], eax
	ja	.label_536
	jmp	.label_531
.label_531:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_532
.label_536:
	mov	byte ptr [rbp - 1], 0
.label_532:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408f00
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
	jb	.label_537
	jmp	.label_539
.label_539:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_540
	jmp	.label_537
.label_537:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_538
.label_540:
	mov	byte ptr [rbp - 1], 0
.label_538:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408f50
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_541
	jmp	.label_543
.label_543:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_542
.label_541:
	mov	byte ptr [rbp - 1], 0
.label_542:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408f90
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
	jb	.label_544
	jmp	.label_547
.label_547:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_544
	jmp	.label_545
.label_545:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_546
	jmp	.label_544
.label_544:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_548
.label_546:
	mov	byte ptr [rbp - 1], 0
.label_548:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409000

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_549
	jmp	.label_551
.label_551:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_550
.label_549:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_550:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409040
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_552
	jmp	.label_554
.label_554:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_553
.label_552:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_553:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409080

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
	jne	.label_557
	test	byte ptr [rbp - 0x13], 1
	je	.label_556
	test	byte ptr [rbp - 0x11], 1
	lea	rsi, [rsi]
	jne	.label_557
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_556
.label_557:
	nop	
	test	byte ptr [rbp - 0x13], 1
	mov	rsp, rsp
	jne	.label_555
	call	__errno_location
	mov	dword ptr [rax], 0
.label_555:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_558
.label_556:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
.label_558:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409160

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
	je	.label_560
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_7
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_561
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_4
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_559
.label_561:
	mov	byte ptr [rbp - 5], 0
.label_559:
	jmp	.label_560
.label_560:
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
	#Procedure 0x409200

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
	jne	.label_563
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_563:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_562
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.1_5
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_562:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409280

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
	ja	.label_564
	jmp	.label_566
.label_566:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_565
.label_564:
	lea	rsi, [rsi]
	jmp	.label_565
.label_565:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
