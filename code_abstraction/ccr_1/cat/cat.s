	.section	.text
	.align	16
	#Procedure 0x401630

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_15
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_stdin_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_15:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401780

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017b0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_28
	nop	
.label_26:
	mov	edi, OFFSET FLAT:label_19
	call	strcmp
	test	eax, eax
	je	.label_24
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_26
.label_24:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_19
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_22
	mov	ecx, OFFSET FLAT:label_23
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_20
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_20
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_20:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_19
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_23
	mov	ecx, OFFSET FLAT:label_19
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_31
	mov	ecx, OFFSET FLAT:label_32
	cmove	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rdx
	mov	rdx, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018d0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1c8
	mov	r14, rsi
	mov	ebp, edi
	call	getpagesize
	cdqe	
	mov	qword ptr [rsp + 0xc8], rax
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_32
	call	setlocale
	mov	edi, OFFSET FLAT:label_35
	mov	esi, OFFSET FLAT:label_36
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_35
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	eax, eax
	mov	qword ptr [rsp + 0xa0], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0xb0], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0xa8], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0xb8], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0xe8], rax
	xor	eax, eax
	jmp	.label_45
	nop	word ptr cs:[rax + rax]
.label_37:
	mov	al, 1
.label_45:
	mov	qword ptr [rsp + 0xc0], rax
	jmp	.label_50
	nop	dword ptr [rax]
.label_62:
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
.label_50:
	mov	edx, OFFSET FLAT:label_56
	mov	ecx, OFFSET FLAT:main.long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x40
	jle	.label_60
	add	eax, -0x41
	cmp	eax, 0x35
	ja	.label_40
	jmp	qword ptr [word ptr [+ (rax * 8) + label_61]]
.label_373:
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	mov	al, 1
	mov	qword ptr [rsp + 0xb0], rax
	jmp	.label_62
.label_376:
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	jmp	.label_62
.label_377:
	mov	al, 1
	mov	qword ptr [rsp + 0xb8], rax
	jmp	.label_50
.label_378:
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
.label_374:
	mov	al, 1
	mov	qword ptr [rsp + 0xb0], rax
	jmp	.label_50
.label_379:
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	jmp	.label_50
	nop	dword ptr [rax]
.label_375:
	mov	al, 1
	mov	qword ptr [rsp + 0xe8], rax
	jmp	.label_37
.label_60:
	cmp	eax, -1
	jne	.label_39
	lea	rsi, [rsp + 0x138]
	mov	edi, 1
	call	fstat
	test	eax, eax
	js	.label_41
	lea	rsi, [rsp + 0x138]
	mov	ecx, 0x12
	mov	rdi, rsp
	rep movsq	qword ptr [rdi], qword ptr [rsi]
	call	io_blksize
	mov	r15, rax
	mov	rax, qword ptr [rsp + 0x138]
	mov	qword ptr [rsp + 0x130], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	qword ptr [rsp + 0x128], rax
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x150]
	mov	dword ptr [rsp + 0xe4], eax
	mov	rax, qword ptr [rsp + 0xa8]
	mov	rcx, qword ptr [rsp + 0xc0]
	or	al, cl
	sete	bl
	mov	rax, qword ptr [rsp + 0xb8]
	test	al, al
	jne	.label_46
	test	bl, bl
	je	.label_46
	mov	edi, 1
	xor	esi, esi
	call	xset_binary_mode
.label_46:
	mov	qword ptr [word ptr [rip + infile]], OFFSET FLAT:label_63
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0xa0]
	or	al, cl
	mov	rcx, qword ptr [rsp + 0xb8]
	or	al, cl
	sete	al
	and	al, bl
	mov	byte ptr [rsp + 0x97], al
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rcx, [rax - 1]
	mov	qword ptr [rsp + 0x100], rcx
	lea	rax, [rax + r15 + 0x12]
	mov	qword ptr [rsp + 0xf8], rax
	movsxd	r13,  dword ptr [dword ptr [rip + optind]]
	movsxd	rbp, ebp
	mov	al, 1
	mov	qword ptr [rsp + 0x98], rax
	lea	rbx, [rsp + 0x138]
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	qword ptr [rsp + 0x110], r14
	mov	qword ptr [rsp + 0x108], r15
	mov	qword ptr [rsp + 0x120], rbp
	nop	word ptr cs:[rax + rax]
.label_66:
	cmp	r13, rbp
	jge	.label_47
	mov	rax, qword ptr [r14 + r13*8]
	mov	qword ptr [word ptr [rip + infile]],  rax
.label_47:
	mov	rax,  qword ptr [word ptr [rip + infile]]
	cmp	byte ptr [rax], 0x2d
	jne	.label_49
	cmp	byte ptr [rax + 1], 0
	je	.label_52
.label_49:
	mov	rdi,  qword ptr [word ptr [rip + infile]]
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	dword ptr [dword ptr [rip + input_desc]],  eax
	test	eax, eax
	jns	.label_58
	jmp	.label_59
.label_52:
	mov	dword ptr [dword ptr [rip + input_desc]],  0
	mov	al, 1
	mov	qword ptr [rsp + 0xf0], rax
.label_58:
	mov	edi,  dword ptr [dword ptr [rip + input_desc]]
	mov	rsi, rbx
	call	fstat
	test	eax, eax
	js	.label_64
	mov	ecx, 0x12
	mov	rdi, rsp
	mov	rsi, rbx
	rep movsq	qword ptr [rdi], qword ptr [rsi]
	call	io_blksize
	mov	rbx, rax
	mov	edi,  dword ptr [dword ptr [rip + input_desc]]
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 2
	call	fdadvise
	cmp	dword ptr [rsp + 0xe4], 0x8000
	jne	.label_34
	mov	rax, qword ptr [rsp + 0x130]
	cmp	qword ptr [rsp + 0x138], rax
	jne	.label_34
	mov	rax, qword ptr [rsp + 0x128]
	cmp	qword ptr [rsp + 0x140], rax
	jne	.label_34
	mov	edi,  dword ptr [dword ptr [rip + input_desc]]
	xor	esi, esi
	mov	edx, 1
	call	lseek
	cmp	rax, qword ptr [rsp + 0x168]
	jge	.label_34
	xor	eax, eax
	mov	qword ptr [rsp + 0x98], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_44
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_38
	nop	dword ptr [rax]
.label_34:
	cmp	byte ptr [rsp + 0x97], 0
	je	.label_57
	cmp	rbx, r15
	cmovbe	rbx, r15
	mov	rax, qword ptr [rsp + 0x100]
	lea	rdi, [rax + rbx]
	call	xmalloc
	mov	rbp, rax
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0xc8]
	call	ptr_align
	mov	rdi, rax
	mov	rsi, rbx
	call	simple_cat
	mov	ebx, eax
	jmp	.label_65
	nop	dword ptr [rax + rax]
.label_64:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	xor	eax, eax
	mov	qword ptr [rsp + 0x98], rax
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_33
	xor	eax, eax
	mov	esi, ebx
	call	error
	jmp	.label_38
.label_57:
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0xb8]
	test	al, al
	setne	cl
	mov	dword ptr [rsp + 0xd0], ecx
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0xa8]
	test	al, al
	setne	cl
	mov	dword ptr [rsp + 0xd8], ecx
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0xe8]
	test	al, al
	setne	cl
	mov	dword ptr [rsp + 0xd4], ecx
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0xb0]
	test	al, al
	setne	cl
	mov	dword ptr [rsp + 0xe0], ecx
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0xa0]
	test	cl, cl
	setne	al
	mov	dword ptr [rsp + 0xdc], eax
	xor	r14d, r14d
	mov	rax, qword ptr [rsp + 0xc0]
	test	al, al
	setne	r14b
	mov	r15, qword ptr [rsp + 0xc8]
	lea	rdi, [rbx + r15]
	call	xmalloc
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0xf8]
	lea	rdi, [rax + rbx*4]
	call	xmalloc
	mov	r12, rax
	mov	rdi, rbp
	mov	rsi, r15
	call	ptr_align
	mov	qword ptr [rsp + 0x118], rax
	mov	rdi, r12
	mov	rsi, r15
	call	ptr_align
	mov	ecx, dword ptr [rsp + 0xd0]
	mov	dword ptr [rsp + 0x18], ecx
	mov	r15, qword ptr [rsp + 0x108]
	mov	ecx, dword ptr [rsp + 0xd8]
	mov	dword ptr [rsp + 0x10], ecx
	mov	ecx, dword ptr [rsp + 0xd4]
	mov	dword ptr [rsp + 8], ecx
	mov	dword ptr [rsp], r14d
	mov	r14, qword ptr [rsp + 0x110]
	mov	rdi, qword ptr [rsp + 0x118]
	mov	rsi, rbx
	mov	rdx, rax
	mov	rcx, r15
	mov	r8d, dword ptr [rsp + 0xdc]
	mov	r9d, dword ptr [rsp + 0xe0]
	call	cat
	mov	ebx, eax
	mov	rdi, r12
	call	free
.label_65:
	mov	rax, qword ptr [rsp + 0x98]
	and	al, bl
	mov	qword ptr [rsp + 0x98], rax
	mov	rdi, rbp
	call	free
	mov	rbp, qword ptr [rsp + 0x120]
.label_38:
	mov	rax,  qword ptr [word ptr [rip + infile]]
	cmp	byte ptr [rax], 0x2d
	jne	.label_48
	cmp	byte ptr [rax + 1], 0
	je	.label_51
.label_48:
	mov	edi,  dword ptr [dword ptr [rip + input_desc]]
	call	close
	test	eax, eax
	lea	rbx, [rsp + 0x138]
	jns	.label_53
.label_59:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	xor	eax, eax
	mov	qword ptr [rsp + 0x98], rax
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_33
	xor	eax, eax
	mov	esi, ebx
	lea	rbx, [rsp + 0x138]
	call	error
	jmp	.label_53
.label_51:
	lea	rbx, [rsp + 0x138]
	nop	word ptr [rax + rax]
.label_53:
	inc	r13
	cmp	r13, rbp
	jl	.label_66
	mov	rax, qword ptr [rsp + 0xf0]
	test	al, 1
	je	.label_67
	xor	edi, edi
	call	close
	test	eax, eax
	js	.label_70
.label_67:
	mov	rax, qword ptr [rsp + 0x98]
	not	al
	and	al, 1
	movzx	eax, al
	add	rsp, 0x1c8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_39:
	cmp	eax, 0xffffff7d
	je	.label_68
	cmp	eax, 0xffffff7e
	jne	.label_40
	xor	edi, edi
	call	usage
.label_68:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_19
	mov	edx, OFFSET FLAT:label_22
	mov	r8d, OFFSET FLAT:label_42
	mov	r9d, OFFSET FLAT:label_43
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_40:
	mov	edi, 1
	call	usage
.label_41:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_54
	jmp	.label_55
.label_70:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
.label_55:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401fc0

	.globl io_blksize
	.type io_blksize, @function
io_blksize:
	mov	rcx, qword ptr [rsp + 0x40]
	test	rcx, rcx
	setle	al
	movabs	rdx, 0x2000000000000000
	cmp	rcx, rdx
	seta	dl
	cmp	rcx, 0x20000
	jl	.label_71
	or	al, dl
	jne	.label_71
	movabs	rax, 0x2000000000000001
	cmp	rcx, rax
	mov	edx, 0x200
	mov	eax, 0x200
	cmovb	rax, rcx
	test	rcx, rcx
	cmovle	rax, rdx
	ret	
.label_71:
	mov	eax, 0x20000
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402020

	.globl simple_cat
	.type simple_cat, @function
simple_cat:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	nop	dword ptr [rax]
.label_75:
	mov	edi,  dword ptr [dword ptr [rip + input_desc]]
	mov	rsi, r15
	mov	rdx, r14
	call	safe_read
	mov	rbx, rax
	mov	bpl, 1
	test	rbx, rbx
	je	.label_72
	cmp	rbx, -1
	je	.label_74
	mov	edi, 1
	mov	rsi, r15
	mov	rdx, rbx
	call	full_write
	cmp	rax, rbx
	je	.label_75
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_73
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_74:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_33
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_72:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4020d0

	.globl ptr_align
	.type ptr_align, @function
ptr_align:
	lea	rcx, [rdi + rsi - 1]
	xor	edx, edx
	mov	rax, rcx
	div	rsi
	sub	rcx, rdx
	mov	rax, rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4020f0

	.globl cat
	.type cat, @function
cat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	dword ptr [rsp + 0x20], r8d
	mov	r15, rcx
	mov	qword ptr [rsp + 0x30], rsi
	mov	al, byte ptr [rsp + 0x88]
	mov	cl, byte ptr [rsp + 0x80]
	mov	bl, byte ptr [rsp + 0x98]
	mov	esi,  dword ptr [dword ptr [rip + newlines2]]
	lea	r14, [rdi + 1]
	mov	qword ptr [rsp], rdx
	mov	qword ptr [rsp + 0x10], rdx
	lea	r13, [rdx + r15]
	xor	bl, 1
	mov	byte ptr [rsp + 0xe], bl
	xor	cl, 1
	mov	byte ptr [rsp + 0xc], cl
	or	al, cl
	mov	byte ptr [rsp + 0xd], al
	mov	dword ptr [rsp + 0x24], r9d
	mov	r12d, r9d
	xor	r12b, 1
	mov	al, 1
	mov	dword ptr [rsp + 0x18], eax
	mov	qword ptr [rsp + 0x28], rdi
	mov	rbp, rdi
	mov	byte ptr [rsp + 0xf], r12b
	jmp	.label_85
	nop	
.label_81:
	mov	rbp, rax
	mov	rcx, qword ptr [rsp + 0x28]
	add	rbp, rcx
	mov	byte ptr [rcx + rax], 0xa
	mov	r14, rcx
	mov	rsi, rbx
	jmp	.label_84
	nop	word ptr [rax + rax]
.label_105:
	lea	ebx, [rsi + 1]
	test	esi, esi
	js	.label_82
	sete	al
	mov	esi, 2
	cmovne	ebx, esi
	or	al, byte ptr [rsp + 0xe]
	cmp	al, 1
	jne	.label_84
	cmp	byte ptr [rsp + 0xd], 0
	jne	.label_82
	call	next_line_num
	mov	rdi, qword ptr [rsp]
	mov	rsi,  qword ptr [word ptr [rip + line_num_print]]
	call	stpcpy
	mov	qword ptr [rsp], rax
.label_82:
	mov	esi, ebx
	cmp	byte ptr [rsp + 0x90], 0
	je	.label_97
	mov	rax, qword ptr [rsp]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp], rcx
	mov	byte ptr [rax], 0x24
.label_97:
	mov	rax, qword ptr [rsp]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp], rcx
	mov	byte ptr [rax], 0xa
.label_84:
	mov	bl, byte ptr [r14]
	inc	r14
	cmp	bl, 0xa
	je	.label_85
	test	esi, esi
	sets	al
	or	al, byte ptr [rsp + 0xc]
	jne	.label_78
	call	next_line_num
	mov	rdi, qword ptr [rsp]
	mov	rsi,  qword ptr [word ptr [rip + line_num_print]]
	call	stpcpy
	mov	qword ptr [rsp], rax
.label_78:
	mov	eax, dword ptr [rsp + 0x20]
	test	al, al
	je	.label_87
	jmp	.label_91
	nop	word ptr cs:[rax + rax]
.label_89:
	movzx	ebx, byte ptr [r14]
	inc	r14
.label_91:
	cmp	bl, 0x20
	jb	.label_96
	cmp	bl, 0x7e
	jbe	.label_93
	mov	rax, qword ptr [rsp]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp], rcx
	cmp	bl, 0x7f
	je	.label_100
	mov	byte ptr [rax], 0x4d
	mov	rax, qword ptr [rsp]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp], rcx
	mov	byte ptr [rax], 0x2d
	cmp	bl, 0xa0
	jb	.label_104
	cmp	bl, 0xff
	je	.label_79
	xor	bl, 0x80
	jmp	.label_93
	nop	dword ptr [rax + rax]
.label_96:
	cmp	bl, 9
	jne	.label_83
	mov	eax, dword ptr [rsp + 0x24]
	test	al, al
	jne	.label_83
	mov	rax, qword ptr [rsp]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp], rcx
	mov	byte ptr [rax], 9
	jmp	.label_89
	nop	
.label_83:
	mov	esi, 0xffffffff
	cmp	bl, 0xa
	je	.label_85
	mov	rax, qword ptr [rsp]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp], rcx
	mov	byte ptr [rax], 0x5e
	add	bl, 0x40
	jmp	.label_93
.label_104:
	mov	rax, qword ptr [rsp]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp], rcx
	mov	byte ptr [rax], 0x5e
	add	bl, 0xc0
	nop	word ptr cs:[rax + rax]
.label_93:
	mov	rax, qword ptr [rsp]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp], rcx
	mov	byte ptr [rax], bl
	jmp	.label_89
.label_79:
	mov	rax, qword ptr [rsp]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp], rcx
.label_100:
	mov	byte ptr [rax], 0x5e
	mov	rax, qword ptr [rsp]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp], rcx
	mov	byte ptr [rax], 0x3f
	jmp	.label_89
	nop	word ptr cs:[rax + rax]
.label_94:
	mov	rax, qword ptr [rsp]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp], rcx
	mov	byte ptr [rax], bl
	movzx	ebx, byte ptr [r14]
	inc	r14
.label_87:
	cmp	bl, 9
	setne	al
	or	al, r12b
	je	.label_95
	mov	esi, 0xffffffff
	cmp	bl, 0xa
	jne	.label_94
	jmp	.label_85
	nop	dword ptr [rax]
.label_95:
	mov	rax, qword ptr [rsp]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp], rcx
	mov	byte ptr [rax], 0x5e
	add	bl, 0x40
	jmp	.label_94
	nop	word ptr cs:[rax + rax]
.label_85:
	cmp	r13, qword ptr [rsp]
	ja	.label_76
	mov	qword ptr [rsp + 0x38], rsi
	mov	qword ptr [rsp + 0x40], rbp
	mov	rbx, qword ptr [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_92:
	mov	edi, 1
	mov	rsi, rbx
	mov	rdx, r15
	call	full_write
	cmp	rax, r15
	jne	.label_90
	add	rbx, r15
	mov	rbp, qword ptr [rsp]
	sub	rbp, rbx
	cmp	rbp, r15
	jae	.label_92
	mov	r12, r13
	mov	r13, qword ptr [rsp + 0x10]
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, rbp
	call	memmove
	add	rbp, r13
	mov	r13, r12
	mov	r12b, byte ptr [rsp + 0xf]
	mov	qword ptr [rsp], rbp
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x38]
.label_76:
	cmp	r14, rbp
	jbe	.label_105
	mov	rbx, rsi
	mov	dword ptr [rsp + 0x1c], 0
	mov	eax, dword ptr [rsp + 0x18]
	test	al, 1
	je	.label_77
	mov	edi,  dword ptr [dword ptr [rip + input_desc]]
	mov	esi, 0x541b
	xor	eax, eax
	lea	rdx, [rsp + 0x1c]
	call	ioctl
	test	eax, eax
	jns	.label_88
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	dword ptr [rsp + 0x18], 0
	cmp	r14, 0x26
	ja	.label_86
	movabs	rax, 0x4002480000
	bt	rax, r14
	jb	.label_88
.label_86:
	cmp	r14d, 0x5f
	jne	.label_99
	nop	
.label_88:
	cmp	dword ptr [rsp + 0x1c], 0
	jne	.label_102
.label_77:
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rsi, [rsp]
	call	write_pending
.label_102:
	mov	edi,  dword ptr [dword ptr [rip + input_desc]]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x30]
	call	safe_read
	test	rax, rax
	je	.label_80
	cmp	rax, -1
	jne	.label_81
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_33
	xor	eax, eax
	mov	esi, r14d
	call	error
	lea	rsi, [rsp]
	mov	rdi, qword ptr [rsp + 0x10]
	call	write_pending
	jmp	.label_101
.label_80:
	lea	rsi, [rsp]
	mov	rdi, qword ptr [rsp + 0x10]
	call	write_pending
	mov	dword ptr [dword ptr [rip + newlines2]],  ebx
	mov	bpl, 1
	jmp	.label_103
.label_99:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_98
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rsi,  qword ptr [word ptr [rip + infile]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r15
	call	error
.label_101:
	mov	dword ptr [dword ptr [rip + newlines2]],  ebx
.label_103:
	mov	eax, ebp
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_90:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_73
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x402570

	.globl write_pending
	.type write_pending, @function
write_pending:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	mov	rbx, qword ptr [r14]
	sub	rbx, r15
	je	.label_106
	mov	edi, 1
	mov	rsi, r15
	mov	rdx, rbx
	call	full_write
	cmp	rax, rbx
	jne	.label_107
	mov	qword ptr [r14], r15
.label_106:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_107:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_73
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4025d0

	.globl next_line_num
	.type next_line_num, @function
next_line_num:
	mov	rsi,  qword ptr [word ptr [rip + line_num_start]]
	mov	ecx, OFFSET FLAT:label_108
	nop	dword ptr [rax]
.label_112:
	movzx	eax, byte ptr [rcx]
	mov	edx, eax
	inc	dl
	mov	byte ptr [rcx], dl
	cmp	al, 0x39
	jl	.label_109
	mov	byte ptr [rcx], 0x30
	dec	rcx
	cmp	rcx, rsi
	jae	.label_112
	mov	eax, OFFSET FLAT:line_buf
	cmp	rsi, rax
	jbe	.label_111
	lea	rax, [rsi - 1]
	mov	qword ptr [word ptr [rip + line_num_start]],  rax
	mov	byte ptr [rsi - 1], 0x31
	jmp	.label_110
.label_111:
	mov	byte ptr [byte ptr [rip + line_buf]],  0x3e
.label_110:
	mov	rax,  qword ptr [word ptr [rip + line_num_print]]
	cmp	qword ptr [word ptr [rip + line_num_start]],  rax
	jae	.label_109
	dec	rax
	mov	qword ptr [word ptr [rip + line_num_print]],  rax
.label_109:
	ret	
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402640
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402650
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402660

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_115
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_113
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_113
.label_115:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_116
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_113:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_73
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_114
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_33
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_116:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_114:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_117
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402720

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402730
	.globl fadvise
	.type fadvise, @function
fadvise:

	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_118
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_118:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402750

	.globl full_write
	.type full_write, @function
full_write:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	ebp, edi
	xor	r14d, r14d
	test	r15, r15
	je	.label_119
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_121:
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r15
	call	safe_write
	cmp	rax, -1
	je	.label_119
	test	rax, rax
	je	.label_120
	add	r14, rax
	add	rbx, rax
	sub	r15, rax
	jne	.label_121
	jmp	.label_119
.label_120:
	call	__errno_location
	mov	dword ptr [rax], 0x1c
.label_119:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4027b0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_125
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_127
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_122
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_127
	mov	esi, OFFSET FLAT:label_124
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_123
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_123:
	mov	rbx, r14
.label_127:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_125:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_126
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402860
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_quoting_options
	cmove	rbx, rax
	mov	esi, 0x38
	mov	rdi, rbx
	call	xmemdup
	mov	dword ptr [r14], ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028a0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4028b0
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4028c0

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	mov	ecx, esi
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	cmovne	rsi, rdi
	mov	eax, ecx
	shr	al, 5
	movzx	r8d, al
	mov	r9d, dword ptr [rsi + r8*4 + 8]
	mov	edi, r9d
	shr	edi, cl
	mov	eax, edi
	and	eax, 1
	xor	edi, edx
	and	edi, 1
	shl	edi, cl
	xor	edi, r9d
	mov	dword ptr [rsi + r8*4 + 8], edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402900
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	test	rdi, rdi
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	dword ptr [rcx + 4], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402920

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_128
	test	rdx, rdx
	je	.label_128
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_128:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402950
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbx, rax
	mov	eax, dword ptr [rbx]
	mov	dword ptr [rsp + 4], eax
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	push	qword ptr [rbp + 0x30]
	push	qword ptr [rbp + 0x28]
	lea	rax, [rbp + 8]
	push	rax
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	ecx, dword ptr [rsp + 4]
	mov	dword ptr [rbx], ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4029d0

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	ebx, r9d
	mov	r15d, r8d
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rsp + 0x100]
	mov	qword ptr [rsp + 0x70], rax
	mov	rax, qword ptr [rsp + 0xf8]
	mov	qword ptr [rsp + 0x78], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0xb0], rax
	mov	r12d, ebx
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x90], eax
	mov	dword ptr [rsp + 0x18], ebx
	and	ebx, 4
	mov	dword ptr [rsp + 0x8c], ebx
	mov	r10b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x60], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x38], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa0], rcx
.label_159:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_211
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_165]]
.label_443:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_170
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_178
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_444:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_185
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_185
	xor	r14d, r14d
.label_199:
	cmp	r14, r11
	jae	.label_196
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_196:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_199
.label_185:
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rdi, rbp
	mov	rbx, r11
	call	strlen
	mov	r11, rbx
	mov	qword ptr [rsp + 0x38], rax
	mov	edi, r15d
	mov	qword ptr [rsp + 0x40], rbp
	mov	r13b, 1
	mov	sil, r12b
	mov	r8, qword ptr [rsp + 0x30]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r9d, dword ptr [rsp + 0x48]
	jmp	.label_204
.label_436:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_204
.label_439:
	mov	al, 1
.label_437:
	mov	r12b, 1
.label_440:
	test	r12b, 1
	mov	cl, 1
	je	.label_216
	mov	ecx, eax
.label_216:
	mov	al, cl
.label_438:
	test	r12b, 1
	jne	.label_218
	test	r11, r11
	je	.label_190
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_190:
	mov	r14d, 1
	jmp	.label_223
.label_218:
	xor	r14d, r14d
.label_223:
	mov	ecx, OFFSET FLAT:label_178
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_204
.label_441:
	test	r12b, 1
	jne	.label_231
	test	r11, r11
	je	.label_206
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_206:
	mov	r14d, 1
	jmp	.label_235
.label_442:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_238
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_204
.label_231:
	xor	r14d, r14d
.label_235:
	mov	eax, OFFSET FLAT:label_238
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_204:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r12b
	cmp	edi, 2
	setne	r15b
	sete	bl
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x2b]
	mov	eax, r15d
	mov	byte ptr [rsp + 0x1e], cl
	and	al, cl
	cmp	qword ptr [rsp + 0x38], 0
	setne	cl
	mov	edx, ecx
	mov	byte ptr [rsp + 0x2e], al
	and	dl, al
	mov	byte ptr [rsp + 0x2f], dl
	mov	eax, esi
	and	al, 1
	sete	dl
	and	bl, al
	mov	byte ptr [rsp + 0x2c], bl
	mov	byte ptr [rsp + 7], al
	and	r12b, al
	mov	byte ptr [rsp + 0x2d], r12b
	or	dl, r15b
	mov	byte ptr [rsp + 0x1f], dl
	mov	byte ptr [rsp + 0x1d], r13b
	mov	qword ptr [rsp + 0xa8], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x2a], r13b
	xor	esi, esi
	mov	qword ptr [rsp + 0x68], rdi
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r12, rdi
	mov	rdi, r8
	jmp	.label_139
	nop	dword ptr [rax]
.label_141:
	inc	rsi
.label_139:
	cmp	rbp, -1
	je	.label_177
	cmp	rsi, rbp
	jne	.label_156
	jmp	.label_183
	nop	word ptr cs:[rax + rax]
.label_177:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_183
.label_156:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_187
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_189
	cmp	rbp, -1
	jne	.label_189
	mov	r15d, r10d
	mov	rbp, r11
	mov	r13d, r9d
	mov	r12, r14
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r14, r12
	mov	r9d, r13d
	mov	r12, qword ptr [rsp + 0x68]
	mov	r10d, r15d
	mov	r11, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_189:
	cmp	rbx, rbp
	jbe	.label_203
.label_187:
	xor	r8d, r8d
.label_157:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_205
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_210]]
.label_468:
	test	rsi, rsi
	jne	.label_148
	jmp	.label_213
	nop	
.label_203:
	mov	qword ptr [rsp + 0x20], rbp
	mov	ebp, r9d
	mov	r15d, r10d
	mov	rbx, r11
	mov	r12, rsi
	lea	rdi, [rdi + rsi]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x38]
	call	memcmp
	test	eax, eax
	sete	r8b
	jne	.label_221
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_157
	jmp	.label_138
.label_221:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_157
.label_472:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_240
	test	rsi, rsi
	jne	.label_241
	cmp	rbp, 1
	je	.label_213
	xor	r13d, r13d
	jmp	.label_155
.label_461:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_130
	cmp	byte ptr [rsp + 7], 0
	jne	.label_133
	cmp	r12d, 2
	jne	.label_136
	mov	eax, r9d
	and	al, 1
	jne	.label_136
	cmp	r14, r11
	jae	.label_142
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_142:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_145
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_145:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_229
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_229:
	add	r14, 3
	mov	r9b, 1
.label_136:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_150
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_150:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_160
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_160
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_160
	cmp	r14, r11
	jae	.label_171
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_171:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_167
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_167:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_155
.label_462:
	mov	bl, 0x62
	jmp	.label_184
.label_463:
	mov	cl, 0x74
	jmp	.label_172
.label_464:
	mov	bl, 0x76
	jmp	.label_184
.label_465:
	mov	bl, 0x66
	jmp	.label_184
.label_466:
	mov	cl, 0x72
	jmp	.label_172
.label_469:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_192
	cmp	byte ptr [rsp + 7], 0
	jne	.label_133
	test	r11, r11
	sete	al
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r11
	mov	qword ptr [rsp + 0x60], rdx
	mov	eax, 0
	cmove	r11, rax
	cmp	r14, r11
	jae	.label_201
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_201:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_232
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_232:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_214
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_214:
	add	r14, 3
	xor	r9d, r9d
.label_192:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_155
.label_470:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_220
	cmp	r12d, 2
	jne	.label_148
	cmp	byte ptr [rsp + 7], 0
	je	.label_148
	jmp	.label_133
.label_471:
	cmp	r12d, 2
	jne	.label_228
	cmp	byte ptr [rsp + 7], 0
	jne	.label_133
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_173
.label_205:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_175
	mov	qword ptr [rsp + 0x20], rbp
	mov	rbx, rsi
	call	__ctype_b_loc
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	r12d, 1
.label_134:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_152
	test	r8b, r8b
	je	.label_152
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_155
.label_240:
	test	rsi, rsi
	jne	.label_158
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_158
.label_213:
	mov	dl, 1
.label_467:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_133
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_155:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_166
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_168
	jmp	.label_140
	nop	word ptr cs:[rax + rax]
.label_166:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_140
.label_168:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_179
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_173
	jmp	.label_191
	nop	dword ptr [rax]
.label_140:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_191
	jmp	.label_173
.label_179:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_191
.label_130:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_141
	xor	r15d, r15d
	jmp	.label_148
.label_228:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_172
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_173
.label_172:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_133
.label_184:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_155
	nop	word ptr cs:[rax + rax]
.label_191:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_133
	cmp	r12d, 2
	jne	.label_174
	mov	eax, r9d
	and	al, 1
	jne	.label_174
	cmp	r14, r11
	jae	.label_219
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_219:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_222
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_222:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_225
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_225:
	add	r14, 3
	mov	r9b, 1
.label_174:
	cmp	r14, r11
	jae	.label_230
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_230:
	inc	r14
	jmp	.label_233
.label_175:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_236
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_236:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_193:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_144
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_147
	cmp	rbp, -2
	je	.label_202
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_131
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_200:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_162
	bt	rsi, rdx
	jb	.label_138
.label_162:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_200
.label_131:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_181
	xor	r13d, r13d
.label_181:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_193
	jmp	.label_134
.label_160:
	xor	r13d, r13d
	jmp	.label_155
.label_158:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_155
.label_220:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_148
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_148
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_148
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_151
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_212
	cmp	byte ptr [rsp + 7], 0
	jne	.label_133
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_195
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_195:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_208
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_208:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_182
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_182:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_224
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_224:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_155
.label_148:
	xor	eax, eax
.label_241:
	xor	r13d, r13d
	jmp	.label_155
.label_152:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_234
	nop	word ptr cs:[rax + rax]
.label_198:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_234:
	test	r8b, r8b
	je	.label_242
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_132
	cmp	r14, r11
	jae	.label_243
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_243:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_132
	nop	dword ptr [rax]
.label_242:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_138
	cmp	r12d, 2
	jne	.label_143
	mov	eax, r9d
	and	al, 1
	jne	.label_143
	cmp	r14, r11
	jae	.label_146
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_146:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_194
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_194:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_135
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_135:
	add	r14, 3
	mov	r9b, 1
.label_143:
	cmp	r14, r11
	jae	.label_176
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_176:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_163
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_163:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_169
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_169:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_132:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_173
	test	r9b, 1
	je	.label_186
	mov	ebx, eax
	and	bl, 1
	jne	.label_186
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_188
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_188:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_237
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_237:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_186:
	cmp	r14, r11
	jae	.label_198
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_198
	nop	word ptr cs:[rax + rax]
.label_173:
	test	r9b, 1
	je	.label_207
	and	al, 1
	jne	.label_207
	cmp	r14, r11
	jae	.label_209
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_209:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_149
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_149:
	add	r14, 2
	xor	r9d, r9d
.label_207:
	mov	ebx, r15d
.label_233:
	cmp	r14, r11
	jae	.label_215
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_215:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_141
.label_147:
	xor	r13d, r13d
.label_144:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_134
.label_202:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_226
	mov	rsi, qword ptr [rsp + 0x50]
.label_227:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_137
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_227
	xor	r13d, r13d
	jmp	.label_134
.label_226:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_134
.label_137:
	xor	r13d, r13d
	jmp	.label_134
.label_151:
	xor	r13d, r13d
	jmp	.label_155
.label_212:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_155
	nop	dword ptr [rax + rax]
.label_183:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_129
	or	dl, al
	je	.label_138
.label_129:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_153
	or	dl, al
	jne	.label_153
	test	r10b, 1
	jne	.label_154
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_153
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_159
.label_153:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_161
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_164
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_164
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_180:
	cmp	r14, r11
	jae	.label_239
	mov	byte ptr [rcx + r14], al
.label_239:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_180
	jmp	.label_164
.label_133:
	mov	qword ptr [rsp + 0x20], rbp
.label_138:
	mov	rdx, rdi
	mov	r9d, dword ptr [rsp + 0x18]
	test	byte ptr [rsp + 0x1d], 1
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x68]
	cmove	r8d, eax
	cmp	eax, 2
	cmovne	r8d, eax
	and	r9d, 0xfffffffd
	sub	rsp, 8
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r11
	mov	rcx, qword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	0
	call	quotearg_buffer_restyled
	add	rsp, 0x20
.label_217:
	mov	r14, rax
.label_197:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_154:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, dword ptr [rsp + 0x20]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	qword ptr [rsp + 0x108]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_217
.label_161:
	mov	rcx, qword ptr [rsp + 8]
.label_164:
	cmp	r14, r11
	jae	.label_197
	mov	byte ptr [rcx + r14], 0
	jmp	.label_197
.label_211:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403790
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037a0

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x10], r14
	mov	r15, rdi
	mov	qword ptr [rsp + 8], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	cmovne	r12, rcx
	call	__errno_location
	mov	qword ptr [rsp + 0x20], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 4], ecx
	xor	ebp, ebp
	test	rbx, rbx
	sete	bpl
	or	ebp, dword ptr [r12 + 4]
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	sub	rsp, 8
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	mov	r9d, ebp
	push	qword ptr [r12 + 0x30]
	push	qword ptr [r12 + 0x28]
	push	r13
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rbx, rax
	lea	r15, [rbx + 1]
	mov	rdi, r15
	call	xcharalloc
	mov	r14, rax
	mov	r8d, dword ptr [r12]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r9d, ebp
	push	qword ptr [r12 + 0x30]
	push	qword ptr [r12 + 0x28]
	push	r13
	call	quotearg_buffer_restyled
	mov	rax, qword ptr [rsp + 0x38]
	add	rsp, 0x20
	test	rax, rax
	mov	ecx, dword ptr [rsp + 4]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	dword ptr [rdx], ecx
	je	.label_244
	mov	qword ptr [rax], rbx
.label_244:
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403890
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_245
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_247:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_247
.label_245:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_248
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_249]], OFFSET FLAT:slot0
.label_248:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_246
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_246:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403930

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x403940

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rcx
	mov	r15, rdx
	mov	qword ptr [rsp + 0x20], rsi
	mov	r12d, edi
	call	__errno_location
	mov	r13, rax
	test	r12d, r12d
	js	.label_250
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_253
	cmp	r12d, 0x7fffffff
	je	.label_255
	mov	ebx, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, rbx
	cmovne	rdi, rbp
	lea	r15d, [r12 + 1]
	movsxd	rsi, r12d
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, rbx
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_251
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_251:
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	add	rdi, rax
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [dword ptr [rip + nslots]],  ebp
	mov	rbp, r14
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 8]
.label_253:
	movsxd	r13, r12d
	shl	r13, 4
	mov	r12, qword ptr [rbp + r13]
	mov	r14, qword ptr [rbp + r13 + 8]
	mov	r8d, dword ptr [rbx]
	mov	r9d, dword ptr [rbx + 4]
	or	r9d, 1
	lea	rax, [rbx + 8]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, r15
	mov	dword ptr [rsp + 0xc], r9d
	push	qword ptr [rbx + 0x30]
	push	qword ptr [rbx + 0x28]
	mov	rbx, rax
	push	rbx
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	r15, rax
	cmp	r12, r15
	jbe	.label_256
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_252
.label_256:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_254
	mov	rdi, r14
	call	free
.label_254:
	mov	rdi, r15
	call	xcharalloc
	mov	r14, rax
	mov	qword ptr [r12], r14
	mov	rax, qword ptr [rsp + 0x10]
	mov	r8d, dword ptr [rax]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0xc]
	push	qword ptr [rax + 0x30]
	push	qword ptr [rax + 0x28]
	push	rbx
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rax, qword ptr [rsp + 0x18]
.label_252:
	mov	dword ptr [rax], ebp
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_250:
	call	abort
.label_255:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403b00

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b10
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403b20
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quotearg_n_mem
	.section	.text
	.align	16
	#Procedure 0x403b30

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	rbx, rdx
	mov	ebp, edi
	lea	r14, [rsp + 8]
	mov	rdi, r14
	call	quoting_options_from_style
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, rbx
	mov	rcx, r14
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b70

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	sub	rsp, 0x38
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_257
	mov	dword ptr [rdi], esi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rdi + 0x34], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rdi + 0x24], xmm2
	movups	xmmword ptr [rdi + 0x14], xmm1
	movups	xmmword ptr [rdi + 4], xmm0
	mov	rax, rdi
	add	rsp, 0x38
	ret	
.label_257:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403bd0

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x38
	mov	r14, rcx
	mov	rbx, rdx
	mov	ebp, edi
	lea	r15, [rsp]
	mov	rdi, r15
	call	quoting_options_from_style
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403c10

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	mov	rax, rsi
	mov	ecx, edi
	xor	edi, edi
	mov	esi, ecx
	mov	rdx, rax
	jmp	quotearg_n_style
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c30
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	mov	rax, rdx
	mov	rcx, rsi
	mov	edx, edi
	xor	edi, edi
	mov	esi, edx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_style_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c50

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	eax, edx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_258]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_259]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_260]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	edx, 1
	mov	rdi, r15
	mov	esi, eax
	call	set_char_quoting
	xor	edi, edi
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403cc0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403cd0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ce0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403cf0

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r14, rdx
	mov	ebp, edi
	lea	rbx, [rsp + 8]
	mov	rdi, rbx
	call	quoting_options_from_style
	mov	esi, 0x3a
	mov	edx, 1
	mov	rdi, rbx
	call	set_char_quoting
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, r14
	mov	rcx, rbx
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403d40

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403d50

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x38
	mov	r14, r8
	mov	rbx, rcx
	mov	ebp, edi
	mov	rax,  qword ptr [word ptr [rip + label_258]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_259]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_260]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	rdi, r15
	call	set_custom_quoting
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403dc0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rax, rdx
	mov	rcx, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_custom
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403de0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	rsi, rdi
	xor	edi, edi
	mov	r8, rax
	jmp	quotearg_n_custom_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e00

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e10
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x403e20

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403e30
	.globl quote
	.type quote, @function
quote:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e40

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_268
	call	locale_charset
	mov	rbp, rax
	mov	esi, 0x55
	mov	edx, 0x54
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	push	0
	push	0
	call	strcaseeq0
	add	rsp, 0x10
	test	eax, eax
	je	.label_265
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_266
	mov	eax, OFFSET FLAT:label_267
	jmp	.label_263
.label_265:
	mov	esi, 0x47
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	r8d, 0x38
	mov	r9d, 0x30
	mov	rdi, rbp
	push	0x30
	push	0x33
	call	strcaseeq0
	add	rsp, 0x10
	test	eax, eax
	je	.label_264
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_261
	mov	eax, OFFSET FLAT:label_262
	jmp	.label_263
.label_264:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_238
	mov	eax, OFFSET FLAT:label_178
.label_263:
	cmove	rax, rcx
.label_268:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403f00

	.globl strcaseeq0
	.type strcaseeq0, @function
strcaseeq0:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx]
	test	al, al
	je	.label_269
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_271
	jmp	.label_270
.label_269:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_270
.label_271:
	mov	eax, 1
	test	bpl, bpl
	je	.label_270
	mov	al, byte ptr [rsp + 0x40]
	movsx	ecx, byte ptr [rsp + 0x48]
	mov	dword ptr [rsp], ecx
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	movsx	r9d, al
	mov	rdi, rbx
	call	strcaseeq1
.label_270:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403f80

	.globl strcaseeq1
	.type strcaseeq1, @function
strcaseeq1:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	dword ptr [rsp + 4], r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	r14b, byte ptr [rsp + 0x40]
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 1]
	test	al, al
	je	.label_274
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_272
	jmp	.label_273
.label_274:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_273
.label_272:
	mov	eax, 1
	test	bpl, bpl
	je	.label_273
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	mov	eax, dword ptr [rsp + 4]
	movsx	r8d, al
	movsx	r9d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq2
.label_273:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404010

	.globl strcaseeq2
	.type strcaseeq2, @function
strcaseeq2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 2]
	test	al, al
	je	.label_275
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_277
	jmp	.label_276
.label_275:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_276
.label_277:
	mov	eax, 1
	test	bpl, bpl
	je	.label_276
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq3
.label_276:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404090

	.globl strcaseeq3
	.type strcaseeq3, @function
strcaseeq3:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14d, r8d
	mov	r15d, ecx
	mov	r12d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 3]
	test	al, al
	je	.label_280
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_279
	jmp	.label_278
.label_280:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_278
.label_279:
	mov	eax, 1
	test	bpl, bpl
	je	.label_278
	movsx	esi, r12b
	movsx	edx, r15b
	movsx	ecx, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq4
.label_278:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404100

	.globl strcaseeq4
	.type strcaseeq4, @function
strcaseeq4:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, ecx
	mov	r15d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 4]
	test	al, al
	je	.label_283
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_281
	jmp	.label_282
.label_283:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_282
.label_281:
	mov	eax, 1
	test	bpl, bpl
	je	.label_282
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_282:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404160

	.globl strcaseeq5
	.type strcaseeq5, @function
strcaseeq5:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 5]
	test	al, al
	je	.label_284
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_286
	jmp	.label_285
.label_284:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_285
.label_286:
	mov	eax, 1
	test	bpl, bpl
	je	.label_285
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_285:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4041b0

	.globl strcaseeq6
	.type strcaseeq6, @function
strcaseeq6:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 6]
	test	al, al
	je	.label_289
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_288
	jmp	.label_287
.label_289:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_287
.label_288:
	mov	eax, 1
	test	bpl, bpl
	je	.label_287
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_287:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404200

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_292
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_291
	jmp	.label_290
.label_292:
	mov	eax, 1
	test	cl, cl
	je	.label_290
.label_291:
	xor	eax, eax
.label_290:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404230

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
	mov	r12d, 0x7ff00000
	nop	word ptr [rax + rax]
.label_294:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_293
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_294
	cmp	eax, 0x16
	sete	cl
	cmp	rbx, 0x7ff00000
	seta	dl
	and	dl, cl
	mov	rcx, rbx
	cmovne	rcx, r12
	test	dl, dl
	cmovne	rbp, r13
	cmp	rbx, 0x7ff00001
	jb	.label_293
	cmp	eax, 0x16
	mov	rbx, rcx
	mov	r13, rbp
	je	.label_294
.label_293:
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042c0

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
	mov	r12d, 0x7ff00000
	nop	word ptr [rax + rax]
.label_296:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	write
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_295
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_296
	cmp	eax, 0x16
	sete	cl
	cmp	rbx, 0x7ff00000
	seta	dl
	and	dl, cl
	mov	rcx, rbx
	cmovne	rcx, r12
	test	dl, dl
	cmovne	rbp, r13
	cmp	rbx, 0x7ff00001
	jb	.label_295
	cmp	eax, 0x16
	mov	rbx, rcx
	mov	r13, rbp
	je	.label_296
.label_295:
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404350

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, r9
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_307
	mov	edx, OFFSET FLAT:label_312
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_299
.label_307:
	mov	edx, OFFSET FLAT:label_301
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_299:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_306
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	r8d, 0x7e3
	xor	eax, eax
	mov	rdi, r14
	call	__fprintf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_302
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_308
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_309]]
.label_426:
	add	rsp, 8
	jmp	.label_300
.label_308:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_315
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_300
.label_427:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_303
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_428:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_297
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_429:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_313
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_430:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_310
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_300
.label_431:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_305
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_300
.label_432:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_311
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_300
.label_433:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_314
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_300
.label_435:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_298
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_300
.label_434:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_304
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
.label_300:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046b0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_316:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_316
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046e0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_318:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_317
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_319
	nop	dword ptr [rax]
.label_317:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_319:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_320
	inc	r9
	cmp	r9, 0xa
	jb	.label_318
.label_320:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404740

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_321
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_321:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x20
	lea	r8, [rsp]
	call	version_etc_va
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047d0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_322
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_323
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_325
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_22
	mov	ecx, OFFSET FLAT:label_23
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_324
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404850
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_326
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_326:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404880

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_327
	test	rax, rax
	je	.label_328
.label_327:
	pop	rbx
	ret	
.label_328:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048a0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_329
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_329:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048d0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_330
	test	rbx, rbx
	jne	.label_330
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_330:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_332
	test	rax, rax
	je	.label_331
.label_332:
	pop	rbx
	ret	
.label_331:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404900

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_333
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_336
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_334
.label_333:
	test	rcx, rcx
	jne	.label_337
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_337:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_335
.label_334:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_336:
	call	xalloc_die
.label_335:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404980

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404990
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049a0
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	xmalloc
	mov	rbx, rax
	xor	esi, esi
	mov	rdi, rbx
	mov	rdx, r14
	call	memset
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049d0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_338
	call	rpl_calloc
	test	rax, rax
	je	.label_338
	pop	rcx
	ret	
.label_338:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a00

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	mov	rdi, r15
	call	xmalloc
	mov	rbx, rax
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404a30
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	rbx
	mov	rbx, rdi
	call	strlen
	lea	rsi, [rax + 1]
	mov	rdi, rbx
	pop	rbx
	jmp	xmemdup
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a50

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_339
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_33
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404a80
	.globl xset_binary_mode_error
	.type xset_binary_mode_error, @function
xset_binary_mode_error:

	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a90

	.globl xset_binary_mode
	.type xset_binary_mode, @function
xset_binary_mode:
	jmp	set_binary_mode
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404aa0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_340
	test	rsi, rsi
	mov	ecx, 1
	je	.label_341
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_341
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_340:
	mov	ecx, 1
.label_341:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404af0

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, rdx
	mov	r14, rsi
	test	rdi, rdi
	lea	rbx, [rsp + 4]
	cmovne	rbx, rdi
	mov	rdi, rbx
	call	mbrtowc
	mov	r15, rax
	test	r12, r12
	je	.label_342
	cmp	r15, -2
	jb	.label_342
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_342
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_342:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b50
	.globl __gl_setmode
	.type __gl_setmode, @function
__gl_setmode:

	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b60
	.globl __gl_setmode_check
	.type __gl_setmode_check, @function
__gl_setmode_check:

	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b70

	.globl set_binary_mode
	.type set_binary_mode, @function
set_binary_mode:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b80
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_343
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_343
.label_344:
	ret	
.label_343:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_344
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404bb0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_345
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_345:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404bd0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404be0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	cmp	edi, 0x20
	sete	cl
	cmp	edi, 9
	sete	al
	or	al, cl
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404bf0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_346
.label_347:
	ret	
.label_346:
	cmp	edi, 0x7f
	je	.label_347
	xor	eax, eax
	jmp	.label_347
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c10
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c20
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c30
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c40
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c50
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_348
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_349]]
.label_350:
	ret	
.label_348:
	xor	eax, eax
	jmp	.label_350
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c70
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_351
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_351:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c90

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ca0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_352
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_352:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404cc0
	.globl c_tolower
	.type c_tolower, @function
c_tolower:

	lea	ecx, [rdi - 0x41]
	lea	eax, [rdi + 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404cd0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	lea	ecx, [rdi - 0x61]
	lea	eax, [rdi - 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404ce0

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__fpending
	mov	r14, rax
	mov	rdi, rbx
	call	ferror_unlocked
	mov	ebp, eax
	mov	rdi, rbx
	call	rpl_fclose
	test	ebp, ebp
	je	.label_353
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_354
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_354
.label_353:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_354
	test	cl, cl
	jne	.label_354
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_354:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d50

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_356
	cmp	byte ptr [rax], 0x43
	jne	.label_358
	cmp	byte ptr [rax + 1], 0
	je	.label_355
.label_358:
	mov	esi, OFFSET FLAT:label_357
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_356
.label_355:
	xor	ebx, ebx
.label_356:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d90

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_32
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_359
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404dc0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_361
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_360
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_361
.label_360:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_361
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_362
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_362:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_361:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e40

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_363
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_363
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_363:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e70

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_364
	ret	
.label_364:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e90

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_365
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_365
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_366
.label_365:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_366:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_367
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_367:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404f00

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section .text
	.align	16
	#Procedure 0x404fd0

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
