	.section	.text
	.align	16
	#Procedure 0x401579
	.globl sub_401579
	.type sub_401579, @function
sub_401579:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40157a
	.globl sub_40157a
	.type sub_40157a, @function
sub_40157a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015b2
	.globl sub_4015b2
	.type sub_4015b2, @function
sub_4015b2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015fa
	.globl sub_4015fa
	.type sub_4015fa, @function
sub_4015fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40161c
	.globl sub_40161c
	.type sub_40161c, @function
sub_40161c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40162d
	.globl sub_40162d
	.type sub_40162d, @function
sub_40162d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401646
	.globl sub_401646
	.type sub_401646, @function
sub_401646:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401650

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
	je	.label_20
	mov	edx, OFFSET FLAT:label_25
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_12
.label_20:
	mov	edx, OFFSET FLAT:label_14
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_12:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
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
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_21
	jmp	qword ptr [(r12 * 8) + label_22]
.label_467:
	add	rsp, 8
	jmp	.label_13
.label_21:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
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
	jmp	.label_13
.label_468:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
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
.label_469:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
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
.label_470:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
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
.label_471:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
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
	jmp	.label_13
.label_472:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
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
	jmp	.label_13
.label_473:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
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
	jmp	.label_13
.label_474:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
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
	jmp	.label_13
.label_476:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
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
	jmp	.label_13
.label_475:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
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
.label_13:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4019a8
	.globl sub_4019a8
	.type sub_4019a8, @function
sub_4019a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4019b0

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	.section	.text
	.align	16
	#Procedure 0x4019c7
	.globl sub_4019c7
	.type sub_4019c7, @function
sub_4019c7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4019d0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	test	rdi, rdi
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	dword ptr [rcx + 4], esi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4019e3
	.globl sub_4019e3
	.type sub_4019e3, @function
sub_4019e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4019f0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x4019f8
	.globl sub_4019f8
	.type sub_4019f8, @function
sub_4019f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a00
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_29
	mov	dword ptr [rsp + 0x40], esi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rax, [rsp + 0x40]
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_29:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401a68
	.globl sub_401a68
	.type sub_401a68, @function
sub_401a68:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a70
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_32
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_34
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_30
	call	free
	xor	eax, eax
	jmp	.label_33
.label_31:
	call	xalloc_die
.label_34:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401aac
	.globl sub_401aac
	.type sub_401aac, @function
sub_401aac:

	nop	word ptr cs:[rax + rax]
.label_32:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_31
	mov	qword ptr [rsi], rbx
.label_30:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_33
	test	rax, rax
	je	.label_31
.label_33:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ae0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r12, rsi
	mov	r13d, edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_89
	call	setlocale
	mov	edi, OFFSET FLAT:label_39
	mov	esi, OFFSET FLAT:label_40
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_39
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r14d, 0xffffffff
	mov	dword ptr [rsp + 8], r13d
	nop	word ptr [rax + rax]
.label_65:
	xor	ebp, ebp
	mov	edx, OFFSET FLAT:short_options
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r13d
	mov	rsi, r12
	call	getopt_long
	mov	ebx, eax
	lea	eax, [rbx + 0x83]
	cmp	eax, 0xf7
	ja	.label_45
	mov	cl, 1
	xor	r15d, r15d
	jmp	qword ptr [(rax * 8) + label_57]
.label_485:
	mov	eax, dword ptr [rip + optind]
	cmp	eax, 2
	jne	.label_41
.label_486:
	mov	rax, qword ptr [rip + optarg]
	movsxd	rbp, dword ptr [rip + optind]
	test	rax, rax
	jne	.label_63
	mov	r13, qword ptr [r12 + rbp*8 - 8]
	mov	rdi, r13
	call	strlen
	add	rax, r13
	mov	r13d, dword ptr [rsp + 8]
	mov	qword ptr [rip + optarg],  rax
.label_63:
	mov	rcx, qword ptr [r12 + rbp*8 - 8]
	add	rcx, 2
	cmp	rax, rcx
	jne	.label_62
	dec	rax
	mov	qword ptr [rip + optarg],  rax
.label_489:
	test	r14d, r14d
	jns	.label_71
	mov	rdi, qword ptr [rip + optarg]
	lea	rsi, [rsp + 0x30]
	call	operand2sig
	mov	r14d, eax
	test	r14d, r14d
	jns	.label_65
	jmp	.label_88
.label_488:
	xor	ecx, ecx
.label_487:
	mov	r15b, cl
	nop	word ptr cs:[rax + rax]
.label_76:
	mov	edx, OFFSET FLAT:short_options
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r13d
	mov	rsi, r12
	call	getopt_long
	mov	ebx, eax
	lea	eax, [rbx + 0x83]
	cmp	eax, 0xf7
	ja	.label_45
	mov	bpl, 1
	jmp	qword ptr [(rax * 8) + label_50]
.label_405:
	mov	eax, dword ptr [rip + optind]
	mov	bpl, 1
	cmp	eax, 2
	jne	.label_52
.label_406:
	mov	rax, qword ptr [rip + optarg]
	movsxd	rbp, dword ptr [rip + optind]
	test	rax, rax
	jne	.label_54
	mov	r13, qword ptr [r12 + rbp*8 - 8]
	mov	rdi, r13
	call	strlen
	add	rax, r13
	mov	r13d, dword ptr [rsp + 8]
	mov	qword ptr [rip + optarg],  rax
.label_54:
	mov	rcx, qword ptr [r12 + rbp*8 - 8]
	add	rcx, 2
	cmp	rax, rcx
	jne	.label_62
	dec	rax
	mov	qword ptr [rip + optarg],  rax
.label_408:
	test	r14d, r14d
	jns	.label_71
	mov	rdi, qword ptr [rip + optarg]
	lea	rsi, [rsp + 0x30]
	call	operand2sig
	mov	r14d, eax
	test	r14d, r14d
	jns	.label_76
.label_88:
	mov	edi, 1
	call	usage
.label_41:
	xor	ebp, ebp
	xor	r15d, r15d
.label_52:
	dec	eax
	mov	dword ptr [rip + optind],  eax
.label_404:
	mov	ecx, 0xf
	test	r14d, r14d
	js	.label_82
	test	bpl, bpl
	mov	ecx, r14d
	jne	.label_84
.label_82:
	test	bpl, bpl
	mov	eax, dword ptr [rip + optind]
	jne	.label_77
	cmp	eax, r13d
	jge	.label_35
.label_77:
	movsxd	rdx, eax
	test	bpl, bpl
	je	.label_38
	cmp	eax, r13d
	mov	ebp, 0
	lea	r14, [r12 + rdx*8]
	cmovge	r14, rbp
	test	r15b, r15b
	jne	.label_42
	test	r14, r14
	je	.label_48
	mov	rdi, qword ptr [r14]
	xor	r13d, r13d
	test	rdi, rdi
	je	.label_44
	lea	rbp, [r12 + rdx*8 + 8]
	lea	r14, [rsp + 0x10]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_72:
	mov	rsi, r14
	call	operand2sig
	mov	ecx, eax
	test	ecx, ecx
	mov	r13d, 1
	js	.label_56
	mov	rax, qword ptr [rbp - 8]
	movsx	eax, byte ptr [rax]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_59
	mov	rdi, r14
	call	puts
	jmp	.label_64
	.section	.text
	.align	16
	#Procedure 0x401d8d
	.globl sub_401d8d
	.type sub_401d8d, @function
sub_401d8d:

	nop	dword ptr [rax]
.label_59:
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_66
	xor	eax, eax
	mov	edx, ecx
	call	__printf_chk
.label_64:
	mov	r13d, ebx
.label_56:
	mov	rdi, qword ptr [rbp]
	add	rbp, 8
	test	rdi, rdi
	mov	ebx, r13d
	jne	.label_72
	jmp	.label_44
.label_38:
	mov	dword ptr [rsp + 8], ecx
	mov	rbx, qword ptr [r12 + rdx*8]
	lea	r15, [r12 + rdx*8 + 8]
	lea	r14, [rsp + 0x10]
	xor	r13d, r13d
	jmp	.label_58
.label_49:
	mov	edi, eax
	mov	esi, dword ptr [rsp + 8]
	call	kill
	test	eax, eax
	je	.label_81
	mov	ebp, dword ptr [rbp]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_86
	xor	eax, eax
	mov	esi, ebp
	jmp	.label_87
.label_58:
	call	__errno_location
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	mov	edx, 0xa
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rsi, r14
	call	__strtol_internal
	cmp	dword ptr [rbp], 0x22
	je	.label_43
	movsxd	rcx, eax
	cmp	rcx, rax
	jne	.label_43
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	rbx, rcx
	je	.label_43
	cmp	byte ptr [rcx], 0
	je	.label_49
	nop	
.label_43:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
.label_87:
	call	error
	mov	r13d, 1
.label_81:
	mov	rbx, qword ptr [r15]
	add	r15, 8
	test	rbx, rbx
	jne	.label_58
	jmp	.label_44
.label_42:
	mov	qword ptr [rsp + 8], rdx
	mov	ebx, 1
	lea	r15, [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_78:
	mov	edi, ebx
	mov	rsi, r15
	call	sig2str
	test	eax, eax
	jne	.label_73
	mov	rdi, r15
	call	strlen
	mov	ecx, ebp
	cmp	rcx, rax
	cmovae	eax, ebp
	mov	ebp, eax
.label_73:
	inc	ebx
	cmp	ebx, 0x41
	jne	.label_78
	mov	r15, rbp
	test	r14, r14
	je	.label_80
	mov	rdi, qword ptr [r14]
	xor	r13d, r13d
	test	rdi, rdi
	mov	rax, qword ptr [rsp + 8]
	je	.label_44
	lea	rbx, [r12 + rax*8 + 8]
	lea	r14, [rsp + 0x10]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_53:
	mov	rsi, r14
	call	operand2sig
	mov	ebp, eax
	test	ebp, ebp
	mov	r13d, 1
	js	.label_37
	mov	edi, ebp
	call	strsignal
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_55
	cmove	rax, rcx
	mov	qword ptr [rsp], rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_79
	mov	edx, 2
	xor	eax, eax
	mov	ecx, ebp
	mov	r8d, r15d
	mov	r9, r14
	call	__printf_chk
	mov	r13d, r12d
.label_37:
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	mov	r12d, r13d
	jne	.label_53
	jmp	.label_44
.label_48:
	mov	ebx, 1
	lea	rbp, [rsp + 0x10]
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_74:
	mov	edi, ebx
	mov	rsi, rbp
	call	sig2str
	test	eax, eax
	jne	.label_61
	mov	rdi, rbp
	call	puts
.label_61:
	inc	ebx
	cmp	ebx, 0x41
	jne	.label_74
	jmp	.label_44
.label_80:
	mov	ebx, 1
	lea	r14, [rsp + 0x10]
	mov	ebp, OFFSET FLAT:label_55
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_85:
	mov	edi, ebx
	mov	rsi, r14
	call	sig2str
	test	eax, eax
	jne	.label_75
	mov	edi, ebx
	call	strsignal
	test	rax, rax
	cmove	rax, rbp
	mov	qword ptr [rsp], rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_79
	mov	edx, 2
	xor	eax, eax
	mov	ecx, ebx
	mov	r8d, r15d
	mov	r9, r14
	call	__printf_chk
.label_75:
	inc	ebx
	cmp	ebx, 0x41
	jne	.label_85
.label_44:
	mov	eax, r13d
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_71:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_36
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + optarg]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_62:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_51
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
	mov	edi, 1
	call	usage
.label_407:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_70
.label_47:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 1
	call	usage
.label_402:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_67
	mov	edx, OFFSET FLAT:label_68
	mov	r8d, OFFSET FLAT:label_69
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_403:
	xor	edi, edi
	call	usage
.label_45:
	mov	edi, 1
	call	usage
.label_35:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_46
	jmp	.label_47
.label_84:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_83
	jmp	.label_47
	.section	.text
	.align	16
	#Procedure 0x4020ee
	.globl sub_4020ee
	.type sub_4020ee, @function
sub_4020ee:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4020f0

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_91
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_98
	cmp	ecx, 0x55
	jne	.label_90
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_90
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_90
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_90
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_90
	cmp	byte ptr [rax + 5], 0
	jne	.label_90
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_95
	mov	eax, OFFSET FLAT:label_96
	jmp	.label_97
.label_98:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_90
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_90
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_90
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_90
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_90
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_90
	cmp	byte ptr [rax + 7], 0
	je	.label_92
.label_90:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_93
	mov	eax, OFFSET FLAT:label_94
.label_97:
	cmove	rax, rcx
.label_91:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_92:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_99
	mov	eax, OFFSET FLAT:label_100
	jmp	.label_97
	.section	.text
	.align	16
	#Procedure 0x4021b5
	.globl sub_4021b5
	.type sub_4021b5, @function
sub_4021b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021c0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_101
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_102
	test	rbx, rbx
	jne	.label_102
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_102:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_103
	test	rax, rax
	je	.label_101
.label_103:
	pop	rbx
	ret	
.label_101:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402208
	.globl sub_402208
	.type sub_402208, @function
sub_402208:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402210

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_110
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	mov	r8, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_111
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_112
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_113
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_109
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_108
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_118
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_115
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_67
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_121
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_68
	mov	ecx, OFFSET FLAT:label_106
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_105
	mov	esi, OFFSET FLAT:label_120
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_105
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_116
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_105:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_117
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_106
	mov	ecx, OFFSET FLAT:label_67
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_114
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_67
	mov	ecx, OFFSET FLAT:label_107
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_110:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_104
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [rip + program_name]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x402439
	.globl sub_402439
	.type sub_402439, @function
sub_402439:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402440

	.globl sig2str
	.type sig2str, @function
sig2str:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rsi
	mov	ebp, edi
	mov	ecx, OFFSET FLAT:numname_table
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_125:
	mov	edx, eax
	cmp	dword ptr [rcx], ebp
	je	.label_129
	lea	esi, [rdx + 1]
	cmp	dword ptr [rcx + 0xc], ebp
	je	.label_124
	lea	esi, [rdx + 2]
	cmp	dword ptr [rcx + 0x18], ebp
	je	.label_124
	add	edx, 3
	cmp	dword ptr [rcx + 0x24], ebp
	mov	rsi, rdx
	je	.label_124
	cmp	dword ptr [rcx + 0x30], ebp
	je	.label_122
	add	rax, 5
	add	rcx, 0x3c
	cmp	eax, 0x23
	jb	.label_125
	call	__libc_current_sigrtmin
	mov	r14d, eax
	call	__libc_current_sigrtmax
	cmp	r14d, ebp
	mov	ebx, 0xffffffff
	jg	.label_126
	cmp	eax, ebp
	jl	.label_126
	mov	ecx, eax
	sub	ecx, r14d
	mov	edx, ecx
	shr	edx, 0x1f
	add	edx, ecx
	sar	edx, 1
	add	edx, r14d
	cmp	edx, ebp
	jge	.label_127
	mov	word ptr [r15 + 4], 0x58
	mov	dword ptr [r15], 0x414d5452
	mov	r14d, eax
	jmp	.label_123
.label_129:
	mov	rsi, rdx
	jmp	.label_124
.label_122:
	add	rax, 4
	mov	rsi, rax
.label_124:
	lea	rax, [rsi + rsi*2]
	lea	rsi, qword ptr [(rax * 4) + label_130]
	mov	rdi, r15
	call	strcpy
	xor	ebx, ebx
.label_126:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_127:
	mov	word ptr [r15 + 4], 0x4e
	mov	dword ptr [r15], 0x494d5452
.label_123:
	xor	ebx, ebx
	sub	ebp, r14d
	je	.label_126
	add	r15, 5
	xor	ebx, ebx
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_128
	xor	eax, eax
	mov	rdi, r15
	mov	r8d, ebp
	call	__sprintf_chk
	jmp	.label_126
	.section	.text
	.align	16
	#Procedure 0x402540
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
	call	xmalloc
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
	je	.label_131
	mov	qword ptr [rax], rbx
.label_131:
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40262c
	.globl sub_40262c
	.type sub_40262c, @function
sub_40262c:

	nop	dword ptr [rax]
.label_134:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402635

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_133
	test	rbx, rbx
	jne	.label_133
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_133:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_132
	test	rax, rax
	je	.label_134
.label_132:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402660

	.globl str2sig
	.type str2sig, @function
str2sig:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r14, rsi
	mov	r12, rdi
	movsx	eax, byte ptr [r12]
	add	eax, -0x30
	cmp	eax, 0xa
	jae	.label_142
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r12
	call	strtol
	cmp	rax, 0x40
	jg	.label_137
	mov	rcx, qword ptr [rsp + 8]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	je	.label_141
	jmp	.label_137
.label_142:
	xor	ebx, ebx
	mov	ebp, OFFSET FLAT:label_130
	nop	word ptr cs:[rax + rax]
.label_144:
	mov	rdi, rbp
	mov	rsi, r12
	call	strcmp
	test	eax, eax
	je	.label_138
	inc	rbx
	add	rbp, 0xc
	cmp	rbx, 0x22
	jbe	.label_144
	call	__libc_current_sigrtmin
	mov	ebp, eax
	call	__libc_current_sigrtmax
	mov	r15d, eax
	test	ebp, ebp
	jle	.label_143
	mov	esi, OFFSET FLAT:label_145
	mov	edx, 5
	mov	rdi, r12
	call	strncmp
	test	eax, eax
	je	.label_135
.label_143:
	test	r15d, r15d
	jle	.label_137
	mov	esi, OFFSET FLAT:label_140
	mov	edx, 5
	mov	rdi, r12
	call	strncmp
	test	eax, eax
	jne	.label_137
	add	r12, 5
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r12
	call	strtol
	mov	rcx, qword ptr [rsp + 8]
	cmp	byte ptr [rcx], 0
	jne	.label_137
	sub	ebp, r15d
	movsxd	rcx, ebp
	cmp	rcx, rax
	jg	.label_137
	test	rax, rax
	jg	.label_137
	mov	ecx, r15d
	jmp	.label_139
.label_138:
	mov	eax, dword ptr [rbp - 4]
	jmp	.label_141
.label_135:
	add	r12, 5
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r12
	call	strtol
	test	rax, rax
	js	.label_137
	mov	rcx, qword ptr [rsp + 8]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	jne	.label_137
	sub	r15d, ebp
	movsxd	rcx, r15d
	cmp	rax, rcx
	jle	.label_136
.label_137:
	mov	eax, 0xffffffff
.label_141:
	mov	dword ptr [r14], eax
	sar	eax, 0x1f
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_136:
	mov	ecx, ebp
.label_139:
	add	rax, rcx
	jmp	.label_141
	.section	.text
	.align	16
	#Procedure 0x4027b2
	.globl sub_4027b2
	.type sub_4027b2, @function
sub_4027b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027c0

	.globl operand2sig
	.type operand2sig, @function
operand2sig:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r14, rsi
	mov	r15, rdi
	movsx	eax, byte ptr [r15]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_146
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	mov	rcx, qword ptr [rsp + 8]
	mov	edi, 0xffffffff
	cmp	rcx, r15
	je	.label_150
	cmp	byte ptr [rcx], 0
	jne	.label_150
	cmp	dword ptr [rbx], 0
	jne	.label_150
	cmp	eax, -1
	je	.label_150
	movsxd	rcx, eax
	cmp	rcx, rax
	jne	.label_150
	cmp	eax, 0xfe
	mov	ecx, 0xff
	mov	edi, 0x7f
	cmovg	edi, ecx
	and	edi, eax
.label_150:
	mov	dword ptr [rsp + 4], edi
	jmp	.label_158
.label_146:
	mov	rdi, r15
	call	xstrdup
	mov	r12, rax
	mov	bpl, byte ptr [r12]
	test	bpl, bpl
	je	.label_148
	lea	rbx, [r12 + 1]
	nop	word ptr [rax + rax]
.label_149:
	movsx	esi, bpl
	mov	edi, OFFSET FLAT:label_153
	mov	edx, 0x1b
	call	memchr
	test	rax, rax
	je	.label_157
	add	bpl, 0xe0
	mov	byte ptr [rbx - 1], bpl
.label_157:
	movzx	ebp, byte ptr [rbx]
	inc	rbx
	test	bpl, bpl
	jne	.label_149
.label_148:
	lea	rsi, [rsp + 4]
	mov	rdi, r12
	call	str2sig
	test	eax, eax
	je	.label_147
	cmp	byte ptr [r12], 0x53
	jne	.label_151
	cmp	byte ptr [r12 + 1], 0x49
	jne	.label_151
	cmp	byte ptr [r12 + 2], 0x47
	jne	.label_151
	mov	rdi, r12
	add	rdi, 3
	lea	rsi, [rsp + 4]
	call	str2sig
	test	eax, eax
	je	.label_147
.label_151:
	mov	dword ptr [rsp + 4], 0xffffffff
.label_147:
	mov	rdi, r12
	call	free
	mov	edi, dword ptr [rsp + 4]
.label_158:
	test	edi, edi
	js	.label_155
	mov	rsi, r14
	call	sig2str
	test	eax, eax
	je	.label_154
.label_155:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_156
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r15
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	eax, 0xffffffff
	jmp	.label_152
.label_154:
	mov	eax, dword ptr [rsp + 4]
.label_152:
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402931
	.globl sub_402931
	.type sub_402931, @function
sub_402931:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
.label_159:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402945
	.globl sub_402945
	.type sub_402945, @function
sub_402945:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40294b
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_160
	test	rax, rax
	je	.label_159
.label_160:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402960
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_161
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_162
	test	rax, rax
	je	.label_161
.label_162:
	pop	rbx
	ret	
.label_161:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402995
	.globl sub_402995
	.type sub_402995, @function
sub_402995:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4029a0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4029ae
	.globl sub_4029ae
	.type sub_4029ae, @function
sub_4029ae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4029b0

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
	js	.label_166
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_169
	cmp	r12d, 0x7fffffff
	je	.label_164
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
	mov	qword ptr [rip + slotvec],  r14
	jne	.label_167
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_167:
	movsxd	rax, dword ptr [rip + nslots]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	add	rdi, rax
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [rip + nslots],  ebp
	mov	rbp, r14
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 8]
.label_169:
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
	jbe	.label_165
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_168
.label_165:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_163
	mov	rdi, r14
	call	free
.label_163:
	mov	rdi, r15
	call	xmalloc
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
.label_168:
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
.label_166:
	call	abort
.label_164:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402b6d
	.globl sub_402b6d
	.type sub_402b6d, @function
sub_402b6d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402b70
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b7f
	.globl sub_402b7f
	.type sub_402b7f, @function
sub_402b7f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402b80

	.globl xstrdup
	.type xstrdup, @function
xstrdup:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 1]
	call	malloc
	mov	r15, rax
	inc	rbx
	je	.label_171
	test	r15, r15
	je	.label_170
.label_171:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_170:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402bc2
	.globl sub_402bc2
	.type sub_402bc2, @function
sub_402bc2:

	nop	word ptr cs:[rax + rax]
.label_172:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402bd5
	.globl sub_402bd5
	.type sub_402bd5, @function
sub_402bd5:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402bd7
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_173]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_174]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_175]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_172
	test	rdx, rdx
	je	.label_172
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c40

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_176
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_176:
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
	.section	.text
	.align	16
	#Procedure 0x402cc3
	.globl sub_402cc3
	.type sub_402cc3, @function
sub_402cc3:

	nop	word ptr cs:[rax + rax]
.label_177:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402cd5
	.globl sub_402cd5
	.type sub_402cd5, @function
sub_402cd5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402cdb
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_173]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_174]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_175]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_177
	test	rdx, rdx
	je	.label_177
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d40
	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:

	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_178
	mov	dword ptr [rsp + 0x40], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_178:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402dac
	.globl sub_402dac
	.type sub_402dac, @function
sub_402dac:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402db0
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
	.section	.text
	.align	16
	#Procedure 0x402de6
	.globl sub_402de6
	.type sub_402de6, @function
sub_402de6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402df0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_179
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_179
	test	byte ptr [rbx + 1], 1
	je	.label_179
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_179:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x402e23
	.globl sub_402e23
	.type sub_402e23, @function
sub_402e23:

	nop	word ptr cs:[rax + rax]
.label_180:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402e35
	.globl sub_402e35
	.type sub_402e35, @function
sub_402e35:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e40
	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:

	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_180
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x70], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movaps	xmmword ptr [rsp + 0x60], xmm2
	movaps	xmmword ptr [rsp + 0x50], xmm1
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp], esi
	mov	ecx, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x34], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x24], xmm2
	movups	xmmword ptr [rsp + 0x14], xmm1
	movups	xmmword ptr [rsp + 4], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_181:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402ed5
	.globl sub_402ed5
	.type sub_402ed5, @function
sub_402ed5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402edd
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	je	.label_181
	mov	dword ptr [rsp + 0x40], edi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
	.section	.text
	.align	16
	#Procedure 0x402f40
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_182:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_182
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x402f61
	.globl sub_402f61
	.type sub_402f61, @function
sub_402f61:

	nop	word ptr cs:[rax + rax]
.label_184:
	mov	ecx, 1
.label_183:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x402f80
	.globl sub_402f80
	.type sub_402f80, @function
sub_402f80:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f85

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_184
	test	rsi, rsi
	mov	ecx, 1
	je	.label_183
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_183
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402fc0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_173]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_174]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_175]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	eax, ecx
	shr	al, 5
	movzx	eax, al
	mov	esi, dword ptr [rsp + rax*4 + 8]
	mov	edi, esi
	shr	edi, cl
	not	edi
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rax*4 + 8], edi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, r8
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x40302e
	.globl sub_40302e
	.type sub_40302e, @function
sub_40302e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403030
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rdx
	mov	rdx, rax
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x403048
	.globl sub_403048
	.type sub_403048, @function
sub_403048:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403050
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40305a
	.globl sub_40305a
	.type sub_40305a, @function
sub_40305a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403060
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_185
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_189
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_186
.label_190:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403092
	.globl sub_403092
	.type sub_403092, @function
sub_403092:

	nop	word ptr [rax + rax]
.label_189:
	call	xalloc_die
.label_187:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_188
	test	rax, rax
	je	.label_189
.label_188:
	pop	rbx
	ret	
.label_185:
	test	rcx, rcx
	jne	.label_191
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_191:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_190
.label_186:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_187
	test	rbx, rbx
	jne	.label_187
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403100
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_173]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_174]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_175]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x403154
	.globl sub_403154
	.type sub_403154, @function
sub_403154:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403160

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_202
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_204
.label_202:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_204:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_193
	cmp	r10d, 0x29
	jae	.label_201
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_203
.label_201:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_203:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_193
	cmp	r10d, 0x29
	jae	.label_199
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_200
.label_199:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_200:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_193
	cmp	r10d, 0x29
	jae	.label_197
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_198
.label_197:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_198:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_193
	cmp	r10d, 0x29
	jae	.label_195
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_196
.label_195:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_196:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_193
	cmp	r10d, 0x29
	jae	.label_192
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_194
.label_192:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_194:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_193
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_193
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_193
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_193
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_193:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x403342
	.globl sub_403342
	.type sub_403342, @function
sub_403342:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403350

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_89
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_205
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403375
	.globl sub_403375
	.type sub_403375, @function
sub_403375:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403380
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
	.section	.text
	.align	16
	#Procedure 0x4033b3
	.globl sub_4033b3
	.type sub_4033b3, @function
sub_4033b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033c0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4033d9
	.globl sub_4033d9
	.type sub_4033d9, @function
sub_4033d9:

	nop	dword ptr [rax]
.label_206:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4033e5
	.globl sub_4033e5
	.type sub_4033e5, @function
sub_4033e5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033eb

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_207
	test	rax, rax
	je	.label_206
.label_207:
	pop	rbx
	ret	
.label_210:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_208
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403420
	.globl sub_403420
	.type sub_403420, @function
sub_403420:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40342f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_210
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_211
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_213
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_211
	mov	esi, OFFSET FLAT:label_212
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_209
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_209:
	mov	rbx, r14
.label_211:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x4034b0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4034c9
	.globl sub_4034c9
	.type sub_4034c9, @function
sub_4034c9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4034d0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_173]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_174]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_175]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x403525
	.globl sub_403525
	.type sub_403525, @function
sub_403525:

	nop	word ptr cs:[rax + rax]
.label_215:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_214
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_214:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403564
	.globl sub_403564
	.type sub_403564, @function
sub_403564:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403566

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
	jne	.label_216
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_216
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_215
.label_216:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_217:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4035a5
	.globl sub_4035a5
	.type sub_4035a5, @function
sub_4035a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4035af
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_217
	call	rpl_calloc
	test	rax, rax
	je	.label_217
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4035d0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_218
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_86
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403600
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	qword ptr [rsp + 8], rbx
	mov	r12, rdi
	test	rdx, rdx
	mov	r14d, OFFSET FLAT:default_quoting_options
	cmovne	r14, rdx
	call	__errno_location
	mov	qword ptr [rsp + 0x10], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 4], ecx
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	or	ebp, 1
	lea	r15, [r14 + 8]
	sub	rsp, 8
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r12
	mov	rcx, rbx
	mov	r9d, ebp
	push	qword ptr [r14 + 0x30]
	push	qword ptr [r14 + 0x28]
	push	r15
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rbx, rax
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	r13, rax
	mov	r8d, dword ptr [r14]
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r9d, ebp
	push	qword ptr [r14 + 0x30]
	push	qword ptr [r14 + 0x28]
	push	r15
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	eax, dword ptr [rsp + 4]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4036c1
	.globl sub_4036c1
	.type sub_4036c1, @function
sub_4036c1:

	nop	word ptr cs:[rax + rax]
.label_219:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4036d5
	.globl sub_4036d5
	.type sub_4036d5, @function
sub_4036d5:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4036d9
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_173]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_174]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_175]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_219
	test	rsi, rsi
	je	.label_219
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rax, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x403740
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403748
	.globl sub_403748
	.type sub_403748, @function
sub_403748:

	nop	dword ptr [rax + rax]
.label_221:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_220
	call	__errno_location
	mov	dword ptr [rax], 0
.label_220:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40376b

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__fpending
	mov	r14, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, rbx
	call	rpl_fclose
	test	bpl, 0x20
	jne	.label_221
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_220
	test	cl, cl
	jne	.label_220
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_220
	.section	.text
	.align	16
	#Procedure 0x4037b0
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4037bf
	.globl sub_4037bf
	.type sub_4037bf, @function
sub_4037bf:

	nop	
.label_226:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_222
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_223
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_86
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x403801

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_225
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_226
	cmp	dword ptr [rbp], 0x20
	jne	.label_226
.label_225:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_227
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_223:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_224
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_227:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x403880

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
	je	.label_228
	cmp	r15, -2
	jb	.label_228
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_228
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_228:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4038d6
	.globl sub_4038d6
	.type sub_4038d6, @function
sub_4038d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038e0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_229
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_231
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_229
.label_231:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_229
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_230
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_230:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_229:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x403954
	.globl sub_403954
	.type sub_403954, @function
sub_403954:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403960
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_232
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_233
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_235
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_68
	mov	ecx, OFFSET FLAT:label_106
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_234
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x4039d4
	.globl sub_4039d4
	.type sub_4039d4, @function
sub_4039d4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039e0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_236
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_239:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_239
.label_236:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_240
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_238], OFFSET FLAT:slot0
.label_240:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_237
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_237:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a71
	.globl sub_403a71
	.type sub_403a71, @function
sub_403a71:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a80
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_241
	test	rdx, rdx
	je	.label_241
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_241:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403aab
	.globl sub_403aab
	.type sub_403aab, @function
sub_403aab:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ab0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x403ac1
	.globl sub_403ac1
	.type sub_403ac1, @function
sub_403ac1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ad0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x403ada
	.globl sub_403ada
	.type sub_403ada, @function
sub_403ada:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ae0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_173]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_174]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_175]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	edx, ecx
	shr	dl, 5
	movzx	edx, dl
	mov	esi, dword ptr [rsp + rdx*4 + 8]
	mov	edi, esi
	shr	edi, cl
	not	edi
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rdx*4 + 8], edi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b4f
	.globl sub_403b4f
	.type sub_403b4f, @function
sub_403b4f:

	nop	
.label_243:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403b55
	.globl sub_403b55
	.type sub_403b55, @function
sub_403b55:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b5f
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	call	malloc
	mov	r14, rax
	test	rbx, rbx
	je	.label_242
	test	r14, r14
	je	.label_243
.label_242:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b90

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_245
	cmp	byte ptr [rax], 0x43
	jne	.label_247
	cmp	byte ptr [rax + 1], 0
	je	.label_244
.label_247:
	mov	esi, OFFSET FLAT:label_246
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_245
.label_244:
	xor	ebx, ebx
.label_245:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403bc1
	.globl sub_403bc1
	.type sub_403bc1, @function
sub_403bc1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403bd0

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
	mov	qword ptr [rsp + 0xa8], rax
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
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa0], rcx
.label_288:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_284
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_253]
.label_424:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_297
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_94
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_425:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_314
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_314
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_327:
	cmp	r14, r11
	jae	.label_325
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_325:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_327
.label_314:
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rdi, rbp
	mov	rbx, r11
	call	strlen
	mov	r11, rbx
	mov	qword ptr [rsp + 0x40], rax
	mov	edi, r15d
	mov	qword ptr [rsp + 0x48], rbp
	mov	r13b, 1
	mov	sil, r12b
	mov	r8, qword ptr [rsp + 0x30]
	mov	r10b, byte ptr [rsp + 7]
	mov	r9d, dword ptr [rsp + 0x50]
	jmp	.label_332
.label_417:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_332
.label_420:
	mov	al, 1
.label_418:
	mov	r12b, 1
.label_421:
	test	r12b, 1
	mov	cl, 1
	je	.label_344
	mov	ecx, eax
.label_344:
	mov	al, cl
.label_419:
	test	r12b, 1
	jne	.label_346
	test	r11, r11
	je	.label_334
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_334:
	mov	r14d, 1
	jmp	.label_348
.label_346:
	xor	r14d, r14d
.label_348:
	mov	ecx, OFFSET FLAT:label_94
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_332
.label_422:
	test	r12b, 1
	jne	.label_356
	test	r11, r11
	je	.label_358
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_358:
	mov	r14d, 1
	jmp	.label_359
.label_423:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_93
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_332
.label_356:
	xor	r14d, r14d
.label_359:
	mov	eax, OFFSET FLAT:label_93
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_332:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r12b
	cmp	edi, 2
	setne	r15b
	sete	al
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x2a]
	mov	edx, r15d
	mov	byte ptr [rsp + 0x17], cl
	and	dl, cl
	cmp	qword ptr [rsp + 0x40], 0
	setne	cl
	mov	ebx, ecx
	mov	byte ptr [rsp + 0x2e], dl
	and	bl, dl
	mov	byte ptr [rsp + 0x2f], bl
	mov	edx, esi
	and	dl, 1
	sete	bl
	and	al, dl
	mov	byte ptr [rsp + 0x2b], al
	mov	byte ptr [rsp + 6], dl
	and	r12b, dl
	mov	byte ptr [rsp + 0x2d], r12b
	or	bl, r15b
	mov	byte ptr [rsp + 0x1f], bl
	mov	byte ptr [rsp + 0x2c], r13b
	mov	qword ptr [rsp + 0xb0], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x29], r13b
	xor	esi, esi
	mov	qword ptr [rsp + 0x38], rdi
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r12, rdi
	mov	rdi, r8
	jmp	.label_262
	.section	.text
	.align	16
	#Procedure 0x403ebd
	.globl sub_403ebd
	.type sub_403ebd, @function
sub_403ebd:

	nop	dword ptr [rax]
.label_329:
	inc	rsi
.label_262:
	cmp	rbp, -1
	je	.label_306
	cmp	rsi, rbp
	jne	.label_308
	jmp	.label_310
	.section	.text
	.align	16
	#Procedure 0x403ed3
	.globl sub_403ed3
	.type sub_403ed3, @function
sub_403ed3:

	nop	word ptr cs:[rax + rax]
.label_306:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_315
.label_308:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_320
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_259
	cmp	rbp, -1
	jne	.label_259
	mov	r15d, r10d
	mov	rbp, r11
	mov	r13d, r9d
	mov	r12, r14
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r14, r12
	mov	r9d, r13d
	mov	r12, qword ptr [rsp + 0x38]
	mov	r10d, r15d
	mov	r11, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_259:
	cmp	rbx, rbp
	jbe	.label_333
.label_320:
	xor	r8d, r8d
.label_317:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_335
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_338]
.label_441:
	test	rsi, rsi
	jne	.label_304
	jmp	.label_252
	.section	.text
	.align	16
	#Procedure 0x403f75
	.globl sub_403f75
	.type sub_403f75, @function
sub_403f75:

	nop	word ptr cs:[rax + rax]
.label_333:
	mov	qword ptr [rsp + 0x20], rbp
	mov	ebp, r9d
	mov	r15d, r10d
	mov	rbx, r11
	mov	r12, rsi
	lea	rdi, [rdi + rsi]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x40]
	call	memcmp
	test	eax, eax
	sete	r8b
	jne	.label_351
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_317
	jmp	.label_354
.label_351:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_317
.label_445:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_367
	test	rsi, rsi
	jne	.label_249
	cmp	rbp, 1
	je	.label_252
	xor	r13d, r13d
	jmp	.label_248
.label_434:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_258
	cmp	byte ptr [rsp + 6], 0
	jne	.label_261
	cmp	r12d, 2
	jne	.label_266
	mov	eax, r9d
	and	al, 1
	jne	.label_266
	cmp	r14, r11
	jae	.label_269
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_269:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_274
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_274:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_283
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_283:
	add	r14, 3
	mov	r9b, 1
.label_266:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_289
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_289:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_294
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_294
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_294
	cmp	r14, r11
	jae	.label_291
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_291:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_260
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_260:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_248
.label_435:
	mov	bl, 0x62
	jmp	.label_323
.label_436:
	mov	cl, 0x74
	jmp	.label_272
.label_437:
	mov	bl, 0x76
	jmp	.label_323
.label_438:
	mov	bl, 0x66
	jmp	.label_323
.label_439:
	mov	cl, 0x72
	jmp	.label_272
.label_442:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_326
	cmp	byte ptr [rsp + 6], 0
	jne	.label_295
	test	r11, r11
	sete	al
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r11
	mov	qword ptr [rsp + 0x68], rdx
	mov	eax, 0
	cmove	r11, rax
	cmp	r14, r11
	jae	.label_331
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_331:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_342
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_342:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_345
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_345:
	add	r14, 3
	xor	r9d, r9d
.label_326:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_248
.label_443:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_349
	cmp	r12d, 2
	jne	.label_304
	cmp	byte ptr [rsp + 6], 0
	je	.label_304
	jmp	.label_295
.label_444:
	cmp	r12d, 2
	jne	.label_357
	cmp	byte ptr [rsp + 6], 0
	jne	.label_295
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_321
.label_335:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_363
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
.label_324:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_264
	test	r8b, r8b
	je	.label_264
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_248
.label_367:
	test	rsi, rsi
	jne	.label_292
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_292
.label_252:
	mov	dl, 1
.label_440:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_295
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_248:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_300
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_301
	jmp	.label_305
	.section	.text
	.align	16
	#Procedure 0x4042c4
	.globl sub_4042c4
	.type sub_4042c4, @function
sub_4042c4:

	nop	word ptr cs:[rax + rax]
.label_300:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_305
.label_301:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_312
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_321
	jmp	.label_279
	.section	.text
	.align	16
	#Procedure 0x40430d
	.globl sub_40430d
	.type sub_40430d, @function
sub_40430d:

	nop	dword ptr [rax]
.label_305:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_279
	jmp	.label_321
.label_312:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_279
.label_258:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_329
	xor	r15d, r15d
	jmp	.label_304
.label_357:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_272
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_321
.label_272:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_295
.label_323:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_248
	nop	word ptr cs:[rax + rax]
.label_279:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_261
	cmp	r12d, 2
	jne	.label_347
	mov	eax, r9d
	and	al, 1
	jne	.label_347
	cmp	r14, r11
	jae	.label_366
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_366:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_365
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_365:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_275
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_275:
	add	r14, 3
	mov	r9b, 1
.label_347:
	cmp	r14, r11
	jae	.label_318
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_318:
	inc	r14
	jmp	.label_336
.label_363:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_364
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_364:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_287:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_271
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_277
	cmp	rbp, -2
	je	.label_282
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_309
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_340:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_256
	bt	rsi, rdx
	jb	.label_303
.label_256:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_340
.label_309:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_299
	xor	r13d, r13d
.label_299:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_287
	jmp	.label_324
.label_294:
	xor	r13d, r13d
	jmp	.label_248
.label_292:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_248
.label_349:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_304
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_304
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_304
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_361
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_267
	cmp	byte ptr [rsp + 6], 0
	jne	.label_307
	cmp	r14, r11
	jae	.label_278
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_278:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_341
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_341:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_350
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_350:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_265
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_265:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_248
.label_304:
	xor	eax, eax
.label_249:
	xor	r13d, r13d
	jmp	.label_248
.label_264:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_362
	.section	.text
	.align	16
	#Procedure 0x4045f2
	.globl sub_4045f2
	.type sub_4045f2, @function
sub_4045f2:

	nop	word ptr cs:[rax + rax]
.label_330:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_362:
	test	r8b, r8b
	je	.label_250
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_251
	cmp	r14, r11
	jae	.label_254
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_254:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_251
	.section	.text
	.align	16
	#Procedure 0x40463c
	.globl sub_40463c
	.type sub_40463c, @function
sub_40463c:

	nop	dword ptr [rax]
.label_250:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_354
	cmp	r12d, 2
	jne	.label_273
	mov	eax, r9d
	and	al, 1
	jne	.label_273
	cmp	r14, r11
	jae	.label_276
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_276:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_280
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_280:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_285
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_285:
	add	r14, 3
	mov	r9b, 1
.label_273:
	cmp	r14, r11
	jae	.label_343
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_343:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_298
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_298:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_302
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_302:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_251:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_321
	test	r9b, 1
	je	.label_286
	mov	ebx, eax
	and	bl, 1
	jne	.label_286
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_322
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_322:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_255
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_255:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_286:
	cmp	r14, r11
	jae	.label_330
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_330
	.section	.text
	.align	16
	#Procedure 0x404743
	.globl sub_404743
	.type sub_404743, @function
sub_404743:

	nop	word ptr cs:[rax + rax]
.label_321:
	test	r9b, 1
	je	.label_337
	and	al, 1
	jne	.label_337
	cmp	r14, r11
	jae	.label_339
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_339:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_293
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_293:
	add	r14, 2
	xor	r9d, r9d
.label_337:
	mov	ebx, r15d
.label_336:
	cmp	r14, r11
	jae	.label_328
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_328:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_329
.label_277:
	xor	r13d, r13d
.label_271:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_324
.label_282:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_355
	mov	rsi, qword ptr [rsp + 0x58]
.label_360:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_290
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_360
	xor	r13d, r13d
	jmp	.label_324
.label_355:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_324
.label_290:
	xor	r13d, r13d
	jmp	.label_324
.label_361:
	xor	r13d, r13d
	jmp	.label_248
.label_267:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_248
	.section	.text
	.align	16
	#Procedure 0x404818
	.globl sub_404818
	.type sub_404818, @function
sub_404818:

	nop	dword ptr [rax + rax]
.label_310:
	mov	rcx, rsi
.label_315:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_257
	or	al, dl
	je	.label_263
.label_257:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_268
	or	al, dl
	jne	.label_268
	test	r10b, 1
	jne	.label_281
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_268
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_288
.label_268:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_296
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_270
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_270
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_313:
	cmp	r14, r11
	jae	.label_316
	mov	byte ptr [rcx + r14], al
.label_316:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_313
	jmp	.label_270
.label_261:
	mov	qword ptr [rsp + 0x20], rbp
.label_354:
	mov	rdx, rdi
	jmp	.label_319
.label_295:
	mov	qword ptr [rsp + 0x20], rbp
.label_303:
	mov	rdx, rdi
	mov	eax, 2
.label_311:
	mov	qword ptr [rsp + 0x38], rax
.label_319:
	mov	r9d, dword ptr [rsp + 0x18]
	cmp	byte ptr [rsp + 0x17], 0
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x38]
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
.label_352:
	mov	r14, rax
.label_353:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_263:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_319
.label_281:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x20]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	qword ptr [rsp + 0x108]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_352
.label_296:
	mov	rcx, qword ptr [rsp + 8]
.label_270:
	cmp	r14, r11
	jae	.label_353
	mov	byte ptr [rcx + r14], 0
	jmp	.label_353
.label_307:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_311
.label_284:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4049d7
	.globl sub_4049d7
	.type sub_4049d7, @function
sub_4049d7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049e0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	je	.label_368
	mov	dword ptr [rsp + 0x40], edi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	xor	edi, edi
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_368:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404a41
	.globl sub_404a41
	.type sub_404a41, @function
sub_404a41:

	nop	word ptr cs:[rax + rax]
.label_369:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404a55
	.globl sub_404a55
	.type sub_404a55, @function
sub_404a55:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404a59

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, rbx
	call	malloc
	mov	r15, rax
	test	rbx, rbx
	je	.label_370
	test	r15, r15
	je	.label_369
.label_370:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_371:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404a95
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_173]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_174]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_175]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_371
	test	rsi, rsi
	je	.label_371
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x404b00
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rdx
	mov	rdx, rax
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x404b18
	.globl sub_404b18
	.type sub_404b18, @function
sub_404b18:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b20
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
	mov	r8, qword ptr [rbp]
	mov	r9, r8
	shr	r9, 0x20
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
	.section	.text
	.align	16
	#Procedure 0x404b95
	.globl sub_404b95
	.type sub_404b95, @function
sub_404b95:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c05
	.globl sub_404c05
	.type sub_404c05, @function
sub_404c05:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c12
	.globl sub_404c12
	.type sub_404c12, @function
sub_404c12:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c36
	.globl sub_404c36
	.type sub_404c36, @function
sub_404c36:

	nop	word ptr cs:[rax + rax]
