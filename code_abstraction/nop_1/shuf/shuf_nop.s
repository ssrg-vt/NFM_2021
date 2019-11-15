	.section	.text
	.align	16
	#Procedure 0x401b90

	.globl usage
	.type usage, @function
usage:
	push	rbp
	nop	
	push	rbx
	nop	
	push	rax
	mov	rsp, rsp
	mov	ebp, edi
	test	ebp, ebp
	lea	rdi, [rdi]
	jne	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	nop	
	mov	edi, 1
	xor	eax, eax
	nop	
	mov	rsi, rcx
	lea	rsi, [rsi]
	mov	rcx, rdx
	mov	rbp, rbp
	mov	r8, rdx
	mov	rbp, rbp
	call	__printf_chk
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.2
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	call	emit_stdin_note
	mov	rbp, rbp
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.4
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	nop	
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.5
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	rbp, rbp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	nop	
	mov	edi, ebp
	call	exit
.label_8:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	__fprintf_chk
	mov	rbp, rbp
	mov	edi, ebp
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d20

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	lea	rdi, [rdi]
	push	rax
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401d50

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	lea	rdi, [rdi]
	push	rax
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d90

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	mov	rsp, rsp
	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	nop	
	mov	esi, OFFSET FLAT:.str.31
	nop	dword ptr [rax + rax]
.label_9:
	nop	
	mov	edi, OFFSET FLAT:.str.7
	call	strcmp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_10
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_9
.label_10:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:.str.7
	cmovne	rbx, rax
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.39
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi, rax
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.17
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.18
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	nop	
	call	setlocale
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_11
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.41
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_11
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
.label_11:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	r14d, OFFSET FLAT:.str.7
	mov	rbp, rbp
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.18
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.7
	xor	eax, eax
	lea	rsi, [rsi]
	call	__printf_chk
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdx, rax
	nop	
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.45
	mov	ecx, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	cmove	rcx, rax
	mov	rsp, rsp
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rdx
	nop	
	mov	rdx, rbx
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	mov	rsp, rsp
	jmp	__printf_chk
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f20

	.globl main
	.type main, @function
main:
	nop	
	push	rbp
	push	r15
	nop	
	push	r14
	mov	rbp, rbp
	push	r13
	mov	rsp, rsp
	push	r12
	nop	
	push	rbx
	nop	
	sub	rsp, 0x58
	mov	rbp, rbp
	mov	rbp, rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rbp
	mov	dword ptr [rsp + 0x38], edi
	nop	
	mov	qword ptr [rsp + 0x50], 0
	mov	qword ptr [rsp + 0x48], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp]
	nop	
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.9
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.10
	call	bindtextdomain
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.9
	lea	rsi, [rsi]
	call	textdomain
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:close_stdout
	mov	rsp, rsp
	call	atexit
	mov	rsp, rsp
	mov	r15, -1
	mov	rbp, rbp
	mov	r14b, 0xa
	nop	
	xor	ecx, ecx
	mov	rsp, rsp
	mov	ebx, 0
	mov	eax, 0
	mov	qword ptr [rsp + 0x28], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], -1
	xor	r12d, r12d
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
.label_685:
	mov	r13b, cl
	jmp	.label_27
.label_48:
	mov	rbp, rbp
	xor	r14d, r14d
	nop	
.label_27:
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.11
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:long_opts
	xor	r8d, r8d
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0x38]
	mov	rsi, rbp
	lea	rdi, [rdi]
	call	getopt_long
	mov	cl, 1
	lea	rdi, [rdi]
	cmp	eax, 0x68
	jle	.label_22
	nop	
	lea	edx, [rax - 0x69]
	mov	rsp, rsp
	cmp	edx, 9
	ja	.label_14
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_43]]
.label_682:
	nop	
	mov	byte ptr [rsp + 8], r13b
	mov	rsp, rsp
	mov	r13, r14
	lea	rsi, [rsi]
	mov	r14, r15
	mov	rbp, rbp
	mov	r15, rbx
	mov	rsp, rsp
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	mov	esi, 0x2d
	mov	rsp, rsp
	mov	rdi, rbp
	call	strchr
	mov	rbx, rax
	test	r12b, r12b
	jne	.label_62
	test	rbx, rbx
	je	.label_42
	mov	byte ptr [rbx], 0
	nop	
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rbp, rbp
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoumax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rax
	mov	byte ptr [rbx], 0x2d
	lea	rbp, [rbx + 1]
.label_42:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rdx, -1
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	lea	rsi, [rsi]
	call	xdectoumax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rax
	mov	rcx, rax
	sub	rcx, qword ptr [rsp + 0x18]
	setae	al
	lea	rdi, [rdi]
	cmp	rcx, -1
	nop	
	sete	cl
	test	rbx, rbx
	lea	rdi, [rdi]
	mov	rbx, r15
	mov	rsp, rsp
	mov	r15, r14
	mov	r14, r13
	mov	rsp, rsp
	mov	r13b, byte ptr [rsp + 8]
	mov	rbp, qword ptr [rsp + 0x10]
	je	.label_19
	lea	rsi, [rsi]
	xor	al, cl
	mov	r12b, 1
	jne	.label_27
	mov	rsp, rsp
	jmp	.label_19
	nop	dword ptr [rax + rax]
.label_22:
	cmp	eax, 0x64
	nop	
	jle	.label_39
	mov	rsp, rsp
	cmp	eax, 0x65
	mov	al, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	nop	
	je	.label_27
	mov	rbp, rbp
	jmp	.label_46
	nop	dword ptr [rax]
.label_14:
	cmp	eax, 0x7a
	je	.label_48
	cmp	eax, 0x80
	jne	.label_46
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_53
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_60
.label_53:
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_27
.label_683:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edx, 0xa
	xor	r8d, r8d
	mov	rsp, rsp
	lea	rcx, [rsp + 0x40]
	mov	rbp, rbp
	call	xstrtoul
	cmp	eax, 1
	je	.label_27
	test	eax, eax
	jne	.label_24
	mov	rax, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	cmp	r15, rax
	nop	
	cmovae	r15, rax
	mov	rsp, rsp
	jmp	.label_27
.label_684:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_32
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	call	strcmp
	test	eax, eax
	jne	.label_36
.label_32:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rax
	jmp	.label_27
.label_39:
	nop	
	cmp	eax, -1
	jne	.label_41
	mov	qword ptr [rsp + 8], rbx
	nop	
	movsxd	rcx,  dword ptr [dword ptr [rip + optind]]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x30]
	test	al, al
	nop	
	sete	al
	test	r12b, r12b
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x20]
	nop	
	je	.label_44
	test	al, al
	je	.label_51
.label_44:
	mov	rbp, rbp
	movsxd	rbx, dword ptr [rsp + 0x38]
	sub	rbx, rcx
	lea	rdi, [rbp + rcx*8]
	test	r12b, r12b
	je	.label_54
	test	ebx, ebx
	jle	.label_59
	jmp	.label_34
.label_54:
	lea	rsi, [rsi]
	cmp	ebx, 1
	mov	rbp, rbp
	setg	cl
	nop	
	and	cl, al
	movzx	eax, cl
	cmp	eax, 1
	mov	rbp, rbp
	je	.label_34
.label_59:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x30]
	test	al, al
	je	.label_12
	movsx	edx, r14b
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rdi
	nop	
	mov	esi, ebx
	mov	rsp, rsp
	call	input_from_argv
	mov	rbp, rbp
	jmp	.label_21
.label_12:
	mov	rbp, rbp
	test	r12b, r12b
	lea	rsi, [rsi]
	je	.label_23
	lea	rbx, [rdx + 1]
	sub	rbx, qword ptr [rsp + 0x18]
	nop	
	xor	eax, eax
	jmp	.label_26
.label_23:
	lea	rsi, [rsi]
	cmp	ebx, 1
	nop	
	jne	.label_31
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx]
	mov	eax, 0x2d
	nop	
	sub	eax, edx
	jne	.label_33
	movzx	eax, byte ptr [rcx + 1]
	neg	eax
.label_33:
	test	r15, r15
	je	.label_31
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_31
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx]
	nop	
	mov	rdx,  qword ptr [word ptr [rip + stdin]]
	mov	esi, OFFSET FLAT:.str_4
	call	freopen_safer
	test	rax, rax
	mov	rsp, rsp
	je	.label_45
.label_31:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	mov	esi, 2
	nop	
	call	fadvise
	lea	rdi, [rdi]
	test	r13b, r13b
	jne	.label_38
	mov	rbp, rbp
	cmp	r15, -1
	je	.label_38
	nop	
	test	r15, r15
	nop	
	je	.label_55
	call	input_size
	cmp	rax, 0x800000
	mov	rsp, rsp
	jle	.label_38
.label_55:
	nop	
	mov	qword ptr [rsp + 0x38], r12
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r14
	mov	r12, r15
	test	r13b, r13b
	setne	r15b
	mov	rbx, -1
	mov	r13b, 1
	xor	eax, eax
	mov	qword ptr [rsp], rax
	mov	rsi, -1
	lea	rsi, [rsi]
	jmp	.label_35
.label_38:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	lea	rsi, [rsi]
	movsx	esi, r14b
	lea	rdx, [rsp + 0x50]
	lea	rsi, [rsi]
	call	read_input
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 0x50]
.label_26:
	nop	
	mov	qword ptr [rsp], rax
.label_21:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], r14
	nop	
	cmp	r15, rbx
	lea	rdi, [rdi]
	mov	rax, rbx
	cmovb	rax, r15
	mov	rbp, rbp
	test	r13b, r13b
	nop	
	cmove	r15, rax
	je	.label_29
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], r12
	nop	
	mov	r12, r15
	mov	rbp, rbp
	xor	r13d, r13d
	lea	rdi, [rdi]
	mov	rsi, -1
	mov	r15b, 1
	lea	rdi, [rdi]
	jmp	.label_35
.label_29:
	mov	qword ptr [rsp + 0x38], r12
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rsp, rsp
	mov	r12, r15
	lea	rdi, [rdi]
	mov	rsi, rbx
	call	randperm_bound
	mov	rsi, rax
	xor	r15d, r15d
	lea	rdi, [rdi]
	xor	r13d, r13d
.label_35:
	nop	
	mov	rbp, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rdi, rbp
	call	randint_all_new
	nop	
	mov	r14, rax
	test	r14, r14
	mov	rsp, rsp
	je	.label_52
	test	r13b, r13b
	lea	rdi, [rdi]
	je	.label_57
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	movsx	esi, al
	lea	rdi, [rdi]
	lea	r8, [rsp + 0x48]
	lea	rdi, [rdi]
	mov	rdx, r12
	lea	rdi, [rdi]
	mov	rcx, r14
	mov	rsp, rsp
	call	read_input_reservoir_sampling
	mov	rsp, rsp
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	r12, rbx
.label_57:
	mov	dword ptr [rsp + 8], r13d
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x38]
	nop	
	mov	rcx, qword ptr [rsp + 0x30]
	nop	
	or	cl, al
	lea	rsi, [rsi]
	jne	.label_15
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	mov	rbp, rbp
	call	rpl_fclose
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_28
.label_15:
	mov	rbp, rbp
	xor	r13d, r13d
	test	r15b, r15b
	mov	ebp, r15d
	mov	rsp, rsp
	jne	.label_49
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, r12
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	randperm_new
	mov	rbp, rbp
	mov	r13, rax
.label_49:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x28]
	nop	
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_37
	mov	rdx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, OFFSET FLAT:.str.26
	mov	rsp, rsp
	mov	r15, rax
	mov	rbp, rbp
	mov	rdi, r15
	call	freopen_safer
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_47
.label_37:
	nop	
	test	bpl, bpl
	je	.label_20
	mov	rsp, rsp
	test	r12, r12
	nop	
	je	.label_50
	mov	rsp, rsp
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_58
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	test	al, al
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	je	.label_61
	movsx	r8d, al
	lea	rdi, [rdi]
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	call	write_random_numbers
	mov	rbp, rbp
	jmp	.label_16
.label_20:
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 8]
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_18
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdi, rbx
	mov	rdx, r13
	call	write_permuted_output_reservoir
	mov	rbp, rbp
	jmp	.label_16
.label_18:
	mov	rax, qword ptr [rsp + 0x38]
	test	al, al
	je	.label_30
	mov	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	movsx	ecx, al
	mov	rdi, r12
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, r13
	call	write_permuted_numbers
	nop	
	jmp	.label_16
.label_61:
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	rcx, rbx
	call	write_random_lines
	jmp	.label_16
.label_30:
	mov	rbp, rbp
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp]
	mov	rbp, rbp
	mov	rdx, r13
	lea	rsi, [rsi]
	call	write_permuted_lines
.label_16:
	test	eax, eax
	jne	.label_17
.label_50:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	add	rsp, 0x58
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_41:
	lea	rdi, [rdi]
	cmp	eax, 0xffffff7d
	mov	rbp, rbp
	je	.label_56
	cmp	eax, 0xffffff7e
	mov	rsp, rsp
	jne	.label_46
	nop	
	xor	edi, edi
	call	usage
.label_46:
	mov	edi, 1
	call	usage
.label_56:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, OFFSET FLAT:.str.17
	lea	rsi, [rsi]
	mov	r8d, OFFSET FLAT:.str.19
	xor	r9d, r9d
	mov	rbp, rbp
	xor	eax, eax
	call	version_etc
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	call	exit
.label_62:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.12
	nop	
	jmp	.label_25
.label_19:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.13
	mov	rsp, rsp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	quote
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	edi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, r14d
	mov	rcx, rbp
	mov	rsp, rsp
	mov	r8, rbx
	mov	rbp, rbp
	call	error
.label_24:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	quote
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	nop	
	mov	rdx, rbx
	mov	rbp, rbp
	call	error
.label_51:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.20
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rcx
	nop	
	call	error
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_34:
	mov	rbp, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsp, rsp
	mov	rbx, rax
	movzx	eax, r12b
	mov	rbp, rbp
	xor	rax, 1
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp + rax*8]
	call	quote
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	error
	mov	edi, 1
	call	usage
.label_52:
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rsp, rsp
	mov	rdx, rbp
	mov	rbp, rbp
	jmp	.label_40
.label_17:
	nop	
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_1
	jmp	.label_13
.label_60:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.17_0
	jmp	.label_25
.label_36:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.16
	nop	
	jmp	.label_25
.label_47:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	mov	rsp, rsp
	mov	rdx, r15
.label_40:
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	edi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_3
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_28:
	nop	
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25
.label_13:
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	rbp, rbp
	mov	edi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_58:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
.label_25:
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	rdx, rcx
	call	error
.label_45:
	nop	
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdx, qword ptr [rbx]
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	mov	rcx, rax
	nop	
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, ebp
	mov	rsp, rsp
	call	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x4029c0

	.globl input_from_argv
	.type input_from_argv, @function
input_from_argv:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	push	r15
	mov	rbp, rbp
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rsi, [rsi]
	mov	r15d, edx
	mov	r14d, esi
	mov	r12, rdi
	movsxd	rax, r14d
	lea	rdi, [rdi]
	mov	r13d, eax
	mov	rsp, rsp
	test	eax, eax
	jle	.label_63
	xor	ebp, ebp
	mov	rbx, rax
	nop	
	mov	qword ptr [rsp], rax
	nop	word ptr cs:[rax + rax]
.label_66:
	mov	rbp, rbp
	mov	rdi, qword ptr [r12 + rbp*8]
	nop	
	call	strlen
	mov	rbp, rbp
	add	rbx, rax
	nop	
	inc	rbp
	mov	rsp, rsp
	cmp	r13d, ebp
	jne	.label_66
	mov	rdi, rbx
	mov	rsp, rsp
	call	xmalloc
	mov	rsp, rsp
	mov	rbx, rax
	test	r13d, r13d
	jle	.label_67
	mov	rbp, r12
	nop	dword ptr [rax + rax]
.label_64:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp]
	mov	rdi, rbx
	mov	rsp, rsp
	call	stpcpy
	lea	rdi, [rdi]
	mov	qword ptr [rbp], rbx
	mov	byte ptr [rax], r15b
	lea	rsi, [rsi]
	inc	rax
	add	rbp, 8
	mov	rbp, rbp
	dec	r14d
	mov	rbp, rbp
	mov	rbx, rax
	jne	.label_64
	mov	rbp, rbp
	jmp	.label_65
.label_63:
	mov	rsp, rsp
	mov	rdi, rax
	mov	qword ptr [rsp], rdi
	call	xmalloc
	jmp	.label_65
.label_67:
	nop	
	mov	rax, rbx
.label_65:
	mov	rcx, qword ptr [rsp]
	nop	
	mov	qword ptr [r12 + rcx*8], rax
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ad0

	.globl input_size
	.type input_size, @function
input_size:
	push	r14
	push	rbx
	sub	rsp, 0x98
	mov	rsp, rsp
	movabs	rbx, 0x7fffffffffffffff
	lea	rsi, [rsp + 8]
	xor	edi, edi
	mov	rsp, rsp
	call	__fstat
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_68
	lea	rdi, [rsp + 8]
	call	usable_st_size
	test	al, al
	je	.label_68
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x38]
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	mov	edx, 1
	lea	rdi, [rdi]
	call	lseek
	mov	rsp, rsp
	sub	r14, rax
	test	rax, rax
	cmovns	rbx, r14
.label_68:
	mov	rax, rbx
	add	rsp, 0x98
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b50

	.globl read_input
	.type read_input, @function
read_input:
	push	rbp
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	nop	
	mov	r12, rdx
	mov	r15d, esi
	mov	rbp, rbp
	lea	rsi, [rsp]
	call	fread_file
	nop	
	mov	r14, rax
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_71
	mov	rsp, rsp
	mov	rbx, r14
	mov	rax, qword ptr [rsp]
	test	rax, rax
	je	.label_70
	nop	
	movzx	ecx, byte ptr [rax + rbx - 1]
	mov	rbp, rbp
	movzx	edx, r15b
	mov	rsp, rsp
	cmp	ecx, edx
	je	.label_74
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rcx
	mov	byte ptr [rbx + rax], r15b
.label_74:
	nop	
	mov	rax, qword ptr [rsp]
	nop	
	add	r14, rax
	xor	ebp, ebp
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rdi, [rdi]
	test	rax, rax
	lea	rdi, [rdi]
	jle	.label_69
	nop	
	xor	ebp, ebp
	lea	rsi, [rsi]
	movsx	r13d, r15b
	mov	rbp, rbp
	mov	rax, rbx
	nop	
.label_75:
	mov	rdx, r14
	nop	
	sub	rdx, rax
	mov	rdi, rax
	mov	esi, r13d
	mov	rbp, rbp
	call	next_line
	lea	rdi, [rdi]
	inc	rbp
	mov	rsp, rsp
	cmp	rax, r14
	jb	.label_75
	lea	rsi, [rsi]
	lea	rdi, [rbp + 1]
	lea	rsi, [rsi]
	jmp	.label_69
.label_70:
	add	r14, rax
	xor	ebp, ebp
	mov	rsp, rsp
	mov	edi, 1
.label_69:
	mov	rsp, rsp
	mov	esi, 8
	call	xnmalloc
	mov	r13, rax
	mov	qword ptr [r12], r13
	mov	qword ptr [r13], rbx
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_73
	mov	r12d, 1
	mov	rsp, rsp
	movsx	r15d, r15b
	nop	dword ptr [rax]
.label_72:
	mov	rdx, r14
	nop	
	sub	rdx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	esi, r15d
	lea	rdi, [rdi]
	call	next_line
	mov	rbx, rax
	mov	qword ptr [r13 + r12*8], rbx
	mov	rbp, rbp
	inc	r12
	cmp	r12, rbp
	jbe	.label_72
.label_73:
	mov	rax, rbp
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	nop	
	pop	r13
	mov	rsp, rsp
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_71:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	nop	
	mov	rcx, rax
	mov	edi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, ebx
	nop	
	mov	rdx, rcx
	mov	rbp, rbp
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402cf0

	.globl read_input_reservoir_sampling
	.type read_input_reservoir_sampling, @function
read_input_reservoir_sampling:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r8
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rcx
	nop	
	mov	qword ptr [rsp + 0x18], rdx
	mov	ebx, esi
	nop	
	mov	qword ptr [rsp + 0x10], rdi
	cmp	rdx, 0x400
	lea	rdi, [rdi]
	mov	r13d, 0x400
	lea	rsi, [rsi]
	cmovb	r13, rdx
	lea	rsi, [rsi]
	mov	esi, 0x18
	mov	rbp, rbp
	mov	rdi, r13
	call	xcalloc
	lea	rdi, [rdi]
	mov	r12, rax
	lea	rsi, [rsi]
	xor	r15d, r15d
	movsx	ebp, bl
	xor	r14d, r14d
	lea	rsi, [rsi]
	jmp	.label_78
	nop	dword ptr [rax + rax]
.label_79:
	lea	rdi, [rdi]
	add	r13, 0x400
	mov	edx, 0x18
	mov	rdi, r12
	mov	rsi, r13
	lea	rdi, [rdi]
	call	xnrealloc
	lea	rsi, [rsi]
	mov	r12, rax
	add	rbx, r12
	nop	
	xor	esi, esi
	mov	edx, 0x6000
	mov	rbp, rbp
	mov	rdi, rbx
	call	memset
.label_78:
	lea	rax, [r14*8]
	lea	rbx, [rax + rax*2]
	nop	word ptr cs:[rax + rax]
.label_82:
	cmp	r14, qword ptr [rsp + 0x18]
	jae	.label_76
	mov	rbp, rbp
	lea	rdi, [r12 + rbx]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	edx, ebp
	mov	rsp, rsp
	call	readlinebuffer_delim
	mov	r15, rax
	test	r15, r15
	je	.label_81
	mov	rbp, rbp
	inc	r14
	lea	rsi, [rsi]
	add	rbx, 0x18
	lea	rsi, [rsi]
	cmp	r14, r13
	nop	
	jb	.label_82
	jmp	.label_79
.label_76:
	test	r15, r15
	je	.label_77
	lea	rdi, [rdi]
	lea	r15, [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rdi, r15
	call	initbuffer
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp]
	nop	word ptr [rax + rax]
.label_85:
	mov	rbx, r14
	lea	r14, [rbx + 1]
	mov	rbp, rbp
	mov	rdi, r13
	mov	rbp, rbp
	mov	rsi, r14
	call	randint_choose
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rsp + 0x18]
	lea	rax, [rax + rax*2]
	nop	
	lea	rdi, [r12 + rax*8]
	mov	rsp, rsp
	cmovae	rdi, r15
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	edx, ebp
	mov	rsp, rsp
	call	readlinebuffer_delim
	test	rax, rax
	je	.label_84
	nop	
	cmp	r14, 1
	lea	rsi, [rsi]
	mov	rbx, r14
	nop	
	jne	.label_85
.label_84:
	test	rbx, rbx
	je	.label_83
	nop	
	lea	rdi, [rsp + 0x20]
	call	freebuffer
	mov	rbp, rbp
	jmp	.label_80
.label_81:
	mov	rsp, rsp
	mov	rbx, r14
	mov	rbp, rbp
	jmp	.label_80
.label_77:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_80:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	call	ferror_unlocked
	test	eax, eax
	mov	rbp, rbp
	jne	.label_86
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	qword ptr [rax], r12
	mov	rax, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	cmp	rbx, rax
	nop	
	cmova	rbx, rax
	mov	rax, rbx
	lea	rdi, [rdi]
	add	rsp, 0x38
	mov	rbp, rbp
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_86:
	lea	rdi, [rdi]
	call	__errno_location
	mov	ebx, dword ptr [rax]
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.25
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	esi, ebx
	lea	rsi, [rsi]
	mov	rdx, rcx
	call	error
.label_83:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.55
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 1
	nop	
	mov	esi, 0x4b
	nop	
	xor	eax, eax
	mov	rdx, rcx
	nop	
	call	error
	.section	.text
	.align	16
	#Procedure 0x402f70

	.globl write_random_numbers
	.type write_random_numbers, @function
write_random_numbers:
	mov	rsp, rsp
	push	rbp
	nop	
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rsp, rsp
	mov	r12, rsi
	mov	r15, rdi
	mov	ebx, 1
	xor	eax, eax
	lea	rdi, [rdi]
	test	r12, r12
	nop	
	je	.label_87
	sub	rbx, r14
	lea	rdi, [rdi]
	add	rbx, rcx
	movsx	r13d, r8b
	mov	rbp, rbp
	xor	ebp, ebp
.label_88:
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	randint_choose
	lea	rdx, [rax + r14]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.56
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, r13d
	call	__printf_chk
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	mov	eax, 0xffffffff
	js	.label_87
	nop	
	inc	rbp
	xor	eax, eax
	cmp	rbp, r12
	jb	.label_88
.label_87:
	mov	rsp, rsp
	add	rsp, 8
	nop	
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403020

	.globl write_random_lines
	.type write_random_lines, @function
write_random_lines:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	nop	
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	r14, rcx
	lea	rsi, [rsi]
	mov	r13, rdx
	lea	rsi, [rsi]
	mov	r15, rsi
	mov	r12, rdi
	mov	rbp, rbp
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_89
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_91:
	nop	
	mov	rdi, r12
	mov	rsi, r14
	mov	rsp, rsp
	call	randint_choose
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r13 + rax*8 + 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r13 + rax*8]
	mov	rsp, rsp
	sub	rbx, rdi
	nop	
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rsp, rsp
	mov	rdx, rbx
	mov	rbp, rbp
	call	fwrite_unlocked
	mov	rsp, rsp
	cmp	rax, rbx
	mov	eax, 0xffffffff
	jne	.label_90
	inc	rbp
	nop	
	cmp	rbp, r15
	lea	rdi, [rdi]
	jb	.label_91
	xor	eax, eax
	jmp	.label_90
.label_89:
	lea	rdi, [rdi]
	xor	eax, eax
.label_90:
	add	rsp, 8
	pop	rbx
	nop	
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030e0

	.globl write_permuted_output_reservoir
	.type write_permuted_output_reservoir, @function
write_permuted_output_reservoir:
	mov	rsp, rsp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	r12, rsi
	mov	r15, rdi
	lea	rdi, [rdi]
	test	r15, r15
	je	.label_92
	mov	rbp, rbp
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_94:
	mov	rax, qword ptr [r14 + rbx*8]
	lea	r13, [rax + rax*2]
	mov	rsp, rsp
	mov	rdi, qword ptr [r12 + r13*8 + 0x10]
	nop	
	mov	rdx, qword ptr [r12 + r13*8 + 8]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	esi, 1
	call	fwrite_unlocked
	cmp	rax, qword ptr [r12 + r13*8 + 8]
	nop	
	mov	eax, 0xffffffff
	nop	
	jne	.label_93
	inc	rbx
	cmp	rbx, r15
	mov	rsp, rsp
	jb	.label_94
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_93
.label_92:
	lea	rsi, [rsi]
	xor	eax, eax
.label_93:
	mov	rsp, rsp
	pop	rbx
	pop	r12
	nop	
	pop	r13
	mov	rsp, rsp
	pop	r14
	mov	rsp, rsp
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403180

	.globl write_permuted_numbers
	.type write_permuted_numbers, @function
write_permuted_numbers:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	lea	rdi, [rdi]
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	xor	eax, eax
	mov	rsp, rsp
	test	r12, r12
	je	.label_95
	movsx	ebp, cl
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_96:
	mov	rdx, qword ptr [r14 + rbx*8]
	add	rdx, r15
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.56
	xor	eax, eax
	mov	ecx, ebp
	call	__printf_chk
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	mov	eax, 0xffffffff
	js	.label_95
	inc	rbx
	xor	eax, eax
	nop	
	cmp	rbx, r12
	lea	rsi, [rsi]
	jb	.label_96
.label_95:
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x403200

	.globl write_permuted_lines
	.type write_permuted_lines, @function
write_permuted_lines:
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	push	rbx
	nop	
	mov	r14, rdx
	nop	
	mov	r12, rsi
	mov	rsp, rsp
	mov	r15, rdi
	mov	rsp, rsp
	test	r15, r15
	mov	rsp, rsp
	je	.label_97
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_99:
	mov	rax, qword ptr [r14 + rbx*8]
	mov	r13, qword ptr [r12 + rax*8 + 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12 + rax*8]
	sub	r13, rdi
	nop	
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	esi, 1
	mov	rsp, rsp
	mov	rdx, r13
	lea	rdi, [rdi]
	call	fwrite_unlocked
	nop	
	cmp	rax, r13
	mov	rsp, rsp
	mov	eax, 0xffffffff
	jne	.label_98
	mov	rsp, rsp
	inc	rbx
	cmp	rbx, r15
	mov	rbp, rbp
	jb	.label_99
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_98
.label_97:
	xor	eax, eax
.label_98:
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032a0

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	nop	
	mov	eax, 0x2000
	or	eax, dword ptr [rdi + 0x18]
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0xa000
	jne	.label_100
	lea	rsi, [rsi]
	mov	al, 1
	nop	
	ret	
.label_100:
	nop	
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032d0

	.globl next_line
	.type next_line, @function
next_line:
	lea	rdi, [rdi]
	push	rax
	call	memchr
	mov	rbp, rbp
	inc	rax
	pop	rcx
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032f0

	.globl randint_choose
	.type randint_choose, @function
randint_choose:
	dec	rsi
	jmp	randint_genmax
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403300
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + file_name]],  rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x403310
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403320

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
	je	.label_104
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_101
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	jne	.label_101
.label_104:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_102
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	rbp
	ret	
.label_101:
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
	jne	.label_103
	xor	edi, edi
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str_3
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
.label_102:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_103:
	mov	rbp, rbp
	mov	rdi, rbx
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
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
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403420

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403430

	.globl fadvise
	.type fadvise, @function
fadvise:
	lea	rdi, [rdi]
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_105
	call	fileno
	mov	rsp, rsp
	xor	esi, esi
	xor	edx, edx
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_105:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403460

	.globl freopen_safer
	.type freopen_safer, @function
freopen_safer:
	mov	rbp, rbp
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	r12, rdx
	lea	rsi, [rsi]
	mov	rbp, rsi
	mov	rbx, rdi
	mov	rdi, r12
	nop	
	call	fileno
	xor	r14d, r14d
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsp, rsp
	je	.label_109
	mov	rsp, rsp
	cmp	eax, 1
	nop	
	je	.label_112
	mov	rbp, rbp
	cmp	eax, 2
	je	.label_113
	lea	rsi, [rsi]
	mov	edi, 2
	mov	rsp, rsp
	mov	esi, 2
	mov	rsp, rsp
	call	dup2
	cmp	eax, 2
	setne	r14b
.label_113:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 4], r14d
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, 1
	mov	rbp, rbp
	call	dup2
	nop	
	cmp	eax, 1
	mov	rsp, rsp
	setne	r14b
	jmp	.label_115
.label_109:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 4], 0
	mov	rsp, rsp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_106
.label_112:
	nop	
	mov	dword ptr [rsp + 4], 0
.label_115:
	nop	
	xor	r15d, r15d
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_114
	nop	
	xor	r13d, r13d
	lea	rdi, [rdi]
	xor	edi, edi
	call	protect_fd
	nop	
	mov	r15b, 1
	test	al, al
	je	.label_107
.label_114:
	test	r14b, r14b
	lea	rsi, [rsi]
	je	.label_117
	lea	rdi, [rdi]
	mov	edi, 1
	nop	
	call	protect_fd
	xor	r13d, r13d
	lea	rdi, [rdi]
	test	al, al
	nop	
	je	.label_107
.label_117:
	nop	
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_106
	mov	edi, 2
	lea	rdi, [rdi]
	call	protect_fd
	lea	rdi, [rdi]
	xor	r13d, r13d
	test	al, al
	je	.label_107
.label_106:
	mov	rdi, rbx
	mov	rsi, rbp
	nop	
	mov	rdx, r12
	call	rpl_freopen
	mov	r13, rax
.label_107:
	nop	
	call	__errno_location
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	ebp, dword ptr [rbx]
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_111
	nop	
	mov	edi, 2
	lea	rdi, [rdi]
	call	close
.label_111:
	test	r14b, r14b
	je	.label_116
	mov	rsp, rsp
	mov	edi, 1
	call	close
.label_116:
	test	r15b, r15b
	je	.label_108
	xor	edi, edi
	call	close
.label_108:
	lea	rsi, [rsi]
	test	r13, r13
	nop	
	jne	.label_110
	nop	
	mov	dword ptr [rbx], ebp
.label_110:
	mov	rax, r13
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	pop	r15
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403600

	.globl protect_fd
	.type protect_fd, @function
protect_fd:
	mov	rbp, rbp
	push	rbx
	lea	rsi, [rsi]
	mov	ebx, edi
	mov	edi, OFFSET FLAT:.str_5
	lea	rsi, [rsi]
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	call	open
	mov	ecx, eax
	mov	rbp, rbp
	mov	al, 1
	mov	rsp, rsp
	cmp	ecx, ebx
	lea	rdi, [rdi]
	je	.label_119
	lea	rdi, [rdi]
	test	ecx, ecx
	mov	rsp, rsp
	js	.label_118
	mov	edi, ecx
	call	close
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 9
.label_118:
	xor	eax, eax
.label_119:
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x403660

	.globl initbuffer
	.type initbuffer, @function
initbuffer:
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [rdi], xmm0
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x10], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403680
	.globl readlinebuffer
	.type readlinebuffer, @function
readlinebuffer:

	mov	edx, 0xa
	jmp	readlinebuffer_delim
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403690

	.globl readlinebuffer_delim
	.type readlinebuffer_delim, @function
readlinebuffer_delim:
	push	rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x18
	mov	ebp, edx
	mov	rbp, rbp
	mov	r15, rsi
	nop	
	mov	r14, rdi
	nop	
	mov	r12, qword ptr [r14 + 0x10]
	mov	rdi, r15
	mov	rsp, rsp
	call	feof_unlocked
	nop	
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rcx
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	jne	.label_120
	lea	rdi, [rdi]
	mov	r13, qword ptr [r14]
	add	r13, r12
	movsx	ecx, bpl
	mov	dword ptr [rsp + 0x14], ecx
	mov	rsp, rsp
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	movzx	eax, cl
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 4], eax
	mov	rbx, r12
	nop	
.label_123:
	nop	
	mov	rdi, r15
	mov	rbp, rbp
	call	getc_unlocked
	mov	ebp, eax
	nop	
	cmp	ebp, -1
	lea	rsi, [rsi]
	jne	.label_122
	lea	rsi, [rsi]
	cmp	rbx, r12
	je	.label_120
	mov	rdi, r15
	call	ferror_unlocked
	test	eax, eax
	nop	
	jne	.label_120
	nop	
	movzx	eax, byte ptr [rbx - 1]
	nop	
	cmp	eax, dword ptr [rsp + 4]
	mov	ebp, dword ptr [rsp + 0x14]
	lea	rdi, [rdi]
	je	.label_121
.label_122:
	mov	rbp, rbp
	cmp	rbx, r13
	jne	.label_124
	mov	rsp, rsp
	mov	rbx, qword ptr [r14]
	mov	rdi, r12
	mov	rsi, r14
	mov	rsp, rsp
	call	x2realloc
	mov	rbp, rbp
	mov	r12, rax
	add	rbx, r12
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x10], r12
	mov	r13, r12
	add	r13, qword ptr [r14]
.label_124:
	mov	byte ptr [rbx], bpl
	nop	
	inc	rbx
	cmp	ebp, dword ptr [rsp + 0x14]
	jne	.label_123
.label_121:
	lea	rsi, [rsi]
	sub	rbx, r12
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 8], rbx
	mov	qword ptr [rsp + 8], r14
.label_120:
	mov	rax, qword ptr [rsp + 8]
	add	rsp, 0x18
	pop	rbx
	nop	
	pop	r12
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037b0

	.globl freebuffer
	.type freebuffer, @function
freebuffer:
	nop	
	mov	rdi, qword ptr [rdi + 0x10]
	jmp	free
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037c0

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
	je	.label_125
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
	jl	.label_127
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_127
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
	jne	.label_126
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_126:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_127:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_125:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_6
	mov	rbp, rbp
	mov	esi, 0x37
	lea	rsi, [rsi]
	mov	edx, 1
	call	fwrite
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4038b0
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
	.align	16
	#Procedure 0x403900
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
	.align	16
	#Procedure 0x403920
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
	.align	16
	#Procedure 0x403940

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
	.align	16
	#Procedure 0x4039b0
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
	.align	16
	#Procedure 0x4039d0

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
	je	.label_128
	test	rdx, rdx
	nop	
	je	.label_128
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_128:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403a10
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
	.align	16
	#Procedure 0x403ab0

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
.label_243:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rsi, [rsi]
	mov	ecx, r13d
	lea	rdi, [rdi]
	cmp	r13d, 0xa
	ja	.label_222
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	rsp, rsp
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_232]]
.label_717:
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
	mov	edi, OFFSET FLAT:.str.12_0
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
.label_718:
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
	jne	.label_137
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rsp, rsp
	je	.label_137
	mov	rsp, rsp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_176:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_209
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rsi], al
.label_209:
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
	jne	.label_176
.label_137:
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
	jmp	.label_140
.label_710:
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
	jmp	.label_140
.label_713:
	mov	rsp, rsp
	mov	al, 1
.label_711:
	mov	r15b, 1
.label_714:
	test	r15b, 1
	mov	rsp, rsp
	mov	cl, 1
	je	.label_210
	mov	cl, al
.label_210:
	lea	rdi, [rdi]
	mov	al, cl
.label_712:
	mov	r14d, 2
	mov	rsp, rsp
	test	r15b, 1
	mov	rsp, rsp
	jne	.label_214
	test	r10, r10
	je	.label_220
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	lea	rdi, [rdi]
	jmp	.label_223
.label_214:
	xor	ecx, ecx
	jmp	.label_223
.label_715:
	mov	r14d, 5
	mov	rsp, rsp
	test	r15b, 1
	jne	.label_233
	test	r10, r10
	je	.label_237
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	lea	rsi, [rsi]
	jmp	.label_153
.label_716:
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
	jmp	.label_140
.label_220:
	nop	
	mov	ecx, 1
	nop	dword ptr [rax]
.label_223:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], rcx
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	mov	rbp, rbp
	jmp	.label_140
.label_233:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_153
.label_237:
	mov	rbp, rbp
	mov	eax, 1
.label_153:
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
.label_140:
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
	jmp	.label_136
	nop	word ptr [rax + rax]
.label_204:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	lea	rsi, [rsi]
	sar	r15b, 7
	and	r15b, r8b
	lea	rdi, [rdi]
	mov	r8b, r15b
	nop	
	inc	rsi
.label_136:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_227
	cmp	rsi, rbp
	jne	.label_249
	jmp	.label_230
	nop	word ptr cs:[rax + rax]
.label_227:
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + rsi], 0
	nop	
	je	.label_230
.label_249:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_238
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_241
	mov	rsp, rsp
	cmp	rbp, -1
	lea	rdi, [rdi]
	jne	.label_241
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
.label_241:
	lea	rsi, [rsi]
	cmp	rbx, rbp
	jbe	.label_150
.label_238:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xec], 0
.label_195:
	mov	rsp, rsp
	movzx	r13d, byte ptr [r9 + rsi]
	mov	rsp, rsp
	cmp	r13, 0x7e
	nop	
	ja	.label_159
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	r15b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	bl, 0x61
	nop	
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_166]]
.label_643:
	test	rsi, rsi
	jne	.label_173
	jmp	.label_175
	nop	word ptr [rax + rax]
.label_150:
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
	jne	.label_193
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
	je	.label_195
	mov	rsp, rsp
	jmp	.label_164
.label_193:
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
	jmp	.label_195
.label_647:
	xor	eax, eax
	cmp	rbp, -1
	lea	rsi, [rsi]
	je	.label_216
	test	rsi, rsi
	nop	
	jne	.label_221
	cmp	rbp, 1
	lea	rsi, [rsi]
	je	.label_175
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_148
.label_636:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_142
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xcf], 0
	nop	
	jne	.label_164
	cmp	edi, 2
	nop	
	jne	.label_174
	lea	rdi, [rdi]
	mov	al, r11b
	and	al, 1
	nop	
	jne	.label_240
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_246
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], 0x27
.label_246:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_133
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_133:
	nop	
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_141
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_141:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	rsp, rsp
	mov	r11b, 1
	nop	
	mov	rcx, rax
	jmp	.label_149
.label_637:
	mov	bl, 0x62
	lea	rsi, [rsi]
	jmp	.label_158
.label_638:
	mov	cl, 0x74
	jmp	.label_162
.label_639:
	mov	bl, 0x76
	lea	rdi, [rdi]
	jmp	.label_158
.label_640:
	mov	bl, 0x66
	jmp	.label_158
.label_641:
	nop	
	mov	cl, 0x72
	mov	rsp, rsp
	jmp	.label_162
.label_644:
	lea	rsi, [rsi]
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 2
	jne	.label_170
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_178
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
	jae	.label_189
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_189:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_199
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x5c
.label_199:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_205
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_205:
	nop	
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	mov	rbp, rbp
	jmp	.label_215
.label_645:
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 5
	mov	rsp, rsp
	je	.label_212
	cmp	r14d, 2
	lea	rdi, [rdi]
	jne	.label_229
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_178
.label_229:
	mov	rdi, r14
	jmp	.label_173
.label_646:
	mov	r14, rdi
	nop	
	cmp	r14d, 2
	mov	rsp, rsp
	jne	.label_236
	nop	
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_178
	mov	rdi, r14
	jmp	.label_245
.label_159:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	lea	rsi, [rsi]
	jne	.label_248
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
.label_194:
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
	ja	.label_147
	test	dl, dl
	mov	rsp, rsp
	je	.label_147
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_148
.label_216:
	test	rsi, rsi
	jne	.label_171
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_171
.label_175:
	mov	rbp, rbp
	mov	dl, 1
.label_642:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_164
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r15b, dl
	mov	rbp, rbp
	jmp	.label_148
.label_142:
	cmp	dword ptr [rsp + 0x5c], 0
	mov	rbp, rbp
	je	.label_173
	lea	rsi, [rsi]
	mov	r14, rdi
	inc	rsi
	jmp	.label_136
.label_170:
	mov	rdi, r14
.label_215:
	xor	eax, eax
	nop	
	mov	r15b, 1
	lea	rdi, [rdi]
	jmp	.label_148
.label_236:
	mov	rdi, r14
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x6a], 0
	nop	
	mov	cl, r13b
	nop	
	je	.label_162
.label_245:
	lea	rsi, [rsi]
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_169
.label_162:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xa7], 0
	lea	rsi, [rsi]
	mov	bl, cl
	nop	
	je	.label_164
.label_158:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_148
	lea	rsi, [rsi]
	jmp	.label_182
.label_248:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_155
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
.label_155:
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
.label_186:
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
	je	.label_250
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
	je	.label_131
	cmp	rbp, -2
	nop	
	je	.label_145
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_207
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	lea	rsi, [rsi]
	mov	ecx, 1
.label_168:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	mov	rsp, rsp
	cmp	edx, 0x21
	lea	rsi, [rsi]
	ja	.label_200
	mov	rbp, rbp
	bt	rsi, rdx
	jb	.label_231
.label_200:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jb	.label_168
.label_207:
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_154
	xor	r15d, r15d
.label_154:
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
	je	.label_186
	jmp	.label_194
.label_171:
	mov	rbp, -1
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_148
.label_212:
	mov	rdi, r14
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x58], 0
	lea	rdi, [rdi]
	je	.label_173
	lea	rcx, [rsi + 2]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jae	.label_173
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_173
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	mov	rsp, rsp
	cmp	edx, 0x3e
	ja	.label_206
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	nop	
	bt	rsi, rdx
	lea	rdi, [rdi]
	jae	.label_167
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_164
	lea	rsi, [rsi]
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_225
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_225:
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, r10
	jae	.label_192
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 0x22
.label_192:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_163
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x22
.label_163:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	nop	
	cmp	rax, r10
	lea	rsi, [rsi]
	jae	.label_242
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_242:
	nop	
	add	qword ptr [rsp + 0xf0], 4
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_148
.label_173:
	xor	eax, eax
	mov	rsp, rsp
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_148:
	test	r12b, r12b
	je	.label_144
	cmp	qword ptr [rsp + 0x140], 0
	nop	
	jne	.label_152
	jmp	.label_157
	nop	word ptr cs:[rax + rax]
.label_144:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xb7], 0
	lea	rdi, [rdi]
	je	.label_157
.label_152:
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
	jne	.label_165
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_169
	jmp	.label_182
	nop	word ptr cs:[rax + rax]
.label_157:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_182
	jmp	.label_169
.label_165:
	mov	bl, r13b
	mov	rsi, r14
.label_182:
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_164
	mov	rsp, rsp
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_183
	nop	
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_183
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_184
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_184:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_202
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x24
.label_202:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_211
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_211:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_183:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_224
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_224:
	lea	rdi, [rdi]
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_197
.label_221:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_148
.label_147:
	mov	rsp, rsp
	add	rcx, rsi
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_196
	nop	word ptr cs:[rax + rax]
.label_179:
	mov	rbp, rbp
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_196:
	mov	rbp, rbp
	test	dl, dl
	mov	rbp, rbp
	je	.label_130
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	lea	rdi, [rdi]
	je	.label_132
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_138
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	lea	rsi, [rsi]
	mov	rsi, rbx
.label_138:
	nop	
	inc	qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xec], 0
	mov	rsp, rsp
	jmp	.label_132
	nop	dword ptr [rax]
.label_130:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_178
	cmp	r14d, 2
	jne	.label_201
	mov	rsp, rsp
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_201
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_172
	mov	rax, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	byte ptr [rax + rdx], 0x27
.label_172:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_181
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_181:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	nop	
	lea	rax, [rax + 2]
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_190
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_190:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_201:
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_191
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_191:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rdi, [rdi]
	inc	rax
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_234
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
.label_234:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_217
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
.label_217:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	rsp, rsp
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_132:
	mov	rsp, rsp
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_169
	test	r11b, 1
	lea	rdi, [rdi]
	je	.label_247
	mov	bl, al
	lea	rdi, [rdi]
	and	bl, 1
	mov	r14, rdi
	jne	.label_146
	lea	rsi, [rsi]
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_129
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_129:
	mov	rsi, qword ptr [rsp + 0xf0]
	nop	
	inc	rsi
	cmp	rsi, r10
	nop	
	jae	.label_139
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rdi + rsi], 0x27
.label_139:
	add	qword ptr [rsp + 0xf0], 2
	mov	rbp, rbp
	xor	r11d, r11d
	mov	rsi, rbx
	lea	rdi, [rdi]
	jmp	.label_146
	nop	word ptr cs:[rax + rax]
.label_247:
	lea	rsi, [rsi]
	mov	r14, rdi
.label_146:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_179
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rsi + rbx], r13b
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	jmp	.label_179
	nop	word ptr cs:[rax + rax]
.label_169:
	lea	rsi, [rsi]
	test	r11b, 1
	je	.label_180
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_180
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_185
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rax + rcx], 0x27
.label_185:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_188
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_188:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 2
	lea	rdi, [rdi]
	xor	r11d, r11d
	nop	
	mov	bl, r13b
	lea	rsi, [rsi]
	jmp	.label_197
	nop	word ptr cs:[rax + rax]
.label_180:
	lea	rsi, [rsi]
	mov	bl, r13b
	mov	r14, rdi
.label_197:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_204
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], bl
	lea	rdi, [rdi]
	jmp	.label_204
.label_174:
	nop	
	mov	rcx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	jmp	.label_149
.label_240:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_149:
	cmp	rcx, r10
	jae	.label_218
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_218:
	lea	rsi, [rsi]
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	lea	rsi, [rsi]
	mov	r13b, 0x30
	cmp	edi, 2
	lea	rsi, [rsi]
	je	.label_226
	lea	rdx, [rsi + 1]
	lea	rsi, [rsi]
	cmp	rdx, rbp
	jae	.label_198
	nop	
	mov	dl, byte ptr [r9 + rdx]
	mov	rbp, rbp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	mov	rbp, rbp
	cmp	edx, 9
	mov	rsp, rsp
	ja	.label_239
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_228
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	nop	
	mov	rsi, rbx
.label_228:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_135
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsp, rsp
	mov	rsi, rbx
.label_135:
	mov	rsp, rsp
	add	rcx, 3
	xor	r15d, r15d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rdi, [rdi]
	jmp	.label_148
.label_226:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_148
.label_198:
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_148
.label_239:
	xor	r15d, r15d
	jmp	.label_148
.label_250:
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_161
.label_131:
	xor	r15d, r15d
	nop	
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	jmp	.label_244
.label_145:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	jae	.label_177
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_187:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	byte ptr [rax + rbx], 0
	nop	
	je	.label_203
	lea	rax, [rsi + rbx + 1]
	lea	rsi, [rsi]
	inc	rbx
	cmp	rax, rbp
	jb	.label_187
	xor	r15d, r15d
	nop	
	jmp	.label_161
.label_177:
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_244:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_161:
	mov	byte ptr [rsp + 0xa6], r8b
	lea	rdi, [rdi]
	jmp	.label_194
.label_203:
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_161
.label_206:
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_148
.label_167:
	mov	rsp, rsp
	xor	r15d, r15d
	nop	
	mov	rsi, rbx
	jmp	.label_148
	nop	word ptr cs:[rax + rax]
.label_230:
	cmp	qword ptr [rsp + 0xf0], 0
	mov	rbp, rbp
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	and	cl, 1
	je	.label_208
	lea	rdi, [rdi]
	or	dl, al
	lea	rdi, [rdi]
	je	.label_178
.label_208:
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
	je	.label_235
	lea	rdi, [rdi]
	or	dl, al
	jne	.label_235
	lea	rdi, [rdi]
	test	r8b, 1
	jne	.label_156
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_235
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
	je	.label_243
.label_235:
	nop	
	mov	rdx, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	test	rdx, rdx
	je	.label_134
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_134
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_134
	inc	rdx
	nop	dword ptr [rax + rax]
.label_151:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_143
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_143:
	nop	
	inc	qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	inc	rdx
	test	al, al
	jne	.label_151
.label_134:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_160
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_160
.label_164:
	lea	rdi, [rdi]
	mov	rdx, r9
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_213:
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
.label_219:
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_160:
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
.label_231:
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_213
.label_178:
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rbp, rbp
	jmp	.label_213
.label_156:
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
	jmp	.label_219
.label_222:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405200
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
	.align	16
	#Procedure 0x405220

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
	je	.label_251
	mov	qword ptr [rax], rbx
.label_251:
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
	.align	16
	#Procedure 0x405370
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_252
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_256:
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
	jl	.label_256
.label_252:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_255
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_253]], OFFSET FLAT:slot0
.label_255:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_254
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_254:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405430

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x405440

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
	js	.label_260
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_262
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_258
.label_262:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_263
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
	jne	.label_259
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_259:
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
.label_258:
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
	ja	.label_257
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
	je	.label_261
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_261:
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
.label_257:
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
.label_260:
	lea	rdi, [rdi]
	call	abort
.label_263:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x4056b0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4056c0
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
	.align	16
	#Procedure 0x4056e0
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
	.align	16
	#Procedure 0x405700

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
	.align	16
	#Procedure 0x405760

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
	je	.label_264
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
.label_264:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4057d0

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
	.align	16
	#Procedure 0x405830
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
	.align	16
	#Procedure 0x405850
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
	.align	16
	#Procedure 0x405870

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
	mov	rcx,  qword ptr [word ptr [rip + label_265]]
	mov	qword ptr [rsp + 0x30], rcx
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_266]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_267]]
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
	.align	16
	#Procedure 0x405910

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
	.align	16
	#Procedure 0x405930

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	mov	esi, 0x3a
	mov	rbp, rbp
	jmp	quotearg_char
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405940
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405950

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
	.align	16
	#Procedure 0x4059c0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	lea	rsi, [rsi]
	mov	r8, -1
	nop	
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4059d0

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
	mov	rax,  qword ptr [word ptr [rip + label_265]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_266]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_267]]
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
	.align	16
	#Procedure 0x405a60
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
	.align	16
	#Procedure 0x405a90
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
	.align	16
	#Procedure 0x405ac0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ad0
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
	.align	16
	#Procedure 0x405af0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405b00

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
	.align	16
	#Procedure 0x405b10

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
	jne	.label_268
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
	je	.label_269
	mov	eax, OFFSET FLAT:.str.14
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	ecx, 0x60
	je	.label_268
	nop	
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_268
.label_269:
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
	je	.label_270
	nop	
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x60
	lea	rdi, [rdi]
	je	.label_268
	mov	eax, OFFSET FLAT:.str.18_0
	jmp	.label_268
.label_270:
	cmp	r14d, 9
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	lea	rsi, [rsi]
	cmove	rax, rcx
.label_268:
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
	.align	16
	#Procedure 0x405c40

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
	je	.label_272
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	lea	rdi, [rdi]
	je	.label_271
	jmp	.label_273
.label_272:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rdi, [rdi]
	jne	.label_273
.label_271:
	mov	rsp, rsp
	mov	eax, 1
	test	bpl, bpl
	mov	rsp, rsp
	je	.label_273
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
.label_273:
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
	.align	16
	#Procedure 0x405d00

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
	je	.label_276
	nop	
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	nop	
	je	.label_275
	lea	rsi, [rsi]
	jmp	.label_274
.label_276:
	lea	rsi, [rsi]
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_274
.label_275:
	lea	rdi, [rdi]
	mov	eax, 1
	test	bpl, bpl
	lea	rdi, [rdi]
	je	.label_274
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
.label_274:
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
	.align	16
	#Procedure 0x405df0

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
	je	.label_279
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_278
	jmp	.label_277
.label_279:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	movzx	edx, bpl
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_277
.label_278:
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_277
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
.label_277:
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
	.align	16
	#Procedure 0x405ec0

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
	je	.label_282
	lea	rsi, [rsi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_281
	jmp	.label_280
.label_282:
	xor	eax, eax
	mov	rsp, rsp
	movzx	edx, bpl
	movzx	ecx, cl
	nop	
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_280
.label_281:
	lea	rsi, [rsi]
	mov	eax, 1
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_280
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
.label_280:
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
	.align	16
	#Procedure 0x405f60

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
	je	.label_285
	lea	rdi, [rdi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	mov	rsp, rsp
	je	.label_284
	nop	
	jmp	.label_283
.label_285:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_283
.label_284:
	mov	eax, 1
	test	bpl, bpl
	je	.label_283
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
.label_283:
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
	.align	16
	#Procedure 0x406000

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
	je	.label_288
	mov	rsp, rsp
	and	ecx, 0xffffffdf
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ecx, ebp
	lea	rsi, [rsi]
	je	.label_287
	lea	rsi, [rsi]
	jmp	.label_286
.label_288:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	nop	
	jne	.label_286
.label_287:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	test	bpl, bpl
	nop	
	je	.label_286
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
.label_286:
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406090

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
	je	.label_291
	and	ecx, 0xffffffdf
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_290
	jmp	.label_289
.label_291:
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_289
.label_290:
	mov	eax, 1
	nop	
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_289
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_289:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406100

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
	je	.label_292
	mov	eax, 1
	mov	rsp, rsp
	test	ecx, 0xffffffdf
	lea	rdi, [rdi]
	jne	.label_294
	mov	rbp, rbp
	jmp	.label_293
.label_292:
	mov	eax, 1
	lea	rsi, [rsi]
	test	cl, cl
	je	.label_293
.label_294:
	xor	eax, eax
.label_293:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406150

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
	.align	16
	#Procedure 0x406180

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	lea	rsi, [rsi]
	push	rax
	call	randread_new
	test	rax, rax
	je	.label_295
	lea	rdi, [rdi]
	mov	rdi, rax
	pop	rax
	mov	rsp, rsp
	jmp	randint_new
.label_295:
	xor	eax, eax
	pop	rcx
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4061b0
	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:

	nop
	mov	rax, qword ptr [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4061c0

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
.label_301:
	cmp	rbx, r13
	jae	.label_296
	lea	rsi, [rsi]
	mov	rax, rbx
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_300:
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	shift_left
	lea	rdi, [rdi]
	add	rax, 0xff
	inc	r14
	lea	rdi, [rdi]
	cmp	rax, r13
	jb	.label_300
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r12
	mov	rsp, rsp
	mov	rdx, r14
	mov	rsp, rsp
	call	randread
	mov	rbp, r12
	nop	
.label_302:
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
	jb	.label_302
	mov	rcx, r15
	nop	
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	jmp	.label_299
.label_296:
	nop	
	mov	rcx, r15
.label_299:
	mov	rsp, rsp
	mov	rsi, rbx
	sub	rsi, r13
	lea	rsi, [rsi]
	je	.label_298
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
	ja	.label_301
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
	jmp	.label_297
.label_298:
	mov	rbp, rbp
	xorps	xmm0, xmm0
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	rbp, rbp
	movups	xmmword ptr [rax], xmm0
.label_297:
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
	.align	16
	#Procedure 0x406360

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
	.align	16
	#Procedure 0x406370

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
	.align	16
	#Procedure 0x406390
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
	.align	16
	#Procedure 0x4063e0

	.globl randperm_bound
	.type randperm_bound, @function
randperm_bound:
	push	rbx
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, rsi
	lea	rsi, [rsi]
	call	ceil_lg
	imul	rax, rbx
	lea	rdi, [rdi]
	add	rax, 7
	shr	rax, 3
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406410

	.globl ceil_lg
	.type ceil_lg, @function
ceil_lg:
	xor	eax, eax
	dec	rdi
	lea	rdi, [rdi]
	je	.label_303
	nop	word ptr [rax + rax]
.label_304:
	inc	rax
	shr	rdi, 1
	lea	rdi, [rdi]
	jne	.label_304
.label_303:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406430

	.globl randperm_new
	.type randperm_new, @function
randperm_new:
	push	rbp
	push	r15
	nop	
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	nop	
	push	rbx
	push	rax
	mov	rbx, rdx
	lea	rsi, [rsi]
	mov	r14, rsi
	mov	rsp, rsp
	mov	r15, rdi
	mov	rbp, rbp
	xor	r12d, r12d
	test	r14, r14
	je	.label_305
	lea	rdi, [rdi]
	cmp	r14, 1
	jne	.label_311
	mov	rsp, rsp
	mov	edi, 8
	call	xmalloc
	nop	
	mov	r12, rax
	mov	rdi, r15
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rbp, rbp
	call	randint_choose_0
	mov	qword ptr [r12], rax
	jmp	.label_305
.label_311:
	lea	rsi, [rsi]
	cmp	rbx, 0x20000
	mov	rsp, rsp
	jb	.label_309
	mov	rbp, rbp
	xor	edx, edx
	mov	rax, rbx
	div	r14
	mov	rsp, rsp
	cmp	rax, 0x1f
	lea	rdi, [rdi]
	jbe	.label_312
	lea	rdi, [r14 + r14]
	lea	rsi, [rsi]
	call	sparse_new
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_310
	lea	rdi, [rdi]
	mov	esi, 8
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rbp, rbp
	call	xnmalloc
	mov	r12, rax
	mov	rbp, rbp
	mov	r13b, 1
	mov	rsp, rsp
	jmp	.label_315
.label_309:
	lea	rsi, [rsi]
	mov	esi, 8
	mov	rdi, rbx
	call	xnmalloc
	mov	r12, rax
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	r13d, 0
	nop	
	jne	.label_306
	lea	rdi, [rdi]
	jmp	.label_315
.label_312:
	mov	rsp, rsp
	mov	esi, 8
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	xnmalloc
	mov	r12, rax
.label_306:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	dword ptr [rax]
.label_307:
	mov	qword ptr [r12 + rax*8], rax
	mov	rbp, rbp
	inc	rax
	cmp	rbx, rax
	lea	rsi, [rsi]
	jne	.label_307
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	test	r14, r14
	mov	r13d, 0
	lea	rsi, [rsi]
	je	.label_313
.label_315:
	xor	ebp, ebp
	nop	
.label_314:
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rbp, rbp
	call	randint_choose_0
	add	rax, rbp
	test	r13b, r13b
	je	.label_308
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, rbp
	mov	rcx, rax
	call	sparse_swap
	lea	rdi, [rdi]
	jmp	.label_316
	nop	dword ptr [rax]
.label_308:
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, rbp
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rsp, rsp
	call	swap
.label_316:
	nop	
	inc	rbp
	dec	rbx
	cmp	r14, rbp
	mov	rbp, rbp
	jne	.label_314
	lea	rdi, [rdi]
	test	r13b, r13b
	nop	
	je	.label_313
	mov	rdi, qword ptr [rsp]
	call	sparse_free
	lea	rdi, [rdi]
	jmp	.label_305
.label_313:
	lea	rdi, [rdi]
	mov	edx, 8
	mov	rdi, r12
	mov	rbp, rbp
	mov	rsi, r14
	lea	rsi, [rsi]
	call	xnrealloc
	mov	r12, rax
.label_305:
	mov	rax, r12
	nop	
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_310:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406640

	.globl randint_choose_0
	.type randint_choose_0, @function
randint_choose_0:
	lea	rdi, [rdi]
	dec	rsi
	jmp	randint_genmax
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406650

	.globl sparse_new
	.type sparse_new, @function
sparse_new:
	lea	rsi, [rsi]
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:sparse_hash_
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:sparse_cmp_
	mov	r8d, OFFSET FLAT:free
	jmp	hash_initialize
	nop	
	.section	.text
	.align	16
	#Procedure 0x406670

	.globl sparse_swap
	.type sparse_swap, @function
sparse_swap:
	mov	rbp, rbp
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	nop	
	sub	rsp, 0x28
	mov	r13, rcx
	lea	rsi, [rsi]
	mov	r15, rdx
	mov	r14, rsi
	mov	rbp, rbp
	mov	r12, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r15
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], 0
	lea	rsi, [rsp + 0x18]
	mov	rsp, rsp
	call	hash_delete
	mov	rbx, rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], r13
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], 0
	lea	rsi, [rsp + 8]
	nop	
	mov	rdi, r12
	call	hash_delete
	mov	rbp, rax
	test	rbx, rbx
	jne	.label_317
	mov	edi, 0x10
	mov	rbp, rbp
	call	xmalloc
	mov	rbx, rax
	mov	qword ptr [rbx + 8], r15
	mov	qword ptr [rbx], r15
.label_317:
	test	rbp, rbp
	jne	.label_319
	mov	edi, 0x10
	call	xmalloc
	mov	rbp, rbp
	mov	rbp, rax
	mov	qword ptr [rbp + 8], r13
	mov	rsp, rsp
	mov	qword ptr [rbp], r13
.label_319:
	nop	
	mov	rax, qword ptr [rbx + 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp + 8]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, rbx
	nop	
	call	hash_insert
	test	rax, rax
	je	.label_318
	mov	rdi, r12
	lea	rdi, [rdi]
	mov	rsi, rbp
	lea	rsi, [rsi]
	call	hash_insert
	test	rax, rax
	je	.label_318
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	mov	qword ptr [r14 + r15*8], rax
	nop	
	add	rsp, 0x28
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
.label_318:
	nop	
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406790

	.globl swap
	.type swap, @function
swap:
	mov	rax, qword ptr [rdi + rsi*8]
	mov	rcx, qword ptr [rdi + rdx*8]
	mov	qword ptr [rdi + rsi*8], rcx
	mov	rsp, rsp
	mov	qword ptr [rdi + rdx*8], rax
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067b0

	.globl sparse_free
	.type sparse_free, @function
sparse_free:
	lea	rsi, [rsi]
	jmp	hash_free
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067c0

	.globl sparse_hash_
	.type sparse_hash_, @function
sparse_hash_:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi]
	lea	rdi, [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067e0

	.globl sparse_cmp_
	.type sparse_cmp_, @function
sparse_cmp_:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4067f0

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
	je	.label_321
	mov	rsp, rsp
	test	rbx, rbx
	nop	
	je	.label_322
	mov	esi, OFFSET FLAT:.str.1_1
	mov	rdi, rbx
	call	fopen_safer
	nop	
	mov	r12, rax
	mov	rsp, rsp
	xor	r14d, r14d
	lea	rdi, [rdi]
	test	r12, r12
	nop	
	je	.label_320
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
	jmp	.label_320
.label_321:
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
.label_322:
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
.label_320:
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
	.align	16
	#Procedure 0x406900

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
	.align	16
	#Procedure 0x406950

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
	mov	edi, OFFSET FLAT:.str.3_0
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	call	open
	nop	
	mov	ebp, eax
	test	ebp, ebp
	js	.label_323
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
	js	.label_323
	mov	rbp, rbp
	cmp	rbx, 0x7ff
	mov	r15, rbx
	mov	rsp, rsp
	ja	.label_324
.label_323:
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
	ja	.label_324
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
	ja	.label_324
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
	ja	.label_324
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
	ja	.label_324
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
.label_324:
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
	.align	16
	#Procedure 0x406b80
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	rsp, rsp
	mov	qword ptr [rdi + 8], rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b90
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ba0

	.globl randread
	.type randread, @function
randread:
	mov	rsp, rsp
	cmp	qword ptr [rdi], 0
	mov	rsp, rsp
	je	.label_325
	nop	
	jmp	readsource
.label_325:
	add	rdi, 0x18
	nop	
	jmp	readisaac
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406bc0

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
	je	.label_327
	nop	word ptr [rax + rax]
.label_326:
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
	jne	.label_326
.label_327:
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
	.align	16
	#Procedure 0x406c80

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
	jae	.label_328
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
.label_330:
	cmp	r15, 0x800
	jb	.label_329
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rsi, rbx
	call	isaac_refill
	lea	rsi, [rsi]
	add	rbx, 0x800
	mov	rbp, rbp
	add	r15, -0x800
	lea	rsi, [rsi]
	jne	.label_330
	jmp	.label_331
.label_329:
	lea	rdi, [rdi]
	mov	rdi, rbp
	nop	
	mov	rsi, r13
	call	isaac_refill
	nop	
	mov	r12d, 0x800
	mov	rsi, r13
.label_328:
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rdx, r15
	nop	
	call	memcpy
	mov	rsp, rsp
	sub	r12, r15
.label_331:
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
	.align	16
	#Procedure 0x406d70

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
	je	.label_332
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r14
	jmp	rpl_fclose
.label_332:
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
	.align	16
	#Procedure 0x406dc0

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
	je	.label_333
	mov	rsp, rsp
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	lea	rsi, [rsi]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	lea	rdi, [rdi]
	jne	.label_335
	mov	esi, OFFSET FLAT:.str.1_2
	jmp	.label_334
.label_335:
	mov	esi, OFFSET FLAT:.str.2_1
.label_334:
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
.label_333:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406e50

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
.label_337:
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
	jb	.label_337
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
	.align	16
	#Procedure 0x4072a0

	.globl ind
	.type ind, @function
ind:
	and	esi, 0x7f8
	mov	rax, qword ptr [rdi + rsi]
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4072b0

	.globl just
	.type just, @function
just:
	mov	rsp, rsp
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4072c0

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
.label_339:
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
	jl	.label_339
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_338:
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
	jl	.label_338
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
	.align	16
	#Procedure 0x4076f0

	.globl fread_file
	.type fread_file, @function
fread_file:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	r15
	lea	rdi, [rdi]
	push	r14
	nop	
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x98
	mov	rbp, rsi
	mov	r15, rdi
	lea	rdi, [rdi]
	call	fileno
	mov	rsp, rsp
	lea	rsi, [rsp + 8]
	lea	rsi, [rsi]
	mov	edi, eax
	call	__fstat
	mov	ebx, 0x2000
	lea	rsi, [rsi]
	test	eax, eax
	js	.label_343
	mov	rbp, rbp
	mov	eax, 0xf000
	lea	rdi, [rdi]
	and	eax, dword ptr [rsp + 0x20]
	mov	ebx, 0x2000
	lea	rdi, [rdi]
	cmp	eax, 0x8000
	mov	rsp, rsp
	jne	.label_343
	mov	rdi, r15
	mov	rsp, rsp
	call	ftello
	nop	
	mov	ebx, 0x2000
	nop	
	test	rax, rax
	js	.label_343
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	mov	ebx, 0x2000
	sub	rcx, rax
	jle	.label_343
	cmp	rcx, -1
	je	.label_341
	inc	rcx
	mov	rbx, rcx
.label_343:
	nop	
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	malloc
	xor	r12d, r12d
	lea	rsi, [rsi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_342
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rbp
	lea	rdi, [rdi]
	mov	r14, -1
	nop	word ptr cs:[rax + rax]
.label_344:
	nop	
	mov	r13, rax
	lea	rdi, [rdi]
	mov	rbp, rbx
	nop	
	sub	rbp, r12
	nop	
	lea	rdi, [r13 + r12]
	mov	esi, 1
	lea	rsi, [rsi]
	mov	rdx, rbp
	mov	rcx, r15
	call	fread
	add	r12, rax
	cmp	rax, rbp
	nop	
	jne	.label_346
	mov	rbp, rbp
	mov	ebp, 0xc
	cmp	rbx, -1
	lea	rsi, [rsi]
	je	.label_340
	mov	rbp, rbp
	mov	rbp, rbx
	shr	rbp, 1
	lea	rdi, [rdi]
	mov	rax, rbp
	lea	rdi, [rdi]
	not	rax
	lea	rsi, [rsi]
	add	rbp, rbx
	mov	rbp, rbp
	cmp	rbx, rax
	cmovae	rbp, r14
	mov	rsp, rsp
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rsi, rbp
	call	realloc
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbx, rbp
	nop	
	jne	.label_344
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rax]
	jmp	.label_340
.label_346:
	nop	
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsp, rsp
	call	ferror
	nop	
	test	eax, eax
	je	.label_348
.label_340:
	lea	rdi, [rdi]
	mov	rdi, r13
	nop	
	call	free
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], ebp
.label_347:
	xor	r12d, r12d
.label_342:
	mov	rax, r12
	add	rsp, 0x98
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	nop	
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
.label_348:
	dec	rbx
	cmp	r12, rbx
	jae	.label_345
	mov	rbp, rbp
	lea	rsi, [r12 + 1]
	mov	rdi, r13
	nop	
	call	realloc
	test	rax, rax
	cmovne	r13, rax
.label_345:
	mov	rax, qword ptr [rsp]
	mov	rbp, rbp
	mov	byte ptr [r13 + r12], 0
	mov	rsp, rsp
	mov	qword ptr [rax], r12
	lea	rsi, [rsi]
	mov	r12, r13
	jmp	.label_342
.label_341:
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xc
	jmp	.label_347
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407910
	.globl read_file
	.type read_file, @function
read_file:

	mov	edx, OFFSET FLAT:.str_4
	jmp	internal_read_file
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407920

	.globl internal_read_file
	.type internal_read_file, @function
internal_read_file:
	nop
	push	rbp
	mov	rsp, rsp
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r14, rsi
	lea	rdi, [rdi]
	mov	rsi, rdx
	mov	rbp, rbp
	call	fopen
	mov	rbx, rax
	xor	r15d, r15d
	nop	
	test	rbx, rbx
	je	.label_350
	mov	rdi, rbx
	mov	rsi, r14
	call	fread_file
	mov	r15, rax
	lea	rdi, [rdi]
	call	__errno_location
	mov	r14, rax
	lea	rsi, [rsi]
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_350
	test	r15, r15
	je	.label_349
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	mov	rdi, r15
	call	free
.label_349:
	mov	dword ptr [r14], ebp
	xor	r15d, r15d
.label_350:
	mov	rax, r15
	lea	rsi, [rsi]
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4079c0
	.globl read_binary_file
	.type read_binary_file, @function
read_binary_file:

	nop
	mov	edx, OFFSET FLAT:.str.1_1
	jmp	internal_read_file
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4079d0

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
	je	.label_354
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_7
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_356
.label_354:
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
.label_356:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_2
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
	mov	esi, OFFSET FLAT:.str.3_1
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
	ja	.label_358
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_359]]
.label_697:
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
.label_358:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_352
.label_698:
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
.label_699:
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
.label_700:
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
	jmp	.label_353
.label_701:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
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
	jmp	.label_351
.label_702:
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
	jmp	.label_360
.label_703:
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
.label_360:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_351:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_353:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_357
.label_705:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_352:
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
	jmp	.label_355
.label_704:
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
.label_355:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_357:
	mov	rbp, rbp
	call	__fprintf_chk
.label_696:
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
	.align	16
	#Procedure 0x407dc0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_361:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_361
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407df0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_365:
	nop	
	movsxd	r10, dword ptr [r8]
	lea	rdi, [rdi]
	cmp	r10, 0x28
	ja	.label_362
	mov	r11, r10
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	rbp, rbp
	mov	dword ptr [r8], eax
	mov	rsp, rsp
	jmp	.label_364
	nop	word ptr cs:[rax + rax]
.label_362:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_364:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_363
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_365
.label_363:
	lea	rdi, [rdi]
	lea	r8, [rsp]
	mov	rsp, rsp
	call	version_etc_arn
	add	rsp, 0x58
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407e80

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	nop	
	je	.label_366
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
.label_366:
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
	.align	16
	#Procedure 0x407f30
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_0
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
	mov	esi, OFFSET FLAT:.str.16_0
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
	.align	16
	#Procedure 0x407fc0

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
	jb	.label_367
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_367:
	nop	
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408000

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_368
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_369
.label_368:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_369:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408030

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
	jb	.label_370
	imul	rcx, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	jmp	xrealloc
.label_370:
	push	rax
	mov	rsp, rsp
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408070

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_371
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_371
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_371:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_372
	test	rax, rax
	nop	
	je	.label_373
.label_372:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_373:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4080c0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	nop	
	mov	r8, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_374
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_375
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_376
.label_374:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_377
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_377:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_378
.label_376:
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
.label_375:
	call	xalloc_die
.label_378:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408160

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	jmp	xmalloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408170

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	mov	edx, 1
	mov	rsp, rsp
	jmp	x2nrealloc
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408180
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
	.align	16
	#Procedure 0x4081c0

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
	jb	.label_379
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_379
	pop	rcx
	ret	
.label_379:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x4081f0

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
	.align	16
	#Procedure 0x408240
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
	.align	16
	#Procedure 0x408260

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
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4082b0

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r14, r9
	mov	rbp, rbp
	mov	r15, rcx
	lea	rdi, [rdi]
	mov	r12, rdx
	mov	eax, esi
	mov	r13, rdi
	lea	rcx, [rsp]
	nop	
	xor	esi, esi
	mov	edx, eax
	call	xstrtoumax
	cmp	eax, 3
	je	.label_382
	cmp	eax, 1
	je	.label_383
	mov	rbp, rbp
	test	eax, eax
	nop	
	jne	.label_380
	mov	rbx, qword ptr [rsp]
	mov	rbp, rbp
	cmp	rbx, r12
	lea	rsi, [rsi]
	jb	.label_384
	cmp	rbx, r15
	jbe	.label_385
.label_384:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	cmp	rbx, 0x40000000
	jb	.label_381
	mov	dword ptr [rax], 0x4b
	lea	rdi, [rdi]
	jmp	.label_380
.label_382:
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
	lea	rsi, [rsi]
	jmp	.label_380
.label_383:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	mov	rbp, rbp
	jmp	.label_380
.label_381:
	mov	dword ptr [rax], 0x22
.label_380:
	nop	
	mov	eax, dword ptr [rsp + 0x40]
	test	eax, eax
	mov	ebp, 1
	nop	
	cmovne	ebp, eax
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	eax, eax
	cmp	ebx, 0x16
	cmove	ebx, eax
	mov	rdi, r13
	call	quote
	mov	r8, rax
	nop	
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, ebp
	mov	esi, ebx
	lea	rdi, [rdi]
	mov	rcx, r14
	nop	
	call	error
.label_385:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rbp, rbp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4083d0

	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:
	push	rax
	mov	r10, r8
	lea	rsi, [rsi]
	mov	rax, rcx
	mov	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	rsp, rsp
	mov	esi, 0xa
	lea	rdi, [rdi]
	mov	r8, rax
	mov	rsp, rsp
	mov	r9, r10
	mov	rsp, rsp
	call	xnumtoumax
	pop	rcx
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408410

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
	push	rbp
	push	r15
	nop	
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	lea	rsi, [rsi]
	mov	r13, r8
	nop	
	mov	r14d, edx
	mov	rbp, rsi
	mov	rsp, rsp
	mov	rbx, rdi
	cmp	r14d, 0x25
	lea	rsi, [rsi]
	jae	.label_389
	mov	rsp, rsp
	mov	qword ptr [rsp], rcx
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	r12, rax
	mov	rbp, rbp
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	
.label_408:
	mov	rbp, rbp
	movzx	eax, byte ptr [rdx]
	inc	rdx
	mov	rbp, rbp
	test	byte ptr [rcx + rax*2 + 1], 0x20
	lea	rdi, [rdi]
	jne	.label_408
	mov	rbp, rbp
	test	rbp, rbp
	lea	rdi, [rdi]
	lea	rcx, [rsp + 0x10]
	lea	rsi, [rsi]
	cmovne	rcx, rbp
	movzx	eax, al
	mov	rsp, rsp
	mov	r15d, 4
	cmp	eax, 0x2d
	lea	rsi, [rsi]
	je	.label_387
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rcx
	mov	rsi, rbp
	mov	edx, r14d
	call	strtoul
	mov	rcx, rbp
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rcx]
	mov	rbp, rbp
	cmp	rax, rbx
	je	.label_402
	lea	rsi, [rsi]
	mov	eax, dword ptr [r12]
	lea	rsi, [rsi]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	lea	rsi, [rsi]
	je	.label_406
	cmp	eax, 0x22
	jne	.label_387
	mov	r12d, 1
.label_406:
	mov	rbp, rbp
	test	rbp, rbp
	mov	rsp, rsp
	jne	.label_398
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	jmp	.label_390
.label_402:
	lea	rdi, [rdi]
	mov	rbp, r13
	nop	
	test	rbp, rbp
	mov	rsp, rsp
	je	.label_387
	mov	rbx, rcx
	nop	
	movsx	esi, byte ptr [rax]
	mov	rbp, rbp
	test	esi, esi
	mov	rbp, rbp
	je	.label_387
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	nop	
	mov	rcx, rbx
	mov	rsp, rsp
	je	.label_387
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], 1
	nop	
	xor	r12d, r12d
.label_398:
	mov	rax, qword ptr [rcx]
	mov	rsp, rsp
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_407
	mov	rsp, rsp
	mov	r13, rcx
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_392
	lea	rsi, [rsi]
	mov	r15d, 0x400
	lea	rdi, [rdi]
	mov	r14d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	lea	rdi, [rdi]
	ja	.label_394
	nop	
	movabs	rax, 0x814400308945
	mov	rbp, rbp
	bt	rax, rbx
	jae	.label_400
	mov	esi, 0x30
	mov	rdi, rbp
	mov	rsp, rsp
	call	strchr
	mov	r14d, 1
	mov	rbx, r13
	nop	
	test	rax, rax
	nop	
	je	.label_391
	mov	rax, qword ptr [rbx]
	movsx	ecx, byte ptr [rax + 1]
	mov	r14d, 1
	mov	rbp, rbp
	cmp	ecx, 0x42
	lea	rsi, [rsi]
	je	.label_399
	cmp	ecx, 0x44
	je	.label_399
	cmp	ecx, 0x69
	lea	rdi, [rdi]
	jne	.label_391
	mov	rsp, rsp
	movzx	eax, byte ptr [rax + 2]
	mov	r14d, 3
	nop	
	cmp	eax, 0x42
	je	.label_391
	mov	r14d, 1
	jmp	.label_391
.label_399:
	mov	rbp, rbp
	mov	r15d, 0x3e8
	mov	r14d, 2
.label_391:
	mov	rax, qword ptr [rbx]
	nop	
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x59
	jg	.label_401
	mov	rsp, rsp
	lea	ecx, [rax - 0x42]
	cmp	ecx, 0xe
	ja	.label_404
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_397]]
.label_706:
	lea	rdi, [rsp + 8]
	mov	esi, 0x400
	jmp	.label_388
.label_401:
	cmp	eax, 0x73
	jg	.label_409
	nop	
	lea	ecx, [rax - 0x62]
	cmp	ecx, 0xb
	ja	.label_410
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_386]]
.label_620:
	mov	rbp, rbp
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	lea	rdi, [rdi]
	jmp	.label_388
.label_404:
	cmp	eax, 0x54
	je	.label_395
	lea	rdi, [rdi]
	cmp	eax, 0x59
	lea	rdi, [rdi]
	jne	.label_392
	mov	rbp, rbp
	lea	rdi, [rsp + 8]
	mov	edx, 8
	mov	rsp, rsp
	jmp	.label_396
.label_409:
	cmp	eax, 0x74
	nop	
	je	.label_395
	mov	rsp, rsp
	cmp	eax, 0x77
	jne	.label_392
	nop	
	lea	rdi, [rsp + 8]
	nop	
	mov	esi, 2
.label_388:
	lea	rsi, [rsi]
	call	bkm_scale
	lea	rdi, [rdi]
	jmp	.label_405
.label_621:
	lea	rdi, [rsp + 8]
	mov	edx, 3
	jmp	.label_396
.label_622:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	lea	rsi, [rsi]
	jmp	.label_396
.label_623:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 2
	jmp	.label_396
.label_395:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	edx, 4
	nop	
	jmp	.label_396
.label_410:
	lea	rdi, [rdi]
	cmp	eax, 0x5a
	jne	.label_392
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	edx, 7
	jmp	.label_396
.label_392:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	or	r12d, 2
	lea	rdi, [rdi]
	jmp	.label_403
.label_707:
	lea	rdi, [rsp + 8]
	lea	rsi, [rsi]
	mov	edx, 6
	lea	rsi, [rsi]
	jmp	.label_396
.label_708:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	mov	edx, 5
.label_396:
	nop	
	mov	esi, r15d
	call	bkm_scale_by_power
.label_405:
	nop	
	or	eax, r12d
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx]
	nop	
	lea	rdx, [rcx + r14]
	lea	rsi, [rsi]
	mov	qword ptr [rbx], rdx
	nop	
	cmp	byte ptr [rcx + r14], 0
	je	.label_393
	nop	
	or	eax, 2
.label_393:
	mov	r12d, eax
.label_407:
	nop	
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rsp + 8]
.label_390:
	mov	qword ptr [rcx], rax
.label_403:
	lea	rsi, [rsi]
	mov	r15d, r12d
.label_387:
	mov	eax, r15d
	nop	
	add	rsp, 0x18
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
.label_394:
	mov	rbp, rbp
	mov	rbx, r13
	nop	
	jmp	.label_391
.label_400:
	mov	rbp, rbp
	mov	rbx, r13
	mov	rsp, rsp
	jmp	.label_391
.label_389:
	mov	edi, OFFSET FLAT:.str_8
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_5
	lea	rsi, [rsi]
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoul
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408830

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	movsxd	rcx, esi
	mov	rsp, rsp
	mov	rsi, -1
	mov	rax, -1
	xor	edx, edx
	div	rcx
	mov	rdx, qword ptr [rdi]
	imul	rcx, rdx
	mov	rbp, rbp
	cmp	rax, rdx
	cmovb	rcx, rsi
	lea	rsi, [rsi]
	sbb	eax, eax
	and	eax, 1
	mov	rbp, rbp
	mov	qword ptr [rdi], rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408870

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	nop	
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	mov	rbp, rbp
	mov	r14d, esi
	mov	rbp, rbp
	mov	r15, rdi
	mov	rsp, rsp
	xor	ebx, ebx
	mov	rbp, rbp
	test	ebp, ebp
	je	.label_411
	nop	word ptr cs:[rax + rax]
.label_412:
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	esi, r14d
	nop	
	call	bkm_scale
	lea	rdi, [rdi]
	or	ebx, eax
	dec	ebp
	lea	rdi, [rdi]
	jne	.label_412
.label_411:
	mov	rsp, rsp
	mov	eax, ebx
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4088e0

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rsp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x18
	mov	r13, r8
	nop	
	mov	r14d, edx
	mov	rsp, rsp
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	cmp	r14d, 0x25
	jae	.label_434
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rcx
	call	__errno_location
	lea	rsi, [rsi]
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	dword ptr [rax]
.label_426:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	lea	rdi, [rdi]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_426
	mov	rbp, rbp
	test	rbp, rbp
	lea	rcx, [rsp + 0x10]
	cmovne	rcx, rbp
	nop	
	movzx	eax, al
	mov	rbp, rbp
	mov	r15d, 4
	cmp	eax, 0x2d
	mov	rsp, rsp
	je	.label_418
	mov	rdi, rbx
	mov	rbp, rcx
	mov	rsi, rbp
	lea	rsi, [rsi]
	mov	edx, r14d
	lea	rdi, [rdi]
	call	strtoumax
	mov	rcx, rbp
	nop	
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	cmp	rax, rbx
	nop	
	je	.label_417
	nop	
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rsp, rsp
	mov	rbp, r13
	mov	rsp, rsp
	je	.label_420
	cmp	eax, 0x22
	jne	.label_418
	lea	rsi, [rsi]
	mov	r12d, 1
.label_420:
	test	rbp, rbp
	lea	rdi, [rdi]
	jne	.label_430
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	lea	rsi, [rsi]
	jmp	.label_432
.label_417:
	mov	rbp, r13
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_418
	lea	rsi, [rsi]
	mov	rbx, rcx
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rax]
	nop	
	test	esi, esi
	mov	rsp, rsp
	je	.label_418
	mov	rdi, rbp
	mov	rsp, rsp
	call	strchr
	test	rax, rax
	mov	rcx, rbx
	je	.label_418
	mov	qword ptr [rsp + 8], 1
	lea	rdi, [rdi]
	xor	r12d, r12d
.label_430:
	mov	rbp, rbp
	mov	rax, qword ptr [rcx]
	mov	rsp, rsp
	movsx	ebx, byte ptr [rax]
	lea	rdi, [rdi]
	test	ebx, ebx
	lea	rdi, [rdi]
	je	.label_423
	mov	rbp, rbp
	mov	r13, rcx
	mov	rdi, rbp
	mov	rsp, rsp
	mov	esi, ebx
	mov	rsp, rsp
	call	strchr
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_413
	mov	r15d, 0x400
	mov	r14d, 1
	add	ebx, -0x45
	nop	
	cmp	ebx, 0x2f
	ja	.label_436
	movabs	rax, 0x814400308945
	lea	rdi, [rdi]
	bt	rax, rbx
	jae	.label_414
	lea	rdi, [rdi]
	mov	esi, 0x30
	mov	rbp, rbp
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	strchr
	mov	r14d, 1
	mov	rsp, rsp
	mov	rbx, r13
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_424
	nop	
	mov	rax, qword ptr [rbx]
	movsx	ecx, byte ptr [rax + 1]
	mov	r14d, 1
	cmp	ecx, 0x42
	nop	
	je	.label_428
	cmp	ecx, 0x44
	je	.label_428
	cmp	ecx, 0x69
	mov	rbp, rbp
	jne	.label_424
	movzx	eax, byte ptr [rax + 2]
	mov	r14d, 3
	lea	rdi, [rdi]
	cmp	eax, 0x42
	mov	rsp, rsp
	je	.label_424
	mov	r14d, 1
	jmp	.label_424
.label_428:
	mov	rsp, rsp
	mov	r15d, 0x3e8
	mov	r14d, 2
.label_424:
	mov	rax, qword ptr [rbx]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x59
	lea	rdi, [rdi]
	jg	.label_437
	mov	rsp, rsp
	lea	ecx, [rax - 0x42]
	nop	
	cmp	ecx, 0xe
	nop	
	ja	.label_431
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_422]]
.label_719:
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	mov	esi, 0x400
	jmp	.label_425
.label_437:
	cmp	eax, 0x73
	jg	.label_427
	lea	rsi, [rsi]
	lea	ecx, [rax - 0x62]
	mov	rsp, rsp
	cmp	ecx, 0xb
	mov	rbp, rbp
	ja	.label_429
	xor	eax, eax
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_433]]
.label_658:
	mov	rsp, rsp
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_425
.label_431:
	cmp	eax, 0x54
	lea	rsi, [rsi]
	je	.label_419
	nop	
	cmp	eax, 0x59
	jne	.label_413
	nop	
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 8
	jmp	.label_416
.label_427:
	lea	rdi, [rdi]
	cmp	eax, 0x74
	nop	
	je	.label_419
	cmp	eax, 0x77
	nop	
	jne	.label_413
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	mov	esi, 2
.label_425:
	nop	
	call	bkm_scale_0
	jmp	.label_415
.label_659:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	edx, 3
	mov	rbp, rbp
	jmp	.label_416
.label_660:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	edx, 1
	jmp	.label_416
.label_661:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	lea	rsi, [rsi]
	mov	edx, 2
	jmp	.label_416
.label_419:
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 4
	jmp	.label_416
.label_429:
	cmp	eax, 0x5a
	jne	.label_413
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 7
	mov	rbp, rbp
	jmp	.label_416
.label_413:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	or	r12d, 2
	jmp	.label_421
.label_720:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	jmp	.label_416
.label_721:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	edx, 5
.label_416:
	mov	esi, r15d
	lea	rdi, [rdi]
	call	bkm_scale_by_power_0
.label_415:
	mov	rsp, rsp
	or	eax, r12d
	mov	rcx, qword ptr [rbx]
	mov	rbp, rbp
	lea	rdx, [rcx + r14]
	mov	qword ptr [rbx], rdx
	nop	
	cmp	byte ptr [rcx + r14], 0
	je	.label_435
	lea	rdi, [rdi]
	or	eax, 2
.label_435:
	mov	r12d, eax
.label_423:
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rsp + 8]
.label_432:
	mov	qword ptr [rcx], rax
.label_421:
	mov	r15d, r12d
.label_418:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_436:
	lea	rsi, [rsi]
	mov	rbx, r13
	lea	rdi, [rdi]
	jmp	.label_424
.label_414:
	mov	rsp, rsp
	mov	rbx, r13
	lea	rsi, [rsi]
	jmp	.label_424
.label_434:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_8
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x408cf0

	.globl bkm_scale_0
	.type bkm_scale_0, @function
bkm_scale_0:
	mov	rsp, rsp
	movsxd	rcx, esi
	mov	rsi, -1
	mov	rax, -1
	xor	edx, edx
	lea	rdi, [rdi]
	div	rcx
	mov	rbp, rbp
	mov	rdx, qword ptr [rdi]
	mov	rsp, rsp
	imul	rcx, rdx
	cmp	rax, rdx
	mov	rsp, rsp
	cmovb	rcx, rsi
	sbb	eax, eax
	lea	rdi, [rdi]
	and	eax, 1
	mov	qword ptr [rdi], rcx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x408d30

	.globl bkm_scale_by_power_0
	.type bkm_scale_by_power_0, @function
bkm_scale_by_power_0:
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	lea	rsi, [rsi]
	mov	r14d, esi
	lea	rsi, [rsi]
	mov	r15, rdi
	lea	rsi, [rsi]
	xor	ebx, ebx
	lea	rsi, [rsi]
	test	ebp, ebp
	mov	rbp, rbp
	je	.label_438
	nop	word ptr [rax + rax]
.label_439:
	lea	rdi, [rdi]
	mov	rdi, r15
	nop	
	mov	esi, r14d
	lea	rdi, [rdi]
	call	bkm_scale_0
	or	ebx, eax
	lea	rdi, [rdi]
	dec	ebp
	mov	rsp, rsp
	jne	.label_439
.label_438:
	mov	rsp, rsp
	mov	eax, ebx
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408da0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_440
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_441
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
	je	.label_441
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
.label_440:
	mov	ecx, 1
.label_441:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408e10

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	mov	rax, rsi
	xor	esi, esi
	mov	rdx, rax
	lea	rdi, [rdi]
	jmp	memset
	.section	.text
	.align	16
	#Procedure 0x408e20

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
	js	.label_442
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_443
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
	je	.label_442
.label_443:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_442
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	lea	rsi, [rsi]
	test	ebp, ebp
	je	.label_444
	call	__errno_location
	mov	dword ptr [rax], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_444:
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_442:
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
	.align	16
	#Procedure 0x408ee0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_445
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_445
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_445:
	mov	rsp, rsp
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	
	.section	.text
	.align	16
	#Procedure 0x408f10

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	jne	.label_446
	mov	rbp, rbp
	ret	
.label_446:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, 1
	lea	rdi, [rdi]
	jmp	rpl_fseeko
	nop	
	.section	.text
	.align	16
	#Procedure 0x408f30

	.globl rpl_freopen
	.type rpl_freopen, @function
rpl_freopen:
	push	rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r12
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	mov	rbp, rbp
	call	orig_freopen
	lea	rsi, [rsi]
	mov	rbx, rax
	test	r15, r15
	mov	rsp, rsp
	je	.label_447
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_447
	mov	rdi, rbx
	mov	rsp, rsp
	call	fileno
	mov	ebp, eax
	mov	rbp, rbp
	mov	edi, ebp
	lea	rdi, [rdi]
	mov	esi, ebp
	call	dup2
	test	eax, eax
	jns	.label_447
	call	__errno_location
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 9
	jne	.label_447
	nop	
	mov	edi, OFFSET FLAT:.str_5
	mov	rbp, rbp
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	mov	rsp, rsp
	je	.label_448
	mov	edi, r12d
	nop	
	mov	esi, ebp
	call	dup2
	nop	
	mov	ebp, eax
	lea	rdi, [rdi]
	mov	edi, r12d
	call	close
	nop	
	test	ebp, ebp
	js	.label_447
.label_448:
	mov	rsp, rsp
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rsp, rsp
	mov	rdx, rbx
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	jmp	orig_freopen
.label_447:
	mov	rbp, rbp
	mov	rax, rbx
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r14
	nop	
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409010

	.globl orig_freopen
	.type orig_freopen, @function
orig_freopen:
	jmp	freopen
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x409020

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
	jne	.label_449
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_449
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_450
.label_449:
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
.label_450:
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
	je	.label_451
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_451:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4090d0

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
	je	.label_452
	nop	
	cmp	r15, -2
	jb	.label_452
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_452
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_452:
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
	.align	16
	#Procedure 0x409160
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_453
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_453
.label_454:
	ret	
.label_453:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_454
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409190
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_455
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_455:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4091b0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4091c0
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
	#Procedure 0x4091d0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_456
.label_457:
	ret	
.label_456:
	cmp	edi, 0x7f
	je	.label_457
	xor	eax, eax
	jmp	.label_457
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4091f0
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
	#Procedure 0x409200
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
	#Procedure 0x409210
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
	#Procedure 0x409220
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
	#Procedure 0x409230
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_458
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_458
.label_459:
	ret	
.label_458:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_459
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409260
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_460
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_460:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409280

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
	#Procedure 0x409290
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_461
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_461:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4092b0
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
	#Procedure 0x4092c0
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
	#Procedure 0x4092d0

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
	je	.label_463
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	test	eax, eax
	jne	.label_462
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	jmp	.label_462
.label_463:
	test	eax, eax
	mov	rbp, rbp
	sete	cl
	neg	eax
	nop	
	sbb	ebx, ebx
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_462
	test	cl, cl
	jne	.label_462
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	nop	
	cmove	ebx, ecx
.label_462:
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
	.align	16
	#Procedure 0x409370

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
	je	.label_464
	mov	rsp, rsp
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_465
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	call	dup_safer
	mov	rsp, rsp
	mov	ebp, eax
	test	ebp, ebp
	js	.label_467
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fclose
	mov	rbp, rbp
	test	eax, eax
	jne	.label_466
	mov	rsp, rsp
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r14
	call	fdopen
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_464
.label_466:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbx], r14d
	mov	rbp, rbp
	jmp	.label_468
.label_465:
	mov	rax, rbx
	mov	rsp, rsp
	jmp	.label_464
.label_467:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_468:
	xor	eax, eax
.label_464:
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
	.align	16
	#Procedure 0x409450

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
	je	.label_470
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_469
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_471
.label_469:
	nop	
	mov	esi, OFFSET FLAT:.str.1_6
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_470
.label_471:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_470:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4094a0

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4094b0

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4094c0

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4094d0

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdi + 8]
	nop	
	jae	.label_472
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_475:
	cmp	qword ptr [rcx], 0
	nop	
	mov	esi, 0
	mov	rdi, rcx
	mov	rbp, rbp
	je	.label_473
	nop	word ptr cs:[rax + rax]
.label_474:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	inc	rsi
	test	rdi, rdi
	jne	.label_474
	nop	
	cmp	rsi, rax
	mov	rsp, rsp
	cmova	rax, rsi
.label_473:
	mov	rbp, rbp
	add	rcx, 0x10
	nop	
	cmp	rcx, rdx
	jb	.label_475
.label_472:
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409540
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rbp, rbp
	mov	rsi, qword ptr [rdi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	rsi, qword ptr [rdi + 8]
	mov	rsp, rsp
	mov	edx, 0
	jae	.label_476
	mov	r8, qword ptr [rdi + 8]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_478:
	lea	rdi, [rdi]
	cmp	qword ptr [rsi], 0
	mov	rbp, rbp
	mov	rax, rsi
	je	.label_477
	nop	
.label_480:
	lea	rdi, [rdi]
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_480
	inc	rdx
.label_477:
	mov	rsp, rsp
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_478
.label_476:
	mov	rbp, rbp
	cmp	rdx, qword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	jne	.label_481
	lea	rsi, [rsi]
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	mov	rsp, rsp
	je	.label_479
.label_481:
	mov	rbp, rbp
	xor	eax, eax
.label_479:
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4095c0
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	nop	
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	r13, rsi
	mov	rbx, rdi
	mov	rsp, rsp
	call	hash_get_n_entries
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	hash_get_n_buckets
	lea	rdi, [rdi]
	mov	r12, rax
	mov	rsp, rsp
	mov	rdi, rbx
	call	hash_get_n_buckets_used
	mov	rbp, rbp
	mov	r15, rax
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	hash_get_max_bucket_length
	mov	rsp, rsp
	mov	r14, rax
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_9
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rcx, rbp
	mov	rsp, rsp
	call	__fprintf_chk
	mov	rbp, rbp
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_7
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_482]]
	punpckldq	xmm1, xmm2
	mov	rsp, rsp
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_483]]
	mov	rbp, rbp
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	lea	rsi, [rsi]
	addpd	xmm0, xmm1
	nop	
	mulsd	xmm0,  qword ptr [word ptr [rip + label_484]]
	movq	xmm1, r12
	mov	rbp, rbp
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.2_3
	mov	rsp, rsp
	mov	al, 1
	mov	rdi, r13
	mov	rcx, r15
	mov	rbp, rbp
	call	__fprintf_chk
	mov	rbp, rbp
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_2
	nop	
	xor	eax, eax
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rcx, r14
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	jmp	__fprintf_chk
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409710
	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:

	mov	rsp, rsp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r12
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r12, rsi
	mov	rsp, rsp
	mov	r14, rdi
	call	safe_hasher
	mov	rbx, rax
	xor	r15d, r15d
	lea	rsi, [rsi]
	cmp	qword ptr [rbx], 0
	je	.label_485
	test	rbx, rbx
	nop	
	je	.label_485
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_487:
	mov	rsi, qword ptr [rbx]
	mov	rsp, rsp
	cmp	rsi, r12
	je	.label_486
	lea	rsi, [rsi]
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_486
	mov	rbx, qword ptr [rbx + 8]
	nop	
	test	rbx, rbx
	jne	.label_487
	jmp	.label_485
.label_486:
	mov	r15, qword ptr [rbx]
.label_485:
	nop	
	mov	rax, r15
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r12
	nop	
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4097a0

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbx
	mov	rbx, rdi
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, rsi
	lea	rdi, [rdi]
	mov	rsi, rax
	call	qword ptr [rbx + 0x30]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_488
	lea	rdi, [rdi]
	shl	rax, 4
	add	rax, qword ptr [rbx]
	lea	rsi, [rsi]
	pop	rbx
	nop	
	ret	
.label_488:
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4097e0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	mov	rbp, rbp
	je	.label_489
	nop	
	mov	rcx, qword ptr [rdi]
	lea	rdi, [rdi]
	jmp	.label_491
	nop	word ptr cs:[rax + rax]
.label_492:
	mov	rbp, rbp
	add	rcx, 0x10
.label_491:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_490
	mov	rax, qword ptr [rcx]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_492
.label_489:
	ret	
.label_490:
	mov	rsp, rsp
	push	rax
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409830
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	mov	rsp, rsp
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	lea	rdi, [rdi]
	call	safe_hasher
	mov	rbp, rbp
	mov	rcx, rax
	nop	dword ptr [rax + rax]
.label_494:
	cmp	qword ptr [rcx], rbx
	jne	.label_493
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + 8]
	nop	
	test	rdx, rdx
	lea	rdi, [rdi]
	jne	.label_497
.label_493:
	nop	
	mov	rcx, qword ptr [rcx + 8]
	nop	
	test	rcx, rcx
	jne	.label_494
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	dword ptr [rax + rax]
.label_495:
	cmp	rax, rdx
	lea	rdi, [rdi]
	mov	ecx, 0
	jae	.label_496
	mov	rbp, rbp
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_495
	jmp	.label_496
.label_497:
	mov	rbp, rbp
	mov	rcx, qword ptr [rdx]
.label_496:
	mov	rax, rcx
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4098c0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	nop
	mov	r8, qword ptr [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_498
	nop	dword ptr [rax + rax]
.label_501:
	mov	rbp, rbp
	add	r8, 0x10
.label_498:
	cmp	r8, qword ptr [rdi + 8]
	nop	
	jae	.label_500
	lea	rdi, [rdi]
	cmp	qword ptr [r8], 0
	lea	rsi, [rsi]
	je	.label_501
	test	r8, r8
	mov	r9, r8
	mov	rbp, rbp
	je	.label_501
	nop	word ptr cs:[rax + rax]
.label_499:
	mov	rbp, rbp
	cmp	rax, rdx
	mov	rsp, rsp
	jae	.label_500
	mov	rcx, qword ptr [r9]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + rax*8], rcx
	nop	
	inc	rax
	lea	rdi, [rdi]
	mov	r9, qword ptr [r9 + 8]
	mov	rsp, rsp
	test	r9, r9
	jne	.label_499
	nop	
	jmp	.label_501
.label_500:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409930
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	r15, rsi
	mov	r12, rdi
	mov	r13, qword ptr [r12]
	xor	ebx, ebx
	jmp	.label_502
	nop	word ptr cs:[rax + rax]
.label_503:
	mov	rsp, rsp
	add	r13, 0x10
.label_502:
	lea	rsi, [rsi]
	cmp	r13, qword ptr [r12 + 8]
	nop	
	jae	.label_504
	lea	rsi, [rsi]
	cmp	qword ptr [r13], 0
	je	.label_503
	mov	rbp, rbp
	test	r13, r13
	mov	rbp, r13
	je	.label_503
	nop	word ptr [rax + rax]
.label_505:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	lea	rsi, [rsi]
	call	r15
	mov	rbp, rbp
	test	al, al
	je	.label_504
	mov	rsp, rsp
	inc	rbx
	mov	rsp, rsp
	mov	rbp, qword ptr [rbp + 8]
	mov	rbp, rbp
	test	rbp, rbp
	lea	rsi, [rsi]
	jne	.label_505
	jmp	.label_503
.label_504:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4099e0
	.globl hash_string
	.type hash_string, @function
hash_string:

	nop
	mov	al, byte ptr [rdi]
	nop	
	xor	edx, edx
	test	al, al
	je	.label_507
	inc	rdi
	nop	
	xor	edx, edx
.label_506:
	mov	rcx, rdx
	nop	
	shl	rcx, 5
	sub	rcx, rdx
	nop	
	movzx	eax, al
	add	rax, rcx
	lea	rsi, [rsi]
	xor	edx, edx
	div	rsi
	mov	al, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_506
.label_507:
	mov	rax, rdx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409a20
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	nop
	mov	eax,  dword ptr [dword ptr [rip + label_508]]
	mov	dword ptr [rdi + 0x10], eax
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409a40

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rsi, [rsi]
	mov	rbx, r8
	lea	rsi, [rsi]
	mov	r12, rsi
	mov	r15, rdi
	lea	rdi, [rdi]
	test	rdx, rdx
	mov	ebp, OFFSET FLAT:raw_hasher
	lea	rdi, [rdi]
	cmovne	rbp, rdx
	test	rcx, rcx
	mov	rsp, rsp
	mov	r14d, OFFSET FLAT:raw_comparator
	lea	rdi, [rdi]
	cmovne	r14, rcx
	mov	edi, 0x50
	mov	rsp, rsp
	call	malloc
	mov	rsp, rsp
	mov	r13, rax
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	test	r13, r13
	je	.label_510
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rbx
	test	r12, r12
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:default_tuning
	cmovne	rbx, r12
	mov	qword ptr [r13 + 0x28], rbx
	mov	rdi, r13
	call	check_tuning
	mov	rsp, rsp
	test	al, al
	je	.label_509
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	rbp, rbp
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_509
	mov	esi, 0x10
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_509
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rsp, rsp
	shl	rcx, 4
	lea	rdi, [rdi]
	add	rax, rcx
	mov	qword ptr [r13 + 8], rax
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [r13 + 0x18], xmm0
	mov	rsp, rsp
	mov	qword ptr [r13 + 0x30], rbp
	mov	qword ptr [r13 + 0x38], r14
	mov	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 0x40], rax
	mov	qword ptr [r13 + 0x48], 0
	nop	
	mov	rax, r13
	jmp	.label_510
.label_509:
	mov	rbp, rbp
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_510:
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409b80

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	push	rbx
	mov	rbp, rbp
	mov	rbx, rsi
	mov	rsp, rsp
	mov	esi, 3
	mov	rsp, rsp
	call	rotr_sz
	lea	rdi, [rdi]
	xor	edx, edx
	div	rbx
	mov	rax, rdx
	mov	rbp, rbp
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409bb0

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	lea	rsi, [rsi]
	cmp	rdi, rsi
	sete	al
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409bc0

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	nop	
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	mov	rsp, rsp
	je	.label_511
	lea	rsi, [rsi]
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_514]]
	nop	
	jbe	.label_512
	movss	xmm1,  dword ptr [dword ptr [rip + label_515]]
	ucomiss	xmm1, xmm0
	jbe	.label_512
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_513]]
	jbe	.label_512
	movss	xmm1, dword ptr [rcx]
	lea	rdi, [rdi]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_512
	mov	rsp, rsp
	addss	xmm1,  dword ptr [dword ptr [rip + label_514]]
	ucomiss	xmm0, xmm1
	jbe	.label_512
	mov	rsp, rsp
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_516]]
	ucomiss	xmm2, xmm0
	nop	
	jb	.label_512
	ucomiss	xmm0, xmm1
	ja	.label_511
.label_512:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_511:
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409c50

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_517
	mov	eax, edi
	nop	
	and	eax, 1
	lea	rsi, [rsi]
	test	rdi, rdi
	js	.label_519
	mov	rsp, rsp
	cvtsi2ss	xmm0, rdi
	mov	rbp, rbp
	jmp	.label_518
.label_519:
	lea	rsi, [rsi]
	shr	rdi, 1
	or	rax, rdi
	mov	rsp, rsp
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_518:
	divss	xmm0, dword ptr [rsi + 8]
	nop	
	movss	xmm1,  dword ptr [dword ptr [rip + label_520]]
	nop	
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	mov	rsp, rsp
	cvttss2si	rax, xmm2
	mov	rsp, rsp
	movabs	rcx, 0x8000000000000000
	mov	rsp, rsp
	xor	rcx, rax
	mov	rsp, rsp
	cvttss2si	rdi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rdi, rcx
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_521]]
	jae	.label_522
.label_517:
	push	rax
	mov	rbp, rbp
	call	next_prime
	mov	rcx, rax
	xor	eax, eax
	mov	rdx, rcx
	shr	rdx, 0x3c
	cmove	rax, rcx
	lea	rsi, [rsi]
	add	rsp, 8
.label_522:
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409d00
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	mov	rsp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	r15, rdi
	mov	rsp, rsp
	mov	r14, qword ptr [r15]
	mov	rsp, rsp
	jmp	.label_523
	nop	dword ptr [rax]
.label_527:
	add	r14, 0x10
.label_523:
	mov	rsp, rsp
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_525
	cmp	qword ptr [r14], 0
	lea	rdi, [rdi]
	je	.label_527
	nop	
	mov	rbx, qword ptr [r14 + 8]
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x40]
	lea	rsi, [rsi]
	test	rax, rax
	setne	cl
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_529
	nop	dword ptr [rax + rax]
.label_528:
	test	cl, 1
	nop	
	je	.label_524
	mov	rdi, qword ptr [rbx]
	mov	rsp, rsp
	call	rax
.label_524:
	lea	rdi, [rdi]
	mov	qword ptr [rbx], 0
	nop	
	mov	rdx, qword ptr [rbx + 8]
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rax
	nop	
	mov	qword ptr [r15 + 0x48], rbx
	mov	rax, qword ptr [r15 + 0x40]
	lea	rsi, [rsi]
	test	rax, rax
	setne	cl
	test	rdx, rdx
	lea	rdi, [rdi]
	mov	rbx, rdx
	mov	rbp, rbp
	jne	.label_528
.label_529:
	lea	rdi, [rdi]
	test	cl, cl
	je	.label_526
	mov	rdi, qword ptr [r14]
	call	rax
.label_526:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_527
.label_525:
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409dd0

	.globl hash_free
	.type hash_free, @function
hash_free:
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	mov	r15, rdi
	mov	rsp, rsp
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_533
	lea	rdi, [rdi]
	cmp	qword ptr [r15 + 0x20], 0
	lea	rdi, [rdi]
	je	.label_533
	mov	r14, qword ptr [r15]
	lea	rsi, [rsi]
	jmp	.label_539
	nop	word ptr cs:[rax + rax]
.label_534:
	mov	rbp, rbp
	add	r14, 0x10
.label_539:
	mov	rsp, rsp
	cmp	r14, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	jae	.label_533
	cmp	qword ptr [r14], 0
	je	.label_534
	test	r14, r14
	mov	rbp, rbp
	mov	rbx, r14
	je	.label_534
	nop	word ptr cs:[rax + rax]
.label_530:
	mov	rdi, qword ptr [rbx]
	mov	rbp, rbp
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_530
	jmp	.label_534
.label_533:
	mov	r14, qword ptr [r15]
	jmp	.label_535
	nop	word ptr [rax + rax]
.label_531:
	mov	rbp, rbp
	add	r14, 0x10
.label_535:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_537
	mov	rdi, qword ptr [r14 + 8]
	mov	rsp, rsp
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_531
	nop	dword ptr [rax]
.label_532:
	mov	rbp, rbp
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	lea	rdi, [rdi]
	mov	rdi, rbx
	jne	.label_532
	lea	rdi, [rdi]
	jmp	.label_531
.label_537:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_536
	nop	word ptr cs:[rax + rax]
.label_538:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rdi, rbx
	lea	rdi, [rdi]
	jne	.label_538
.label_536:
	mov	rdi, qword ptr [r15]
	call	free
	nop	
	mov	rdi, r15
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409ef0

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r14
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x50
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x28]
	mov	rdi, rsi
	mov	rsp, rsp
	mov	rsi, rax
	mov	rsp, rsp
	call	compute_bucket_size
	mov	rbp, rax
	lea	rsi, [rsi]
	test	rbp, rbp
	nop	
	je	.label_542
	lea	rsi, [rsi]
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	lea	rdi, [rdi]
	je	.label_541
	lea	rdi, [rdi]
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	rsp, rsp
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	test	rax, rax
	nop	
	je	.label_542
	mov	qword ptr [rsp + 0x10], rbp
	mov	rsp, rsp
	shl	rbp, 4
	add	rbp, qword ptr [rsp]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rbp
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rsp + 0x18], xmm0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x38]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x40]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rbx + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	lea	rdi, [rsp]
	xor	edx, edx
	mov	rsi, rbx
	call	transfer_entries
	mov	rbp, rbp
	test	al, al
	nop	
	je	.label_543
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx]
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx], rax
	nop	
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 0x10], rax
	nop	
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx + 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	mov	rsp, rsp
	jmp	.label_541
.label_543:
	nop	
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	mov	rsp, rsp
	lea	rsi, [rsp]
	mov	edx, 1
	nop	
	mov	rdi, rbx
	call	transfer_entries
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_540
	lea	rsi, [rsp]
	mov	rbp, rbp
	xor	edx, edx
	mov	rdi, rbx
	nop	
	call	transfer_entries
	test	al, al
	lea	rdi, [rdi]
	je	.label_540
	mov	rdi, qword ptr [rsp]
	call	free
.label_542:
	mov	rbp, rbp
	xor	r14d, r14d
.label_541:
	lea	rsi, [rsi]
	mov	al, r14b
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
.label_540:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a0a0

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	rbp, rbp
	mov	r12, rsi
	mov	r14, rdi
	mov	rbp, rbp
	mov	r15, qword ptr [r12]
	mov	rbp, rbp
	mov	al, 1
	nop	
	cmp	r15, qword ptr [r12 + 8]
	nop	
	jae	.label_549
	nop	
	mov	dword ptr [rsp + 4], edx
	nop	word ptr cs:[rax + rax]
.label_544:
	cmp	qword ptr [r15], 0
	nop	
	je	.label_545
	mov	rbp, rbp
	mov	rbx, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_552
	nop	word ptr [rax + rax]
.label_548:
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, r13
	call	safe_hasher
	nop	
	mov	rbp, qword ptr [rbx + 8]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_547
	mov	rcx, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	nop	
	jmp	.label_550
	nop	word ptr [rax + rax]
.label_547:
	mov	rsp, rsp
	mov	qword ptr [rax], r13
	lea	rsi, [rsi]
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	mov	rsp, rsp
	call	free_entry
.label_550:
	nop	
	test	rbp, rbp
	mov	rbp, rbp
	mov	rbx, rbp
	jne	.label_548
.label_552:
	mov	r13, qword ptr [r15]
	nop	
	mov	qword ptr [r15 + 8], 0
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	nop	
	jne	.label_545
	mov	rdi, r14
	mov	rsi, r13
	mov	rsp, rsp
	call	safe_hasher
	mov	rbx, rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbx], 0
	mov	rsp, rsp
	je	.label_546
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsp, rsp
	call	allocate_entry
	test	rax, rax
	je	.label_551
	mov	rbp, rbp
	mov	qword ptr [rax], r13
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 8]
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 8], rax
	jmp	.label_553
.label_546:
	mov	qword ptr [rbx], r13
	nop	
	inc	qword ptr [r14 + 0x18]
.label_553:
	mov	qword ptr [r15], 0
	dec	qword ptr [r12 + 0x18]
.label_545:
	nop	
	add	r15, 0x10
	cmp	r15, qword ptr [r12 + 8]
	mov	rbp, rbp
	jb	.label_544
	mov	al, 1
	jmp	.label_549
.label_551:
	nop	
	xor	eax, eax
.label_549:
	nop	
	add	rsp, 8
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	nop	
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a220

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	lea	rsi, [rsi]
	test	r14, r14
	mov	rbp, rbp
	je	.label_560
	lea	rdx, [rsp]
	lea	rsi, [rsi]
	xor	ebp, ebp
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdi, r15
	nop	
	mov	rsi, r14
	mov	rsp, rsp
	call	hash_find_entry
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_565
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_563
	mov	rbp, rbp
	mov	qword ptr [rbx], rax
	jmp	.label_563
.label_565:
	nop	
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	nop	
	js	.label_556
	cvtsi2ss	xmm0, rcx
	lea	rdi, [rdi]
	jmp	.label_567
.label_556:
	shr	rcx, 1
	lea	rdi, [rdi]
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_567:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	mov	edx, eax
	lea	rsi, [rsi]
	and	edx, 1
	test	rax, rax
	js	.label_568
	cvtsi2ss	xmm1, rax
	mov	rsp, rsp
	jmp	.label_557
.label_568:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	mov	rsp, rsp
	addss	xmm1, xmm1
.label_557:
	mulss	xmm1, dword ptr [rcx + 8]
	lea	rdi, [rdi]
	ucomiss	xmm0, xmm1
	jbe	.label_566
	mov	rdi, r15
	call	check_tuning
	nop	
	mov	rax, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	lea	rdi, [rdi]
	and	edx, 1
	mov	rsp, rsp
	test	rcx, rcx
	mov	rbp, rbp
	js	.label_555
	lea	rdi, [rdi]
	cvtsi2ss	xmm2, rcx
	jmp	.label_564
.label_555:
	shr	rcx, 1
	lea	rsi, [rsi]
	or	rdx, rcx
	mov	rsp, rsp
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_564:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	nop	
	and	edx, 1
	mov	rbp, rbp
	test	rax, rax
	js	.label_554
	cvtsi2ss	xmm0, rax
	jmp	.label_561
.label_554:
	shr	rax, 1
	or	rdx, rax
	lea	rdi, [rdi]
	cvtsi2ss	xmm0, rdx
	mov	rsp, rsp
	addss	xmm0, xmm0
.label_561:
	movaps	xmm3, xmm1
	lea	rsi, [rsi]
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	mov	rbp, rbp
	jbe	.label_566
	mov	rbp, rbp
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_558
	mulss	xmm0, xmm1
.label_558:
	mov	ebp, 0xffffffff
	lea	rsi, [rsi]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_521]]
	lea	rdi, [rdi]
	jae	.label_563
	lea	rdi, [rdi]
	movss	xmm1,  dword ptr [dword ptr [rip + label_520]]
	movaps	xmm2, xmm0
	lea	rdi, [rdi]
	subss	xmm2, xmm1
	nop	
	cvttss2si	rax, xmm2
	nop	
	movabs	rcx, 0x8000000000000000
	mov	rsp, rsp
	xor	rcx, rax
	mov	rbp, rbp
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	nop	
	mov	rdi, r15
	call	hash_rehash
	test	al, al
	mov	rbp, rbp
	je	.label_563
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, r14
	call	hash_find_entry
	lea	rdi, [rdi]
	test	rax, rax
	jne	.label_560
.label_566:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_562
	mov	rdi, r15
	call	allocate_entry
	mov	rbp, rbp
	mov	ebp, 0xffffffff
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_563
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	inc	qword ptr [r15 + 0x20]
	lea	rsi, [rsi]
	jmp	.label_559
.label_562:
	mov	qword ptr [rax], r14
	nop	
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_559:
	mov	rbp, rbp
	mov	ebp, 1
.label_563:
	mov	rbp, rbp
	mov	eax, ebp
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
.label_560:
	lea	rdi, [rdi]
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a4a0

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	r12d, ecx
	mov	rbp, rdx
	nop	
	mov	r13, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	mov	rbp, rbp
	call	safe_hasher
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbx]
	xor	r15d, r15d
	nop	
	test	rsi, rsi
	je	.label_570
	cmp	rsi, r13
	nop	
	je	.label_569
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_573
.label_569:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	mov	rsp, rsp
	je	.label_570
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_571
	nop	
	movups	xmm0, xmmword ptr [rsi]
	mov	rsp, rsp
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_572
.label_573:
	mov	rax, qword ptr [rbx + 8]
	nop	
	xor	r15d, r15d
	lea	rdi, [rdi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_570
	lea	rsi, [rsi]
	add	rbx, 8
	mov	rsp, rsp
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_575:
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	nop	
	cmp	rsi, r13
	mov	rsp, rsp
	je	.label_574
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	mov	rsp, rsp
	test	al, al
	jne	.label_574
	nop	
	mov	rbx, qword ptr [rbx]
	nop	
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_575
	jmp	.label_570
.label_571:
	mov	rbp, rbp
	mov	qword ptr [rbx], 0
	lea	rsi, [rsi]
	jmp	.label_570
.label_574:
	nop	
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_570
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_572:
	mov	rdi, r14
	mov	rbp, rbp
	call	free_entry
.label_570:
	mov	rax, r15
	mov	rbp, rbp
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	nop	
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a5c0

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	nop	
	je	.label_576
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
.label_576:
	push	rax
	mov	edi, 0x10
	mov	rsp, rsp
	call	malloc
	add	rsp, 8
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a5f0

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	rbx, rsi
	lea	rdx, [rsp + 8]
	call	hash_insert_if_absent
	mov	ecx, eax
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	ecx, -1
	je	.label_577
	nop	
	test	ecx, ecx
	mov	rbp, rbp
	cmove	rbx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rax, rbx
.label_577:
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbx
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a640

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	mov	rsp, rsp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	nop	
	mov	r15, rdi
	lea	rdi, [rdi]
	lea	rdx, [rsp + 8]
	mov	ecx, 1
	call	hash_find_entry
	mov	r14, rax
	mov	rbp, rbp
	xor	eax, eax
	test	r14, r14
	mov	rbp, rbp
	je	.label_587
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	jne	.label_586
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	nop	
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_579
	cvtsi2ss	xmm0, rax
	jmp	.label_582
.label_579:
	shr	rax, 1
	mov	rsp, rsp
	or	rcx, rax
	nop	
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_582:
	nop	
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	mov	rsp, rsp
	and	edx, 1
	lea	rsi, [rsi]
	test	rcx, rcx
	mov	rbp, rbp
	js	.label_590
	mov	rbp, rbp
	cvtsi2ss	xmm1, rcx
	mov	rsp, rsp
	jmp	.label_583
.label_590:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_583:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	lea	rsi, [rsi]
	jbe	.label_586
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_581
	mov	rsp, rsp
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	lea	rsi, [rsi]
	jmp	.label_585
.label_581:
	shr	rcx, 1
	or	rdx, rcx
	lea	rsi, [rsi]
	xorps	xmm1, xmm1
	lea	rsi, [rsi]
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_585:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_578
	lea	rsi, [rsi]
	cvtsi2ss	xmm0, rax
	jmp	.label_584
.label_578:
	shr	rax, 1
	or	rdx, rax
	mov	rsp, rsp
	cvtsi2ss	xmm0, rdx
	lea	rdi, [rdi]
	addss	xmm0, xmm0
.label_584:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_586
	mov	rbp, rbp
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	mov	rsp, rsp
	jne	.label_580
	mulss	xmm0, dword ptr [rcx + 8]
.label_580:
	movss	xmm1,  dword ptr [dword ptr [rip + label_520]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	lea	rdi, [rdi]
	cvttss2si	rax, xmm2
	mov	rsp, rsp
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	mov	rsp, rsp
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	lea	rsi, [rsi]
	test	al, al
	jne	.label_586
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	nop	
	je	.label_588
	nop	word ptr cs:[rax + rax]
.label_589:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	mov	rsp, rsp
	test	rbx, rbx
	mov	rbp, rbp
	mov	rdi, rbx
	jne	.label_589
.label_588:
	nop	
	mov	qword ptr [r15 + 0x48], 0
.label_586:
	mov	rax, r14
.label_587:
	add	rsp, 0x10
	nop	
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a830

	.globl next_prime
	.type next_prime, @function
next_prime:
	nop	
	push	r14
	lea	rdi, [rdi]
	push	rbx
	push	rax
	nop	
	cmp	rdi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rdi
	lea	rsi, [rsi]
	or	rbx, 1
	mov	r14, -1
	jmp	.label_591
	nop	word ptr cs:[rax + rax]
.label_592:
	lea	rsi, [rsi]
	add	rbx, 2
.label_591:
	mov	rbp, rbp
	cmp	rbx, -1
	nop	
	je	.label_593
	nop	
	mov	rdi, rbx
	call	is_prime
	test	al, al
	mov	rbp, rbp
	je	.label_592
	mov	rsp, rsp
	mov	r14, rbx
.label_593:
	nop	
	mov	rax, r14
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a8a0

	.globl is_prime
	.type is_prime, @function
is_prime:
	lea	rdi, [rdi]
	mov	r8, rdi
	nop	
	mov	esi, 3
	nop	
	mov	edi, 9
	nop	
	mov	ecx, 0x10
	cmp	r8, 0xa
	jb	.label_594
	nop	
.label_595:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_594
	add	rdi, rcx
	mov	rbp, rbp
	add	rsi, 2
	lea	rdi, [rdi]
	add	rcx, 8
	mov	rbp, rbp
	cmp	rdi, r8
	jb	.label_595
.label_594:
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r8
	div	rsi
	lea	rsi, [rsi]
	test	rdx, rdx
	setne	al
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a900

	.globl free_entry
	.type free_entry, @function
free_entry:
	lea	rsi, [rsi]
	mov	qword ptr [rsi], 0
	nop	
	mov	rax, qword ptr [rdi + 0x48]
	nop	
	mov	qword ptr [rsi + 8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x48], rsi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a920

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
	mov	eax, OFFSET FLAT:.str.1_8
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_596
	nop	
	mov	rax, rcx
.label_596:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a960

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
	.align	16
	#Procedure 0x40a980

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xc8
	test	al, al
	mov	rbp, rbp
	je	.label_597
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
.label_597:
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
	ja	.label_600
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	lea	rsi, [rsi]
	jb	.label_598
	mov	rsp, rsp
	mov	eax, 0x514
	lea	rsi, [rsi]
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_606
	mov	rbp, rbp
	test	esi, esi
	jne	.label_600
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_603
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	mov	rbp, rbp
	lea	ecx, [rcx + 8]
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], ecx
	lea	rdi, [rdi]
	jmp	.label_609
.label_600:
	lea	eax, [rsi - 0x400]
	lea	rdi, [rdi]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_601
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_606
	lea	rdi, [rdi]
	mov	ecx, 0x102
	bt	ecx, eax
	mov	rbp, rbp
	jae	.label_610
.label_598:
	lea	rsi, [rsi]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_606:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_602
	mov	rax, rcx
	mov	rbp, rbp
	add	rax, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_605
.label_602:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_605:
	mov	edx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_610:
	nop	
	cmp	eax, 6
	jne	.label_601
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_608
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	lea	rsi, [rsi]
	jmp	.label_599
.label_601:
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_604
	mov	rbp, rbp
	mov	rax, rcx
	mov	rsp, rsp
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_607
.label_603:
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_609:
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	call	rpl_fcntl_DUPFD
	add	rsp, 0xc8
	lea	rsi, [rsi]
	ret	
.label_608:
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_599:
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xc8
	lea	rsi, [rsi]
	ret	
.label_604:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_607:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	rsp, rsp
	call	fcntl
	lea	rsi, [rsi]
	add	rsp, 0xc8
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ac20

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
	.align	16
	#Procedure 0x40ac40

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
	js	.label_611
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
	jns	.label_612
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	nop	
	jne	.label_612
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_613
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_614
.label_612:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	mov	rbp, rbp
	jmp	.label_614
.label_611:
	mov	rbp, rbp
	mov	edi, ebp
	mov	rbp, rbp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_614:
	test	ebx, ebx
	js	.label_613
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_613
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_615
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
	jne	.label_613
.label_615:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	lea	rdi, [rdi]
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_613:
	lea	rdi, [rdi]
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ad50

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
	.align	16
	#Procedure 0x40ad70
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	rsp, rsp
	mov	cl, sil
	rol	rdi, cl
	mov	rax, rdi
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ad80
	.globl rotr64
	.type rotr64, @function
rotr64:

	mov	cl, sil
	ror	rdi, cl
	lea	rdi, [rdi]
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ad90
	.globl rotl32
	.type rotl32, @function
rotl32:

	lea	rdi, [rdi]
	mov	cl, sil
	rol	edi, cl
	mov	eax, edi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ada0
	.globl rotr32
	.type rotr32, @function
rotr32:

	nop
	mov	cl, sil
	ror	edi, cl
	mov	eax, edi
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40adb0
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	mov	cl, sil
	mov	rbp, rbp
	rol	rdi, cl
	mov	rax, rdi
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40adc0

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	mov	cl, sil
	ror	rdi, cl
	mov	rax, rdi
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40add0
	.globl rotl16
	.type rotl16, @function
rotl16:

	mov	eax, edi
	mov	cl, sil
	shl	eax, cl
	lea	rsi, [rsi]
	mov	ecx, 0x10
	mov	rsp, rsp
	sub	ecx, esi
	mov	rbp, rbp
	shr	edi, cl
	or	edi, eax
	mov	rbp, rbp
	movzx	eax, di
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ae00
	.globl rotr16
	.type rotr16, @function
rotr16:

	mov	rbp, rbp
	mov	eax, edi
	mov	cl, sil
	shr	eax, cl
	lea	rdi, [rdi]
	mov	ecx, 0x10
	mov	rsp, rsp
	sub	ecx, esi
	shl	edi, cl
	lea	rsi, [rsi]
	or	edi, eax
	movzx	eax, di
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ae30
	.globl rotl8
	.type rotl8, @function
rotl8:

	mov	rbp, rbp
	mov	eax, edi
	nop	
	mov	cl, sil
	mov	rsp, rsp
	shl	eax, cl
	mov	rsp, rsp
	mov	ecx, 8
	sub	ecx, esi
	nop	
	shr	edi, cl
	lea	rdi, [rdi]
	or	edi, eax
	movzx	eax, dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ae60
	.globl rotr8
	.type rotr8, @function
rotr8:

	mov	eax, edi
	mov	rsp, rsp
	mov	cl, sil
	nop	
	shr	eax, cl
	mov	rsp, rsp
	mov	ecx, 8
	lea	rsi, [rsi]
	sub	ecx, esi
	lea	rdi, [rdi]
	shl	edi, cl
	or	edi, eax
	movzx	eax, dil
	ret	
	nop	word ptr cs:[rax + rax]
	nop
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section .text
	.align	16
	#Procedure 0x40af40

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
