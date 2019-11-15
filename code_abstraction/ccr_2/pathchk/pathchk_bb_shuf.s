	.section	.text
	.align	32
	#Procedure 0x401349
	.globl sub_401349
	.type sub_401349, @function
sub_401349:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40134a
	.globl sub_40134a
	.type sub_40134a, @function
sub_40134a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401382
	.globl sub_401382
	.type sub_401382, @function
sub_401382:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4013ca
	.globl sub_4013ca
	.type sub_4013ca, @function
sub_4013ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4013ec
	.globl sub_4013ec
	.type sub_4013ec, @function
sub_4013ec:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4013fd
	.globl sub_4013fd
	.type sub_4013fd, @function
sub_4013fd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401416
	.globl sub_401416
	.type sub_401416, @function
sub_401416:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401420

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_9
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_11
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_9
.label_11:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_9
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_10
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_10:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_9:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x401494
	.globl sub_401494
	.type sub_401494, @function
sub_401494:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4014a0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_12
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_13
	test	rax, rax
	je	.label_12
.label_13:
	pop	rbx
	ret	
.label_12:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4014d5
	.globl sub_4014d5
	.type sub_4014d5, @function
sub_4014d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4014e0
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
	.align	32
	#Procedure 0x401516
	.globl sub_401516
	.type sub_401516, @function
sub_401516:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401520

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_15
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401550

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	r12, rsi
	mov	dword ptr [rsp + 4], edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_45
	call	setlocale
	mov	edi, OFFSET FLAT:label_47
	mov	esi, OFFSET FLAT:label_48
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_47
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	ecx, ecx
	jmp	.label_55
.label_68:
	mov	al, 1
	mov	qword ptr [rsp + 8], rax
	movzx	eax, byte ptr [rsp + 2]
	mov	cl, al
	nop	dword ptr [rax]
.label_55:
	mov	eax, ecx
	mov	byte ptr [rsp + 2], al
	mov	edx, OFFSET FLAT:label_59
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, r12
	call	getopt_long
	cmp	eax, 0x4f
	jle	.label_35
	mov	cl, 1
	cmp	eax, 0x50
	je	.label_55
	cmp	eax, 0x80
	mov	dl, 1
	mov	qword ptr [rsp + 8], rdx
	je	.label_55
	cmp	eax, 0x70
	je	.label_68
	jmp	.label_24
.label_35:
	cmp	eax, -1
	jne	.label_18
	mov	eax, dword ptr [rip + optind]
	cmp	eax, dword ptr [rsp + 4]
	je	.label_21
	mov	cl, 1
	jge	.label_25
	xor	edx, edx
	mov	rcx, qword ptr [rsp + 8]
	test	cl, cl
	mov	ecx, 0xe
	cmovne	rdx, rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	cl, 1
	mov	qword ptr [rsp + 0x20], r12
	jmp	.label_26
.label_53:
	mov	edi, 1
	mov	rsi, rbx
	lea	rdx, [rsp + 0x38]
	call	__lxstat
	test	eax, eax
	je	.label_32
	call	__errno_location
	mov	r14, rax
	test	rbp, rbp
	mov	r13d, dword ptr [r14]
	je	.label_42
	cmp	r13d, 2
	jne	.label_42
	cmp	rbp, 0x100
	jb	.label_46
	cmp	byte ptr [rbx], 0x2f
	mov	r15d, OFFSET FLAT:label_37
	mov	eax, OFFSET FLAT:label_49
	cmove	r15, rax
	mov	dword ptr [r14], 0
	mov	esi, 4
	mov	rdi, r15
	call	pathconf
	mov	r13, rax
	test	r13, r13
	jns	.label_23
	mov	r14d, dword ptr [r14]
	test	r14d, r14d
	je	.label_23
	mov	rbx, r15
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_58
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
	jmp	.label_19
.label_23:
	cmp	r13, rbp
	jbe	.label_65
	mov	rax, qword ptr [rsp + 8]
	test	al, al
	mov	edx, 0xe
	jne	.label_67
.label_46:
	mov	rax, rbx
	nop	dword ptr [rax]
.label_22:
	mov	cl, byte ptr [rax]
	inc	rax
	cmp	cl, 0x2f
	je	.label_22
	mov	r15b, 1
	test	cl, cl
	je	.label_19
	xor	ecx, ecx
	jmp	.label_62
	.section	.text
	.align	32
	#Procedure 0x401729
	.globl sub_401729
	.type sub_401729, @function
sub_401729:

	nop	dword ptr [rax]
.label_36:
	inc	rcx
.label_62:
	movzx	edx, byte ptr [rax + rcx]
	test	dl, dl
	je	.label_34
	cmp	dl, 0x2f
	jne	.label_36
.label_34:
	add	rax, rcx
	inc	rcx
	cmp	rcx, 0xf
	jb	.label_22
	mov	rdx, qword ptr [rsp + 0x30]
.label_67:
	mov	eax, 0xe
	mov	rbp, rbx
.label_17:
	mov	rcx, rax
	nop	dword ptr [rax]
.label_38:
	mov	r13, rbp
	movzx	r14d, byte ptr [r13]
	lea	rbp, [r13 + 1]
	cmp	r14b, 0x2f
	je	.label_38
	mov	r15b, 1
	test	r14b, r14b
	mov	r12, qword ptr [rsp + 0x20]
	je	.label_19
	test	rdx, rdx
	mov	rax, rdx
	jne	.label_33
	cmp	r13, rbx
	mov	r15, rbx
	mov	eax, OFFSET FLAT:label_37
	cmove	r15, rax
	mov	qword ptr [rsp + 0x18], rcx
	call	__errno_location
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rax], 0
	mov	byte ptr [r13], 0
	mov	esi, 3
	mov	qword ptr [rsp + 0x28], r15
	mov	rdi, r15
	call	pathconf
	mov	rsi, qword ptr [rsp + 0x18]
	mov	byte ptr [r13], r14b
	test	rax, rax
	mov	edx, 0
	jns	.label_33
	mov	rax, qword ptr [rsp + 0x10]
	mov	ecx, dword ptr [rax]
	mov	rax, -1
	test	ecx, ecx
	mov	edx, 0
	je	.label_33
	cmp	ecx, 2
	mov	rdx, rsi
	mov	rax, rsi
	jne	.label_54
	nop	
.label_33:
	xor	r14d, r14d
	jmp	.label_16
	.section	.text
	.align	32
	#Procedure 0x401805
	.globl sub_401805
	.type sub_401805, @function
sub_401805:

	nop	word ptr cs:[rax + rax]
.label_57:
	inc	r14
.label_16:
	movzx	r12d, byte ptr [rbp + r14]
	test	r12b, r12b
	je	.label_20
	cmp	r12b, 0x2f
	jne	.label_57
.label_20:
	lea	rcx, [r14 + 1]
	add	rbp, r14
	cmp	rax, rcx
	jae	.label_17
	mov	byte ptr [r13 + r14 + 1], 0
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_43
	mov	qword ptr [rsp + 0x18], rax
	mov	edx, 5
	mov	rbp, rcx
	call	dcgettext
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, r13
	call	quote
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r8, rbp
	mov	r9, rbx
	call	error
	mov	byte ptr [r13 + r14 + 1], r12b
	mov	r12, qword ptr [rsp + 0x20]
	jmp	.label_19
.label_65:
	dec	r13
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_50
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r13
	mov	r8, rbp
	mov	r9, rbx
	call	error
	jmp	.label_19
.label_32:
	mov	r15b, 1
	jmp	.label_19
.label_42:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_15
	xor	eax, eax
	mov	esi, r13d
	call	error
	jmp	.label_19
.label_54:
	mov	byte ptr [r13], 0
	mov	rax, qword ptr [rsp + 0x10]
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x28]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_15
	xor	eax, eax
	mov	esi, ebx
	call	error
	mov	byte ptr [r13], r14b
	jmp	.label_19
	.section	.text
	.align	32
	#Procedure 0x401945
	.globl sub_401945
	.type sub_401945, @function
sub_401945:

	nop	word ptr cs:[rax + rax]
.label_26:
	mov	byte ptr [rsp + 3], cl
	cdqe	
	mov	rbx, qword ptr [r12 + rax*8]
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	cmp	byte ptr [rsp + 2], 0
	je	.label_40
	mov	esi, 0x2d
	mov	rdi, rbx
	jmp	.label_44
	.section	.text
	.align	32
	#Procedure 0x401976
	.globl sub_401976
	.type sub_401976, @function
sub_401976:

	nop	word ptr cs:[rax + rax]
.label_52:
	inc	rax
	mov	esi, 0x2d
	mov	rdi, rax
.label_44:
	call	strchr
	test	rax, rax
	je	.label_40
	cmp	rax, rbx
	je	.label_51
	cmp	byte ptr [rax - 1], 0x2f
	jne	.label_52
.label_51:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	jmp	.label_19
	.section	.text
	.align	32
	#Procedure 0x4019da
	.globl sub_4019da
	.type sub_4019da, @function
sub_4019da:

	nop	word ptr [rax + rax]
.label_40:
	mov	rax, qword ptr [rsp + 8]
	test	al, al
	je	.label_63
	test	rbp, rbp
	je	.label_64
	mov	esi, OFFSET FLAT:label_66
	mov	rdi, rbx
	call	strspn
	cmp	byte ptr [rbx + rax], 0
	mov	r13d, 0x100
	je	.label_23
	lea	r14, [rbx + rax]
	mov	qword ptr [rsp + 0x38], 0
	sub	rbp, rax
	mov	rdi, r14
	mov	rsi, rbp
	lea	rdx, [rsp + 0x38]
	call	rpl_mbrlen
	mov	rbp, rax
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	cmp	rbp, 0x11
	mov	eax, 1
	cmovae	rbp, rax
	mov	edi, 1
	mov	esi, 8
	mov	rdx, r14
	mov	rcx, rbp
	call	quotearg_n_style_mem
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r13
	mov	rcx, rbp
	mov	r8, rbx
	call	error
	jmp	.label_19
	.section	.text
	.align	32
	#Procedure 0x401a9a
	.globl sub_401a9a
	.type sub_401a9a, @function
sub_401a9a:

	nop	word ptr [rax + rax]
.label_63:
	cmp	byte ptr [rsp + 2], 0
	je	.label_53
	test	rbp, rbp
	jne	.label_53
.label_64:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_56
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_19:
	mov	cl, byte ptr [rsp + 3]
	and	cl, r15b
	mov	eax, dword ptr [rip + optind]
	inc	eax
	mov	dword ptr [rip + optind],  eax
	cmp	eax, dword ptr [rsp + 4]
	jl	.label_26
.label_25:
	movzx	eax, cl
	xor	eax, 1
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_18:
	cmp	eax, 0xffffff7d
	je	.label_39
	cmp	eax, 0xffffff7e
	jne	.label_24
	xor	edi, edi
	call	usage
.label_39:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_27
	mov	edx, OFFSET FLAT:label_28
	mov	r8d, OFFSET FLAT:label_29
	mov	r9d, OFFSET FLAT:label_30
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_31
	call	version_etc
	add	rsp, 0x10
	xor	edi, edi
	call	exit
.label_21:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_41
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
.label_24:
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x401b9b
	.globl sub_401b9b
	.type sub_401b9b, @function
sub_401b9b:

	nop	
	nop	dword ptr [rax]
.label_70:
	mov	ecx, 1
.label_69:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x401bb0
	.globl sub_401bb0
	.type sub_401bb0, @function
sub_401bb0:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401bb5

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_70
	test	rsi, rsi
	mov	ecx, 1
	je	.label_69
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_69
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401bf0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_72
	cmp	byte ptr [rax], 0x43
	jne	.label_74
	cmp	byte ptr [rax + 1], 0
	je	.label_71
.label_74:
	mov	esi, OFFSET FLAT:label_73
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_72
.label_71:
	xor	ebx, ebx
.label_72:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401c21
	.globl sub_401c21
	.type sub_401c21, @function
sub_401c21:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c30

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_75]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_76]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_77]
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
	.align	32
	#Procedure 0x401c85
	.globl sub_401c85
	.type sub_401c85, @function
sub_401c85:

	nop	word ptr cs:[rax + rax]
.label_78:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401c95
	.globl sub_401c95
	.type sub_401c95, @function
sub_401c95:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ca3
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
	je	.label_79
	test	r15, r15
	je	.label_78
.label_79:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x401ce0

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
	jne	.label_80
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_80
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_81
.label_80:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_81:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_82
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_82:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d4e
	.globl sub_401d4e
	.type sub_401d4e, @function
sub_401d4e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401d50
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
	.align	32
	#Procedure 0x401d63
	.globl sub_401d63
	.type sub_401d63, @function
sub_401d63:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d70
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_75]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_76]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_77]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_83
	test	rsi, rsi
	je	.label_83
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
.label_83:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401ddc
	.globl sub_401ddc
	.type sub_401ddc, @function
sub_401ddc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401de0

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	.section	.text
	.align	32
	#Procedure 0x401df7
	.globl sub_401df7
	.type sub_401df7, @function
sub_401df7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e00

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_84
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_86
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_88
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_86
	mov	esi, OFFSET FLAT:label_87
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_89
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_89:
	mov	rbx, r14
.label_86:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_84:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_85
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401ea1
	.globl sub_401ea1
	.type sub_401ea1, @function
sub_401ea1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401eb0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_90
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_92:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_92
.label_90:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_93
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_94], OFFSET FLAT:slot0
.label_93:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_91
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_91:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x401f41
	.globl sub_401f41
	.type sub_401f41, @function
sub_401f41:

	nop	word ptr cs:[rax + rax]
.label_95:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401f55
	.globl sub_401f55
	.type sub_401f55, @function
sub_401f55:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f5b

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_96
	test	rax, rax
	je	.label_95
.label_96:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401f70
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x401f7a
	.globl sub_401f7a
	.type sub_401f7a, @function
sub_401f7a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f80
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_97
	call	rpl_calloc
	test	rax, rax
	je	.label_97
	pop	rcx
	ret	
.label_97:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401fa6
	.globl sub_401fa6
	.type sub_401fa6, @function
sub_401fa6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401fb0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_75]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_76]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_77]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_98
	test	rdx, rdx
	je	.label_98
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_98:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40201e
	.globl sub_40201e
	.type sub_40201e, @function
sub_40201e:

	nop	
.label_99:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402025
	.globl sub_402025
	.type sub_402025, @function
sub_402025:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40202f
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
	je	.label_100
	test	r14, r14
	je	.label_99
.label_100:
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
	.align	32
	#Procedure 0x402060
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40206f
	.globl sub_40206f
	.type sub_40206f, @function
sub_40206f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402070
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
	.align	32
	#Procedure 0x4020a3
	.globl sub_4020a3
	.type sub_4020a3, @function
sub_4020a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4020b0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4020c1
	.globl sub_4020c1
	.type sub_4020c1, @function
sub_4020c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4020d0

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
	je	.label_101
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
.label_101:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40213c
	.globl sub_40213c
	.type sub_40213c, @function
sub_40213c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402140
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40214e
	.globl sub_40214e
	.type sub_40214e, @function
sub_40214e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402150

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
	js	.label_105
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_108
	cmp	r12d, 0x7fffffff
	je	.label_103
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
	jne	.label_106
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_106:
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
.label_108:
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
	jbe	.label_104
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_107
.label_104:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_102
	mov	rdi, r14
	call	free
.label_102:
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
.label_107:
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
.label_105:
	call	abort
.label_103:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40230d
	.globl sub_40230d
	.type sub_40230d, @function
sub_40230d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402310

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
	.align	32
	#Procedure 0x402329
	.globl sub_402329
	.type sub_402329, @function
sub_402329:

	nop	dword ptr [rax]
.label_113:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x40233b

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_111
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_109
	cmp	dword ptr [rbp], 0x20
	jne	.label_109
.label_111:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_113
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_109:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_114
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_112
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_15
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_112:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_110
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023f0

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
	je	.label_115
	cmp	r15, -2
	jb	.label_115
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_115
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_115:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402446
	.globl sub_402446
	.type sub_402446, @function
sub_402446:

	nop	word ptr cs:[rax + rax]
.label_122:
	test	rcx, rcx
	jne	.label_119
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_119:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_118
.label_121:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_116
	test	rbx, rbx
	jne	.label_116
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_118:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4024a1
	.globl sub_4024a1
	.type sub_4024a1, @function
sub_4024a1:

	nop	word ptr [rax + rax]
.label_120:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4024af
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_122
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_120
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_121
.label_116:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_117
	test	rax, rax
	je	.label_120
.label_117:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4024f0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_123:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_123
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x402511
	.globl sub_402511
	.type sub_402511, @function
sub_402511:

	nop	word ptr cs:[rax + rax]
.label_126:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_124
	test	rax, rax
	je	.label_125
.label_124:
	pop	rbx
	ret	
.label_125:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402539
	.globl sub_402539
	.type sub_402539, @function
sub_402539:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402541
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_125
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_126
	test	rbx, rbx
	jne	.label_126
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402570

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_45
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_127
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402595
	.globl sub_402595
	.type sub_402595, @function
sub_402595:

	nop	word ptr cs:[rax + rax]
.label_128:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4025a5
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_75]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_76]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_77]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_128
	test	rsi, rsi
	je	.label_128
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_129:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402615
	.globl sub_402615
	.type sub_402615, @function
sub_402615:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40261b
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_75]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_76]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_77]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_129
	test	rdx, rdx
	je	.label_129
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_131:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_130
	call	__errno_location
	mov	dword ptr [rax], 0
.label_130:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40269b

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
	jne	.label_131
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_130
	test	cl, cl
	jne	.label_130
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_130
	.section	.text
	.align	32
	#Procedure 0x4026e0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_132
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_132:
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
	.align	32
	#Procedure 0x402763
	.globl sub_402763
	.type sub_402763, @function
sub_402763:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402770
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_75]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_76]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_77]
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
	.align	32
	#Procedure 0x4027df
	.globl sub_4027df
	.type sub_4027df, @function
sub_4027df:

	nop	
.label_135:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_133
	test	rax, rax
	je	.label_134
.label_133:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4027f4

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_135
	test	rbx, rbx
	jne	.label_135
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_134:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402810

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
.label_192:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_188
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_191]
.label_394:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_197
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_204
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_395:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_217
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_217
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_230:
	cmp	r14, r11
	jae	.label_228
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_228:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_230
.label_217:
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
	jmp	.label_150
.label_387:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_150
.label_390:
	mov	al, 1
.label_388:
	mov	r12b, 1
.label_391:
	test	r12b, 1
	mov	cl, 1
	je	.label_242
	mov	ecx, eax
.label_242:
	mov	al, cl
.label_389:
	test	r12b, 1
	jne	.label_244
	test	r11, r11
	je	.label_245
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_245:
	mov	r14d, 1
	jmp	.label_247
.label_244:
	xor	r14d, r14d
.label_247:
	mov	ecx, OFFSET FLAT:label_204
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_150
.label_392:
	test	r12b, 1
	jne	.label_138
	test	r11, r11
	je	.label_142
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_142:
	mov	r14d, 1
	jmp	.label_146
.label_393:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_149
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_150
.label_138:
	xor	r14d, r14d
.label_146:
	mov	eax, OFFSET FLAT:label_149
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_150:
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
	jmp	.label_171
	.section	.text
	.align	32
	#Procedure 0x402afd
	.globl sub_402afd
	.type sub_402afd, @function
sub_402afd:

	nop	dword ptr [rax]
.label_231:
	inc	rsi
.label_171:
	cmp	rbp, -1
	je	.label_208
	cmp	rsi, rbp
	jne	.label_209
	jmp	.label_211
	.section	.text
	.align	32
	#Procedure 0x402b13
	.globl sub_402b13
	.type sub_402b13, @function
sub_402b13:

	nop	word ptr cs:[rax + rax]
.label_208:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_219
.label_209:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_222
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_223
	cmp	rbp, -1
	jne	.label_223
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
.label_223:
	cmp	rbx, rbp
	jbe	.label_236
.label_222:
	xor	r8d, r8d
.label_147:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_218
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_238]
.label_410:
	test	rsi, rsi
	jne	.label_233
	jmp	.label_164
	.section	.text
	.align	32
	#Procedure 0x402bb5
	.globl sub_402bb5
	.type sub_402bb5, @function
sub_402bb5:

	nop	word ptr cs:[rax + rax]
.label_236:
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
	jne	.label_250
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_147
	jmp	.label_145
.label_250:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_147
.label_414:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_159
	test	rsi, rsi
	jne	.label_161
	cmp	rbp, 1
	je	.label_164
	xor	r13d, r13d
	jmp	.label_140
.label_403:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_168
	cmp	byte ptr [rsp + 6], 0
	jne	.label_170
	cmp	r12d, 2
	jne	.label_174
	mov	eax, r9d
	and	al, 1
	jne	.label_174
	cmp	r14, r11
	jae	.label_177
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_177:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_181
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_181:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_253
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_253:
	add	r14, 3
	mov	r9b, 1
.label_174:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_160
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_160:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_195
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_195
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_195
	cmp	r14, r11
	jae	.label_141
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_141:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_227
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_227:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_140
.label_404:
	mov	bl, 0x62
	jmp	.label_220
.label_405:
	mov	cl, 0x74
	jmp	.label_199
.label_406:
	mov	bl, 0x76
	jmp	.label_220
.label_407:
	mov	bl, 0x66
	jmp	.label_220
.label_408:
	mov	cl, 0x72
	jmp	.label_199
.label_411:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_229
	cmp	byte ptr [rsp + 6], 0
	jne	.label_136
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
	jae	.label_235
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_235:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_241
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_241:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_243
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_243:
	add	r14, 3
	xor	r9d, r9d
.label_229:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_140
.label_412:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_248
	cmp	r12d, 2
	jne	.label_233
	cmp	byte ptr [rsp + 6], 0
	je	.label_233
	jmp	.label_136
.label_413:
	cmp	r12d, 2
	jne	.label_139
	cmp	byte ptr [rsp + 6], 0
	jne	.label_136
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_144
.label_218:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_154
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
.label_156:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_173
	test	r8b, r8b
	je	.label_173
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_140
.label_159:
	test	rsi, rsi
	jne	.label_193
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_193
.label_164:
	mov	dl, 1
.label_409:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_136
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_140:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_202
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_203
	jmp	.label_166
	.section	.text
	.align	32
	#Procedure 0x402f04
	.globl sub_402f04
	.type sub_402f04, @function
sub_402f04:

	nop	word ptr cs:[rax + rax]
.label_202:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_166
.label_203:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_215
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_144
	jmp	.label_226
	.section	.text
	.align	32
	#Procedure 0x402f4d
	.globl sub_402f4d
	.type sub_402f4d, @function
sub_402f4d:

	nop	dword ptr [rax]
.label_166:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_226
	jmp	.label_144
.label_215:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_226
.label_168:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_231
	xor	r15d, r15d
	jmp	.label_233
.label_139:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_199
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_144
.label_199:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_136
.label_220:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_140
	nop	word ptr cs:[rax + rax]
.label_226:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_170
	cmp	r12d, 2
	jne	.label_194
	mov	eax, r9d
	and	al, 1
	jne	.label_194
	cmp	r14, r11
	jae	.label_214
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_214:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_251
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_251:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_246
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_246:
	add	r14, 3
	mov	r9b, 1
.label_194:
	cmp	r14, r11
	jae	.label_169
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_169:
	inc	r14
	jmp	.label_151
.label_154:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_155
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_155:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_224:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_178
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_183
	cmp	rbp, -2
	je	.label_187
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_207
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_153:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_240
	bt	rsi, rdx
	jb	.label_206
.label_240:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_153
.label_207:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_212
	xor	r13d, r13d
.label_212:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_224
	jmp	.label_156
.label_195:
	xor	r13d, r13d
	jmp	.label_140
.label_193:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_140
.label_248:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_233
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_233
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_233
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_237
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_158
	cmp	byte ptr [rsp + 6], 0
	jne	.label_179
	cmp	r14, r11
	jae	.label_157
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_157:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_254
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_254:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_249
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_249:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_201
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_201:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_140
.label_233:
	xor	eax, eax
.label_161:
	xor	r13d, r13d
	jmp	.label_140
.label_173:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_152
	.section	.text
	.align	32
	#Procedure 0x403232
	.globl sub_403232
	.type sub_403232, @function
sub_403232:

	nop	word ptr cs:[rax + rax]
.label_234:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_152:
	test	r8b, r8b
	je	.label_162
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_163
	cmp	r14, r11
	jae	.label_165
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_165:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_163
	.section	.text
	.align	32
	#Procedure 0x40327c
	.globl sub_40327c
	.type sub_40327c, @function
sub_40327c:

	nop	dword ptr [rax]
.label_162:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_145
	cmp	r12d, 2
	jne	.label_180
	mov	eax, r9d
	and	al, 1
	jne	.label_180
	cmp	r14, r11
	jae	.label_182
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_182:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_185
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_185:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_189
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_189:
	add	r14, 3
	mov	r9b, 1
.label_180:
	cmp	r14, r11
	jae	.label_200
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_200:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_198
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_198:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_205
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_205:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_163:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_144
	test	r9b, 1
	je	.label_143
	mov	ebx, eax
	and	bl, 1
	jne	.label_143
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_225
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_225:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_210
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_210:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_143:
	cmp	r14, r11
	jae	.label_234
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_234
	.section	.text
	.align	32
	#Procedure 0x403383
	.globl sub_403383
	.type sub_403383, @function
sub_403383:

	nop	word ptr cs:[rax + rax]
.label_144:
	test	r9b, 1
	je	.label_176
	and	al, 1
	jne	.label_176
	cmp	r14, r11
	jae	.label_239
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_239:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_256
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_256:
	add	r14, 2
	xor	r9d, r9d
.label_176:
	mov	ebx, r15d
.label_151:
	cmp	r14, r11
	jae	.label_190
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_190:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_231
.label_183:
	xor	r13d, r13d
.label_178:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_156
.label_187:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_257
	mov	rsi, qword ptr [rsp + 0x58]
.label_148:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_232
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_148
	xor	r13d, r13d
	jmp	.label_156
.label_257:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_156
.label_232:
	xor	r13d, r13d
	jmp	.label_156
.label_237:
	xor	r13d, r13d
	jmp	.label_140
.label_158:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_140
	.section	.text
	.align	32
	#Procedure 0x403458
	.globl sub_403458
	.type sub_403458, @function
sub_403458:

	nop	dword ptr [rax + rax]
.label_211:
	mov	rcx, rsi
.label_219:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_167
	or	al, dl
	je	.label_172
.label_167:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_175
	or	al, dl
	jne	.label_175
	test	r10b, 1
	jne	.label_186
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_175
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_192
.label_175:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_196
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_184
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_184
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_216:
	cmp	r14, r11
	jae	.label_213
	mov	byte ptr [rcx + r14], al
.label_213:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_216
	jmp	.label_184
.label_170:
	mov	qword ptr [rsp + 0x20], rbp
.label_145:
	mov	rdx, rdi
	jmp	.label_221
.label_136:
	mov	qword ptr [rsp + 0x20], rbp
.label_206:
	mov	rdx, rdi
	mov	eax, 2
.label_137:
	mov	qword ptr [rsp + 0x38], rax
.label_221:
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
.label_252:
	mov	r14, rax
.label_255:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_172:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_221
.label_186:
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
	jmp	.label_252
.label_196:
	mov	rcx, qword ptr [rsp + 8]
.label_184:
	cmp	r14, r11
	jae	.label_255
	mov	byte ptr [rcx + r14], 0
	jmp	.label_255
.label_179:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_137
.label_188:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403617
	.globl sub_403617
	.type sub_403617, @function
sub_403617:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403620
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
	je	.label_258
	mov	qword ptr [rax], rbx
.label_258:
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
	.align	32
	#Procedure 0x40370c
	.globl sub_40370c
	.type sub_40370c, @function
sub_40370c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403710
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40371a
	.globl sub_40371a
	.type sub_40371a, @function
sub_40371a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403720
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
	.align	32
	#Procedure 0x403739
	.globl sub_403739
	.type sub_403739, @function
sub_403739:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403740
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x403748
	.globl sub_403748
	.type sub_403748, @function
sub_403748:

	nop	dword ptr [rax + rax]
.label_259:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403755
	.globl sub_403755
	.type sub_403755, @function
sub_403755:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403760

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
	je	.label_259
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
	.section	.text
	.align	32
	#Procedure 0x4037f0
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
	.align	32
	#Procedure 0x403865
	.globl sub_403865
	.type sub_403865, @function
sub_403865:

	nop	word ptr cs:[rax + rax]
.label_260:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403875
	.globl sub_403875
	.type sub_403875, @function
sub_403875:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40387b
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_261
	test	rax, rax
	je	.label_260
.label_261:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403890

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
	je	.label_262
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
.label_262:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4038f8
	.globl sub_4038f8
	.type sub_4038f8, @function
sub_4038f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403900

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_263
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_265
.label_263:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_265:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_266
	cmp	r10d, 0x29
	jae	.label_275
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_264
.label_275:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_264:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_266
	cmp	r10d, 0x29
	jae	.label_273
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_274
.label_273:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_274:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_266
	cmp	r10d, 0x29
	jae	.label_271
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_272
.label_271:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_272:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_266
	cmp	r10d, 0x29
	jae	.label_269
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_270
.label_269:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_270:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_266
	cmp	r10d, 0x29
	jae	.label_267
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_268
.label_267:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_268:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_266
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_266
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_266
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_266
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_266:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ae2
	.globl sub_403ae2
	.type sub_403ae2, @function
sub_403ae2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403af0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x403af8
	.globl sub_403af8
	.type sub_403af8, @function
sub_403af8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b00
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_276
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_279
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_280
	call	free
	xor	eax, eax
	jmp	.label_277
.label_279:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403b37
	.globl sub_403b37
	.type sub_403b37, @function
sub_403b37:

	nop	word ptr cs:[rax + rax]
.label_278:
	call	xalloc_die
.label_276:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_278
	mov	qword ptr [rsi], rbx
.label_280:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_277
	test	rax, rax
	je	.label_278
.label_277:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b70

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
	jne	.label_282
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_287
	cmp	ecx, 0x55
	jne	.label_281
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_281
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_281
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_281
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_281
	cmp	byte ptr [rax + 5], 0
	jne	.label_281
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_284
	mov	eax, OFFSET FLAT:label_285
	jmp	.label_286
.label_287:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_281
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_281
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_281
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_281
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_281
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_281
	cmp	byte ptr [rax + 7], 0
	je	.label_283
.label_281:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_149
	mov	eax, OFFSET FLAT:label_204
.label_286:
	cmove	rax, rcx
.label_282:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_283:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_288
	mov	eax, OFFSET FLAT:label_289
	jmp	.label_286
	.section	.text
	.align	32
	#Procedure 0x403c35
	.globl sub_403c35
	.type sub_403c35, @function
sub_403c35:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c40
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	.section	.text
	.align	32
	#Procedure 0x403c4f
	.globl sub_403c4f
	.type sub_403c4f, @function
sub_403c4f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403c50
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_75]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_76]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_77]
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
	.align	32
	#Procedure 0x403cbe
	.globl sub_403cbe
	.type sub_403cbe, @function
sub_403cbe:

	nop	
.label_290:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403cc5
	.globl sub_403cc5
	.type sub_403cc5, @function
sub_403cc5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403cd4
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
	je	.label_290
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
	.section	.text
	.align	32
	#Procedure 0x403d30

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_291
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_291
	test	byte ptr [rbx + 1], 1
	je	.label_291
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_291:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x403d63
	.globl sub_403d63
	.type sub_403d63, @function
sub_403d63:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d70

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
	je	.label_308
	mov	edx, OFFSET FLAT:label_297
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_305
.label_308:
	mov	edx, OFFSET FLAT:label_306
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_305:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_310
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
	mov	esi, OFFSET FLAT:label_307
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_293
	jmp	qword ptr [(r12 * 8) + label_294]
.label_343:
	add	rsp, 8
	jmp	.label_292
.label_293:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_302
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
	jmp	.label_292
.label_344:
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
.label_345:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_300
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
.label_346:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_299
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
.label_347:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_295
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
	jmp	.label_292
.label_348:
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
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_292
.label_349:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_296
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
	jmp	.label_292
.label_350:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_301
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
	jmp	.label_292
.label_352:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_304
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
	jmp	.label_292
.label_351:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_309
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
.label_292:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4040c8
	.globl sub_4040c8
	.type sub_4040c8, @function
sub_4040c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040d0
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
	.align	32
	#Procedure 0x404191
	.globl sub_404191
	.type sub_404191, @function
sub_404191:

	nop	word ptr cs:[rax + rax]
.label_316:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_311
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
	.align	32
	#Procedure 0x4041d8
	.globl sub_4041d8
	.type sub_4041d8, @function
sub_4041d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4041dd

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_316
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_324
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_315
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_322
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_323
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_321
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_28
	mov	ecx, OFFSET FLAT:label_320
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_312
	mov	esi, OFFSET FLAT:label_319
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_312
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_313
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_312:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_317
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_320
	mov	ecx, OFFSET FLAT:label_27
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_314
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_27
	mov	ecx, OFFSET FLAT:label_318
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	32
	#Procedure 0x404340

	.globl rpl_mbrlen
	.type rpl_mbrlen, @function
rpl_mbrlen:
	mov	rax, rsi
	mov	rsi, rdi
	test	rdx, rdx
	mov	ecx, OFFSET FLAT:internal_state
	cmovne	rcx, rdx
	xor	edi, edi
	mov	rdx, rax
	jmp	rpl_mbrtowc
	.section	.text
	.align	32
	#Procedure 0x40435c
	.globl sub_40435c
	.type sub_40435c, @function
sub_40435c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404360
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
	.align	32
	#Procedure 0x404378
	.globl sub_404378
	.type sub_404378, @function
sub_404378:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404380
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
	.align	32
	#Procedure 0x404398
	.globl sub_404398
	.type sub_404398, @function
sub_404398:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043a0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_325
	test	rdx, rdx
	je	.label_325
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_325:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4043cb
	.globl sub_4043cb
	.type sub_4043cb, @function
sub_4043cb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043d0

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
	je	.label_326
	test	r15, r15
	je	.label_327
.label_326:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_327:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40440c
	.globl sub_40440c
	.type sub_40440c, @function
sub_40440c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404410
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_75]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_76]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_77]
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
	.align	32
	#Procedure 0x404464
	.globl sub_404464
	.type sub_404464, @function
sub_404464:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404470
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_328
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_329
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_331
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_28
	mov	ecx, OFFSET FLAT:label_320
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_330
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x4044e4
	.globl sub_4044e4
	.type sub_4044e4, @function
sub_4044e4:

	nop	word ptr cs:[rax + rax]
.label_332:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4044f5
	.globl sub_4044f5
	.type sub_4044f5, @function
sub_4044f5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044fd

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
	je	.label_332
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
	.align	32
	#Procedure 0x4045c5
	.globl sub_4045c5
	.type sub_4045c5, @function
sub_4045c5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045d2
	.globl sub_4045d2
	.type sub_4045d2, @function
sub_4045d2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045f6
	.globl sub_4045f6
	.type sub_4045f6, @function
sub_4045f6:

	nop	word ptr cs:[rax + rax]
