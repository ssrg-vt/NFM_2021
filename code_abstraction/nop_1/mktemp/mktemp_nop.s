	.section	.text
	.align	32
	#Procedure 0x401940

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rbp
	push	rbx
	lea	rsi, [rsi]
	push	rax
	nop	
	mov	ebp, edi
	lea	rdi, [rdi]
	test	ebp, ebp
	nop	
	jne	.label_7
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.1
	mov	rbp, rbp
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	rsp, rsp
	mov	edi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	rsi, rcx
	nop	
	call	__printf_chk
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.4
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.10
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	rsp, rsp
	mov	edi, ebp
	call	exit
.label_7:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	rsp, rsp
	mov	esi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rbx
	mov	rsp, rsp
	call	__fprintf_chk
	lea	rsi, [rsi]
	mov	edi, ebp
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b50

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	lea	rsi, [rsi]
	push	r14
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.30
	nop	word ptr [rax + rax]
.label_8:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	je	.label_10
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_8
.label_10:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:.str.11
	cmovne	rbx, rax
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.38
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.17
	nop	
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	mov	rsp, rsp
	mov	edi, 5
	lea	rsi, [rsi]
	xor	esi, esi
	call	setlocale
	lea	rdi, [rdi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_9
	mov	esi, OFFSET FLAT:.str.40
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	mov	rsp, rsp
	je	.label_9
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.41
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
.label_9:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	nop	
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.11
	mov	edi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.18
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.11
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.44
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str_0
	cmove	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	rsi, rdx
	mov	rdx, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	lea	rsi, [rsi]
	jmp	__printf_chk
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ce0

	.globl main
	.type main, @function
main:
	nop	
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x38
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	ebx, edi
	nop	
	mov	rdi, qword ptr [r14]
	call	set_program_name
	lea	rdi, [rdi]
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	call	setlocale
	mov	edi, OFFSET FLAT:.str.13
	mov	esi, OFFSET FLAT:.str.14
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.13
	lea	rdi, [rdi]
	call	textdomain
	mov	edi, OFFSET FLAT:maybe_close_stdout
	nop	
	call	atexit
	mov	rbp, rbp
	xor	ecx, ecx
	nop	
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	ebp, ebp
	xor	r15d, r15d
	xor	r13d, r13d
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rax
.label_391:
	mov	rbp, rbp
	mov	r12b, cl
	mov	byte ptr [rsp + 0x17], r12b
	lea	rdi, [rdi]
	jmp	.label_29
	nop	word ptr cs:[rax + rax]
.label_11:
	mov	al, 1
	mov	qword ptr [rsp + 0x30], rax
.label_29:
	mov	cl, bpl
.label_392:
	mov	rsp, rsp
	mov	bpl, cl
	mov	rbp, rbp
	jmp	.label_17
.label_389:
	nop	
	mov	r12b, 1
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	nop	
	mov	qword ptr [rsp + 0x18], rax
	nop	dword ptr [rax]
.label_17:
	nop	
	mov	cl, r13b
.label_390:
	mov	r13b, cl
	mov	edx, OFFSET FLAT:.str.15
	nop	
	mov	ecx, OFFSET FLAT:longopts
	lea	rdi, [rdi]
	xor	r8d, r8d
	lea	rdi, [rdi]
	mov	edi, ebx
	lea	rdi, [rdi]
	mov	rsi, r14
	call	getopt_long
	mov	rsp, rsp
	cmp	eax, 0x63
	jle	.label_45
	mov	rbp, rbp
	mov	cl, 1
	lea	rsi, [rsi]
	lea	edx, [rax - 0x70]
	cmp	edx, 5
	ja	.label_44
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_39]]
	nop	word ptr [rax + rax]
.label_44:
	cmp	eax, 0x64
	mov	rbp, rbp
	je	.label_11
	cmp	eax, 0x80
	jne	.label_13
	lea	rdi, [rdi]
	mov	r15,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	jmp	.label_17
.label_45:
	lea	rdi, [rdi]
	cmp	eax, -2
	lea	rdi, [rdi]
	jle	.label_21
	mov	rbp, rbp
	cmp	eax, -1
	mov	rsp, rsp
	jne	.label_24
	nop	
	mov	qword ptr [rsp + 0x28], rbp
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rbp, rbp
	mov	ecx, ebx
	mov	rbp, rbp
	sub	ecx, eax
	cmp	ecx, 2
	jae	.label_47
	mov	ebp, OFFSET FLAT:.str.52
	mov	cl, 1
	cmp	eax, ebx
	je	.label_32
	mov	rbp, qword ptr [r14 + rax*8]
	mov	cl, r12b
.label_32:
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x27], cl
	test	r15, r15
	je	.label_34
	nop	
	mov	rdi, rbp
	call	strlen
	mov	rbx, rax
	test	rbx, rbx
	je	.label_36
	movzx	eax, byte ptr [rbx + rbp - 1]
	mov	rbp, rbp
	cmp	eax, 0x58
	jne	.label_36
	mov	rsp, rsp
	mov	rdi, r15
	lea	rdi, [rdi]
	call	strlen
	mov	r14, rax
	lea	rdi, [rdi]
	lea	rdi, [rbx + r14 + 1]
	call	xcharalloc
	mov	r12, rax
	mov	rdi, r12
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rdx, rbx
	call	memcpy
	mov	rbp, r12
	lea	rsi, [rsi]
	add	rbp, rbx
	lea	rdi, [rdi]
	lea	rdx, [r14 + 1]
	mov	rdi, rbp
	mov	rsi, r15
	call	memcpy
	jmp	.label_50
.label_34:
	mov	rbp, rbp
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	xstrdup
	mov	r12, rax
	lea	rdi, [rdi]
	mov	esi, 0x58
	mov	rbp, rbp
	mov	rdi, r12
	call	strrchr
	mov	rbp, rax
	test	rbp, rbp
	nop	
	je	.label_19
	mov	rsp, rsp
	inc	rbp
	lea	rdi, [rdi]
	jmp	.label_22
.label_19:
	xor	esi, esi
	mov	rbp, rbp
	mov	rdi, r12
	nop	
	call	__rawmemchr
	mov	rbp, rax
.label_22:
	lea	rsi, [rsi]
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	strlen
	mov	r14, rax
.label_50:
	nop	
	test	r14, r14
	je	.label_26
	mov	rsp, rsp
	mov	rdi, rbp
	call	last_component
	cmp	rax, rbp
	jne	.label_31
.label_26:
	sub	rbp, r12
	mov	rdi, r12
	mov	rbp, rbp
	mov	rsi, rbp
	call	count_consecutive_X_s
	mov	r15, rax
	lea	rsi, [rsi]
	cmp	r15, 2
	lea	rsi, [rsi]
	jbe	.label_35
	mov	rsp, rsp
	test	byte ptr [rsp + 0x27], 1
	je	.label_37
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_38
	mov	edi, OFFSET FLAT:.str.23
	lea	rdi, [rdi]
	call	getenv
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	je	.label_40
	cmp	byte ptr [rbx], 0
	lea	rsi, [rsi]
	jne	.label_42
.label_40:
	test	rax, rax
	je	.label_43
	lea	rsi, [rsi]
	cmp	byte ptr [rax], 0
	mov	rbx, rax
	jne	.label_42
.label_43:
	lea	rdi, [rdi]
	mov	ebx, OFFSET FLAT:.str.24
.label_42:
	mov	rsp, rsp
	mov	rdi, r12
	call	last_component
	nop	
	cmp	rax, r12
	lea	rdi, [rdi]
	je	.label_16
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25
	lea	rsi, [rsi]
	jmp	.label_12
.label_38:
	mov	rcx, qword ptr [rsp + 0x18]
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_15
	cmp	byte ptr [rcx], 0
	lea	rdi, [rdi]
	jne	.label_18
.label_15:
	nop	
	mov	edi, OFFSET FLAT:.str.23
	call	getenv
	mov	ecx, OFFSET FLAT:.str.24
	test	rax, rax
	je	.label_18
	mov	ecx, OFFSET FLAT:.str.24
	cmp	byte ptr [rax], 0
	je	.label_18
	mov	rcx, rax
.label_18:
	movzx	eax, byte ptr [r12]
	lea	rdi, [rdi]
	cmp	eax, 0x2f
	mov	rbx, rcx
	lea	rdi, [rdi]
	je	.label_25
.label_16:
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r12
	mov	rbp, rbp
	call	file_name_concat
	lea	rsi, [rsi]
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	rdi, r12
	call	free
	mov	rsp, rsp
	mov	r12, rbx
.label_37:
	nop	
	mov	rdi, r12
	call	xstrdup
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	test	al, al
	je	.label_27
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	test	bl, bl
	mov	rsp, rsp
	setne	al
	mov	rbp, rbp
	movzx	ecx, al
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, r14
	mov	rdx, r15
	mov	rbp, rbp
	call	mkdtemp_len
	test	eax, eax
	mov	rbp, rbp
	je	.label_41
	mov	r14d, 1
	test	r13b, r13b
	mov	rbp, rbp
	jne	.label_14
	call	__errno_location
	nop	
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.27
	mov	rsp, rsp
	jmp	.label_46
.label_27:
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x28]
	nop	
	test	bl, bl
	mov	rsp, rsp
	setne	al
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rsi, r14
	mov	rsp, rsp
	mov	rdx, r15
	call	mkstemp_len
	nop	
	test	eax, eax
	mov	rsp, rsp
	js	.label_23
	test	bl, bl
	je	.label_20
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rsp, rsp
	call	puts
	xor	r14d, r14d
	jmp	.label_14
.label_41:
	mov	rdi, rbp
	call	puts
	nop	
	xor	r14d, r14d
	lea	rsi, [rsi]
	test	bl, bl
	lea	rdi, [rdi]
	jne	.label_14
	lea	rsi, [rsi]
	jmp	.label_30
.label_20:
	nop	
	mov	edi, eax
	mov	rsp, rsp
	call	close
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_33
.label_23:
	mov	rbp, rbp
	mov	r14d, 1
	test	r13b, r13b
	jne	.label_14
	call	__errno_location
	mov	rbp, rbp
	mov	ebx, dword ptr [rax]
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.28
.label_46:
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rbp, rax
	nop	
	mov	rdi, r12
	mov	rbp, rbp
	call	quote
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	error
	lea	rsi, [rsi]
	jmp	.label_14
.label_33:
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	puts
.label_30:
	mov	byte ptr [byte ptr [rip + stdout_closed]],  1
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	nop	
	xor	r14d, r14d
	test	eax, eax
	je	.label_14
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	mov	ebx, dword ptr [rax]
	nop	
	mov	rdi, rbp
	call	remove
	mov	rsp, rsp
	mov	r14d, 1
	test	r13b, r13b
	jne	.label_14
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_1
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebx
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rbp, rbp
	call	error
.label_14:
	mov	eax, r14d
	add	rsp, 0x38
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_21:
	cmp	eax, 0xffffff7d
	lea	rsi, [rsi]
	je	.label_49
	cmp	eax, 0xffffff7e
	jne	.label_13
	lea	rsi, [rsi]
	xor	edi, edi
	call	usage
.label_24:
	lea	rdi, [rdi]
	cmp	eax, 0x56
	mov	rsp, rsp
	jne	.label_13
.label_49:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	rbp, rbp
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.17_0
	mov	r9d, OFFSET FLAT:.str.18_0
	xor	eax, eax
	mov	rsp, rsp
	call	version_etc
	xor	edi, edi
	mov	rsp, rsp
	call	exit
.label_13:
	mov	edi, 1
	call	usage
.label_36:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	jmp	.label_48
.label_47:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rcx
	call	error
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_35:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.22
	lea	rdi, [rdi]
	jmp	.label_12
.label_31:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.21
.label_48:
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi, rbp
	jmp	.label_28
.label_25:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.26
.label_12:
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	rdi, r12
.label_28:
	call	quote
	mov	rcx, rax
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023b0

	.globl maybe_close_stdout
	.type maybe_close_stdout, @function
maybe_close_stdout:
	push	rax
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + stdout_closed]]
	mov	rsp, rsp
	and	al, 1
	mov	rsp, rsp
	je	.label_51
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	call	close_stream
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_52
	pop	rax
	ret	
.label_51:
	lea	rdi, [rdi]
	pop	rax
	jmp	close_stdout
.label_52:
	mov	rsp, rsp
	mov	edi, 1
	lea	rsi, [rsi]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402400

	.globl count_consecutive_X_s
	.type count_consecutive_X_s, @function
count_consecutive_X_s:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_53
	nop	
	dec	rdi
	nop	
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_54:
	movzx	ecx, byte ptr [rsi + rdi]
	nop	
	cmp	ecx, 0x58
	mov	rsp, rsp
	jne	.label_53
	inc	rax
	dec	rdi
	cmp	rsi, rax
	mov	rsp, rsp
	jne	.label_54
.label_53:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402440

	.globl mkdtemp_len
	.type mkdtemp_len, @function
mkdtemp_len:
	mov	rax, rdx
	movzx	ecx, cl
	inc	ecx
	xor	edx, edx
	mov	r8, rax
	mov	rsp, rsp
	jmp	gen_tempname_len
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402460

	.globl mkstemp_len
	.type mkstemp_len, @function
mkstemp_len:
	mov	rbp, rbp
	mov	rax, rdx
	lea	rsi, [rsi]
	movzx	ecx, cl
	nop	
	add	ecx, ecx
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rsp, rsp
	mov	r8, rax
	jmp	gen_tempname_len
	nop	
	.section	.text
	.align	32
	#Procedure 0x402480

	.globl close_stream
	.type close_stream, @function
close_stream:
	mov	rsp, rsp
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	lea	rsi, [rsi]
	call	__fpending
	nop	
	mov	r14, rax
	mov	rdi, rbx
	mov	rbp, rbp
	call	ferror_unlocked
	mov	ebp, eax
	mov	rdi, rbx
	nop	
	call	rpl_fclose
	mov	rbp, rbp
	test	ebp, ebp
	nop	
	je	.label_55
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	test	eax, eax
	jne	.label_56
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	jmp	.label_56
.label_55:
	test	eax, eax
	mov	rbp, rbp
	sete	cl
	neg	eax
	nop	
	sbb	ebx, ebx
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_56
	test	cl, cl
	jne	.label_56
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	nop	
	cmove	ebx, ecx
.label_56:
	mov	rsp, rsp
	mov	eax, ebx
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x402520
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + file_name]],  rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x402530
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402540

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	call	close_stream
	test	eax, eax
	je	.label_60
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_57
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	jne	.label_57
.label_60:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_59
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	rbp
	ret	
.label_57:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_1
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	lea	rdi, [rdi]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_58
	xor	edi, edi
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str_2
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, ebp
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_59:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_58:
	mov	rbp, rbp
	mov	rdi, rbx
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_0
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	r8, r14
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402640

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_61:
	nop	
	movzx	eax, byte ptr [rdi + 1]
	lea	rdi, [rdi]
	inc	rdi
	cmp	eax, 0x2f
	mov	rbp, rbp
	je	.label_61
	xor	ecx, ecx
	mov	rax, rdi
	jmp	.label_62
	nop	word ptr [rax + rax]
.label_64:
	inc	rax
	mov	rbp, rbp
	mov	cl, dl
.label_62:
	lea	rsi, [rsi]
	movzx	esi, byte ptr [rax]
	mov	dl, 1
	cmp	esi, 0x2f
	mov	rsp, rsp
	je	.label_64
	test	sil, sil
	mov	rsp, rsp
	je	.label_63
	mov	rbp, rbp
	mov	dl, cl
	and	dl, 1
	mov	rsp, rsp
	je	.label_65
	xor	ecx, ecx
.label_65:
	test	dl, dl
	lea	rsi, [rsi]
	cmovne	rdi, rax
	mov	dl, cl
	jmp	.label_64
.label_63:
	nop	
	mov	rax, rdi
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026c0

	.globl base_len
	.type base_len, @function
base_len:
	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	call	strlen
	nop	
	mov	rcx, rax
.label_67:
	mov	rbp, rbp
	mov	rax, rcx
	lea	rsi, [rsi]
	cmp	rax, 2
	mov	rsp, rsp
	jb	.label_66
	lea	rdi, [rdi]
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_67
.label_66:
	lea	rsi, [rsi]
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402700

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rax
	call	mfile_name_concat
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_68
	lea	rsi, [rsi]
	pop	rcx
	ret	
.label_68:
	mov	rsp, rsp
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x402720

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	lea	rdi, [rdi]
	push	rbp
	nop	
	push	r15
	nop	
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	sub	rsp, 0x18
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdx
	mov	r14, rsi
	mov	r13, rdi
	call	last_component
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi, rbx
	call	base_len
	nop	
	mov	rbp, rax
	mov	rbp, rbp
	sub	rbx, r13
	add	rbx, rbp
	lea	rsi, [rsi]
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	test	rbp, rbp
	je	.label_74
	movzx	ecx, byte ptr [rbx + r13 - 1]
	lea	rdi, [rdi]
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	jne	.label_76
	mov	qword ptr [rsp + 8], r14
	lea	rdi, [rdi]
	xor	r12d, r12d
	lea	rsi, [rsi]
	jmp	.label_70
.label_74:
	movzx	ecx, byte ptr [r14]
	mov	r12b, 0x2e
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	je	.label_75
	jmp	.label_71
.label_76:
	nop	
	movzx	ecx, byte ptr [r14]
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	jne	.label_72
.label_71:
	xor	r12d, r12d
	jmp	.label_75
.label_72:
	mov	r12b, 0x2f
.label_75:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r14
.label_70:
	test	r12b, r12b
	nop	
	setne	cl
	movzx	ebp, cl
	nop	
	lea	rcx, [r15 + rbx]
	lea	rdi, [rbp + rcx + 1]
	lea	rdi, [rdi]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_69
	mov	rcx, -1
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	lea	rsi, [rsi]
	add	rbp, rax
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_73
	mov	rsp, rsp
	mov	qword ptr [rax], rbp
.label_73:
	nop	
	mov	rcx, -1
	mov	rdi, rbp
	nop	
	mov	rsi, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rdx, r15
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	nop	
	mov	rax, r14
.label_69:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	nop	
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402870

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	lea	rsi, [rsi]
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_77
	mov	esi, 0x2f
	mov	rbp, rbp
	mov	rdi, rbx
	call	strrchr
	mov	rbp, rbp
	test	rax, rax
	lea	rsi, [rsi]
	lea	r14, [rax + 1]
	lea	rdi, [rdi]
	cmove	r14, rbx
	mov	rax, r14
	nop	
	sub	rax, rbx
	mov	rbp, rbp
	cmp	rax, 7
	lea	rsi, [rsi]
	jl	.label_79
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_79
	mov	esi, OFFSET FLAT:.str.2_0
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_78
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_78:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_79:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_77:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	esi, 0x37
	lea	rsi, [rsi]
	mov	edx, 1
	call	fwrite
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402960
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	nop
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	mov	rbp, rbp
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmove	rbx, rax
	mov	rsp, rsp
	mov	esi, 0x38
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	xmemdup
	nop	
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4029b0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029d0
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	nop	
	cmovne	rax, rdi
	lea	rdi, [rdi]
	mov	dword ptr [rax], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029f0

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	lea	rsi, [rsi]
	mov	ecx, esi
	nop	
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	cmovne	rsi, rdi
	mov	al, cl
	lea	rdi, [rdi]
	shr	al, 5
	mov	rbp, rbp
	movzx	r8d, al
	mov	rsp, rsp
	mov	r9d, dword ptr [rsi + r8*4 + 8]
	mov	rsp, rsp
	mov	edi, r9d
	mov	rsp, rsp
	shr	edi, cl
	lea	rdi, [rdi]
	mov	eax, edi
	mov	rsp, rsp
	and	eax, 1
	mov	rsp, rsp
	xor	edi, edx
	mov	rbp, rbp
	and	edi, 1
	mov	rsp, rsp
	shl	edi, cl
	lea	rsi, [rsi]
	xor	edi, r9d
	mov	rbp, rbp
	mov	dword ptr [rsi + r8*4 + 8], edi
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a60
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	mov	rbp, rbp
	test	rdi, rdi
	nop	
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	rsp, rsp
	mov	dword ptr [rcx + 4], esi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a80

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	lea	rdi, [rdi]
	cmovne	rax, rdi
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_80
	test	rdx, rdx
	nop	
	je	.label_80
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_80:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402ac0
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rcx
	nop	
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	lea	rdi, [rdi]
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbp, rbp
	mov	rbx, rax
	nop	
	mov	r14d, dword ptr [rbx]
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
	mov	rax, qword ptr [rbp + 0x28]
	mov	rcx, qword ptr [rbp + 0x30]
	lea	rsi, [rsi]
	lea	rdx, [rbp + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rdx
	nop	
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	nop	
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402b60

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	nop	
	sub	rsp, 0x108
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x6c], ebx
	mov	r13d, r8d
	mov	qword ptr [rsp + 0xc0], rcx
	mov	r12, rdx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x150]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0x90], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], rax
	mov	r15b, bl
	mov	rbp, rbp
	shr	r15b, 1
	mov	rbp, rbp
	and	r15b, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x5c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x58], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x80], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa8], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xd0], rax
	mov	eax, 0
	mov	rbp, rbp
	xor	r11d, r11d
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
.label_128:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rsi, [rsi]
	mov	ecx, r13d
	lea	rdi, [rdi]
	cmp	r13d, 0xa
	ja	.label_188
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	rsp, rsp
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_112]]
.label_421:
	lea	rsi, [rsi]
	mov	r12d, r11d
	nop	
	mov	edi, OFFSET FLAT:.str.11_0
	mov	esi, r13d
	nop	
	mov	r14, r10
	mov	bl, r8b
	mov	rbp, rbp
	mov	rbp, r9
	call	gettext_quote
	mov	qword ptr [rsp + 0x90], rax
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.12
	mov	esi, r13d
	mov	rsp, rsp
	call	gettext_quote
	mov	rsp, rsp
	mov	r11d, r12d
	mov	r9, rbp
	mov	r8b, bl
	nop	
	mov	r10, r14
	nop	
	mov	qword ptr [rsp + 0x88], rax
.label_422:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	rbp, rbp
	test	r15b, 1
	mov	rbp, rbp
	mov	eax, 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xf0], rax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_145
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rsp, rsp
	je	.label_145
	mov	rsp, rsp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_180:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_170
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rsi], al
.label_170:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	al, byte ptr [rdx + rcx + 1]
	lea	rdi, [rdi]
	inc	rcx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rbp, rbp
	test	al, al
	jne	.label_180
.label_145:
	mov	rbx, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	mov	rdi, rbx
	mov	r12, r10
	nop	
	call	strlen
	mov	r10, r12
	mov	qword ptr [rsp + 0xd0], rax
	lea	rdi, [rdi]
	mov	r14d, r13d
	mov	qword ptr [rsp + 0xa8], rbx
	mov	sil, 1
	mov	rbp, rbp
	mov	dil, r15b
	mov	r8b, byte ptr [rsp + 0x69]
	mov	rsp, rsp
	mov	r9, rbp
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	mov	r11d, dword ptr [rsp + 0xb8]
	nop	
	jmp	.label_148
.label_414:
	lea	rsi, [rsi]
	xor	r14d, r14d
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	jmp	.label_148
.label_417:
	mov	rsp, rsp
	mov	al, 1
.label_415:
	mov	r15b, 1
.label_418:
	test	r15b, 1
	mov	rsp, rsp
	mov	cl, 1
	je	.label_88
	mov	cl, al
.label_88:
	lea	rdi, [rdi]
	mov	al, cl
.label_416:
	mov	r14d, 2
	mov	rsp, rsp
	test	r15b, 1
	mov	rsp, rsp
	jne	.label_93
	test	r10, r10
	je	.label_101
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	lea	rdi, [rdi]
	jmp	.label_105
.label_93:
	xor	ecx, ecx
	jmp	.label_105
.label_419:
	mov	r14d, 5
	mov	rsp, rsp
	test	r15b, 1
	jne	.label_114
	test	r10, r10
	je	.label_152
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	lea	rsi, [rsi]
	jmp	.label_123
.label_420:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	nop	
	mov	qword ptr [rsp + 0xa8], rax
	nop	
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	rbp, rbp
	mov	dil, 1
	jmp	.label_148
.label_101:
	nop	
	mov	ecx, 1
	nop	dword ptr [rax]
.label_105:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], rcx
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	mov	rbp, rbp
	jmp	.label_148
.label_114:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_123
.label_152:
	mov	rbp, rbp
	mov	eax, 1
.label_123:
	nop	
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	rsp, rsp
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	lea	rsi, [rsi]
	mov	sil, 1
	mov	dil, r15b
	nop	word ptr cs:[rax + rax]
.label_148:
	mov	qword ptr [rsp + 0x98], rdi
	mov	byte ptr [rsp + 0xa6], sil
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x140], 0
	lea	rsi, [rsi]
	setne	bl
	cmp	r14d, 2
	lea	rsi, [rsi]
	setne	r15b
	mov	rsp, rsp
	sete	dl
	mov	rbp, rbp
	mov	cl, sil
	and	cl, 1
	mov	byte ptr [rsp + 0xa5], cl
	sete	byte ptr [rsp + 0x6b]
	lea	rdi, [rdi]
	mov	r12b, r15b
	and	r12b, cl
	mov	byte ptr [rsp + 0xbf], r12b
	cmp	qword ptr [rsp + 0xd0], 0
	mov	rsp, rsp
	setne	r13b
	mov	al, r13b
	and	al, r12b
	mov	rbp, rbp
	mov	byte ptr [rsp + 0xdf], al
	mov	al, dil
	mov	rsp, rsp
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xcf], al
	mov	rsp, rsp
	sete	cl
	lea	rdi, [rdi]
	and	dl, al
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x7f], dl
	and	bl, al
	mov	byte ptr [rsp + 0xb7], bl
	or	cl, r15b
	mov	byte ptr [rsp + 0xa7], cl
	nop	
	and	sil, dil
	mov	rsp, rsp
	and	sil, r13b
	mov	byte ptr [rsp + 0x6a], sil
	nop	
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_102
	nop	word ptr [rax + rax]
.label_82:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	lea	rsi, [rsi]
	sar	r15b, 7
	and	r15b, r8b
	lea	rdi, [rdi]
	mov	r8b, r15b
	nop	
	inc	rsi
.label_102:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_109
	cmp	rsi, rbp
	jne	.label_202
	jmp	.label_111
	nop	word ptr cs:[rax + rax]
.label_109:
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + rsi], 0
	nop	
	je	.label_111
.label_202:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_120
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_126
	mov	rsp, rsp
	cmp	rbp, -1
	lea	rdi, [rdi]
	jne	.label_126
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, rbp
	mov	rdi, r9
	mov	rbp, rbp
	mov	rbp, r10
	nop	
	mov	r15b, r8b
	lea	rsi, [rsi]
	mov	r13, r14
	lea	rsi, [rsi]
	mov	r12, r9
	mov	r14, rsi
	lea	rdi, [rdi]
	call	strlen
	mov	rsp, rsp
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	r11d, dword ptr [rsp + 0xb8]
	mov	r9, r12
	mov	r12b, byte ptr [rsp + 0xbf]
	nop	
	mov	r14, r13
	lea	rdi, [rdi]
	mov	r8b, r15b
	mov	rbp, rbp
	mov	r10, rbp
	mov	rbp, rax
.label_126:
	lea	rsi, [rsi]
	cmp	rbx, rbp
	jbe	.label_160
.label_120:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xec], 0
.label_127:
	mov	rsp, rsp
	movzx	r13d, byte ptr [r9 + rsi]
	mov	rsp, rsp
	cmp	r13, 0x7e
	nop	
	ja	.label_166
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	r15b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	bl, 0x61
	nop	
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_171]]
.label_432:
	test	rsi, rsi
	jne	.label_116
	jmp	.label_107
	nop	word ptr [rax + rax]
.label_160:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12d, r11d
	lea	rsi, [rsi]
	mov	r13, r14
	lea	rdi, [rdi]
	mov	r15b, r8b
	mov	rbx, r10
	lea	rdi, [r9 + rsi]
	mov	r14, rsi
	mov	rbp, r9
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xa8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xd0]
	mov	rbp, rbp
	call	memcmp
	mov	rsp, rsp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xec], eax
	jne	.label_194
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	nop	
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_127
	mov	rsp, rsp
	jmp	.label_97
.label_194:
	mov	rbp, rbp
	mov	r10, rbx
	mov	rbp, rbp
	mov	r8b, r15b
	mov	rbp, rbp
	mov	rdi, r13
	nop	
	mov	r9, rbp
	nop	
	mov	r11d, r12d
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0xc0]
	nop	
	mov	r12b, byte ptr [rsp + 0xbf]
	nop	
	mov	rsi, r14
	jmp	.label_127
.label_436:
	xor	eax, eax
	cmp	rbp, -1
	lea	rsi, [rsi]
	je	.label_95
	test	rsi, rsi
	nop	
	jne	.label_186
	cmp	rbp, 1
	lea	rsi, [rsi]
	je	.label_107
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_89
.label_425:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_173
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xcf], 0
	nop	
	jne	.label_97
	cmp	edi, 2
	nop	
	jne	.label_122
	lea	rdi, [rdi]
	mov	al, r11b
	and	al, 1
	nop	
	jne	.label_125
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_131
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], 0x27
.label_131:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_140
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_140:
	nop	
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_149
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_149:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	rsp, rsp
	mov	r11b, 1
	nop	
	mov	rcx, rax
	jmp	.label_92
.label_426:
	mov	bl, 0x62
	lea	rsi, [rsi]
	jmp	.label_165
.label_427:
	mov	cl, 0x74
	jmp	.label_169
.label_428:
	mov	bl, 0x76
	lea	rdi, [rdi]
	jmp	.label_165
.label_429:
	mov	bl, 0x66
	jmp	.label_165
.label_430:
	nop	
	mov	cl, 0x72
	mov	rsp, rsp
	jmp	.label_169
.label_433:
	lea	rsi, [rsi]
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 2
	jne	.label_176
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_96
	nop	
	test	r10, r10
	sete	al
	mov	rcx, qword ptr [rsp + 0x80]
	mov	rdx, rcx
	lea	rdi, [rdi]
	test	rdx, rdx
	nop	
	setne	cl
	nop	
	or	cl, al
	cmove	rdx, r10
	mov	qword ptr [rsp + 0x80], rdx
	mov	eax, 0
	mov	rsp, rsp
	cmove	r10, rax
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_163
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_163:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_198
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x5c
.label_198:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_84
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_84:
	nop	
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	mov	rbp, rbp
	jmp	.label_94
.label_434:
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 5
	mov	rsp, rsp
	je	.label_103
	cmp	r14d, 2
	lea	rdi, [rdi]
	jne	.label_110
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_96
.label_110:
	mov	rdi, r14
	jmp	.label_116
.label_435:
	mov	r14, rdi
	nop	
	cmp	r14d, 2
	mov	rsp, rsp
	jne	.label_118
	nop	
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_96
	mov	rdi, r14
	jmp	.label_130
.label_166:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	lea	rsi, [rsi]
	jne	.label_133
	mov	rbp, rbp
	mov	r14, r9
	mov	rbx, rsi
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rsi, rbx
	nop	
	mov	r9, r14
	mov	rax, qword ptr [rax]
	movzx	r15d, word ptr [rax + r13*2]
	mov	rsp, rsp
	shr	r15d, 0xe
	lea	rdi, [rdi]
	and	r15b, 1
	lea	rsi, [rsi]
	mov	ebx, 1
.label_144:
	lea	rdi, [rdi]
	and	r15b, 1
	mov	dl, r15b
	or	dl, byte ptr [rsp + 0x6b]
	mov	byte ptr [rsp + 0xc0], dl
	cmp	rbx, 1
	mov	rcx, rbx
	mov	r10, qword ptr [rsp + 0x40]
	mov	r8b, byte ptr [rsp + 0x69]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	mov	r11d, dword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	ja	.label_157
	test	dl, dl
	mov	rsp, rsp
	je	.label_157
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_89
.label_95:
	test	rsi, rsi
	jne	.label_177
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_177
.label_107:
	mov	rbp, rbp
	mov	dl, 1
.label_431:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_97
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r15b, dl
	mov	rbp, rbp
	jmp	.label_89
.label_173:
	cmp	dword ptr [rsp + 0x5c], 0
	mov	rbp, rbp
	je	.label_116
	lea	rsi, [rsi]
	mov	r14, rdi
	inc	rsi
	jmp	.label_102
.label_176:
	mov	rdi, r14
.label_94:
	xor	eax, eax
	nop	
	mov	r15b, 1
	lea	rdi, [rdi]
	jmp	.label_89
.label_118:
	mov	rdi, r14
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x6a], 0
	nop	
	mov	cl, r13b
	nop	
	je	.label_169
.label_130:
	lea	rsi, [rsi]
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_142
.label_169:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xa7], 0
	lea	rsi, [rsi]
	mov	bl, cl
	nop	
	je	.label_97
.label_165:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_89
	lea	rsi, [rsi]
	jmp	.label_86
.label_133:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_113
	mov	rsp, rsp
	mov	rdi, r9
	mov	rbx, r9
	lea	rdi, [rdi]
	mov	rbp, rsi
	mov	rsp, rsp
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_113:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	nop	
	mov	r15b, 1
	xor	ebx, ebx
	lea	rsi, [rsi]
	lea	r14, [rsp + 0x100]
.label_187:
	lea	rax, [rbx + rsi]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x30], rsi
	nop	
	lea	rsi, [r9 + rax]
	mov	qword ptr [rsp + 0x48], r9
	mov	rbp, rbp
	mov	rdx, rbp
	mov	rbp, rbp
	sub	rdx, rax
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0xfc]
	nop	
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rdi, [rdi]
	mov	rbp, rax
	test	rbp, rbp
	je	.label_135
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	lea	rsi, [rsi]
	mov	r10, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	nop	
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rdi, [rdi]
	je	.label_138
	cmp	rbp, -2
	nop	
	je	.label_155
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_201
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	lea	rsi, [rsi]
	mov	ecx, 1
.label_200:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	mov	rsp, rsp
	cmp	edx, 0x21
	lea	rsi, [rsi]
	ja	.label_179
	mov	rbp, rbp
	bt	rsi, rdx
	jb	.label_172
.label_179:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jb	.label_200
.label_201:
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_159
	xor	r15d, r15d
.label_159:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	add	rbx, rbp
	mov	r14, rdi
	nop	
	call	mbsinit
	mov	rsp, rsp
	test	eax, eax
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	je	.label_187
	jmp	.label_144
.label_177:
	mov	rbp, -1
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_89
.label_103:
	mov	rdi, r14
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x58], 0
	lea	rdi, [rdi]
	je	.label_116
	lea	rcx, [rsi + 2]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jae	.label_116
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_116
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	mov	rsp, rsp
	cmp	edx, 0x3e
	ja	.label_85
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	nop	
	bt	rsi, rdx
	lea	rdi, [rdi]
	jae	.label_90
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_97
	lea	rsi, [rsi]
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_117
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_117:
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, r10
	jae	.label_181
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 0x22
.label_181:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_189
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x22
.label_189:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	nop	
	cmp	rax, r10
	lea	rsi, [rsi]
	jae	.label_129
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_129:
	nop	
	add	qword ptr [rsp + 0xf0], 4
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_89
.label_116:
	xor	eax, eax
	mov	rsp, rsp
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_89:
	test	r12b, r12b
	je	.label_193
	cmp	qword ptr [rsp + 0x140], 0
	nop	
	jne	.label_162
	jmp	.label_164
	nop	word ptr cs:[rax + rax]
.label_193:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xb7], 0
	lea	rdi, [rdi]
	je	.label_164
.label_162:
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	lea	rsi, [rsi]
	movzx	edx, cl
	mov	esi, 1
	mov	rsp, rsp
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_185
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_142
	jmp	.label_86
	nop	word ptr cs:[rax + rax]
.label_164:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_86
	jmp	.label_142
.label_185:
	mov	bl, r13b
	mov	rsi, r14
.label_86:
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_97
	mov	rsp, rsp
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_195
	nop	
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_195
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_156
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_156:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_197
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x24
.label_197:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_134
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_134:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_195:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_106
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_106:
	lea	rdi, [rdi]
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_115
.label_186:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_89
.label_157:
	mov	rsp, rsp
	add	rcx, rsi
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_124
	nop	word ptr cs:[rax + rax]
.label_151:
	mov	rbp, rbp
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_124:
	mov	rbp, rbp
	test	dl, dl
	mov	rbp, rbp
	je	.label_137
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	lea	rdi, [rdi]
	je	.label_139
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_146
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	lea	rsi, [rsi]
	mov	rsi, rbx
.label_146:
	nop	
	inc	qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xec], 0
	mov	rsp, rsp
	jmp	.label_139
	nop	dword ptr [rax]
.label_137:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_96
	cmp	r14d, 2
	jne	.label_158
	mov	rsp, rsp
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_158
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_178
	mov	rax, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	byte ptr [rax + rdx], 0x27
.label_178:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_184
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_184:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	nop	
	lea	rax, [rax + 2]
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_192
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_192:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_158:
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_174
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_174:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rdi, [rdi]
	inc	rax
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_199
	mov	dl, r13b
	mov	rsp, rsp
	shr	dl, 6
	or	dl, 0x30
	mov	rsp, rsp
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	lea	rsi, [rsi]
	mov	rsi, rdi
.label_199:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_98
	mov	dl, r13b
	shr	dl, 3
	nop	
	and	dl, 7
	or	dl, 0x30
	nop	
	mov	rbx, rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_98:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	rsp, rsp
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_139:
	mov	rsp, rsp
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_142
	test	r11b, 1
	lea	rdi, [rdi]
	je	.label_132
	mov	bl, al
	lea	rdi, [rdi]
	and	bl, 1
	mov	r14, rdi
	jne	.label_83
	lea	rsi, [rsi]
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_136
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_136:
	mov	rsi, qword ptr [rsp + 0xf0]
	nop	
	inc	rsi
	cmp	rsi, r10
	nop	
	jae	.label_147
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rdi + rsi], 0x27
.label_147:
	add	qword ptr [rsp + 0xf0], 2
	mov	rbp, rbp
	xor	r11d, r11d
	mov	rsi, rbx
	lea	rdi, [rdi]
	jmp	.label_83
	nop	word ptr cs:[rax + rax]
.label_132:
	lea	rsi, [rsi]
	mov	r14, rdi
.label_83:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_151
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rsi + rbx], r13b
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	jmp	.label_151
	nop	word ptr cs:[rax + rax]
.label_142:
	lea	rsi, [rsi]
	test	r11b, 1
	je	.label_183
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_183
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_154
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rax + rcx], 0x27
.label_154:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_191
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_191:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 2
	lea	rdi, [rdi]
	xor	r11d, r11d
	nop	
	mov	bl, r13b
	lea	rsi, [rsi]
	jmp	.label_115
	nop	word ptr cs:[rax + rax]
.label_183:
	lea	rsi, [rsi]
	mov	bl, r13b
	mov	r14, rdi
.label_115:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_82
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], bl
	lea	rdi, [rdi]
	jmp	.label_82
.label_122:
	nop	
	mov	rcx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	jmp	.label_92
.label_125:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_92:
	cmp	rcx, r10
	jae	.label_99
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_99:
	lea	rsi, [rsi]
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	lea	rsi, [rsi]
	mov	r13b, 0x30
	cmp	edi, 2
	lea	rsi, [rsi]
	je	.label_108
	lea	rdx, [rsi + 1]
	lea	rsi, [rsi]
	cmp	rdx, rbp
	jae	.label_175
	nop	
	mov	dl, byte ptr [r9 + rdx]
	mov	rbp, rbp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	mov	rbp, rbp
	cmp	edx, 9
	mov	rsp, rsp
	ja	.label_121
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_196
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	nop	
	mov	rsi, rbx
.label_196:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_143
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsp, rsp
	mov	rsi, rbx
.label_143:
	mov	rsp, rsp
	add	rcx, 3
	xor	r15d, r15d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rdi, [rdi]
	jmp	.label_89
.label_108:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_89
.label_175:
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_89
.label_121:
	xor	r15d, r15d
	jmp	.label_89
.label_135:
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_168
.label_138:
	xor	r15d, r15d
	nop	
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	jmp	.label_81
.label_155:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	jae	.label_182
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_190:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	byte ptr [rax + rbx], 0
	nop	
	je	.label_150
	lea	rax, [rsi + rbx + 1]
	lea	rsi, [rsi]
	inc	rbx
	cmp	rax, rbp
	jb	.label_190
	xor	r15d, r15d
	nop	
	jmp	.label_168
.label_182:
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_81:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_168:
	mov	byte ptr [rsp + 0xa6], r8b
	lea	rdi, [rdi]
	jmp	.label_144
.label_150:
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_168
.label_85:
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_89
.label_90:
	mov	rsp, rsp
	xor	r15d, r15d
	nop	
	mov	rsi, rbx
	jmp	.label_89
	nop	word ptr cs:[rax + rax]
.label_111:
	cmp	qword ptr [rsp + 0xf0], 0
	mov	rbp, rbp
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	and	cl, 1
	je	.label_87
	lea	rdi, [rdi]
	or	dl, al
	lea	rdi, [rdi]
	je	.label_96
.label_87:
	nop	
	mov	qword ptr [rsp + 0xc0], rbp
	mov	rsp, rsp
	mov	r12, r9
	nop	
	test	cl, cl
	setne	al
	lea	rdi, [rdi]
	cmp	r14d, 2
	nop	
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	lea	rdi, [rdi]
	test	sil, 1
	lea	rdi, [rdi]
	je	.label_104
	lea	rdi, [rdi]
	or	dl, al
	jne	.label_104
	lea	rdi, [rdi]
	test	r8b, 1
	jne	.label_119
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_104
	lea	rdi, [rdi]
	test	r10, r10
	nop	
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	r15b, dl
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_128
.label_104:
	nop	
	mov	rdx, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	test	rdx, rdx
	je	.label_141
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_141
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_141
	inc	rdx
	nop	dword ptr [rax + rax]
.label_161:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_153
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_153:
	nop	
	inc	qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	inc	rdx
	test	al, al
	jne	.label_161
.label_141:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_167
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_167
.label_97:
	lea	rdi, [rdi]
	mov	rdx, r9
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_91:
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rsi, [rsi]
	mov	r8d, 4
	cmove	r8d, r14d
	lea	rsi, [rsi]
	cmp	r14d, 2
	mov	rbp, rbp
	cmovne	r8d, r14d
	nop	
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	mov	rax, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	rsi, r10
	mov	rcx, rbp
.label_100:
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_167:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	nop	
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
.label_172:
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_91
.label_96:
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rbp, rbp
	jmp	.label_91
.label_119:
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x80]
	lea	rdi, [rdi]
	mov	rdx, r12
	nop	
	mov	rcx, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	jmp	.label_100
.label_188:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042b0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	lea	rdi, [rdi]
	mov	rax, rdx
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rcx, rax
	mov	rbp, rbp
	jmp	quotearg_alloc_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042d0

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	lea	rsi, [rsi]
	mov	rbx, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rbx
	mov	rsp, rsp
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], r14
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r12, rcx
	mov	rbp, rbp
	call	__errno_location
	mov	qword ptr [rsp + 0x38], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x44], ecx
	test	rbx, rbx
	lea	rsi, [rsi]
	sete	al
	movzx	ebp, al
	lea	rsi, [rsi]
	or	ebp, dword ptr [r12 + 4]
	mov	rbp, rbp
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	nop	
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], r13
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	lea	rsi, [rsi]
	mov	r9d, ebp
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	r15, [rbx + 1]
	lea	rsi, [rsi]
	mov	rdi, r15
	call	xcharalloc
	nop	
	mov	r14, rax
	lea	rsi, [rsi]
	mov	r8d, dword ptr [r12]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp], r13
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x44]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	dword ptr [rdx], ecx
	je	.label_203
	mov	qword ptr [rax], rbx
.label_203:
	mov	rax, r14
	mov	rsp, rsp
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404420
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_204
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_208:
	mov	rdi, qword ptr [r15]
	nop	
	call	free
	mov	rbp, rbp
	inc	rbx
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	lea	rsi, [rsi]
	add	r15, 0x10
	cmp	rbx, rax
	mov	rsp, rsp
	jl	.label_208
.label_204:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_207
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_205]], OFFSET FLAT:slot0
.label_207:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_206
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_206:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044e0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x4044f0

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x48
	nop	
	mov	r12, rcx
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_214
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_210
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_211
.label_210:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_213
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	mov	r13d, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, r13
	cmovne	rdi, rbp
	mov	rsp, rsp
	lea	r15d, [rbx + 1]
	mov	rbp, rbp
	movsxd	rsi, ebx
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, r13
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_215
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_215:
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	lea	rdi, [rdi]
	add	rdi, rax
	lea	rsi, [rsi]
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [dword ptr [rip + nslots]],  ebp
	mov	rbp, rbp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x38]
.label_211:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	movsxd	r13, ebx
	mov	rsp, rsp
	shl	r13, 4
	mov	r15, qword ptr [rbp + r13]
	mov	rbx, qword ptr [rbp + r13 + 8]
	nop	
	mov	rcx, r12
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	mov	rsp, rsp
	lea	rdx, [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rdx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x40]
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	nop	
	mov	r14, rax
	cmp	r15, r14
	ja	.label_212
	nop	
	lea	rax, [rbp + r13]
	lea	rsi, [rsi]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	lea	rdi, [rdi]
	mov	qword ptr [rax], r14
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	mov	rbp, rbp
	je	.label_209
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_209:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	call	xcharalloc
	mov	rbx, rax
	nop	
	mov	qword ptr [rbp], rbx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rcx]
	nop	
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
.label_212:
	mov	rax, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x2c]
	mov	dword ptr [rax], ecx
	mov	rax, rbx
	add	rsp, 0x48
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_214:
	lea	rdi, [rdi]
	call	abort
.label_213:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x404760

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404770
	.globl quotearg
	.type quotearg, @function
quotearg:

	nop
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rsi, rax
	jmp	quotearg_n
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404790
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rcx, rdi
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsi, rcx
	lea	rsi, [rsi]
	mov	rdx, rax
	jmp	quotearg_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4047b0

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	nop
	push	rbp
	mov	rbp, rbp
	push	r14
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x40
	mov	rsp, rsp
	mov	rbx, rdx
	mov	ebp, edi
	nop	
	lea	r14, [rsp + 8]
	lea	rdi, [rdi]
	mov	rdi, r14
	call	quoting_options_from_style
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, rbx
	mov	rcx, r14
	call	quotearg_n_options
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404810

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	mov	rbp, rbp
	sub	rsp, 0x38
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	mov	rbp, rbp
	je	.label_216
	mov	dword ptr [rdi], esi
	nop	
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rdi + 0x34], eax
	lea	rsi, [rsi]
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	nop	
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rdi + 0x24], xmm2
	movups	xmmword ptr [rdi + 0x14], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi + 4], xmm0
	lea	rdi, [rdi]
	mov	rax, rdi
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
.label_216:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404880

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x38
	nop	
	mov	r14, rcx
	lea	rdi, [rdi]
	mov	rbx, rdx
	lea	rsi, [rsi]
	mov	ebp, edi
	lea	rsi, [rsi]
	lea	r15, [rsp]
	nop	
	mov	rdi, r15
	call	quoting_options_from_style
	mov	edi, ebp
	nop	
	mov	rsi, rbx
	nop	
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r14
	nop	
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4048e0
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	mov	rax, rsi
	mov	rbp, rbp
	mov	ecx, edi
	xor	edi, edi
	mov	esi, ecx
	mov	rbp, rbp
	mov	rdx, rax
	jmp	quotearg_n_style
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404900
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	mov	rax, rdx
	mov	rcx, rsi
	lea	rsi, [rsi]
	mov	edx, edi
	xor	edi, edi
	mov	esi, edx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_style_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404920

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x40
	mov	eax, edx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rbx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_217]]
	mov	qword ptr [rsp + 0x30], rcx
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_218]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_219]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	lea	r15, [rsp]
	lea	rsi, [rsi]
	mov	edx, 1
	mov	rsp, rsp
	mov	rdi, r15
	mov	esi, eax
	mov	rbp, rbp
	call	set_char_quoting
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsi, rbx
	nop	
	mov	rdx, r14
	mov	rsp, rsp
	mov	rcx, r15
	call	quotearg_n_options
	nop	
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4049c0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	lea	rdi, [rdi]
	mov	rsi, -1
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rbp, rbp
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4049e0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	mov	esi, 0x3a
	mov	rbp, rbp
	jmp	quotearg_char
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049f0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a00
	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:

	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r14, rdx
	mov	ebp, edi
	lea	rsi, [rsi]
	lea	rbx, [rsp + 8]
	mov	rdi, rbx
	mov	rbp, rbp
	call	quoting_options_from_style
	nop	
	mov	esi, 0x3a
	lea	rdi, [rdi]
	mov	edx, 1
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	call	set_char_quoting
	mov	rdx, -1
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rcx, rbx
	mov	rsp, rsp
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x40
	nop	
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a70

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	lea	rsi, [rsi]
	mov	r8, -1
	nop	
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404a80

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	r14, r8
	mov	rbp, rbp
	mov	rbx, rcx
	mov	ebp, edi
	mov	rax,  qword ptr [word ptr [rip + label_217]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_218]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_219]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	rdi, r15
	call	set_custom_quoting
	mov	edi, ebp
	nop	
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, r14
	mov	rcx, r15
	mov	rsp, rsp
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404b10
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	mov	rax, rdx
	mov	rsp, rsp
	mov	rcx, rsi
	mov	rdx, rdi
	nop	
	xor	edi, edi
	mov	rsi, rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	jmp	quotearg_n_custom
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404b40
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	mov	rax, rcx
	mov	rcx, rdx
	mov	rbp, rbp
	mov	rdx, rsi
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	r8, rax
	mov	rsp, rsp
	jmp	quotearg_n_custom_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b70

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b80
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	nop	
	mov	rcx, rdi
	xor	edi, edi
	lea	rdi, [rdi]
	mov	rsi, rcx
	mov	rdx, rax
	lea	rsi, [rsi]
	jmp	quote_n_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ba0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404bb0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x404bc0

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	nop	
	sub	rsp, 0x10
	mov	r14d, esi
	lea	rsi, [rsi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	mov	rbp, rbp
	call	dcgettext
	cmp	rax, rbx
	mov	rsp, rsp
	jne	.label_220
	mov	rsp, rsp
	call	locale_charset
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0
	mov	rsp, rsp
	mov	dword ptr [rsp], 0
	nop	
	mov	esi, 0x55
	mov	rbp, rbp
	mov	edx, 0x54
	mov	rsp, rsp
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	call	strcaseeq0
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_221
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	ecx, 0x60
	je	.label_220
	nop	
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_220
.label_221:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 8], 0x30
	mov	dword ptr [rsp], 0x33
	lea	rdi, [rdi]
	mov	esi, 0x47
	nop	
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	rbp, rbp
	mov	r8d, 0x38
	mov	rsp, rsp
	mov	r9d, 0x30
	mov	rdi, rbp
	call	strcaseeq0
	test	eax, eax
	mov	rbp, rbp
	je	.label_222
	nop	
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x60
	lea	rdi, [rdi]
	je	.label_220
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_220
.label_222:
	cmp	r14d, 9
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12
	lea	rsi, [rsi]
	cmove	rax, rcx
.label_220:
	add	rsp, 0x10
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404cf0

	.globl strcaseeq0
	.type strcaseeq0, @function
strcaseeq0:
	mov	rsp, rsp
	push	rbp
	nop	
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	push	rax
	mov	rbp, rbp
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	nop	
	mov	r13d, edx
	lea	rsi, [rsi]
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	lea	rsi, [rsi]
	call	c_isupper
	movsx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_224
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	lea	rdi, [rdi]
	je	.label_223
	jmp	.label_225
.label_224:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rdi, [rdi]
	jne	.label_225
.label_223:
	mov	rsp, rsp
	mov	eax, 1
	test	bpl, bpl
	mov	rsp, rsp
	je	.label_225
	mov	al, byte ptr [rsp + 0x40]
	movsx	ecx, byte ptr [rsp + 0x48]
	lea	rsi, [rsi]
	mov	dword ptr [rsp], ecx
	movsx	esi, r13b
	movsx	edx, r12b
	nop	
	movsx	ecx, r15b
	nop	
	movsx	r8d, r14b
	mov	rbp, rbp
	movsx	r9d, al
	mov	rdi, rbx
	call	strcaseeq1
.label_225:
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404db0

	.globl strcaseeq1
	.type strcaseeq1, @function
strcaseeq1:
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rbp, rbp
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 4], r9d
	lea	rdi, [rdi]
	mov	r15d, r8d
	mov	rbp, rbp
	mov	r12d, ecx
	mov	r13d, edx
	mov	rsp, rsp
	mov	ebp, esi
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	r14b, byte ptr [rsp + 0x40]
	lea	rsi, [rsi]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 1]
	nop	
	test	al, al
	mov	rsp, rsp
	je	.label_228
	nop	
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	nop	
	je	.label_227
	lea	rsi, [rsi]
	jmp	.label_226
.label_228:
	lea	rsi, [rsi]
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_226
.label_227:
	lea	rdi, [rdi]
	mov	eax, 1
	test	bpl, bpl
	lea	rdi, [rdi]
	je	.label_226
	nop	
	movsx	esi, r13b
	mov	rbp, rbp
	movsx	edx, r12b
	lea	rdi, [rdi]
	movsx	ecx, r15b
	mov	eax, dword ptr [rsp + 4]
	movsx	r8d, al
	lea	rdi, [rdi]
	movsx	r9d, r14b
	mov	rbp, rbp
	mov	rdi, rbx
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	jmp	strcaseeq2
.label_226:
	add	rsp, 8
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404ea0

	.globl strcaseeq2
	.type strcaseeq2, @function
strcaseeq2:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r14d, r9d
	lea	rdi, [rdi]
	mov	r15d, r8d
	mov	rbp, rbp
	mov	r12d, ecx
	mov	r13d, edx
	lea	rsi, [rsi]
	mov	ebp, esi
	mov	rbx, rdi
	nop	
	mov	edi, ebp
	call	c_isupper
	mov	rbp, rbp
	movsx	ecx, byte ptr [rbx + 2]
	test	al, al
	je	.label_231
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_230
	jmp	.label_229
.label_231:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	movzx	edx, bpl
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_229
.label_230:
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_229
	lea	rdi, [rdi]
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	jmp	strcaseeq3
.label_229:
	mov	rsp, rsp
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f70

	.globl strcaseeq3
	.type strcaseeq3, @function
strcaseeq3:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	r14d, r8d
	mov	r15d, ecx
	mov	rbp, rbp
	mov	r12d, edx
	lea	rdi, [rdi]
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	nop	
	call	c_isupper
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rbx + 3]
	nop	
	test	al, al
	je	.label_234
	lea	rsi, [rsi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_233
	jmp	.label_232
.label_234:
	xor	eax, eax
	mov	rsp, rsp
	movzx	edx, bpl
	movzx	ecx, cl
	nop	
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_232
.label_233:
	lea	rsi, [rsi]
	mov	eax, 1
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_232
	movsx	esi, r12b
	mov	rsp, rsp
	movsx	edx, r15b
	mov	rsp, rsp
	movsx	ecx, r14b
	nop	
	mov	rdi, rbx
	pop	rbx
	nop	
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq4
.label_232:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405010

	.globl strcaseeq4
	.type strcaseeq4, @function
strcaseeq4:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	r14d, ecx
	lea	rdi, [rdi]
	mov	r15d, edx
	nop	
	mov	ebp, esi
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	edi, ebp
	nop	
	call	c_isupper
	nop	
	movsx	ecx, byte ptr [rbx + 4]
	mov	rbp, rbp
	test	al, al
	mov	rbp, rbp
	je	.label_237
	lea	rdi, [rdi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	mov	rsp, rsp
	je	.label_236
	nop	
	jmp	.label_235
.label_237:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_235
.label_236:
	mov	eax, 1
	test	bpl, bpl
	je	.label_235
	lea	rdi, [rdi]
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	jmp	strcaseeq5
.label_235:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050b0

	.globl strcaseeq5
	.type strcaseeq5, @function
strcaseeq5:
	push	rbp
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	mov	r14d, edx
	mov	rsp, rsp
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 5]
	lea	rsi, [rsi]
	test	al, al
	nop	
	je	.label_240
	mov	rsp, rsp
	and	ecx, 0xffffffdf
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ecx, ebp
	lea	rsi, [rsi]
	je	.label_239
	lea	rsi, [rsi]
	jmp	.label_238
.label_240:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	nop	
	jne	.label_238
.label_239:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	test	bpl, bpl
	nop	
	je	.label_238
	movsx	esi, r14b
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	rbp
	jmp	strcaseeq6
.label_238:
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405140

	.globl strcaseeq6
	.type strcaseeq6, @function
strcaseeq6:
	nop
	push	rbp
	mov	rbp, rbp
	push	rbx
	push	rax
	nop	
	mov	ebp, esi
	nop	
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	mov	rsp, rsp
	movsx	ecx, byte ptr [rbx + 6]
	test	al, al
	mov	rsp, rsp
	je	.label_243
	and	ecx, 0xffffffdf
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_242
	jmp	.label_241
.label_243:
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_241
.label_242:
	mov	eax, 1
	nop	
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_241
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_241:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4051b0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	xor	edi, edi
	lea	rsi, [rsi]
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	je	.label_244
	mov	eax, 1
	mov	rsp, rsp
	test	ecx, 0xffffffdf
	lea	rdi, [rdi]
	jne	.label_246
	mov	rbp, rbp
	jmp	.label_245
.label_244:
	mov	eax, 1
	lea	rsi, [rsi]
	test	cl, cl
	je	.label_245
.label_246:
	xor	eax, eax
.label_245:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405200

	.globl try_tempname_len
	.type try_tempname_len, @function
try_tempname_len:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	push	r15
	nop	
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r14, r8
	mov	qword ptr [rsp + 0x28], rcx
	mov	qword ptr [rsp + 0x20], rdx
	mov	ebx, esi
	mov	rbp, rbp
	mov	r15, rdi
	nop	
	call	__errno_location
	mov	qword ptr [rsp + 0x30], rax
	nop	
	mov	r12d, dword ptr [rax]
	nop	
	mov	rdi, r15
	call	strlen
	mov	rbp, rax
	lea	rsi, [rsi]
	movsxd	rbx, ebx
	lea	rsi, [rsi]
	lea	rax, [rbx + r14]
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rsp, rsp
	sub	rdi, rax
	mov	rbp, rbp
	jb	.label_247
	nop	
	add	rdi, r15
	mov	rsi, r14
	call	check_x_suffix
	mov	rbp, rbp
	test	al, al
	nop	
	je	.label_247
	mov	dword ptr [rsp + 0xc], r12d
	nop	
	mov	qword ptr [rsp + 0x10], r15
	nop	
	xor	r13d, r13d
	mov	rsp, rsp
	xor	edi, edi
	mov	rsi, r14
	call	randint_all_new
	mov	r15, rax
	mov	r12d, 0xffffffff
	test	r15, r15
	je	.label_249
	sub	rbp, rbx
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	add	rbp, r12
	lea	rsi, [rsi]
	mov	rax, r14
	neg	rax
	mov	qword ptr [rsp + 0x18], rax
	nop	
.label_251:
	test	r14, r14
	nop	
	mov	rbx, qword ptr [rsp + 0x18]
	je	.label_248
	nop	dword ptr [rax + rax]
.label_252:
	mov	rsp, rsp
	mov	esi, 0x3d
	lea	rdi, [rdi]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	randint_genmax
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rax + letters]]
	mov	byte ptr [rbp + rbx], al
	nop	
	inc	rbx
	lea	rdi, [rdi]
	jne	.label_252
.label_248:
	mov	rdi, r12
	mov	rbx, r12
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	call	qword ptr [rsp + 0x28]
	mov	rbp, rbp
	mov	r12d, eax
	test	r12d, r12d
	jns	.label_250
	mov	rax, qword ptr [rsp + 0x30]
	cmp	dword ptr [rax], 0x11
	mov	r12d, 0xffffffff
	mov	rsp, rsp
	jne	.label_253
	mov	rbp, rbp
	inc	r13d
	cmp	r13d, 0x3a2f7
	mov	r12, rbx
	jbe	.label_251
	mov	rdi, r15
	nop	
	call	randint_all_free
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	mov	dword ptr [rax], 0x11
	mov	r12d, 0xffffffff
	mov	rsp, rsp
	jmp	.label_249
.label_247:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x30]
	mov	dword ptr [rax], 0x16
	nop	
	mov	r12d, 0xffffffff
.label_249:
	mov	rbp, rbp
	mov	eax, r12d
	add	rsp, 0x38
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	nop	
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_250:
	mov	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rsp + 0xc]
	mov	dword ptr [rax], ecx
.label_253:
	mov	rbp, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	ebx, dword ptr [rbp]
	lea	rsi, [rsi]
	mov	rdi, r15
	call	randint_all_free
	mov	rbp, rbp
	mov	dword ptr [rbp], ebx
	mov	rsp, rsp
	jmp	.label_249
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053f0

	.globl check_x_suffix
	.type check_x_suffix, @function
check_x_suffix:
	push	rbx
	mov	rbp, rbp
	mov	rbx, rsi
	mov	esi, 0x58
	mov	rbp, rbp
	call	__strspn_c1
	lea	rsi, [rsi]
	cmp	rax, rbx
	lea	rdi, [rdi]
	setae	al
	pop	rbx
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405420

	.globl gen_tempname_len
	.type gen_tempname_len, @function
gen_tempname_len:
	mov	rbp, rbp
	push	rax
	mov	dword ptr [rsp + 4], edx
	nop	
	cmp	ecx, 3
	jae	.label_254
	lea	rsi, [rsi]
	movsxd	rax, ecx
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_255]]
	lea	rsi, [rsi]
	lea	rdx, [rsp + 4]
	call	try_tempname_len
	pop	rcx
	ret	
.label_254:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str_4
	mov	esi, OFFSET FLAT:.str.1_2
	mov	rsp, rsp
	mov	edx, 0x147
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.gen_tempname_len
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405470

	.globl try_file
	.type try_file, @function
try_file:
	mov	esi, dword ptr [rsi]
	and	esi, 0xffffff3c
	lea	rdi, [rdi]
	or	esi, 0xc2
	mov	edx, 0x180
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	jmp	open
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054a0

	.globl try_dir
	.type try_dir, @function
try_dir:
	mov	esi, 0x1c0
	lea	rsi, [rsi]
	jmp	mkdir
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4054b0

	.globl try_nocreate
	.type try_nocreate, @function
try_nocreate:
	lea	rdi, [rdi]
	sub	rsp, 0x98
	lea	rsi, [rsp + 8]
	lea	rsi, [rsi]
	call	__lstat
	test	eax, eax
	je	.label_257
	lea	rsi, [rsi]
	call	__errno_location
	cmp	dword ptr [rax], 0x4b
	jne	.label_256
.label_257:
	call	__errno_location
	mov	dword ptr [rax], 0x11
.label_256:
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 2
	mov	eax, 0xffffffff
	cmove	eax, ecx
	add	rsp, 0x98
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405500
	.globl gen_tempname
	.type gen_tempname, @function
gen_tempname:

	lea	rdi, [rdi]
	mov	r8d, 6
	jmp	gen_tempname_len
	nop	
	.section	.text
	.align	32
	#Procedure 0x405510
	.globl try_tempname
	.type try_tempname, @function
try_tempname:

	mov	r8d, 6
	lea	rsi, [rsi]
	jmp	try_tempname_len
	nop	
	.section	.text
	.align	32
	#Procedure 0x405520

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	nop	
	push	r15
	push	r14
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x38
	mov	r12, r9
	lea	rdi, [rdi]
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	lea	rdi, [rdi]
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_262
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_5
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_265
.label_262:
	mov	edx, OFFSET FLAT:.str.1_3
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_265:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_1
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	esi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	r8d, 0x7e3
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, r14
	lea	rsi, [rsi]
	call	__fprintf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_0
	mov	rbp, rbp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsi, r14
	nop	
	call	fputs_unlocked
	nop	
	cmp	r12, 9
	mov	rbp, rbp
	ja	.label_267
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_258]]
.label_377:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4_0
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	add	rsp, 0x38
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_267:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_260
.label_378:
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	lea	rdi, [rdi]
	mov	r8, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	jmp	__fprintf_chk
.label_379:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.6_0
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	mov	esi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, r14
	lea	rdi, [rdi]
	add	rsp, 0x38
	nop	
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	nop	
	pop	r15
	jmp	__fprintf_chk
.label_380:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.7_0
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	lea	rdi, [rdi]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_261
.label_381:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rdx, rax
	mov	rsp, rsp
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_263
.label_382:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	mov	rsp, rsp
	mov	r8, qword ptr [r15 + 8]
	mov	rbp, rbp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_259
.label_383:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_1
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbp, rbp
	mov	rbx, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x18], rbx
.label_259:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_263:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_261:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_266
.label_385:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_0
.label_260:
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	rbp, rbp
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	rax, qword ptr [r15 + 0x40]
	mov	qword ptr [rsp + 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], r11
	jmp	.label_264
.label_384:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_1
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r10, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	nop	
	mov	rdx, qword ptr [r15 + 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	nop	
	mov	qword ptr [rsp + 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
.label_264:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_266:
	mov	rbp, rbp
	call	__fprintf_chk
.label_376:
	mov	rsp, rsp
	add	rsp, 0x38
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	nop	
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405910
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_268:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_268
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405940

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_272:
	nop	
	movsxd	r10, dword ptr [r8]
	lea	rdi, [rdi]
	cmp	r10, 0x28
	ja	.label_269
	mov	r11, r10
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	rbp, rbp
	mov	dword ptr [r8], eax
	mov	rsp, rsp
	jmp	.label_271
	nop	word ptr cs:[rax + rax]
.label_269:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_271:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_270
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_272
.label_270:
	lea	rdi, [rdi]
	lea	r8, [rsp]
	mov	rsp, rsp
	call	version_etc_arn
	add	rsp, 0x58
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059d0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	nop	
	je	.label_273
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x30], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x40], xmm1
	nop	
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	nop	
	movaps	xmmword ptr [rsp + 0x70], xmm4
	nop	
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_273:
	mov	qword ptr [rsp + 0x28], r9
	nop	
	mov	qword ptr [rsp + 0x20], r8
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	mov	rbp, rbp
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], 0x20
	lea	r8, [rsp + 0xb0]
	mov	rsp, rsp
	call	version_etc_va
	lea	rdi, [rdi]
	add	rsp, 0xc8
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a80
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_1
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_1
	xor	eax, eax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	mov	rsp, rsp
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19_0
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	
	.section	.text
	.align	32
	#Procedure 0x405b10
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rsp, rsp
	div	rsi
	mov	rbp, rbp
	cmp	rax, rdi
	mov	rbp, rbp
	jb	.label_274
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_274:
	nop	
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b50

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_275
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_276
.label_275:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_276:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b80
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	lea	rdi, [rdi]
	mov	rcx, rdx
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	edx, edx
	nop	
	div	rcx
	cmp	rax, rsi
	mov	rbp, rbp
	jb	.label_277
	imul	rcx, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	jmp	xrealloc
.label_277:
	push	rax
	mov	rsp, rsp
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405bc0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_278
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_278
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_278:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_279
	test	rax, rax
	nop	
	je	.label_280
.label_279:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_280:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c10

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	nop	
	mov	r8, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_281
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_282
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_283
.label_281:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_284
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_284:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_285
.label_283:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	r8, rcx
	nop	
	mov	rsi, r8
	mov	rbp, rbp
	pop	rax
	lea	rdi, [rdi]
	jmp	xrealloc
.label_282:
	call	xalloc_die
.label_285:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405cb0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	jmp	xmalloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405cc0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	mov	rsp, rsp
	jmp	x2nrealloc
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405cd0
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	r14, rdi
	nop	
	call	xmalloc
	mov	rbx, rax
	xor	esi, esi
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rdx, r14
	call	memset
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d10
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	mov	rbp, rbp
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	nop	
	cmp	rax, rdi
	mov	rsp, rsp
	jb	.label_286
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_286
	pop	rcx
	ret	
.label_286:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x405d40

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	rbx
	nop	
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rdi, r15
	call	xmalloc
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, r15
	lea	rdi, [rdi]
	call	memcpy
	mov	rax, rbx
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d90

	.globl xstrdup
	.type xstrdup, @function
xstrdup:
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	rsp, rsp
	call	strlen
	lea	rsi, [rax + 1]
	mov	rdi, rbx
	mov	rbp, rbp
	pop	rbx
	jmp	xmemdup
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405db0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_4
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405e00

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_287
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_288
	lea	rdi, [rdi]
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	mov	rsp, rsp
	cmp	rax, rdi
	nop	
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_288
	mov	rsp, rsp
	push	rax
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0xc
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	pop	rcx
	ret	
.label_287:
	mov	ecx, 1
.label_288:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e70

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	rbx, rdi
	call	fileno
	mov	rbp, rbp
	test	eax, eax
	js	.label_289
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_291
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 1
	mov	rsp, rsp
	mov	edi, eax
	mov	rsp, rsp
	call	lseek
	lea	rsi, [rsi]
	cmp	rax, -1
	je	.label_289
.label_291:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_289
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	lea	rsi, [rsi]
	test	ebp, ebp
	je	.label_290
	call	__errno_location
	mov	dword ptr [rax], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_290:
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_289:
	lea	rsi, [rsi]
	mov	rdi, rbx
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	rbp
	nop	
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405f30

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_292
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_292
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_292:
	mov	rsp, rsp
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	
	.section	.text
	.align	32
	#Procedure 0x405f60

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	jne	.label_293
	mov	rbp, rbp
	ret	
.label_293:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, 1
	lea	rdi, [rdi]
	jmp	rpl_fseeko
	nop	
	.section	.text
	.align	32
	#Procedure 0x405f80

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	lea	rsi, [rsi]
	push	rbp
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	jne	.label_296
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_296
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_294
.label_296:
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, rbp
	mov	edx, r14d
	mov	rbp, rbp
	pop	rbx
	pop	r14
	pop	rbp
	nop	
	jmp	fseeko
.label_294:
	mov	rdi, rbx
	call	fileno
	mov	rbp, rbp
	mov	edi, eax
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	cmp	rcx, -1
	lea	rdi, [rdi]
	je	.label_295
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_295:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406030

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	r15
	mov	rsp, rsp
	push	r14
	lea	rsi, [rsi]
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	r12, rdx
	mov	r14, rsi
	test	rdi, rdi
	lea	rsi, [rsi]
	lea	rbx, [rsp + 4]
	cmovne	rbx, rdi
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	mbrtowc
	mov	r15, rax
	test	r12, r12
	mov	rsp, rsp
	je	.label_297
	nop	
	cmp	r15, -2
	jb	.label_297
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_297
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_297:
	mov	rbp, rbp
	mov	rax, r15
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4060c0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_298
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_298
.label_299:
	ret	
.label_298:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_299
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4060f0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_300
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_300:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406110
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406120
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
	.align	32
	#Procedure 0x406130
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_301
.label_302:
	ret	
.label_301:
	cmp	edi, 0x7f
	je	.label_302
	xor	eax, eax
	jmp	.label_302
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406150
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406160
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406170
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406180
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406190
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_303
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_303
.label_304:
	ret	
.label_303:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_304
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061c0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_305
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_305:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4061e0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061f0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_306
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_306:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406210
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
	.align	32
	#Procedure 0x406220
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
	.align	32
	#Procedure 0x406230

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	nop	
	push	rbx
	lea	rdi, [rdi]
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	mov	rsp, rsp
	test	rax, rax
	nop	
	je	.label_308
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_307
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_309
.label_307:
	nop	
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_308
.label_309:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_308:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406280

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	mov	rsp, rsp
	push	rax
	mov	rsp, rsp
	mov	edi, 0xe
	mov	rbp, rbp
	call	rpl_nl_langinfo
	test	rax, rax
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str_0
	nop	
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_6
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_310
	nop	
	mov	rax, rcx
.label_310:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4062c0

	.globl randint_new
	.type randint_new, @function
randint_new:
	push	rbx
	mov	rbp, rbp
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	edi, 0x18
	nop	
	call	xmalloc
	nop	
	mov	qword ptr [rax], rbx
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 8], xmm0
	mov	rbp, rbp
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4062f0

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	lea	rsi, [rsi]
	push	rax
	call	randread_new
	test	rax, rax
	je	.label_311
	lea	rdi, [rdi]
	mov	rdi, rax
	pop	rax
	mov	rsp, rsp
	jmp	randint_new
.label_311:
	xor	eax, eax
	pop	rcx
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406320
	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:

	nop
	mov	rax, qword ptr [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406330

	.globl randint_genmax
	.type randint_genmax, @function
randint_genmax:
	nop	
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	r13
	push	r12
	nop	
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x28
	lea	rsi, [rsi]
	mov	r13, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rdi]
	mov	qword ptr [rsp + 0x18], rax
	mov	rbp, rbp
	mov	r15, qword ptr [rdi + 8]
	lea	rax, [rdi + 8]
	nop	
	mov	qword ptr [rsp], rax
	mov	rbx, qword ptr [rdi + 0x10]
	mov	rsp, rsp
	lea	rbp, [r13 + 1]
	nop	
	mov	qword ptr [rsp + 0x10], rbp
	lea	r12, [rsp + 0x20]
	nop	word ptr cs:[rax + rax]
.label_313:
	cmp	rbx, r13
	jae	.label_312
	lea	rsi, [rsi]
	mov	rax, rbx
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_318:
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	shift_left
	lea	rdi, [rdi]
	add	rax, 0xff
	inc	r14
	lea	rdi, [rdi]
	cmp	rax, r13
	jb	.label_318
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r12
	mov	rsp, rsp
	mov	rdx, r14
	mov	rsp, rsp
	call	randread
	mov	rbp, r12
	nop	
.label_315:
	mov	rdi, r15
	call	shift_left
	nop	
	movzx	r15d, byte ptr [rbp]
	nop	
	add	r15, rax
	mov	rdi, rbx
	call	shift_left
	mov	rbx, rax
	add	rbx, 0xff
	lea	rdi, [rdi]
	inc	rbp
	lea	rsi, [rsi]
	cmp	rbx, r13
	jb	.label_315
	mov	rcx, r15
	nop	
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	jmp	.label_316
.label_312:
	nop	
	mov	rcx, r15
.label_316:
	mov	rsp, rsp
	mov	rsi, rbx
	sub	rsi, r13
	lea	rsi, [rsi]
	je	.label_317
	mov	rbp, rbp
	xor	edx, edx
	mov	rax, rsi
	div	rbp
	mov	rdi, rdx
	sub	rbx, rdi
	xor	edx, edx
	mov	rax, rcx
	div	rbp
	mov	r15, rdx
	mov	rbp, rbp
	dec	rdi
	cmp	rcx, rbx
	mov	rbx, rdi
	lea	rsi, [rsi]
	ja	.label_313
	xor	edx, edx
	mov	rax, rcx
	mov	rsp, rsp
	div	rbp
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx + 8], rax
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, rsi
	mov	rbp, rbp
	div	rbp
	nop	
	mov	qword ptr [rcx + 0x10], rax
	nop	
	mov	rcx, r15
	mov	rsp, rsp
	jmp	.label_314
.label_317:
	mov	rbp, rbp
	xorps	xmm0, xmm0
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	rbp, rbp
	movups	xmmword ptr [rax], xmm0
.label_314:
	mov	rax, rcx
	add	rsp, 0x28
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4064d0

	.globl shift_left
	.type shift_left, @function
shift_left:
	mov	rbp, rbp
	shl	rdi, 8
	mov	rax, rdi
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4064e0

	.globl randint_free
	.type randint_free, @function
randint_free:
	push	rbx
	mov	rbx, rdi
	mov	esi, 0x18
	call	explicit_bzero
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406500

	.globl randint_all_free
	.type randint_all_free, @function
randint_all_free:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	randread_free
	lea	rsi, [rsi]
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	randint_free
	mov	dword ptr [rbp], r15d
	mov	rbp, rbp
	mov	eax, r14d
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406550

	.globl randread_new
	.type randread_new, @function
randread_new:
	mov	rbp, rbp
	push	r15
	nop	
	push	r14
	lea	rsi, [rsi]
	push	r12
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rbp, rbp
	mov	r15, rsi
	mov	rbp, rbp
	mov	rbx, rdi
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_320
	mov	rsp, rsp
	test	rbx, rbx
	nop	
	je	.label_321
	mov	esi, OFFSET FLAT:.str_6
	mov	rdi, rbx
	call	fopen_safer
	nop	
	mov	r12, rax
	mov	rsp, rsp
	xor	r14d, r14d
	lea	rdi, [rdi]
	test	r12, r12
	nop	
	je	.label_319
	lea	rsi, [rsi]
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rsi, rbx
	nop	
	call	simple_new
	mov	r14, rax
	lea	rsi, [r14 + 0x18]
	lea	rdi, [rdi]
	cmp	r15, 0x1000
	lea	rdi, [rdi]
	mov	ecx, 0x1000
	mov	rsp, rsp
	cmovbe	rcx, r15
	xor	edx, edx
	mov	rsp, rsp
	mov	rdi, r12
	call	setvbuf
	jmp	.label_319
.label_320:
	xor	edi, edi
	xor	esi, esi
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	pop	r14
	mov	rsp, rsp
	pop	r15
	jmp	simple_new
.label_321:
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rbp, rbp
	call	simple_new
	lea	rdi, [rdi]
	mov	r14, rax
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x18], 0
	mov	rbx, r14
	mov	rsp, rsp
	add	rbx, 0x20
	mov	rdi, rbx
	mov	rsi, r15
	mov	rsp, rsp
	call	get_nonce
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	isaac_seed
.label_319:
	mov	rbp, rbp
	mov	rax, r14
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406660

	.globl simple_new
	.type simple_new, @function
simple_new:
	push	r14
	nop	
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	edi, 0x1038
	call	xmalloc
	lea	rsi, [rsi]
	mov	qword ptr [rax], rbx
	mov	qword ptr [word ptr [rax + 8]], OFFSET FLAT:randread_error
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x10], r14
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4066b0

	.globl get_nonce
	.type get_nonce, @function
get_nonce:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	nop	
	push	r14
	push	rbx
	sub	rsp, 0x18
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rbp, rbp
	mov	r14, rdi
	xor	r15d, r15d
	mov	edi, OFFSET FLAT:.str.3_1
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	call	open
	nop	
	mov	ebp, eax
	test	ebp, ebp
	js	.label_322
	cmp	rbx, 0x800
	mov	edx, 0x800
	lea	rdi, [rdi]
	cmovbe	rdx, rbx
	lea	rdi, [rdi]
	mov	edi, ebp
	mov	rbp, rbp
	mov	rsi, r14
	call	read
	mov	rbx, rax
	nop	
	mov	edi, ebp
	mov	rsp, rsp
	call	close
	xor	r15d, r15d
	nop	
	test	rbx, rbx
	mov	rsp, rsp
	js	.label_322
	mov	rbp, rbp
	cmp	rbx, 0x7ff
	mov	r15, rbx
	mov	rsp, rsp
	ja	.label_323
.label_322:
	mov	eax, 0x800
	mov	rsp, rsp
	sub	rax, r15
	mov	rbp, rbp
	cmp	rax, 0x10
	mov	ebx, 0x10
	cmovbe	rbx, rax
	lea	rbp, [rsp + 8]
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	gettimeofday
	lea	rdi, [r14 + r15]
	mov	rsi, rbp
	mov	rdx, rbx
	call	memcpy
	add	rbx, r15
	cmp	rbx, 0x7ff
	mov	rsp, rsp
	ja	.label_323
	lea	rdi, [rdi]
	mov	eax, 0x800
	lea	rdi, [rdi]
	sub	rax, rbx
	cmp	rax, 4
	lea	rsi, [rsi]
	mov	r15d, 4
	mov	rsp, rsp
	cmovbe	r15, rax
	lea	rsi, [rsi]
	call	getpid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp + 8]
	mov	rbp, rbp
	mov	rdx, r15
	call	memcpy
	add	r15, rbx
	nop	
	cmp	r15, 0x7ff
	mov	rbp, rbp
	ja	.label_323
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getppid
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + r15]
	lea	rdi, [rdi]
	lea	rsi, [rsp + 8]
	nop	
	mov	rdx, rbx
	call	memcpy
	add	rbx, r15
	cmp	rbx, 0x7ff
	ja	.label_323
	mov	eax, 0x800
	sub	rax, rbx
	lea	rsi, [rsi]
	cmp	rax, 4
	nop	
	mov	r15d, 4
	mov	rbp, rbp
	cmovbe	r15, rax
	lea	rdi, [rdi]
	call	getuid
	mov	rsp, rsp
	mov	dword ptr [rsp + 8], eax
	mov	rbp, rbp
	lea	rdi, [r14 + rbx]
	mov	rsp, rsp
	lea	rsi, [rsp + 8]
	mov	rsp, rsp
	mov	rdx, r15
	lea	rdi, [rdi]
	call	memcpy
	add	r15, rbx
	mov	rsp, rsp
	cmp	r15, 0x7ff
	ja	.label_323
	lea	rdi, [rdi]
	mov	eax, 0x800
	lea	rsi, [rsi]
	sub	rax, r15
	cmp	rax, 4
	mov	rbp, rbp
	mov	ebx, 4
	lea	rsi, [rsi]
	cmovbe	rbx, rax
	nop	
	call	getgid
	mov	dword ptr [rsp + 8], eax
	nop	
	add	r14, r15
	mov	rsp, rsp
	lea	rsi, [rsp + 8]
	nop	
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	memcpy
.label_323:
	nop	
	add	rsp, 0x18
	pop	rbx
	pop	r14
	nop	
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4068e0
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	rsp, rsp
	mov	qword ptr [rdi + 8], rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4068f0
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406900

	.globl randread
	.type randread, @function
randread:
	mov	rsp, rsp
	cmp	qword ptr [rdi], 0
	mov	rsp, rsp
	je	.label_324
	nop	
	jmp	readsource
.label_324:
	add	rdi, 0x18
	nop	
	jmp	readisaac
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406920

	.globl readsource
	.type readsource, @function
readsource:
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	r13, rdx
	nop	
	mov	r14, rsi
	nop	
	mov	r15, rdi
	mov	rcx, qword ptr [r15]
	mov	rbp, rbp
	mov	esi, 1
	mov	rbp, rbp
	mov	rdi, r14
	call	fread_unlocked
	mov	rbp, rbp
	mov	rbx, rax
	lea	rsi, [rsi]
	call	__errno_location
	mov	r12, rax
	mov	rbp, rbp
	cmp	rbx, r13
	nop	
	je	.label_326
	nop	word ptr [rax + rax]
.label_325:
	lea	rsi, [rsi]
	sub	r13, rbx
	mov	rbp, rbp
	add	r14, rbx
	nop	
	mov	ebx, dword ptr [r12]
	mov	rdi, qword ptr [r15]
	lea	rdi, [rdi]
	call	ferror_unlocked
	test	eax, eax
	cmove	ebx, eax
	mov	dword ptr [r12], ebx
	mov	rdi, qword ptr [r15 + 0x10]
	call	qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rdx, r13
	nop	
	call	fread_unlocked
	mov	rbp, rbp
	mov	rbx, rax
	cmp	r13, rbx
	jne	.label_325
.label_326:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4069e0

	.globl readisaac
	.type readisaac, @function
readisaac:
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	nop	
	push	rax
	lea	rdi, [rdi]
	mov	r15, rdx
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	r14, rdi
	mov	r12, qword ptr [r14]
	mov	rsp, rsp
	lea	r13, [r14 + 0x820]
	mov	rsi, r13
	nop	
	sub	rsi, r12
	lea	rsi, [rsi]
	add	rsi, 0x800
	cmp	r12, r15
	jae	.label_327
	nop	
	lea	rbp, [r14 + 8]
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rdx, r12
	call	memcpy
	lea	rsi, [rsi]
	add	rbx, r12
	lea	rdi, [rdi]
	sub	r15, r12
	mov	rbp, rbp
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_329:
	cmp	r15, 0x800
	jb	.label_328
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rsi, rbx
	call	isaac_refill
	lea	rsi, [rsi]
	add	rbx, 0x800
	mov	rbp, rbp
	add	r15, -0x800
	lea	rsi, [rsi]
	jne	.label_329
	jmp	.label_330
.label_328:
	lea	rdi, [rdi]
	mov	rdi, rbp
	nop	
	mov	rsi, r13
	call	isaac_refill
	nop	
	mov	r12d, 0x800
	mov	rsi, r13
.label_327:
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rdx, r15
	nop	
	call	memcpy
	mov	rsp, rsp
	sub	r12, r15
.label_330:
	mov	qword ptr [r14], r12
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	nop	
	pop	r12
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406ad0

	.globl randread_free
	.type randread_free, @function
randread_free:
	mov	rsp, rsp
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	esi, 0x1038
	nop	
	call	explicit_bzero
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	free
	mov	rbp, rbp
	test	r14, r14
	je	.label_331
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r14
	jmp	rpl_fclose
.label_331:
	xor	eax, eax
	nop	
	add	rsp, 8
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r14
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406b20

	.globl randread_error
	.type randread_error, @function
randread_error:
	mov	rsp, rsp
	push	rbp
	nop	
	push	r15
	nop	
	push	r14
	push	rbx
	push	rax
	nop	
	mov	rbx, rdi
	test	rbx, rbx
	nop	
	je	.label_332
	mov	rsp, rsp
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	lea	rsi, [rsi]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	lea	rdi, [rdi]
	jne	.label_334
	mov	esi, OFFSET FLAT:.str.1_7
	jmp	.label_333
.label_334:
	mov	esi, OFFSET FLAT:.str.2_2
.label_333:
	mov	rsp, rsp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, r14d
	mov	esi, r15d
	lea	rsi, [rsi]
	mov	rdx, rbp
	mov	rbp, rbp
	call	error
.label_332:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406bb0

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	push	rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	nop	
	sub	rsp, 0x18
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rsi
	mov	r14, rdi
	mov	rbx, qword ptr [r14 + 0x800]
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x810]
	mov	rbp, rbp
	inc	rax
	mov	r12, qword ptr [r14 + 0x808]
	add	r12, rax
	mov	qword ptr [r14 + 0x810], rax
	nop	
	lea	rax, [r14 + 0x400]
	mov	qword ptr [rsp], rax
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	r15, r14
	nop	dword ptr [rax]
.label_336:
	mov	qword ptr [rsp + 0x10], rbp
	lea	rsi, [rsi]
	mov	r13, rbx
	shl	r13, 0x15
	xor	r13, rbx
	not	r13
	add	r13, qword ptr [r15 + 0x400]
	mov	rbx, qword ptr [r15]
	mov	rdi, r14
	nop	
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	ind
	lea	rdi, [rdi]
	add	rax, r12
	lea	rdi, [rdi]
	add	rax, r13
	mov	qword ptr [r15], rax
	lea	rsi, [rsi]
	shr	rax, 8
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, rax
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	mov	rsp, rsp
	call	just
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	lea	rdi, [rdi]
	mov	rdi, r13
	call	just
	mov	rsp, rsp
	mov	rbp, rax
	lea	rdi, [rdi]
	shr	rbp, 5
	lea	rdi, [rdi]
	xor	rbp, r13
	nop	
	add	rbp, qword ptr [r15 + 0x408]
	nop	
	mov	r12, qword ptr [r15 + 8]
	mov	rdi, r14
	mov	rsi, r12
	call	ind
	mov	rbp, rbp
	add	rbx, rbp
	add	rbx, rax
	mov	qword ptr [r15 + 8], rbx
	mov	rbp, rbp
	shr	rbx, 8
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	ind
	add	r12, rax
	lea	rsi, [rsi]
	mov	rdi, r12
	call	just
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rbx
	mov	r12, rbp
	shl	r12, 0xc
	xor	r12, rbp
	add	r12, qword ptr [r15 + 0x410]
	mov	rbp, rbp
	mov	rbp, qword ptr [r15 + 0x10]
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	rbx, r12
	add	rbx, rax
	mov	qword ptr [r15 + 0x10], rbx
	shr	rbx, 8
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rbp, rbp
	call	ind
	add	rbp, rax
	mov	rdi, rbp
	call	just
	mov	rsp, rsp
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 0x10], rbp
	nop	
	mov	rdi, r12
	mov	rbp, rbp
	call	just
	mov	rbx, rax
	nop	
	shr	rbx, 0x21
	lea	rsi, [rsi]
	xor	rbx, r12
	add	rbx, qword ptr [r15 + 0x418]
	lea	rsi, [rsi]
	mov	r12, qword ptr [r15 + 0x18]
	mov	rdi, r14
	mov	rsi, r12
	nop	
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r15 + 0x18], rbp
	shr	rbp, 8
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, rbp
	mov	rbp, qword ptr [rsp + 0x10]
	call	ind
	nop	
	add	r12, rax
	nop	
	mov	rdi, r12
	lea	rsi, [rsi]
	call	just
	mov	rcx, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	r12, rax
	mov	qword ptr [rbp + 0x18], r12
	lea	rdi, [rdi]
	add	r15, 0x20
	add	rbp, 0x20
	cmp	r15, rcx
	jb	.label_336
	add	qword ptr [rsp + 8], 0x400
	lea	rax, [r14 + 0x800]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	nop	
.label_335:
	nop	
	mov	r13, rbx
	shl	r13, 0x15
	nop	
	xor	r13, rbx
	not	r13
	add	r13, qword ptr [rcx - 0x400]
	mov	rsp, rsp
	mov	rbx, qword ptr [rcx]
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsi, rbx
	mov	r15, rcx
	call	ind
	mov	rsp, rsp
	add	rax, r12
	add	rax, r13
	mov	qword ptr [r15], rax
	shr	rax, 8
	mov	rdi, r14
	mov	rsi, rax
	nop	
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rsp, rsp
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax], rbp
	mov	rdi, r13
	lea	rsi, [rsi]
	call	just
	mov	rbx, rax
	shr	rbx, 5
	lea	rdi, [rdi]
	xor	rbx, r13
	mov	rbp, rbp
	add	rbx, qword ptr [r15 - 0x3f8]
	nop	
	mov	r12, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, r12
	nop	
	call	ind
	add	rbp, rbx
	add	rbp, rax
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 8], rbp
	mov	rsp, rsp
	shr	rbp, 8
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, rbp
	call	ind
	lea	rsi, [rsi]
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	rbp, rax
	mov	r13, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	qword ptr [r13 + 8], rbp
	mov	r12, rbx
	shl	r12, 0xc
	xor	r12, rbx
	nop	
	add	r12, qword ptr [r15 - 0x3f0]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r15 + 0x10]
	mov	rdi, r14
	nop	
	mov	rsi, rbx
	call	ind
	mov	rsp, rsp
	add	rbp, r12
	lea	rsi, [rsi]
	add	rbp, rax
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x10], rbp
	shr	rbp, 8
	lea	rdi, [rdi]
	mov	rdi, r14
	nop	
	mov	rsi, rbp
	call	ind
	add	rbx, rax
	nop	
	mov	rdi, rbx
	call	just
	nop	
	mov	rbp, rax
	mov	qword ptr [r13 + 0x10], rbp
	mov	rdi, r12
	call	just
	mov	rbx, rax
	lea	rdi, [rdi]
	shr	rbx, 0x21
	mov	rsp, rsp
	xor	rbx, r12
	add	rbx, qword ptr [r15 - 0x3e8]
	mov	rbp, rbp
	mov	r12, qword ptr [r15 + 0x18]
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsi, r12
	mov	rbp, rbp
	call	ind
	lea	rdi, [rdi]
	add	rbp, rbx
	add	rbp, rax
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x18], rbp
	mov	rbp, rbp
	shr	rbp, 8
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, rbp
	lea	rdi, [rdi]
	call	ind
	mov	rbp, rbp
	add	r12, rax
	mov	rdi, r12
	lea	rdi, [rdi]
	call	just
	mov	rbp, rbp
	mov	rcx, r15
	mov	rbp, rbp
	mov	r12, rax
	mov	rax, r13
	mov	qword ptr [rax + 0x18], r12
	nop	
	add	rcx, 0x20
	add	rax, 0x20
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rsp + 0x10]
	jb	.label_335
	mov	qword ptr [r14 + 0x800], rbx
	mov	qword ptr [r14 + 0x808], r12
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407000

	.globl ind
	.type ind, @function
ind:
	and	esi, 0x7f8
	mov	rax, qword ptr [rdi + rsi]
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407010

	.globl just
	.type just, @function
just:
	mov	rsp, rsp
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407020

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rdi
	movabs	rbp, 0x647c4677a2884b7c
	movabs	r15, 0xb9f8b322c73ac862
	movabs	r14, 0x8c0ea5053d4712a0
	mov	rbp, rbp
	movabs	rbx, 0xb29b2e824a595524
	movabs	r13, 0x82f053db8355e0ce
	lea	rdi, [rdi]
	movabs	rdx, 0x48fe4a0fa5a09315
	mov	rbp, rbp
	movabs	rax, 0xae985bf2cbfc89ed
	movabs	r12, 0x98f5704f6c44c0ab
	mov	rbp, rbp
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_338:
	mov	qword ptr [rsp + 0x18], rcx
	add	rbp, qword ptr [rdi + rcx*8]
	lea	rdi, [rdi]
	add	r15, qword ptr [rdi + rcx*8 + 8]
	mov	rbp, rbp
	add	r14, qword ptr [rdi + rcx*8 + 0x10]
	lea	rsi, [rsi]
	add	rbx, qword ptr [rdi + rcx*8 + 0x18]
	mov	rbp, rbp
	add	r13, qword ptr [rdi + rcx*8 + 0x20]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rdi + rcx*8 + 0x28]
	mov	qword ptr [rsp + 0x30], rdx
	add	rax, qword ptr [rdi + rcx*8 + 0x30]
	mov	qword ptr [rsp + 0x28], rax
	add	r12, qword ptr [rdi + rcx*8 + 0x38]
	sub	rbp, r13
	mov	rbp, rbp
	mov	rdi, r12
	call	just
	nop	
	shr	rax, 9
	xor	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rax
	nop	
	add	r12, rbp
	nop	
	sub	r15, rax
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, rbp
	shl	rbp, 9
	lea	rsi, [rsi]
	xor	rbp, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x28], rbp
	nop	
	sub	r14, rbp
	mov	rdi, r15
	call	just
	shr	rax, 0x17
	mov	rsp, rsp
	xor	r12, rax
	add	r15, r14
	nop	
	mov	qword ptr [rsp], r15
	mov	rbp, rbp
	sub	rbx, r12
	nop	
	lea	rax, [rbx + r14]
	mov	qword ptr [rsp + 8], rax
	shl	r14, 0xf
	mov	rsp, rsp
	mov	rbp, r14
	xor	rbp, qword ptr [rsp + 0x10]
	sub	r13, rbp
	mov	rdi, rbx
	mov	rsp, rsp
	call	just
	mov	rbp, rbp
	mov	r15, rax
	mov	rbp, rbp
	shr	r15, 0xe
	mov	rbp, rbp
	xor	r15, qword ptr [rsp]
	add	rbx, r13
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rbx
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x30]
	sub	rdi, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rdi
	mov	r14, r13
	lea	rsi, [rsi]
	shl	r14, 0x14
	mov	rsp, rsp
	xor	r14, qword ptr [rsp + 8]
	mov	rbp, rbp
	add	r13, rdi
	mov	qword ptr [rsp + 8], r13
	mov	r13, qword ptr [rsp + 0x28]
	nop	
	sub	r13, r14
	nop	
	call	just
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rbx, rax
	mov	rsp, rsp
	shr	rbx, 0x11
	xor	rbx, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	rax, r13
	mov	rbp, rbp
	add	rdx, rax
	lea	rsi, [rsi]
	sub	r12, rbx
	mov	rbp, rbp
	shl	r13, 0xe
	nop	
	xor	r13, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	add	rax, r12
	mov	rsp, rsp
	mov	qword ptr [rdi + rcx*8], rbp
	mov	qword ptr [rdi + rcx*8 + 8], r15
	mov	rbp, rbp
	mov	qword ptr [rdi + rcx*8 + 0x10], r14
	mov	rbp, rbp
	mov	qword ptr [rdi + rcx*8 + 0x18], rbx
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rcx*8 + 0x20], r13
	lea	rsi, [rsi]
	mov	qword ptr [rdi + rcx*8 + 0x28], rdx
	mov	qword ptr [rdi + rcx*8 + 0x30], rax
	mov	qword ptr [rdi + rcx*8 + 0x38], r12
	lea	rdi, [rdi]
	add	rcx, 8
	cmp	rcx, 0x100
	jl	.label_338
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_337:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rcx
	add	rbp, qword ptr [rdi + rcx*8]
	mov	rbp, rbp
	add	r15, qword ptr [rdi + rcx*8 + 8]
	lea	rdi, [rdi]
	add	r14, qword ptr [rdi + rcx*8 + 0x10]
	mov	rsp, rsp
	add	rbx, qword ptr [rdi + rcx*8 + 0x18]
	add	r13, qword ptr [rdi + rcx*8 + 0x20]
	add	rdx, qword ptr [rdi + rcx*8 + 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rdx
	add	rax, qword ptr [rdi + rcx*8 + 0x30]
	mov	qword ptr [rsp + 0x28], rax
	add	r12, qword ptr [rdi + rcx*8 + 0x38]
	sub	rbp, r13
	mov	rdi, r12
	lea	rsi, [rsi]
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rax
	add	r12, rbp
	sub	r15, rax
	nop	
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 0x10], rax
	shl	rbp, 9
	mov	rsp, rsp
	xor	rbp, qword ptr [rsp + 0x28]
	sub	r14, rbp
	mov	rbp, rbp
	mov	rdi, r15
	lea	rdi, [rdi]
	call	just
	shr	rax, 0x17
	xor	rax, r12
	add	r15, r14
	lea	rdi, [rdi]
	sub	rbx, rax
	mov	r12, rax
	lea	rax, [rbx + r14]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	shl	r14, 0xf
	xor	r14, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x28], r14
	sub	r13, r14
	mov	rdi, rbx
	call	just
	shr	rax, 0xe
	mov	rsp, rsp
	xor	r15, rax
	add	rbx, r13
	mov	rdi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	sub	rdi, r15
	mov	qword ptr [rsp + 0x30], rdi
	mov	rbp, rbp
	mov	r14, r13
	mov	rbp, rbp
	shl	r14, 0x14
	xor	r14, qword ptr [rsp + 8]
	mov	rsp, rsp
	add	r13, rdi
	lea	rdi, [rdi]
	sub	rbp, r14
	lea	rdi, [rdi]
	call	just
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	shr	rax, 0x11
	xor	rbx, rax
	mov	rdx, qword ptr [rsp + 0x30]
	add	rdx, rbp
	nop	
	sub	r12, rbx
	mov	rax, rbp
	shl	rax, 0xe
	xor	r13, rax
	lea	rdi, [rdi]
	add	rbp, r12
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x28]
	mov	qword ptr [rdi + rcx*8], rsi
	mov	qword ptr [rdi + rcx*8 + 8], r15
	mov	rsp, rsp
	mov	qword ptr [rdi + rcx*8 + 0x10], r14
	mov	rsp, rsp
	mov	qword ptr [rdi + rcx*8 + 0x18], rbx
	mov	qword ptr [rdi + rcx*8 + 0x20], r13
	mov	qword ptr [rdi + rcx*8 + 0x28], rdx
	mov	qword ptr [rdi + rcx*8 + 0x30], rbp
	mov	qword ptr [rdi + rcx*8 + 0x38], r12
	add	rcx, 8
	nop	
	cmp	rcx, 0x100
	mov	rax, rbp
	mov	rbp, rsi
	jl	.label_337
	mov	rbp, rbp
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rdi + 0x800], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x810], 0
	mov	rsp, rsp
	add	rsp, 0x38
	lea	rdi, [rdi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407450

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	mov	rax, rsi
	xor	esi, esi
	mov	rdx, rax
	lea	rdi, [rdi]
	jmp	memset
	.section	.text
	.align	32
	#Procedure 0x407460

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	lea	rsi, [rsi]
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407480

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	lea	rdi, [rdi]
	push	rbp
	push	r14
	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rsp, rsp
	call	fopen
	lea	rsi, [rsi]
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_341
	mov	rsp, rsp
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_342
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	call	dup_safer
	mov	rsp, rsp
	mov	ebp, eax
	test	ebp, ebp
	js	.label_339
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fclose
	mov	rbp, rbp
	test	eax, eax
	jne	.label_343
	mov	rsp, rsp
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r14
	call	fdopen
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_341
.label_343:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbx], r14d
	mov	rbp, rbp
	jmp	.label_340
.label_342:
	mov	rax, rbx
	mov	rsp, rsp
	jmp	.label_341
.label_339:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_340:
	xor	eax, eax
.label_341:
	mov	rbp, rbp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407560

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 3
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	rpl_fcntl
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x407580

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xc8
	test	al, al
	mov	rbp, rbp
	je	.label_344
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x30], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm6
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_344:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	nop	
	lea	rax, [rsp + 0xd0]
	nop	
	mov	qword ptr [rsp + 0xb8], rax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xb4], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], 0x10
	nop	
	cmp	esi, 0xb
	mov	rsp, rsp
	ja	.label_346
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	lea	rsi, [rsi]
	jb	.label_352
	mov	rsp, rsp
	mov	eax, 0x514
	lea	rsi, [rsi]
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_353
	mov	rbp, rbp
	test	esi, esi
	jne	.label_346
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_349
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	mov	rbp, rbp
	lea	ecx, [rcx + 8]
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], ecx
	lea	rdi, [rdi]
	jmp	.label_356
.label_346:
	lea	eax, [rsi - 0x400]
	lea	rdi, [rdi]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_347
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_353
	lea	rdi, [rdi]
	mov	ecx, 0x102
	bt	ecx, eax
	mov	rbp, rbp
	jae	.label_357
.label_352:
	lea	rsi, [rsi]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_353:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_348
	mov	rax, rcx
	mov	rbp, rbp
	add	rax, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_351
.label_348:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_351:
	mov	edx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_357:
	nop	
	cmp	eax, 6
	jne	.label_347
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_355
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	lea	rsi, [rsi]
	jmp	.label_345
.label_347:
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_350
	mov	rbp, rbp
	mov	rax, rcx
	mov	rsp, rsp
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_354
.label_349:
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_356:
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	call	rpl_fcntl_DUPFD
	add	rsp, 0xc8
	lea	rsi, [rsi]
	ret	
.label_355:
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_345:
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xc8
	lea	rsi, [rsi]
	ret	
.label_350:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_354:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	rsp, rsp
	call	fcntl
	lea	rsi, [rsi]
	add	rsp, 0xc8
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407820

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	lea	rdi, [rdi]
	mov	ecx, esi
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	edx, ecx
	jmp	fcntl
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407840

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	mov	rsp, rsp
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	lea	rsi, [rsi]
	js	.label_358
	mov	esi, 0x406
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	lea	rsi, [rsi]
	test	ebx, ebx
	nop	
	jns	.label_359
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	nop	
	jne	.label_359
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_360
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_361
.label_359:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	mov	rbp, rbp
	jmp	.label_361
.label_358:
	mov	rbp, rbp
	mov	edi, ebp
	mov	rbp, rbp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_361:
	test	ebx, ebx
	js	.label_360
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_360
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_362
	or	ecx, 1
	nop	
	mov	esi, 2
	mov	rbp, rbp
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	mov	rsp, rsp
	call	fcntl
	mov	rbp, rbp
	cmp	eax, -1
	mov	rbp, rbp
	jne	.label_360
.label_362:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	lea	rdi, [rdi]
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_360:
	lea	rdi, [rdi]
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
