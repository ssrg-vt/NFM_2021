	.section	.text
	.align	32
	#Procedure 0x401920

	.globl usage
	.type usage, @function
usage:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], edi
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 0
	je	.label_8
	jmp	.label_10
.label_10:
	movabs	rdi, OFFSET FLAT:.str
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x30], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rax
	mov	rbp, rbp
	mov	al, 0
	nop	
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_9
.label_8:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.1
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	printf
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.2
	mov	dword ptr [rbp - 0x14], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.3
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.4
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.5
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.6
	nop	
	mov	dword ptr [rbp - 0x10], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.7
	mov	dword ptr [rbp - 8], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.8
	mov	dword ptr [rbp - 0x20], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.9
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
	lea	rdi, [rdi]
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.10
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.11
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str.12
	mov	rdi, rax
	mov	rbp, rbp
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.13
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x38], eax
	lea	rsi, [rsi]
	call	emit_ancillary_info
.label_9:
	mov	edi, dword ptr [rbp - 0x34]
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b70

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rdi
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rbp - 0x38], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_15:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_12
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax]
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	nop	
	sete	cl
	mov	rbp, rbp
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_12:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_11
	jmp	.label_14
.label_11:
	nop	
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x10
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_15
.label_14:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 8], 0
	je	.label_16
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
.label_16:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.33
	call	gettext
	nop	
	movabs	rsi, OFFSET FLAT:.str.17
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str.18
	mov	rsp, rsp
	mov	rdi, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	printf
	lea	rsi, [rsi]
	mov	edi, 5
	xor	ecx, ecx
	mov	rbp, rbp
	mov	esi, ecx
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	call	setlocale
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	je	.label_13
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.35
	nop	
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	strncmp
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_13
	nop	
	movabs	rdi, OFFSET FLAT:.str.36
	lea	rdi, [rdi]
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x3c], eax
.label_13:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.37
	call	gettext
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rsi, [rsi]
	call	printf
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.38
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	call	gettext
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.39
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmove	rdx, rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x18], eax
	add	rsp, 0x40
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d80

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x6c], 0
	mov	dword ptr [rbp - 0x94], edi
	mov	qword ptr [rbp - 0x90], rsi
	nop	
	mov	byte ptr [rbp - 0x1d], 1
	mov	rsi, qword ptr [rbp - 0x90]
	nop	
	mov	rdi, qword ptr [rsi]
	nop	
	call	set_program_name
	mov	rbp, rbp
	mov	edi, 6
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.15
	movabs	rsi, OFFSET FLAT:.str.16
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.15
	mov	qword ptr [rbp - 0xa0], rax
	lea	rdi, [rdi]
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	call	atexit
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x74], eax
.label_32:
	movabs	rdx, OFFSET FLAT:.str.17_0
	nop	
	movabs	rcx, OFFSET FLAT:longopts
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	r8d, eax
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x94]
	mov	rsi, qword ptr [rbp - 0x90]
	call	getopt_long
	mov	dword ptr [rbp - 0x3c], eax
	cmp	eax, -1
	nop	
	je	.label_37
	mov	eax, dword ptr [rbp - 0x3c]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x40], ecx
	je	.label_40
	jmp	.label_44
.label_44:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	sub	eax, 0xffffff7e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x68], eax
	lea	rsi, [rsi]
	je	.label_45
	jmp	.label_50
.label_50:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	sub	eax, 0x48
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x70], eax
	je	.label_53
	jmp	.label_56
.label_56:
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	sub	eax, 0x54
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x88], eax
	je	.label_19
	lea	rsi, [rsi]
	jmp	.label_59
.label_59:
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	sub	eax, 0x61
	nop	
	mov	dword ptr [rbp - 0x18], eax
	je	.label_34
	lea	rdi, [rdi]
	jmp	.label_62
.label_62:
	mov	eax, dword ptr [rbp - 0x1c]
	sub	eax, 0x62
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	je	.label_17
	jmp	.label_21
.label_21:
	mov	eax, dword ptr [rbp - 0x1c]
	sub	eax, 0x64
	nop	
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	je	.label_22
	lea	rdi, [rdi]
	jmp	.label_24
.label_24:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	sub	eax, 0x6c
	mov	dword ptr [rbp - 0x10], eax
	je	.label_25
	jmp	.label_29
.label_29:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x2c], eax
	je	.label_30
	mov	rsp, rsp
	jmp	.label_36
.label_36:
	mov	eax, dword ptr [rbp - 0x1c]
	sub	eax, 0x70
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	je	.label_39
	jmp	.label_42
.label_42:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	sub	eax, 0x71
	mov	dword ptr [rbp - 0x38], eax
	je	.label_18
	jmp	.label_46
.label_46:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1c]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x48], eax
	je	.label_48
	nop	
	jmp	.label_52
.label_52:
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	sub	eax, 0x73
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x64], eax
	je	.label_38
	lea	rsi, [rsi]
	jmp	.label_57
.label_57:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1c]
	sub	eax, 0x74
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], eax
	je	.label_58
	jmp	.label_60
.label_60:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	sub	eax, 0x75
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], eax
	mov	rsp, rsp
	je	.label_61
	jmp	.label_64
.label_64:
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	je	.label_19
	jmp	.label_51
.label_51:
	mov	eax, dword ptr [rbp - 0x1c]
	sub	eax, 0x80
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x30], eax
	je	.label_23
	mov	rsp, rsp
	jmp	.label_27
.label_34:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [need_boottime]],  1
	mov	rbp, rbp
	mov	byte ptr [byte ptr [need_deadprocs]],  1
	nop	
	mov	byte ptr [byte ptr [need_login]],  1
	mov	byte ptr [byte ptr [need_initspawn]],  1
	mov	byte ptr [byte ptr [need_runlevel]],  1
	mov	byte ptr [byte ptr [need_clockchange]],  1
	mov	byte ptr [byte ptr [need_users]],  1
	mov	rbp, rbp
	mov	byte ptr [byte ptr [include_mesg]],  1
	mov	byte ptr [byte ptr [include_idle]],  1
	mov	rbp, rbp
	mov	byte ptr [byte ptr [include_exit]],  1
	nop	
	mov	byte ptr [rbp - 0x1d], 0
	lea	rdi, [rdi]
	jmp	.label_20
.label_17:
	mov	byte ptr [byte ptr [need_boottime]],  1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1d], 0
	mov	rsp, rsp
	jmp	.label_20
.label_22:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [need_deadprocs]],  1
	mov	byte ptr [byte ptr [include_idle]],  1
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [include_exit]],  1
	mov	byte ptr [rbp - 0x1d], 0
	jmp	.label_20
.label_53:
	mov	byte ptr [byte ptr [include_heading]],  1
	jmp	.label_20
.label_25:
	nop	
	mov	byte ptr [byte ptr [need_login]],  1
	mov	byte ptr [byte ptr [include_idle]],  1
	mov	byte ptr [rbp - 0x1d], 0
	jmp	.label_20
.label_30:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [my_line_only]],  1
	jmp	.label_20
.label_39:
	mov	byte ptr [byte ptr [need_initspawn]],  1
	nop	
	mov	byte ptr [rbp - 0x1d], 0
	lea	rdi, [rdi]
	jmp	.label_20
.label_18:
	mov	byte ptr [byte ptr [short_list]],  1
	jmp	.label_20
.label_48:
	mov	byte ptr [byte ptr [need_runlevel]],  1
	mov	byte ptr [byte ptr [include_idle]],  1
	mov	byte ptr [rbp - 0x1d], 0
	mov	rsp, rsp
	jmp	.label_20
.label_38:
	mov	byte ptr [byte ptr [short_output]],  1
	mov	rbp, rbp
	jmp	.label_20
.label_58:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [need_clockchange]],  1
	mov	byte ptr [rbp - 0x1d], 0
	mov	rbp, rbp
	jmp	.label_20
.label_19:
	mov	byte ptr [byte ptr [include_mesg]],  1
	mov	rbp, rbp
	jmp	.label_20
.label_61:
	mov	byte ptr [byte ptr [need_users]],  1
	mov	byte ptr [byte ptr [include_idle]],  1
	mov	byte ptr [rbp - 0x1d], 0
	mov	rsp, rsp
	jmp	.label_20
.label_23:
	mov	byte ptr [byte ptr [do_lookup]],  1
	jmp	.label_20
.label_45:
	xor	edi, edi
	mov	rbp, rbp
	call	usage
.label_40:
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.13
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str.17
	lea	rdi, [rdi]
	movabs	r8, OFFSET FLAT:.str.19
	movabs	r9, OFFSET FLAT:.str.20
	movabs	rax, OFFSET FLAT:.str.21
	xor	ecx, ecx
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	r10,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x80], rdi
	mov	rdi, r10
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rax
	nop	
	mov	qword ptr [rsp + 8], 0
	mov	rsp, rsp
	mov	al, 0
	call	version_etc
	xor	edi, edi
	mov	rsp, rsp
	call	exit
.label_27:
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rbp, rbp
	call	usage
.label_20:
	lea	rsi, [rsi]
	jmp	.label_32
.label_37:
	nop	
	test	byte ptr [rbp - 0x1d], 1
	je	.label_35
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [need_users]],  1
	mov	rbp, rbp
	mov	byte ptr [byte ptr [short_output]],  1
.label_35:
	test	byte ptr [byte ptr [include_exit]],  1
	je	.label_43
	mov	rbp, rbp
	mov	byte ptr [byte ptr [short_output]],  0
.label_43:
	mov	edi, 2
	call	hard_locale
	lea	rdi, [rdi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_49
	jmp	.label_54
.label_49:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.22
	mov	qword ptr [word ptr [time_format]],  rax
	mov	dword ptr [dword ptr [time_format_width]],  0x10
	mov	rsp, rsp
	jmp	.label_55
.label_54:
	movabs	rax, OFFSET FLAT:.str.23
	mov	qword ptr [word ptr [time_format]],  rax
	mov	dword ptr [dword ptr [time_format_width]],  0xc
.label_55:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x94]
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [rip + optind]]
	mov	rbp, rbp
	sub	eax, ecx
	mov	ecx, eax
	inc	ecx
	lea	rdi, [rdi]
	sub	ecx, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], eax
	nop	
	mov	dword ptr [rbp - 0xa4], ecx
	mov	rbp, rbp
	jb	.label_63
	mov	rsp, rsp
	jmp	.label_26
.label_26:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x98], eax
	je	.label_28
	lea	rdi, [rdi]
	jmp	.label_31
.label_31:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	sub	eax, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_33
	jmp	.label_41
.label_41:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [my_line_only]],  1
.label_63:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.11
	nop	
	mov	esi, 1
	call	who
	lea	rdi, [rdi]
	jmp	.label_47
.label_28:
	xor	esi, esi
	movsxd	rax,  dword ptr [dword ptr [optind]]
	nop	
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rcx + rax*8]
	nop	
	call	who
	jmp	.label_47
.label_33:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.24
	nop	
	call	gettext
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [optind]]
	add	ecx, 2
	mov	rsp, rsp
	movsxd	rdi, ecx
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rdx + rdi*8]
	nop	
	mov	qword ptr [rbp - 0x60], rax
	call	quote
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edi, ecx
	mov	rsp, rsp
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	lea	rdi, [rdi]
	call	usage
.label_47:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	add	rsp, 0xc0
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402440

	.globl who
	.type who, @function
who:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	lea	rax, [rbp - 0x18]
	lea	rdx, [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], esi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	ecx, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	rsi, rax
	nop	
	call	read_utmp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_65
	mov	rsp, rsp
	call	__errno_location
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 4], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_1
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
.label_65:
	mov	rbp, rbp
	test	byte ptr [byte ptr [short_list]],  1
	je	.label_66
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	list_entries_who
	jmp	.label_67
.label_66:
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	call	scan_entries
.label_67:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402520

	.globl list_entries_who
	.type list_entries_who, @function
list_entries_who:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
.label_69:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x30], rcx
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_70
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax + 0x2c]
	cmp	ecx, 0
	je	.label_68
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	movsx	ecx, word ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 7
	jne	.label_68
	nop	
	mov	rdi, qword ptr [rbp - 8]
	call	extract_trimmed_name
	movabs	rdi, OFFSET FLAT:.str.58
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	al, 0
	lea	rsi, [rsi]
	call	printf
	mov	rdi, qword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0xc], eax
	call	free
	nop	
	movabs	rdx, OFFSET FLAT:.str.59
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
.label_68:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rax, 0x180
	mov	qword ptr [rbp - 8], rax
	jmp	.label_69
.label_70:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.60
	lea	rsi, [rsi]
	call	gettext
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	printf
	nop	
	mov	dword ptr [rbp - 0x10], eax
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402640

	.globl scan_entries
	.type scan_entries, @function
scan_entries:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rax
	test	byte ptr [byte ptr [include_heading]],  1
	lea	rsi, [rsi]
	je	.label_87
	mov	rsp, rsp
	call	print_heading
.label_87:
	test	byte ptr [byte ptr [my_line_only]],  1
	je	.label_71
	lea	rdi, [rdi]
	xor	edi, edi
	call	ttyname
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	nop	
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_76
	lea	rdi, [rdi]
	jmp	.label_74
.label_76:
	movabs	rsi, OFFSET FLAT:.str.61
	mov	rbp, rbp
	mov	eax, 5
	mov	rbp, rbp
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 8]
	call	strncmp
	nop	
	cmp	eax, 0
	jne	.label_90
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 5
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_90:
	jmp	.label_71
.label_71:
	jmp	.label_88
.label_88:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x10], rcx
	mov	rsp, rsp
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_74
	test	byte ptr [byte ptr [my_line_only]],  1
	je	.label_78
	mov	eax, 0x20
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 8
	nop	
	mov	rsi, rcx
	nop	
	call	strncmp
	lea	rdi, [rdi]
	cmp	eax, 0
	jne	.label_83
.label_78:
	mov	rbp, rbp
	test	byte ptr [byte ptr [need_users]],  1
	je	.label_72
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax + 0x2c]
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_72
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	movsx	ecx, word ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 7
	lea	rdi, [rdi]
	jne	.label_72
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	print_user
	jmp	.label_81
.label_72:
	mov	rsp, rsp
	test	byte ptr [byte ptr [need_runlevel]],  1
	je	.label_84
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, word ptr [rax]
	cmp	ecx, 1
	jne	.label_84
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	call	print_runlevel
	jmp	.label_80
.label_84:
	nop	
	test	byte ptr [byte ptr [need_boottime]],  1
	je	.label_92
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, word ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 2
	mov	rsp, rsp
	jne	.label_92
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	print_boottime
	jmp	.label_82
.label_92:
	mov	rsp, rsp
	test	byte ptr [byte ptr [need_clockchange]],  1
	lea	rsi, [rsi]
	je	.label_79
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movsx	ecx, word ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 3
	mov	rbp, rbp
	jne	.label_79
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	call	print_clockchange
	mov	rsp, rsp
	jmp	.label_75
.label_79:
	test	byte ptr [byte ptr [need_initspawn]],  1
	je	.label_91
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, word ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 5
	lea	rsi, [rsi]
	jne	.label_91
	mov	rdi, qword ptr [rbp - 0x18]
	call	print_initspawn
	lea	rsi, [rsi]
	jmp	.label_73
.label_91:
	test	byte ptr [byte ptr [need_login]],  1
	je	.label_77
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movsx	ecx, word ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 6
	lea	rsi, [rsi]
	jne	.label_77
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	call	print_login
	lea	rdi, [rdi]
	jmp	.label_85
.label_77:
	mov	rsp, rsp
	test	byte ptr [byte ptr [need_deadprocs]],  1
	nop	
	je	.label_89
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	movsx	ecx, word ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 8
	jne	.label_89
	mov	rdi, qword ptr [rbp - 0x18]
	call	print_deadprocs
.label_89:
	lea	rdi, [rdi]
	jmp	.label_85
.label_85:
	jmp	.label_73
.label_73:
	jmp	.label_75
.label_75:
	lea	rsi, [rsi]
	jmp	.label_82
.label_82:
	jmp	.label_80
.label_80:
	mov	rsp, rsp
	jmp	.label_81
.label_81:
	lea	rdi, [rdi]
	jmp	.label_83
.label_83:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movsx	ecx, word ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 2
	jne	.label_86
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rax + 0x154]
	mov	qword ptr [rbp - 0x20], rax
.label_86:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x180
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_88
.label_74:
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x402980

	.globl print_heading
	.type print_heading, @function
print_heading:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rdi, OFFSET FLAT:.str.62
	lea	rdi, [rdi]
	call	gettext
	movabs	rdi, OFFSET FLAT:.str.63
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	call	gettext
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.64
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	call	gettext
	movabs	rdi, OFFSET FLAT:.str.65
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	call	gettext
	movabs	rdi, OFFSET FLAT:.str.66
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	call	gettext
	movabs	rdi, OFFSET FLAT:.str.67
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	call	gettext
	movabs	rdi, OFFSET FLAT:.str.68
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	call	gettext
	mov	ecx, 0xffffffff
	lea	rsi, [rsi]
	mov	edx, 0x20
	nop	
	mov	edi, ecx
	mov	rsi, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 8]
	mov	r9, qword ptr [rbp - 0x18]
	nop	
	mov	r10, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rsp], r10
	mov	r10, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], r10
	mov	r10, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r10
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rax
	call	print_line
	lea	rsi, [rsi]
	add	rsp, 0x50
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a90

	.globl print_user
	.type print_user, @function
print_user:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x2d0
	movabs	rax, OFFSET FLAT:.str.74
	nop	
	lea	rcx, [rbp - 0xc]
	mov	rsp, rsp
	lea	rdx, [rbp - 0x60]
	nop	
	mov	qword ptr [rbp - 0x30], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rsi
	mov	qword ptr [rbp - 0x1a0], rdx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rdx + 4]
	lea	rsi, [rsi]
	mov	rdi, rcx
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	al, 0
	nop	
	call	sprintf
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	movsx	r8d, byte ptr [rcx + 8]
	mov	rsp, rsp
	cmp	r8d, 0x2f
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	je	.label_105
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x1a0]
	mov	eax, OFFSET FLAT:.str.61
	mov	esi, eax
	call	stpcpy
	nop	
	mov	qword ptr [rbp - 0x1a0], rax
.label_105:
	mov	rsp, rsp
	mov	eax, 0x20
	mov	rbp, rbp
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x1a0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rcx, 8
	mov	rsi, rcx
	nop	
	call	stzncpy
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x248]
	lea	rdi, [rbp - 0x60]
	mov	qword ptr [rbp - 0x298], rax
	lea	rsi, [rsi]
	call	stat
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_107
	mov	rbp, rbp
	lea	rdi, [rbp - 0x248]
	nop	
	call	is_tty_writable
	mov	rbp, rbp
	mov	ecx, 0x2d
	mov	rsp, rsp
	mov	edx, 0x2b
	nop	
	test	al, 1
	cmovne	ecx, edx
	mov	rbp, rbp
	mov	al, cl
	mov	byte ptr [rbp - 0x279], al
	mov	rdi, qword ptr [rbp - 0x200]
	mov	qword ptr [rbp - 0x258], rdi
	nop	
	jmp	.label_93
.label_107:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x279], 0x3f
	mov	qword ptr [rbp - 0x258], 0
.label_93:
	nop	
	cmp	qword ptr [rbp - 0x258], 0
	lea	rsi, [rsi]
	je	.label_102
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x67]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsi, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x278], rdi
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	idle_string
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.75
	mov	edx, 6
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x278]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	mov	rsp, rsp
	call	sprintf
	mov	dword ptr [rbp - 0x194], eax
	jmp	.label_98
.label_102:
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.76
	mov	rbp, rbp
	lea	rdi, [rbp - 0x67]
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	sprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x6c], eax
.label_98:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	cmp	byte ptr [rax + 0x4c], 0
	mov	rsp, rsp
	je	.label_108
	nop	
	mov	eax, 0x100
	mov	edx, eax
	nop	
	lea	rdi, [rbp - 0x190]
	mov	qword ptr [rbp - 0x1b0], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1a8], 0
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rcx, 0x4c
	mov	rsi, rcx
	call	stzncpy
	mov	esi, 0x3a
	mov	rbp, rbp
	lea	rdi, [rbp - 0x190]
	mov	qword ptr [rbp - 0x250], rax
	mov	rsp, rsp
	call	strchr
	mov	qword ptr [rbp - 0x1a8], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x1a8], 0
	lea	rdi, [rdi]
	je	.label_104
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	qword ptr [rbp - 0x1a8], rcx
	nop	
	mov	byte ptr [rax], 0
.label_104:
	nop	
	movsx	eax, byte ptr [rbp - 0x190]
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_97
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [do_lookup]],  1
	je	.label_97
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x190]
	call	canon_host
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1b0], rax
.label_97:
	cmp	qword ptr [rbp - 0x1b0], 0
	lea	rdi, [rdi]
	jne	.label_101
	lea	rax, [rbp - 0x190]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1b0], rax
.label_101:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x1a8], 0
	je	.label_109
	mov	rax,  qword ptr [word ptr [print_user.hostlen]]
	mov	rdi, qword ptr [rbp - 0x1b0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x260], rax
	nop	
	call	strlen
	mov	rdi, qword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	call	strlen
	mov	rdi, qword ptr [rbp - 0x18]
	add	rdi, rax
	mov	rbp, rbp
	add	rdi, 4
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x260]
	cmp	rax, rdi
	mov	rsp, rsp
	jae	.label_100
	mov	rdi, qword ptr [rbp - 0x1b0]
	call	strlen
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x268], rax
	lea	rdi, [rdi]
	call	strlen
	mov	rdi, qword ptr [rbp - 0x268]
	add	rdi, rax
	lea	rsi, [rsi]
	add	rdi, 4
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [print_user.hostlen]],  rdi
	mov	rdi,  qword ptr [word ptr [print_user.hoststr]]
	call	free
	mov	rdi,  qword ptr [word ptr [print_user.hostlen]]
	mov	rbp, rbp
	call	xmalloc
	mov	rbp, rbp
	mov	qword ptr [word ptr [print_user.hoststr]],  rax
.label_100:
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.77
	mov	rdi,  qword ptr [word ptr [print_user.hoststr]]
	mov	rdx, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x29c], eax
	jmp	.label_110
.label_109:
	mov	rax,  qword ptr [word ptr [print_user.hostlen]]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x1b0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x2a8], rax
	lea	rdi, [rdi]
	call	strlen
	nop	
	add	rax, 3
	mov	rdi, qword ptr [rbp - 0x2a8]
	mov	rsp, rsp
	cmp	rdi, rax
	mov	rbp, rbp
	jae	.label_96
	nop	
	mov	rdi, qword ptr [rbp - 0x1b0]
	lea	rsi, [rsi]
	call	strlen
	add	rax, 3
	mov	rbp, rbp
	mov	qword ptr [word ptr [print_user.hostlen]],  rax
	mov	rdi,  qword ptr [word ptr [print_user.hoststr]]
	call	free
	mov	rdi,  qword ptr [word ptr [print_user.hostlen]]
	mov	rbp, rbp
	call	xmalloc
	mov	qword ptr [word ptr [print_user.hoststr]],  rax
.label_96:
	movabs	rsi, OFFSET FLAT:.str.78
	nop	
	mov	rdi,  qword ptr [word ptr [print_user.hoststr]]
	nop	
	mov	rdx, qword ptr [rbp - 0x1b0]
	mov	al, 0
	lea	rsi, [rsi]
	call	sprintf
	mov	dword ptr [rbp - 0x1c], eax
.label_110:
	lea	rax, [rbp - 0x190]
	mov	rcx, qword ptr [rbp - 0x1b0]
	cmp	rcx, rax
	je	.label_99
	mov	rdi, qword ptr [rbp - 0x1b0]
	nop	
	call	free
.label_99:
	jmp	.label_94
.label_108:
	mov	rsp, rsp
	cmp	qword ptr [word ptr [print_user.hostlen]],  1
	mov	rsp, rsp
	jae	.label_103
	mov	qword ptr [word ptr [print_user.hostlen]],  1
	mov	rdi,  qword ptr [word ptr [print_user.hoststr]]
	mov	rsp, rsp
	call	free
	mov	rdi,  qword ptr [word ptr [print_user.hostlen]]
	call	xmalloc
	mov	rsp, rsp
	mov	qword ptr [word ptr [print_user.hoststr]],  rax
.label_103:
	mov	rax,  qword ptr [word ptr [print_user.hoststr]]
	mov	byte ptr [rax], 0
.label_94:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x2c
	mov	cl, byte ptr [rbp - 0x279]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	add	rdx, 8
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x270], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x68], cl
	mov	qword ptr [rbp - 0x1b8], rdx
	nop	
	call	time_string
	lea	rdx, [rbp - 0xc]
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x67]
	cmp	qword ptr [word ptr [print_user.hoststr]],  0
	mov	qword ptr [rbp - 0x290], rax
	mov	qword ptr [rbp - 0x80], rdx
	mov	qword ptr [rbp - 0x2b0], rdi
	lea	rdi, [rdi]
	je	.label_106
	nop	
	mov	rax,  qword ptr [word ptr [print_user.hoststr]]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_95
.label_106:
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_95
.label_95:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	ecx, 0x20
	movabs	rdx, OFFSET FLAT:.str_0
	mov	edi, ecx
	mov	rsi, qword ptr [rbp - 0x270]
	mov	rbp, rbp
	mov	r8b, byte ptr [rbp - 0x68]
	movsx	r9d, r8b
	mov	qword ptr [rbp - 0x288], rdx
	mov	edx, r9d
	mov	r8, qword ptr [rbp - 0x1b8]
	mov	r9, qword ptr [rbp - 0x290]
	mov	r10, qword ptr [rbp - 0x2b0]
	mov	qword ptr [rsp], r10
	mov	r11, qword ptr [rbp - 0x80]
	mov	qword ptr [rsp + 8], r11
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x288]
	nop	
	mov	qword ptr [rsp + 0x18], rax
	call	print_line
	lea	rsi, [rsi]
	add	rsp, 0x2d0
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4030c0

	.globl print_runlevel
	.type print_runlevel, @function
print_runlevel:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	rbp, rbp
	mov	eax, 0x100
	mov	qword ptr [rbp - 0x28], rdi
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rdi + 4]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x4c]
	idiv	ecx
	mov	sil, al
	nop	
	mov	byte ptr [rbp - 1], sil
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rdi + 4]
	cdq	
	nop	
	idiv	ecx
	nop	
	mov	sil, dl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], sil
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [print_runlevel.runlevline]],  0
	nop	
	jne	.label_111
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.84
	lea	rdi, [rdi]
	call	gettext
	mov	rdi, rax
	mov	rsp, rsp
	call	strlen
	add	rax, 3
	mov	rdi, rax
	call	xmalloc
	mov	rsp, rsp
	mov	qword ptr [word ptr [print_runlevel.runlevline]],  rax
.label_111:
	movabs	rdi, OFFSET FLAT:.str.84
	mov	rax,  qword ptr [word ptr [print_runlevel.runlevline]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	call	gettext
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.85
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, rax
	mov	al, 0
	mov	rbp, rbp
	call	sprintf
	mov	rsp, rsp
	cmp	qword ptr [word ptr [print_runlevel.comment]],  0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], eax
	jne	.label_117
	movabs	rdi, OFFSET FLAT:.str.86
	mov	rsp, rsp
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, rax
	call	strlen
	mov	rsp, rsp
	add	rax, 2
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [word ptr [print_runlevel.comment]],  rax
.label_117:
	movabs	rdi, OFFSET FLAT:.str.86
	mov	rax,  qword ptr [word ptr [print_runlevel.comment]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	call	gettext
	movzx	ecx, byte ptr [rbp - 1]
	cmp	ecx, 0x4e
	mov	qword ptr [rbp - 0x48], rax
	jne	.label_113
	mov	eax, 0x53
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x50], eax
	jmp	.label_116
.label_113:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x50], eax
.label_116:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.87
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	ecx, eax
	mov	al, 0
	call	sprintf
	mov	r8,  qword ptr [word ptr [print_runlevel.runlevline]]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x60], eax
	nop	
	mov	qword ptr [rbp - 0x10], r8
	call	time_string
	movzx	edi, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	call	c_isprint
	lea	rdi, [rdi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_114
	mov	rsp, rsp
	jmp	.label_115
.label_114:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [print_runlevel.comment]]
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	jmp	.label_112
.label_115:
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_112
.label_112:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	ecx, 0xffffffff
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	mov	esi, 0x20
	mov	edi, ecx
	mov	dword ptr [rbp - 0x64], esi
	nop	
	mov	rsi, rdx
	mov	r8d, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rdx
	mov	edx, r8d
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x10]
	mov	r9, qword ptr [rbp - 0x40]
	mov	r10, qword ptr [rbp - 0x38]
	mov	qword ptr [rsp], r10
	mov	qword ptr [rsp + 8], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], r10
	nop	
	call	print_line
	add	rsp, 0x90
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403350

	.globl print_boottime
	.type print_boottime, @function
print_boottime:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:.str.88
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rax
	lea	rdi, [rdi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
	call	time_string
	mov	ecx, 0xffffffff
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str_0
	mov	edx, 0x20
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	edi, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	r8, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	r9, rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rsp], rax
	nop	
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], rax
	mov	rbp, rbp
	call	print_line
	lea	rdi, [rdi]
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033f0

	.globl print_clockchange
	.type print_clockchange, @function
print_clockchange:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	nop	
	movabs	rax, OFFSET FLAT:.str.89
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rax
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	call	time_string
	nop	
	mov	ecx, 0xffffffff
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	mov	edx, 0x20
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	edi, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	r9, rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], rax
	call	print_line
	add	rsp, 0x40
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403490

	.globl print_initspawn
	.type print_initspawn, @function
print_initspawn:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x38], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	call	make_id_equals_comment
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.74
	lea	rdi, [rbp - 0x24]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rax + 4]
	lea	rsi, [rsi]
	mov	al, 0
	mov	rbp, rbp
	call	sprintf
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rdx, 8
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rdx
	call	time_string
	lea	rsi, [rsi]
	mov	edi, 0xffffffff
	nop	
	movabs	rdx, OFFSET FLAT:.str_0
	mov	ecx, 0x20
	nop	
	lea	rsi, [rbp - 0x24]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x30], rsi
	nop	
	mov	rsi, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rdx
	mov	rbp, rbp
	mov	edx, ecx
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x18], r8
	mov	r8, r9
	mov	r9, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rsp], rax
	mov	r10, qword ptr [rbp - 0x30]
	mov	qword ptr [rsp + 8], r10
	nop	
	mov	r11, qword ptr [rbp - 0x18]
	mov	qword ptr [rsp + 0x10], r11
	nop	
	mov	qword ptr [rsp + 0x18], rax
	call	print_line
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	add	rsp, 0x70
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x403590

	.globl print_login
	.type print_login, @function
print_login:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	call	make_id_equals_comment
	movabs	rsi, OFFSET FLAT:.str.74
	lea	rdi, [rbp - 0x34]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	movsxd	rdx, dword ptr [rax + 4]
	mov	al, 0
	call	sprintf
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.91
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rdx, 8
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rdx
	call	time_string
	mov	rsp, rsp
	mov	edi, 0xffffffff
	mov	ecx, 0x20
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str_0
	nop	
	lea	rsi, [rbp - 0x34]
	mov	r8, qword ptr [rbp - 0x18]
	mov	r9, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x50], rsi
	mov	rsp, rsp
	mov	rsi, r9
	mov	qword ptr [rbp - 0x48], rdx
	mov	rsp, rsp
	mov	edx, ecx
	mov	r10, qword ptr [rbp - 0x40]
	nop	
	mov	qword ptr [rbp - 0x28], r8
	nop	
	mov	r8, r10
	mov	rsp, rsp
	mov	r9, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rsp], rax
	mov	r11, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], r11
	mov	rbx, qword ptr [rbp - 0x28]
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 0x18], rax
	mov	rbp, rbp
	call	print_line
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	call	free
	nop	
	add	rsp, 0x78
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4036a0

	.globl print_deadprocs
	.type print_deadprocs, @function
print_deadprocs:
	push	rbp
	mov	rbp, rsp
	push	r14
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0xa0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	make_id_equals_comment
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.74
	mov	rbp, rbp
	lea	rdi, [rbp - 0x5c]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	movsxd	rdx, dword ptr [rax + 4]
	lea	rsi, [rsi]
	mov	al, 0
	call	sprintf
	cmp	qword ptr [word ptr [print_deadprocs.exitstr]],  0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x74], eax
	jne	.label_118
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.92
	mov	rbp, rbp
	call	gettext
	movabs	rdi, OFFSET FLAT:.str.93
	mov	qword ptr [rbp - 0x28], rdi
	mov	rdi, rax
	call	strlen
	nop	
	add	rax, 6
	add	rax, 1
	mov	rdi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x68], rax
	lea	rdi, [rdi]
	call	gettext
	mov	rdi, rax
	mov	rsp, rsp
	call	strlen
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	add	rdi, rax
	mov	rsp, rsp
	add	rdi, 6
	add	rdi, 1
	nop	
	call	xmalloc
	mov	rbp, rbp
	mov	qword ptr [word ptr [print_deadprocs.exitstr]],  rax
.label_118:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.92
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [print_deadprocs.exitstr]]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.93
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	movsx	ecx, word ptr [rcx + 0x14c]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], ecx
	call	gettext
	nop	
	movabs	rsi, OFFSET FLAT:.str.94
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	movsx	r9d, word ptr [rdi + 0x14e]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	r8, rax
	nop	
	mov	al, 0
	call	sprintf
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	add	rdx, 8
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	call	time_string
	lea	rsi, [rsi]
	mov	edi, 0xffffffff
	movabs	rdx, OFFSET FLAT:.str_0
	mov	ecx, 0x20
	lea	rsi, [rbp - 0x5c]
	mov	r8, qword ptr [rbp - 0x40]
	mov	r10,  qword ptr [word ptr [print_deadprocs.exitstr]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x80], rsi
	mov	rbp, rbp
	mov	rsi, rdx
	mov	qword ptr [rbp - 0x88], rdx
	mov	edx, ecx
	mov	rsp, rsp
	mov	r11, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], r8
	mov	r8, r11
	mov	rsp, rsp
	mov	r9, rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rsp], rax
	mov	rbx, qword ptr [rbp - 0x80]
	mov	qword ptr [rsp + 8], rbx
	mov	r14, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rsp + 0x10], r14
	mov	qword ptr [rsp + 0x18], r10
	call	print_line
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	rbp, rbp
	add	rsp, 0xa0
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4038d0

	.globl print_line
	.type print_line, @function
print_line:
	push	rbp
	mov	rbp, rsp
	nop	
	push	r15
	mov	rbp, rbp
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	sub	rsp, 0x108
	lea	rdi, [rdi]
	mov	al, dl
	mov	r10, qword ptr [rbp + 0x28]
	mov	r11, qword ptr [rbp + 0x20]
	mov	rbx, qword ptr [rbp + 0x18]
	mov	r14, qword ptr [rbp + 0x10]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x8c], edi
	mov	qword ptr [rbp - 0xa0], rsi
	mov	byte ptr [rbp - 0xd1], al
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], ecx
	mov	qword ptr [rbp - 0x40], r8
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc8], r9
	nop	
	mov	qword ptr [rbp - 0x50], r14
	mov	qword ptr [rbp - 0x70], rbx
	nop	
	mov	qword ptr [rbp - 0xb8], r11
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], r10
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xd1]
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [label_128]],  al
	mov	rsp, rsp
	test	byte ptr [byte ptr [include_idle]],  1
	mov	rbp, rbp
	je	.label_119
	nop	
	test	byte ptr [byte ptr [short_output]],  1
	mov	rsp, rsp
	jne	.label_119
	mov	rdi, qword ptr [rbp - 0x50]
	nop	
	call	strlen
	cmp	rax, 7
	jae	.label_119
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.69
	lea	rdi, [rbp - 0xc0]
	nop	
	mov	rdx, qword ptr [rbp - 0x50]
	mov	al, 0
	mov	rsp, rsp
	call	sprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x90], eax
	lea	rdi, [rdi]
	jmp	.label_133
.label_119:
	mov	byte ptr [rbp - 0xc0], 0
.label_133:
	test	byte ptr [byte ptr [short_output]],  1
	lea	rdi, [rdi]
	jne	.label_120
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	call	strlen
	cmp	rax, 0xc
	lea	rsi, [rsi]
	jae	.label_120
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.70
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x5d]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x70]
	mov	al, 0
	call	sprintf
	nop	
	mov	dword ptr [rbp - 0xf0], eax
	jmp	.label_122
.label_120:
	mov	byte ptr [rbp - 0x5d], 0
.label_122:
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [include_exit]],  1
	je	.label_134
	nop	
	mov	eax, 0xc
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x88]
	nop	
	mov	qword ptr [rbp - 0xf8], rcx
	call	strlen
	mov	rcx, qword ptr [rbp - 0xf8]
	cmp	rcx, rax
	jbe	.label_123
	mov	eax, 0xc
	mov	rsp, rsp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], rcx
	lea	rdi, [rdi]
	jmp	.label_130
.label_123:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x88]
	call	strlen
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], rax
.label_130:
	mov	rax, qword ptr [rbp - 0xe8]
	add	rax, 1
	add	rax, 1
	mov	qword ptr [rbp - 0xa8], rax
	jmp	.label_129
.label_134:
	nop	
	mov	eax, 1
	mov	ecx, eax
	mov	qword ptr [rbp - 0xa8], rcx
	mov	rbp, rbp
	jmp	.label_129
.label_129:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rdi, rax
	call	xmalloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rax
	test	byte ptr [byte ptr [include_exit]],  1
	je	.label_127
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.71
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x88]
	nop	
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0xec], eax
	mov	rbp, rbp
	jmp	.label_124
.label_127:
	mov	rax, qword ptr [rbp - 0x98]
	mov	byte ptr [rax], 0
.label_124:
	mov	edx, dword ptr [rbp - 0x8c]
	cmp	qword ptr [rbp - 0xa0], 0
	mov	dword ptr [rbp - 0xac], edx
	mov	rsp, rsp
	je	.label_132
	nop	
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_125
.label_132:
	movabs	rax, OFFSET FLAT:.str.73
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_125
.label_125:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rbp - 0x30]
	movabs	rsi, OFFSET FLAT:.str.72
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x5d]
	lea	rdx, [rbp - 0xc0]
	lea	rdi, [rdi]
	movabs	r8, OFFSET FLAT:.str_0
	movabs	r9, OFFSET FLAT:print_line.mesg
	mov	r10b,  byte ptr [byte ptr [include_mesg]]
	test	r10b, 1
	mov	rbp, rbp
	cmovne	r8, r9
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rbp - 0x34]
	mov	r11, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	ebx,  dword ptr [dword ptr [time_format_width]]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	r15, qword ptr [rbp - 0xb8]
	mov	r12, qword ptr [rbp - 0x98]
	mov	r13d, dword ptr [rbp - 0xac]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd0], rdx
	mov	rbp, rbp
	mov	edx, r13d
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe0], rcx
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp], r11
	mov	dword ptr [rsp + 8], ebx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], r14
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rsp + 0x18], rax
	mov	r11, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], r11
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], r15
	mov	qword ptr [rsp + 0x30], r12
	mov	al, 0
	call	asprintf
	nop	
	mov	dword ptr [rbp - 0xb0], eax
	cmp	dword ptr [rbp - 0xb0], -1
	mov	rsp, rsp
	jne	.label_126
	mov	rsp, rsp
	call	xalloc_die
.label_126:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x48], rax
	call	strlen
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	add	rdi, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rdi
.label_131:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, rax
	add	rcx, -1
	nop	
	mov	qword ptr [rbp - 0x78], rcx
	mov	rsp, rsp
	movsx	edx, byte ptr [rax - 1]
	cmp	edx, 0x20
	jne	.label_121
	mov	rsp, rsp
	jmp	.label_131
.label_121:
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	mov	byte ptr [rax + 1], 0
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	call	puts
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x64], eax
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [rbp - 0x98]
	call	free
	nop	
	add	rsp, 0x108
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403d20

	.globl stzncpy
	.type stzncpy, @function
stzncpy:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rdx
.label_137:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	byte ptr [rbp - 9], cl
	jae	.label_136
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	setne	dl
	mov	byte ptr [rbp - 9], dl
.label_136:
	mov	al, byte ptr [rbp - 9]
	test	al, 1
	mov	rsp, rsp
	jne	.label_135
	mov	rbp, rbp
	jmp	.label_138
.label_135:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rbp, rbp
	mov	dl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, rax
	nop	
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], dl
	jmp	.label_137
.label_138:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403de0

	.globl is_tty_writable
	.type is_tty_writable, @function
is_tty_writable:
	mov	rsp, rsp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi + 0x18]
	lea	rdi, [rdi]
	and	eax, 0x10
	mov	rsp, rsp
	cmp	eax, 0
	setne	cl
	and	cl, 1
	nop	
	movzx	eax, cl
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e20

	.globl idle_string
	.type idle_string, @function
idle_string:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, 0x8000000000000000
	mov	qword ptr [rbp - 0x30], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [word ptr [idle_string.now]],  rax
	jne	.label_139
	movabs	rdi, OFFSET FLAT:idle_string.now
	call	time
	nop	
	mov	qword ptr [rbp - 0x38], rax
.label_139:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	cmp	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	jge	.label_140
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [idle_string.now]]
	sub	rax, 0x15180
	cmp	rax, qword ptr [rbp - 0x30]
	jge	.label_140
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	cmp	rax,  qword ptr [word ptr [idle_string.now]]
	jg	.label_140
	mov	rax,  qword ptr [word ptr [idle_string.now]]
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], ecx
	mov	rbp, rbp
	cmp	dword ptr [rbp - 4], 0x3c
	jge	.label_143
	movabs	rax, OFFSET FLAT:.str.79
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	jmp	.label_142
.label_143:
	mov	eax, 0xe10
	mov	ecx, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0xc], eax
	lea	rsi, [rsi]
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	idiv	ecx
	cmp	eax, 0x18
	lea	rsi, [rsi]
	jge	.label_144
	jmp	.label_141
.label_144:
	movabs	rdi, OFFSET FLAT:.str.80
	movabs	rsi, OFFSET FLAT:.str.81
	mov	edx, 0xcd
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.idle_string
	lea	rdi, [rdi]
	call	__assert_fail
.label_141:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:idle_string.idle_hhmm
	nop	
	movabs	rsi, OFFSET FLAT:.str.82
	mov	eax, 0x3c
	lea	rdi, [rdi]
	mov	ecx, 0xe10
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 8], eax
	nop	
	mov	eax, edx
	cdq	
	idiv	ecx
	mov	rbp, rbp
	mov	r8d, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x24], eax
	lea	rsi, [rsi]
	mov	eax, r8d
	cdq	
	nop	
	idiv	ecx
	lea	rdi, [rdi]
	mov	eax, edx
	cdq	
	mov	ecx, dword ptr [rbp - 8]
	idiv	ecx
	mov	r8d, dword ptr [rbp - 0x24]
	mov	edx, r8d
	mov	rsp, rsp
	mov	ecx, eax
	mov	al, 0
	mov	rsp, rsp
	call	sprintf
	movabs	rsi, OFFSET FLAT:idle_string.idle_hhmm
	mov	qword ptr [rbp - 0x20], rsi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_142
.label_140:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.83
	call	gettext
	mov	qword ptr [rbp - 0x20], rax
.label_142:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ff0

	.globl time_string
	.type time_string, @function
time_string:
	nop	
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	lea	rax, [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	movsxd	rdi, dword ptr [rdi + 0x154]
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	mov	rdi, rax
	call	localtime
	nop	
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_145
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:time_string.buf
	lea	rdi, [rdi]
	mov	eax, 0x21
	lea	rsi, [rsi]
	mov	esi, eax
	mov	rdx,  qword ptr [word ptr [time_format]]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	call	strftime
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:time_string.buf
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_146
.label_145:
	nop	
	movabs	rsi, OFFSET FLAT:time_string.buf
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	timetostr
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_146:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rsp, 0x30
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040b0

	.globl timetostr
	.type timetostr, @function
timetostr:
	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	call	imaxtostr
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040e0

	.globl make_id_equals_comment
	.type make_id_equals_comment, @function
make_id_equals_comment:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	movabs	rax, OFFSET FLAT:.str.90
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 4
	mov	rdi, rax
	nop	
	call	gettext
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	strlen
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	movabs	rdi, OFFSET FLAT:.str.90
	mov	qword ptr [rbp - 0x18], rax
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, rax
	mov	rbp, rbp
	call	strcpy
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0x28
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	call	strncat
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, rdx
	add	rsp, 0x30
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404190
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
	jb	.label_147
	jmp	.label_148
.label_148:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, -0x41
	lea	rdi, [rdi]
	sub	eax, 0x1a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	jb	.label_147
	nop	
	jmp	.label_151
.label_151:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, -0x61
	sub	eax, 0x19
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], eax
	mov	rbp, rbp
	ja	.label_150
	jmp	.label_147
.label_147:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x15], 1
	lea	rsi, [rsi]
	jmp	.label_149
.label_150:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x15], 0
.label_149:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	eax, al
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404220
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
	jb	.label_152
	nop	
	jmp	.label_153
.label_153:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	add	eax, -0x61
	nop	
	sub	eax, 0x19
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	mov	rsp, rsp
	ja	.label_154
	lea	rdi, [rdi]
	jmp	.label_152
.label_152:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	jmp	.label_155
.label_154:
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
.label_155:
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
	.align	32
	#Procedure 0x4042a0
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
	ja	.label_156
	mov	rsp, rsp
	jmp	.label_158
.label_158:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_157
.label_156:
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 0
.label_157:
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
	.align	32
	#Procedure 0x4042f0
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
	je	.label_159
	cmp	dword ptr [rbp - 4], 9
	lea	rsi, [rsi]
	sete	al
	mov	byte ptr [rbp - 5], al
.label_159:
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
	.align	32
	#Procedure 0x404340
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
	jb	.label_160
	nop	
	jmp	.label_161
.label_161:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0xc], eax
	jne	.label_162
	lea	rsi, [rsi]
	jmp	.label_160
.label_160:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_163
.label_162:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 5], 0
.label_163:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043b0
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
	ja	.label_165
	jmp	.label_166
.label_166:
	mov	byte ptr [rbp - 5], 1
	lea	rdi, [rdi]
	jmp	.label_164
.label_165:
	mov	byte ptr [rbp - 5], 0
.label_164:
	mov	al, byte ptr [rbp - 5]
	mov	rsp, rsp
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404400
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
	ja	.label_167
	lea	rsi, [rsi]
	jmp	.label_168
.label_168:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_169
.label_167:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], 0
.label_169:
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
	.align	32
	#Procedure 0x404450
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
	ja	.label_170
	jmp	.label_171
.label_171:
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_172
.label_170:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
.label_172:
	mov	al, byte ptr [rbp - 1]
	nop	
	and	al, 1
	movzx	eax, al
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4044a0

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
	ja	.label_173
	jmp	.label_175
.label_175:
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 1
	jmp	.label_174
.label_173:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], 0
.label_174:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044f0
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
	jb	.label_176
	jmp	.label_178
.label_178:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	eax, -0x3a
	sub	eax, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	jb	.label_176
	nop	
	jmp	.label_181
.label_181:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	eax, -0x5b
	mov	rsp, rsp
	sub	eax, 6
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_176
	jmp	.label_179
.label_179:
	mov	eax, dword ptr [rbp - 4]
	add	eax, -0x7b
	mov	rsp, rsp
	sub	eax, 3
	mov	dword ptr [rbp - 0xc], eax
	ja	.label_177
	mov	rsp, rsp
	jmp	.label_176
.label_176:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_180
.label_177:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], 0
.label_180:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045a0
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
	jb	.label_182
	mov	rbp, rbp
	jmp	.label_183
.label_183:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	jne	.label_185
	mov	rsp, rsp
	jmp	.label_182
.label_182:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_184
.label_185:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
.label_184:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404610
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
	ja	.label_186
	jmp	.label_188
.label_188:
	mov	byte ptr [rbp - 5], 1
	nop	
	jmp	.label_187
.label_186:
	mov	byte ptr [rbp - 5], 0
.label_187:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404660
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
	jb	.label_189
	lea	rdi, [rdi]
	jmp	.label_193
.label_193:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	eax, -0x41
	mov	rbp, rbp
	sub	eax, 6
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jb	.label_189
	jmp	.label_190
.label_190:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	add	eax, -0x61
	sub	eax, 5
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_192
	jmp	.label_189
.label_189:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_191
.label_192:
	nop	
	mov	byte ptr [rbp - 9], 0
.label_191:
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
	.align	32
	#Procedure 0x4046f0

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
	ja	.label_194
	jmp	.label_195
.label_195:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x41
	nop	
	add	eax, 0x61
	nop	
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	jmp	.label_196
.label_194:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
.label_196:
	nop	
	mov	eax, dword ptr [rbp - 8]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x404740
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
	ja	.label_197
	mov	rbp, rbp
	jmp	.label_198
.label_198:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	sub	eax, 0x61
	mov	rsp, rsp
	add	eax, 0x41
	nop	
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_199
.label_197:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_199:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047a0

	.globl canon_host
	.type canon_host, @function
canon_host:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	movabs	rsi, OFFSET FLAT:last_cherror
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	canon_host_r
	lea	rdi, [rdi]
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047e0

	.globl canon_host_r
	.type canon_host_r, @function
canon_host_r:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:canon_host_r.hints
	lea	r8, [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x20], rsi
	nop	
	mov	qword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	mov	dword ptr [dword ptr [canon_host_r.hints]],  2
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rcx
	lea	rdi, [rdi]
	mov	rcx, r8
	call	getaddrinfo
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_200
	nop	
	mov	rax, qword ptr [rbp - 8]
	nop	
	cmp	qword ptr [rax + 0x20], 0
	mov	rsp, rsp
	je	.label_204
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_201
.label_204:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_201:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	strdup
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	jne	.label_202
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_202
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], 0xfffffff6
.label_202:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	freeaddrinfo
	jmp	.label_203
.label_200:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_205
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	dword ptr [rcx], eax
.label_205:
	jmp	.label_203
.label_203:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404910
	.globl ch_strerror
	.type ch_strerror, @function
ch_strerror:

	push	rbp
	mov	rbp, rsp
	mov	edi,  dword ptr [dword ptr [last_cherror]]
	call	gai_strerror
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x404930
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
	.align	32
	#Procedure 0x404960
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
	.align	32
	#Procedure 0x404990

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
	je	.label_206
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_210
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_206
.label_210:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_2
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_207
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
	movabs	rdx, OFFSET FLAT:.str.1_0
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_208
.label_207:
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
.label_208:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_206:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_209
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_209:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ac0

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
	je	.label_212
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_3
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_213
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:.str.1_1
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_211
.label_213:
	mov	byte ptr [rbp - 0xd], 0
.label_211:
	jmp	.label_212
.label_212:
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
	.align	32
	#Procedure 0x404b60

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, 0x14
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	byte ptr [rsi], 0
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	jge	.label_214
	nop	
	jmp	.label_217
.label_217:
	mov	eax, 0x30
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	eax, 0xa
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 8]
	idiv	rsi
	sub	rcx, rdx
	mov	rbp, rbp
	mov	dil, cl
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x20], rdx
	mov	byte ptr [rcx - 1], dil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cqo	
	idiv	rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_217
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	nop	
	add	rcx, -1
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	mov	byte ptr [rax - 1], 0x2d
	mov	rbp, rbp
	jmp	.label_215
.label_214:
	jmp	.label_216
.label_216:
	mov	rsp, rsp
	mov	eax, 0xa
	mov	ecx, eax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cqo	
	mov	rsp, rsp
	idiv	rcx
	nop	
	add	rdx, 0x30
	mov	sil, dl
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rsp, rsp
	add	rdx, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	rbp, rbp
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_216
	jmp	.label_215
.label_215:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x404cb0

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
	jne	.label_220
	movabs	rdi, OFFSET FLAT:.str_4
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	call	abort
.label_220:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_218
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_222
.label_218:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_222:
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
	jl	.label_221
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_2
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
	jne	.label_221
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.2_0
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
	jne	.label_219
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_219:
	jmp	.label_221
.label_221:
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
	.align	32
	#Procedure 0x404e30
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
	je	.label_223
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_224
.label_223:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_224
.label_224:
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
	.align	32
	#Procedure 0x404ee0
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
	je	.label_225
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_226
.label_225:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_226
.label_226:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f40
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
	je	.label_227
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_228
.label_227:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_228
.label_228:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404fa0

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
	je	.label_229
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jmp	.label_230
.label_229:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_230
.label_230:
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
	.align	32
	#Procedure 0x4050a0
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
	jne	.label_231
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
.label_231:
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
	.align	32
	#Procedure 0x405100

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
	jne	.label_232
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
.label_232:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_234
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_233
.label_234:
	call	abort
.label_233:
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
	.align	32
	#Procedure 0x4051a0
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
	je	.label_235
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_236
.label_235:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_236
.label_236:
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
	.align	32
	#Procedure 0x4052a0

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
.label_285:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0x88], rcx
	mov	qword ptr [rbp - 0x130], rdx
	ja	.label_415
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_348]]
	jmp	rcx
.label_605:
	mov	dword ptr [rbp - 0x58], 5
	mov	byte ptr [rbp - 0x3e], 1
.label_604:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_240
	jmp	.label_400
.label_400:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_434
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x22
.label_434:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_240
.label_240:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	jmp	.label_249
.label_606:
	nop	
	mov	byte ptr [rbp - 0x89], 1
	nop	
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_249
.label_607:
	cmp	dword ptr [rbp - 0x58], 0xa
	je	.label_268
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
.label_268:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_280
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x108], rax
.label_303:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_287
	jmp	.label_301
.label_301:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_292
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rdx + rax], cl
.label_292:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_362
.label_362:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_303
.label_287:
	mov	rbp, rbp
	jmp	.label_280
.label_280:
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
	jmp	.label_249
.label_602:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x89], 1
.label_601:
	mov	byte ptr [rbp - 0x3e], 1
.label_603:
	nop	
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_324
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
.label_324:
	jmp	.label_326
.label_326:
	mov	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_327
	jmp	.label_332
.label_332:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_386
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_386:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_327
.label_327:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	mov	rsp, rsp
	jmp	.label_249
.label_600:
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_249
.label_415:
	call	abort
.label_249:
	mov	qword ptr [rbp - 0xd8], 0
.label_358:
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_353
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
	jmp	.label_355
.label_353:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], edx
.label_355:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_372
	mov	rbp, rbp
	jmp	.label_380
.label_372:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa6], 0
	nop	
	mov	byte ptr [rbp - 0x3f], 0
	mov	byte ptr [rbp - 0x91], 0
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_283
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	je	.label_283
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_283
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], -1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jne	.label_347
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xd0]
	jae	.label_347
	mov	rdi, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_408
.label_347:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xc8], rax
.label_408:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_283
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
	jne	.label_283
	nop	
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	je	.label_426
	jmp	.label_241
.label_426:
	nop	
	mov	byte ptr [rbp - 0xa6], 1
.label_283:
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
	ja	.label_405
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_247]]
	nop	
	jmp	rcx
.label_540:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	je	.label_254
	mov	rsp, rsp
	jmp	.label_258
.label_258:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_262
	jmp	.label_241
.label_262:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3f], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_265
	mov	rbp, rbp
	test	byte ptr [rbp - 0x42], 1
	mov	rbp, rbp
	jne	.label_265
	nop	
	jmp	.label_272
.label_272:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_275
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_275:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_281
.label_281:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_286
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_286:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_294
.label_294:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_297
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_297:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_265:
	lea	rsi, [rsi]
	jmp	.label_307
.label_307:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_308
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_308:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_315
.label_315:
	cmp	dword ptr [rbp - 0x58], 2
	je	.label_293
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_293
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x150]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_293
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_293
	nop	
	jmp	.label_422
.label_422:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_413
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x30
.label_413:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_267
.label_267:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_288
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_288:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_293
.label_293:
	mov	byte ptr [rbp - 0x3d], 0x30
	nop	
	jmp	.label_359
.label_254:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_363
	mov	rbp, rbp
	jmp	.label_356
.label_363:
	jmp	.label_359
.label_359:
	jmp	.label_246
.label_551:
	mov	eax, dword ptr [rbp - 0x58]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0x78], eax
	nop	
	mov	dword ptr [rbp - 0x90], ecx
	mov	rsp, rsp
	je	.label_370
	mov	rbp, rbp
	jmp	.label_376
.label_376:
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb4], eax
	lea	rsi, [rsi]
	je	.label_378
	jmp	.label_384
.label_370:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_387
	jmp	.label_241
.label_387:
	jmp	.label_305
.label_378:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 4
	cmp	eax, 0
	je	.label_392
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	jae	.label_392
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_392
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
	je	.label_289
	nop	
	jmp	.label_411
.label_411:
	nop	
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	jb	.label_289
	jmp	.label_417
.label_417:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x144]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_289
	jmp	.label_423
.label_423:
	mov	eax, dword ptr [rbp - 0x144]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x128], eax
	je	.label_289
	jmp	.label_429
.label_429:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0xf4], eax
	lea	rdi, [rdi]
	ja	.label_354
	jmp	.label_289
.label_289:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_437
	jmp	.label_241
.label_437:
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
	jae	.label_242
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_242:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_270
.label_270:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_390
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_390:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_278
.label_278:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_284
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_284:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_291
.label_291:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_325
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_325:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_298
.label_354:
	jmp	.label_298
.label_298:
	jmp	.label_392
.label_392:
	jmp	.label_305
.label_384:
	jmp	.label_305
.label_305:
	jmp	.label_246
.label_541:
	mov	byte ptr [rbp - 0xb6], 0x61
	jmp	.label_311
.label_542:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb6], 0x62
	jmp	.label_311
.label_546:
	mov	byte ptr [rbp - 0xb6], 0x66
	lea	rdi, [rdi]
	jmp	.label_311
.label_544:
	mov	byte ptr [rbp - 0xb6], 0x6e
	mov	rbp, rbp
	jmp	.label_318
.label_547:
	mov	byte ptr [rbp - 0xb6], 0x72
	mov	rbp, rbp
	jmp	.label_318
.label_543:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb6], 0x74
	jmp	.label_318
.label_545:
	mov	byte ptr [rbp - 0xb6], 0x76
	jmp	.label_311
.label_552:
	mov	al, byte ptr [rbp - 0x3d]
	nop	
	mov	byte ptr [rbp - 0xb6], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_337
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_329
	nop	
	jmp	.label_241
.label_329:
	lea	rsi, [rsi]
	jmp	.label_244
.label_337:
	test	byte ptr [rbp - 0x89], 1
	je	.label_340
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_340
	nop	
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rbp, rbp
	je	.label_340
	jmp	.label_244
.label_340:
	jmp	.label_318
.label_318:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	jne	.label_345
	test	byte ptr [rbp - 0x3e], 1
	je	.label_345
	jmp	.label_241
.label_345:
	mov	rsp, rsp
	jmp	.label_311
.label_311:
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_350
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb6]
	mov	byte ptr [rbp - 0x3d], al
	jmp	.label_248
.label_350:
	jmp	.label_246
.label_553:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_360
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x150]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_364
	jmp	.label_369
.label_360:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 1
	je	.label_364
.label_369:
	nop	
	jmp	.label_246
.label_364:
	jmp	.label_373
.label_373:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rbp, rbp
	je	.label_433
	lea	rsi, [rsi]
	jmp	.label_246
.label_433:
	nop	
	jmp	.label_381
.label_381:
	mov	byte ptr [rbp - 0x91], 1
.label_548:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_383
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_383
	jmp	.label_241
.label_383:
	lea	rsi, [rsi]
	jmp	.label_246
.label_550:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa5], 1
	mov	byte ptr [rbp - 0x91], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_394
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_399
	jmp	.label_241
.label_399:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_389
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x140], 0
	lea	rdi, [rdi]
	jne	.label_389
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x140], rax
	mov	qword ptr [rbp - 0x28], 0
.label_389:
	jmp	.label_409
.label_409:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_410
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_410:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_414
.label_414:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	jae	.label_419
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_419:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_428
.label_428:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_431
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_431:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_394:
	lea	rsi, [rsi]
	jmp	.label_246
.label_549:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 1
	jmp	.label_246
.label_405:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xb5], 1
	je	.label_255
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
	jmp	.label_269
.label_255:
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
	jne	.label_282
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x150]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
.label_282:
	jmp	.label_260
.label_260:
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
	jne	.label_306
	jmp	.label_314
.label_306:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], -1
	jne	.label_312
	mov	byte ptr [rbp - 0x40], 0
	jmp	.label_314
.label_312:
	nop	
	cmp	qword ptr [rbp - 0x10], -2
	jne	.label_317
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_335:
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
	jae	.label_320
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0x110]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x41], sil
.label_320:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_333
	jmp	.label_334
.label_333:
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_335
.label_334:
	jmp	.label_314
.label_317:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_396
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_396
	mov	qword ptr [rbp - 0xe8], 1
.label_391:
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_346
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
	jb	.label_349
	jmp	.label_393
.label_393:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x148], eax
	je	.label_349
	jmp	.label_371
.label_371:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	je	.label_349
	jmp	.label_377
.label_377:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x48], eax
	jne	.label_379
	mov	rsp, rsp
	jmp	.label_349
.label_349:
	mov	rsp, rsp
	jmp	.label_241
.label_379:
	jmp	.label_388
.label_388:
	mov	rsp, rsp
	jmp	.label_310
.label_310:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe8]
	add	rax, 1
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_391
.label_346:
	mov	rbp, rbp
	jmp	.label_396
.label_396:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x74]
	call	iswprint
	cmp	eax, 0
	jne	.label_343
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_343:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_401
.label_401:
	lea	rsi, [rsi]
	jmp	.label_404
.label_404:
	jmp	.label_406
.label_406:
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
	jne	.label_260
.label_314:
	jmp	.label_269
.label_269:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x40]
	and	dl, 1
	mov	byte ptr [rbp - 0x91], dl
	cmp	rcx, qword ptr [rbp - 0x110]
	nop	
	jb	.label_412
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_421
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	mov	rsp, rsp
	jne	.label_421
.label_412:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x110]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_403:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	nop	
	je	.label_432
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	jne	.label_432
	jmp	.label_237
.label_237:
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_239
	jmp	.label_241
.label_239:
	mov	byte ptr [rbp - 0x3f], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_245
	test	byte ptr [rbp - 0x42], 1
	jne	.label_245
	lea	rdi, [rdi]
	jmp	.label_256
.label_256:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_316
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_316:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_368
.label_368:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_273
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x24
.label_273:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_279
.label_279:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_253
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_253:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_245:
	jmp	.label_295
.label_295:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_296
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_296:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_424
.label_424:
	jmp	.label_302
.label_302:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_304
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
.label_304:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_264
.label_264:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_322
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
.label_322:
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
	jmp	.label_328
.label_432:
	test	byte ptr [rbp - 0xa6], 1
	lea	rsi, [rsi]
	je	.label_336
	lea	rdi, [rdi]
	jmp	.label_339
.label_339:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_342
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x5c
.label_342:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa6], 0
.label_336:
	nop	
	jmp	.label_328
.label_328:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xd8]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_435
	jmp	.label_357
.label_435:
	lea	rsi, [rsi]
	jmp	.label_361
.label_361:
	test	byte ptr [rbp - 0x42], 1
	je	.label_365
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_365
	lea	rsi, [rsi]
	jmp	.label_367
.label_367:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_402
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_402:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_375
.label_375:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_382
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_382:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_365:
	nop	
	jmp	.label_395
.label_395:
	mov	rsp, rsp
	jmp	.label_397
.label_397:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_398
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x3d]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_398:
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
	jmp	.label_403
.label_357:
	mov	rsp, rsp
	jmp	.label_244
.label_421:
	lea	rsi, [rsi]
	jmp	.label_246
.label_246:
	test	byte ptr [rbp - 0x89], 1
	mov	rbp, rbp
	je	.label_331
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_418
.label_331:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_420
.label_418:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x100], 0
	nop	
	je	.label_420
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
	jne	.label_238
.label_420:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xa6], 1
	lea	rdi, [rdi]
	jne	.label_238
	mov	rsp, rsp
	jmp	.label_244
.label_238:
	nop	
	jmp	.label_248
.label_248:
	jmp	.label_250
.label_250:
	test	byte ptr [rbp - 0x3e], 1
	mov	rbp, rbp
	je	.label_252
	jmp	.label_241
.label_252:
	mov	byte ptr [rbp - 0x3f], 1
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_257
	test	byte ptr [rbp - 0x42], 1
	lea	rdi, [rdi]
	jne	.label_257
	lea	rdi, [rdi]
	jmp	.label_266
.label_266:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_352
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_352:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_276
.label_276:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_427
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_427:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_277
.label_277:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_321
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_321:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_257:
	jmp	.label_299
.label_299:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_300
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_300:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_309
.label_309:
	nop	
	jmp	.label_244
.label_244:
	jmp	.label_313
.label_313:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x42], 1
	je	.label_263
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_263
	lea	rdi, [rdi]
	jmp	.label_319
.label_319:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_323
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_323:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_338
.label_338:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_330
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_330:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_263:
	jmp	.label_341
.label_341:
	nop	
	jmp	.label_436
.label_436:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_344
	mov	al, byte ptr [rbp - 0x3d]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_344:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x91], 1
	jne	.label_290
	mov	byte ptr [rbp - 0xb7], 0
.label_290:
	mov	rbp, rbp
	jmp	.label_356
.label_356:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_358
.label_380:
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_366
	cmp	dword ptr [rbp - 0x58], 2
	nop	
	jne	.label_366
	mov	rbp, rbp
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_366
	nop	
	jmp	.label_241
.label_366:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_374
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_374
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa5], 1
	je	.label_374
	test	byte ptr [rbp - 0xb7], 1
	je	.label_385
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
	jmp	.label_271
.label_385:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jne	.label_407
	cmp	qword ptr [rbp - 0x140], 0
	lea	rsi, [rsi]
	je	.label_407
	nop	
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_285
.label_407:
	jmp	.label_416
.label_416:
	mov	rbp, rbp
	jmp	.label_374
.label_374:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x108], 0
	je	.label_259
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_259
	mov	rbp, rbp
	jmp	.label_251
.label_251:
	mov	rax, qword ptr [rbp - 0x108]
	cmp	byte ptr [rax], 0
	je	.label_425
	lea	rdi, [rdi]
	jmp	.label_351
.label_351:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_430
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_430:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_243
.label_243:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_251
.label_425:
	jmp	.label_259
.label_259:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_261
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0
.label_261:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_271
.label_241:
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_274
	mov	rsp, rsp
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_274
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], 4
.label_274:
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
.label_271:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	add	rsp, 0x168
	pop	rbx
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d40
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
	.align	32
	#Procedure 0x406db0

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
	je	.label_438
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_439
.label_438:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_439
.label_439:
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
	je	.label_440
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
.label_440:
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
	.align	32
	#Procedure 0x406f80
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
.label_445:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_444
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
	jmp	.label_445
.label_444:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_443
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_441]],  rax
.label_443:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_442
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_442:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407090

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
	.align	32
	#Procedure 0x4070e0

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
	jge	.label_447
	call	abort
.label_447:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 0x64]
	jg	.label_450
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
	jge	.label_452
	call	xalloc_die
.label_452:
	test	byte ptr [rbp - 0x51], 1
	je	.label_451
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_448
.label_451:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_448:
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
	je	.label_446
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_441]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_446:
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
.label_450:
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
	ja	.label_453
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
	je	.label_449
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	free
.label_449:
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
.label_453:
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
	.align	32
	#Procedure 0x407410

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
	.align	32
	#Procedure 0x407450
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
	.align	32
	#Procedure 0x407480
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
	.align	32
	#Procedure 0x4074c0

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
	.align	32
	#Procedure 0x407520

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
	jne	.label_454
	call	abort
.label_454:
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
	.align	32
	#Procedure 0x4075c0

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
	.align	32
	#Procedure 0x407630
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
	.align	32
	#Procedure 0x407670
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
	.align	32
	#Procedure 0x4076b0

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
	.align	32
	#Procedure 0x407760

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
	.align	32
	#Procedure 0x4077a0

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
	.align	32
	#Procedure 0x4077d0
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
	.align	32
	#Procedure 0x407810

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
	.align	32
	#Procedure 0x4078f0

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
	.align	32
	#Procedure 0x407940

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
	.align	32
	#Procedure 0x4079e0
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
	.align	32
	#Procedure 0x407a30
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
	.align	32
	#Procedure 0x407a90

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
	.align	32
	#Procedure 0x407ad0
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
	.align	32
	#Procedure 0x407b10

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
	.align	32
	#Procedure 0x407b50

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
	.align	32
	#Procedure 0x407b90

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
	je	.label_457
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_455
.label_457:
	call	locale_charset
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.13_0
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_458
	movabs	rax, OFFSET FLAT:.str.15_0
	movabs	rcx, OFFSET FLAT:.str.14
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_455
.label_458:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_456
	nop	
	movabs	rax, OFFSET FLAT:.str.18_0
	movabs	rcx, OFFSET FLAT:.str.17_1
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_455
.label_456:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
.label_455:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407cd0

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
	je	.label_462
	movabs	rsi, OFFSET FLAT:.str_5
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
	jmp	.label_460
.label_462:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_3
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0x78]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x114], eax
.label_460:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	eax, OFFSET FLAT:.str.2_1
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
	mov	ecx, OFFSET FLAT:.str.3_0
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
	ja	.label_461
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_463]]
	jmp	rcx
.label_554:
	jmp	.label_459
.label_555:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.4_0
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
	jmp	.label_459
.label_556:
	movabs	rdi, OFFSET FLAT:.str.5_0
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
	jmp	.label_459
.label_557:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6_0
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
	jmp	.label_459
.label_558:
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
	jmp	.label_459
.label_559:
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
	jmp	.label_459
.label_560:
	nop	
	movabs	rdi, OFFSET FLAT:.str.9_0
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
	jmp	.label_459
.label_561:
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
	jmp	.label_459
.label_562:
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
	jmp	.label_459
.label_563:
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
	jmp	.label_459
.label_461:
	movabs	rdi, OFFSET FLAT:.str.13_1
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
.label_459:
	lea	rdi, [rdi]
	add	rsp, 0x170
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408510
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
.label_464:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_465
	mov	rbp, rbp
	jmp	.label_466
.label_466:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_464
.label_465:
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
	.align	32
	#Procedure 0x4085c0

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
.label_468:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x40], 0xa
	mov	byte ptr [rbp - 0x11], cl
	jae	.label_471
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], ecx
	ja	.label_470
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
	jmp	.label_469
.label_470:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x30], rdx
.label_469:
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
.label_471:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_467
	mov	rsp, rsp
	jmp	.label_473
.label_467:
	jmp	.label_472
.label_472:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_468
.label_473:
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
	.align	32
	#Procedure 0x408720

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
	je	.label_474
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
.label_474:
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
	.align	32
	#Procedure 0x4088e0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.14_0
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
	.align	32
	#Procedure 0x408990
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
	jae	.label_475
	mov	rbp, rbp
	call	xalloc_die
.label_475:
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
	.align	32
	#Procedure 0x4089f0

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
	jne	.label_476
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_476
	lea	rdi, [rdi]
	call	xalloc_die
.label_476:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408a50
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
	jae	.label_477
	mov	rsp, rsp
	call	xalloc_die
.label_477:
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
	.align	32
	#Procedure 0x408ad0

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
	jne	.label_478
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_478
	mov	rdi, qword ptr [rbp - 8]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_480
.label_478:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	realloc
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_479
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_479
	lea	rsi, [rsi]
	call	xalloc_die
.label_479:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
.label_480:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408b80

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
	jne	.label_481
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_483
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
.label_483:
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
	jae	.label_485
	call	xalloc_die
.label_485:
	lea	rsi, [rsi]
	jmp	.label_484
.label_481:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_482
	call	xalloc_die
.label_482:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_484:
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
	.align	32
	#Procedure 0x408cb0

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
	.align	32
	#Procedure 0x408ce0
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
	.align	32
	#Procedure 0x408d20
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
	.align	32
	#Procedure 0x408d70
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
	jb	.label_486
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	calloc
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_487
.label_486:
	lea	rsi, [rsi]
	call	xalloc_die
.label_487:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408de0

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
	.align	32
	#Procedure 0x408e30
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
	.align	32
	#Procedure 0x408e90

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.1_4
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
	.align	32
	#Procedure 0x408ef0

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
	jne	.label_488
	lea	rax, [rbp - 0x14]
	mov	qword ptr [rbp - 0x10], rax
.label_488:
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
	ja	.label_489
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_489
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_489
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
	jmp	.label_490
.label_489:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_490:
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
	.align	32
	#Procedure 0x408fe0

	.globl extract_trimmed_name
	.type extract_trimmed_name, @function
extract_trimmed_name:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	eax, 0x21
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rdi
	nop	
	mov	rdi, rcx
	mov	rsp, rsp
	call	xmalloc
	mov	edx, 0x20
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x2c
	mov	rsi, rax
	lea	rsi, [rsi]
	call	strncpy
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + 0x20], 0
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
	call	strlen
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rcx, rax
	mov	qword ptr [rbp - 8], rcx
.label_491:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 9], cl
	mov	rsp, rsp
	jae	.label_493
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax - 1]
	lea	rdi, [rdi]
	cmp	ecx, 0x20
	sete	dl
	mov	rbp, rbp
	mov	byte ptr [rbp - 9], dl
.label_493:
	mov	al, byte ptr [rbp - 9]
	test	al, 1
	jne	.label_492
	jmp	.label_495
.label_492:
	lea	rsi, [rsi]
	jmp	.label_494
.label_494:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, -1
	mov	qword ptr [rbp - 8], rcx
	mov	byte ptr [rax - 1], 0
	jmp	.label_491
.label_495:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4090f0

	.globl read_utmp
	.type read_utmp, @function
read_utmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdi
	nop	
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	dword ptr [rbp - 0x34], ecx
	mov	qword ptr [rbp - 0x48], 0
	mov	qword ptr [rbp - 0x10], 0
	mov	qword ptr [rbp - 0x40], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	call	utmpxname
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	call	setutxent
.label_499:
	call	getutxent
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	je	.label_497
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	call	desirable_utmp_entry
	test	al, 1
	jne	.label_498
	jmp	.label_496
.label_498:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_500
	lea	rsi, [rbp - 0x10]
	mov	rsp, rsp
	mov	eax, 0x180
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdi, rcx
	call	x2nrealloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
.label_500:
	mov	eax, 0x180
	mov	edx, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rsi, rcx
	add	rsi, 1
	nop	
	mov	qword ptr [rbp - 0x48], rsi
	mov	rbp, rbp
	imul	rcx, rcx, 0x180
	add	rcx, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, rcx
	lea	rdi, [rdi]
	call	memcpy
.label_496:
	jmp	.label_499
.label_497:
	lea	rdi, [rdi]
	call	endutxent
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rdx], rcx
	lea	rdi, [rdi]
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409230

	.globl desirable_utmp_entry
	.type desirable_utmp_entry, @function
desirable_utmp_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	nop	
	mov	cl, al
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 4], esi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	eax, byte ptr [rdi + 0x2c]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x11], cl
	lea	rdi, [rdi]
	je	.label_504
	nop	
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, word ptr [rcx]
	cmp	edx, 7
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x12], al
	je	.label_501
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x12], cl
	jmp	.label_501
.label_501:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x12]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], al
.label_504:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 6], al
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 4]
	mov	rsp, rsp
	and	ecx, 2
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_505
	nop	
	test	byte ptr [rbp - 6], 1
	jne	.label_505
	mov	byte ptr [rbp - 5], 0
	jmp	.label_502
.label_505:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	and	eax, 1
	cmp	eax, 0
	je	.label_503
	nop	
	test	byte ptr [rbp - 6], 1
	je	.label_503
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	eax, dword ptr [rcx + 4]
	jge	.label_503
	nop	
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	edi, dword ptr [rax + 4]
	nop	
	call	kill
	mov	rbp, rbp
	cmp	eax, 0
	nop	
	jge	.label_503
	call	__errno_location
	cmp	dword ptr [rax], 3
	lea	rdi, [rdi]
	jne	.label_503
	mov	byte ptr [rbp - 5], 0
	mov	rsp, rsp
	jmp	.label_502
.label_503:
	mov	byte ptr [rbp - 5], 1
.label_502:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 5]
	lea	rsi, [rsi]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409360

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
	jne	.label_506
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_509
.label_506:
	mov	rbp, rbp
	jmp	.label_507
.label_507:
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
	jne	.label_508
	jmp	.label_510
.label_508:
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
	je	.label_507
.label_510:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x1a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_509:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409450

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
	jne	.label_513
	test	byte ptr [rbp - 0x15], 1
	je	.label_512
	test	byte ptr [rbp - 0x16], 1
	lea	rsi, [rsi]
	jne	.label_513
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_512
.label_513:
	nop	
	test	byte ptr [rbp - 0x15], 1
	mov	rsp, rsp
	jne	.label_511
	call	__errno_location
	mov	dword ptr [rax], 0
.label_511:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0xffffffff
	jmp	.label_514
.label_512:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], 0
.label_514:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409530

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
	jne	.label_516
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_516:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_515
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.1_5
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_515:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4095b0

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
	jge	.label_521
	mov	rdi, qword ptr [rbp - 8]
	call	fclose
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	jmp	.label_519
.label_521:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_518
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
	je	.label_517
.label_518:
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_517
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_517:
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_520
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
.label_520:
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x10], eax
.label_519:
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
	.align	32
	#Procedure 0x4096d0

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
	je	.label_522
	mov	rdi, qword ptr [rbp - 8]
	call	__freading
	cmp	eax, 0
	jne	.label_523
.label_522:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_524
.label_523:
	mov	rdi, qword ptr [rbp - 8]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
.label_524:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409740

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
	je	.label_525
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
.label_525:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4097a0

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
	jne	.label_526
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_526
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_526
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
	jne	.label_527
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	jmp	.label_528
.label_527:
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
	jmp	.label_528
.label_526:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
.label_528:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4098b0

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
	ja	.label_529
	jmp	.label_531
.label_531:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_530
.label_529:
	lea	rsi, [rsi]
	jmp	.label_530
.label_530:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
