	.section	.text
	.align	16
	#Procedure 0x401479
	.globl sub_401479
	.type sub_401479, @function
sub_401479:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40147a
	.globl sub_40147a
	.type sub_40147a, @function
sub_40147a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4014b2
	.globl sub_4014b2
	.type sub_4014b2, @function
sub_4014b2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4014fa
	.globl sub_4014fa
	.type sub_4014fa, @function
sub_4014fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40151c
	.globl sub_40151c
	.type sub_40151c, @function
sub_40151c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40152d
	.globl sub_40152d
	.type sub_40152d, @function
sub_40152d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401546
	.globl sub_401546
	.type sub_401546, @function
sub_401546:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401550

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
	jne	.label_13
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
	je	.label_9
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_14
	mov	eax, OFFSET FLAT:label_15
	jmp	.label_12
.label_9:
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
	je	.label_18
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_10
	mov	eax, OFFSET FLAT:label_11
	jmp	.label_12
.label_18:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_16
	mov	eax, OFFSET FLAT:label_17
.label_12:
	cmove	rax, rcx
.label_13:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40160d
	.globl sub_40160d
	.type sub_40160d, @function
sub_40160d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401610
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40161a
	.globl sub_40161a
	.type sub_40161a, @function
sub_40161a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401620

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
	mov	rcx,  qword ptr [word ptr [rip + label_19]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_20]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_21]]
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
	.section	.text
	.align	16
	#Procedure 0x40168d
	.globl sub_40168d
	.type sub_40168d, @function
sub_40168d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401690

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x40169d
	.globl sub_40169d
	.type sub_40169d, @function
sub_40169d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4016a0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	16
	#Procedure 0x4016a7
	.globl sub_4016a7
	.type sub_4016a7, @function
sub_4016a7:

	nop	word ptr [rax + rax]
.label_26:
	call	xalloc_die
.label_23:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4016ba
	.globl sub_4016ba
	.type sub_4016ba, @function
sub_4016ba:

	nop	dword ptr [rax]
.label_25:
	test	rcx, rcx
	jne	.label_22
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_22:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_23
.label_24:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
	.section	.text
	.align	16
	#Procedure 0x401703

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_25
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_26
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_24
	.section	.text
	.align	16
	#Procedure 0x401730

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_27
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_27
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_27:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x401756
	.globl sub_401756
	.type sub_401756, @function
sub_401756:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401760

	.globl initialize_exit_failure
	.type initialize_exit_failure, @function
initialize_exit_failure:
	mov	dword ptr [dword ptr [rip + exit_failure]],  0x7d
	ret	
	.section	.text
	.align	16
	#Procedure 0x40176b
	.globl sub_40176b
	.type sub_40176b, @function
sub_40176b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401770

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
	#Procedure 0x401787
	.globl sub_401787
	.type sub_401787, @function
sub_401787:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401790
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40179a
	.globl sub_40179a
	.type sub_40179a, @function
sub_40179a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017a0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_28
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_28:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4017b8
	.globl sub_4017b8
	.type sub_4017b8, @function
sub_4017b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017c0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	lea	ecx, [rdi - 0x61]
	lea	eax, [rdi - 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4017cd
	.globl sub_4017cd
	.type sub_4017cd, @function
sub_4017cd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4017d0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_29
.label_30:
	ret	
.label_29:
	cmp	edi, 0x7f
	je	.label_30
	xor	eax, eax
	jmp	.label_30
	.section	.text
	.align	16
	#Procedure 0x4017e1
	.globl sub_4017e1
	.type sub_4017e1, @function
sub_4017e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017f0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_32
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_35
	mov	ecx, OFFSET FLAT:label_36
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x401864
	.globl sub_401864
	.type sub_401864, @function
sub_401864:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401870

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_39
	call	setlocale
	mov	edi, OFFSET FLAT:label_43
	mov	esi, OFFSET FLAT:label_44
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_43
	call	textdomain
	call	initialize_exit_failure
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r15d, 0xa
	mov	ebx, 1
	cmp	ebp, 2
	jl	.label_53
	xor	r14d, r14d
	mov	r13d, 2
.label_61:
	movsxd	rax, ebx
	mov	rax, qword ptr [r12 + rax*8]
	cmp	byte ptr [rax], 0x2d
	jne	.label_59
	movzx	ecx, byte ptr [rax + 1]
	xor	edx, edx
	cmp	cl, 0x2b
	sete	dl
	inc	rdx
	cmp	cl, 0x2d
	cmove	rdx, r13
	movsx	ecx, byte ptr [rax + rdx]
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_59
	inc	rax
	inc	ebx
	mov	r14, rax
	jmp	.label_40
	.section	.text
	.align	16
	#Procedure 0x401915
	.globl sub_401915
	.type sub_401915, @function
sub_401915:

	nop	word ptr cs:[rax + rax]
.label_59:
	dec	ebx
	mov	edi, ebp
	sub	edi, ebx
	movsxd	rbx, ebx
	lea	rsi, [r12 + rbx*8]
	mov	rax, qword ptr [r12]
	mov	qword ptr [r12 + rbx*8], rax
	mov	dword ptr [dword ptr [rip + optind]],  0
	mov	edx, OFFSET FLAT:label_47
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	call	getopt_long
	add	ebx,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, 0x6d
	jle	.label_56
	cmp	eax, 0x6e
	jne	.label_52
	mov	r14,  qword ptr [word ptr [rip + optarg]]
.label_40:
	cmp	ebx, ebp
	jl	.label_61
	jmp	.label_63
.label_56:
	cmp	eax, -1
	jne	.label_64
.label_63:
	test	r14, r14
	je	.label_53
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_39
	mov	rdi, r14
	call	xstrtol
	cmp	eax, 2
	jae	.label_46
	mov	rax, qword ptr [rsp]
	cmp	rax, 0x28
	mov	ecx, 0x27
	cmovl	rcx, rax
	cmp	rax, 0x27
	mov	edx, 0x27
	cmovl	edx, eax
	cmp	rcx, -0x27
	mov	r15d, 0xffffffd9
	cmovg	r15d, edx
	mov	al, 1
	jmp	.label_42
.label_53:
	xor	eax, eax
.label_42:
	cmp	ebx, ebp
	jne	.label_57
	test	al, al
	jne	.label_49
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	xor	ebp, ebp
	xor	edi, edi
	xor	esi, esi
	call	getpriority
	mov	ecx, eax
	cmp	ecx, -1
	jne	.label_67
	mov	ebx, dword ptr [rbx]
	test	ebx, ebx
	jne	.label_38
.label_67:
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_41
	xor	eax, eax
	mov	edx, ecx
	call	__printf_chk
	jmp	.label_48
.label_57:
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	edi, edi
	xor	esi, esi
	call	getpriority
	cmp	eax, -1
	jne	.label_62
	mov	ebp, dword ptr [r14]
	test	ebp, ebp
	jne	.label_54
.label_62:
	add	eax, r15d
	xor	edi, edi
	xor	esi, esi
	mov	edx, eax
	call	setpriority
	test	eax, eax
	je	.label_58
	mov	r15d, dword ptr [r14]
	mov	edi, r15d
	call	perm_related_errno
	test	al, al
	mov	ebp, 0x7d
	mov	r13d, 0x7d
	mov	eax, 0
	cmovne	r13d, eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r13d
	mov	esi, r15d
	mov	rdx, rcx
	call	error
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	ferror_unlocked
	test	eax, eax
	jne	.label_48
.label_58:
	movsxd	rbx, ebx
	lea	rsi, [r12 + rbx*8]
	mov	rdi, qword ptr [r12 + rbx*8]
	call	execvp
	mov	r14d, dword ptr [r14]
	xor	ebp, ebp
	cmp	r14d, 2
	sete	bpl
	or	ebp, 0x7e
	mov	rdi, qword ptr [r12 + rbx*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_50
	xor	eax, eax
	mov	esi, r14d
	call	error
.label_48:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_64:
	cmp	eax, 0xffffff7d
	je	.label_37
	cmp	eax, 0xffffff7e
	jne	.label_52
	xor	edi, edi
	call	usage
.label_49:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 0x7d
	call	usage
.label_46:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_55
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	mov	edi, 0x7d
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_37:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_65
	mov	edx, OFFSET FLAT:label_35
	mov	r8d, OFFSET FLAT:label_66
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_52:
	mov	edi, 0x7d
	call	usage
.label_38:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_51
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_54:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_51
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c00

	.globl xstrtol
	.type xstrtol, @function
xstrtol:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, r8
	mov	r14, rcx
	mov	ebx, edx
	mov	r12, rdi
	cmp	ebx, 0x25
	jae	.label_68
	test	rsi, rsi
	lea	r15, [rsp + 0x10]
	cmovne	r15, rsi
	call	__errno_location
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	mov	rdi, r12
	mov	rsi, r15
	mov	edx, ebx
	call	strtol
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [r15]
	cmp	rax, r12
	je	.label_76
	mov	eax, dword ptr [rbp]
	xor	r12d, r12d
	test	eax, eax
	je	.label_78
	mov	r12d, 4
	cmp	eax, 0x22
	jne	.label_69
	mov	r12d, 1
.label_78:
	test	r13, r13
	jne	.label_83
	jmp	.label_75
.label_76:
	mov	r12d, 4
	test	r13, r13
	je	.label_69
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_69
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_69
	mov	qword ptr [rsp + 8], 1
	xor	r12d, r12d
.label_83:
	mov	rax, qword ptr [r15]
	movsx	ebp, byte ptr [rax]
	test	ebp, ebp
	je	.label_75
	mov	rdi, r13
	mov	esi, ebp
	call	strchr
	test	rax, rax
	je	.label_77
	mov	esi, 0x400
	mov	ebx, 1
	add	ebp, -0x45
	cmp	ebp, 0x2f
	ja	.label_74
	movabs	rax, 0x814400308945
	bt	rax, rbp
	jae	.label_74
	mov	esi, 0x30
	mov	rdi, r13
	call	strchr
	mov	ebx, 1
	test	rax, rax
	je	.label_70
	mov	rax, qword ptr [r15]
	movsx	ecx, byte ptr [rax + 1]
	mov	ebx, 1
	cmp	ecx, 0x42
	mov	esi, 0x400
	je	.label_71
	cmp	ecx, 0x44
	je	.label_71
	cmp	ecx, 0x69
	jne	.label_74
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	rbx, [rcx + rcx + 1]
	jmp	.label_74
.label_70:
	mov	esi, 0x400
	jmp	.label_74
.label_71:
	mov	esi, 0x3e8
	mov	ebx, 2
.label_74:
	mov	rax, qword ptr [r15]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_77
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_79]]
.label_379:
	lea	rdi, [rsp + 8]
	mov	edx, 3
	call	bkm_scale_by_power
	jmp	.label_72
.label_77:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
	or	r12d, 2
	jmp	.label_69
.label_380:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	call	bkm_scale_by_power
	jmp	.label_72
.label_381:
	lea	rdi, [rsp + 8]
	mov	edx, 2
	call	bkm_scale_by_power
	jmp	.label_72
.label_383:
	lea	rdi, [rsp + 8]
	mov	edx, 4
	call	bkm_scale_by_power
	jmp	.label_72
.label_377:
	lea	rdi, [rsp + 8]
	mov	esi, 0x400
	jmp	.label_73
.label_378:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	call	bkm_scale_by_power
	jmp	.label_72
.label_382:
	lea	rdi, [rsp + 8]
	mov	edx, 5
	call	bkm_scale_by_power
	jmp	.label_72
.label_384:
	lea	rdi, [rsp + 8]
	mov	edx, 8
	call	bkm_scale_by_power
	jmp	.label_72
.label_385:
	lea	rdi, [rsp + 8]
	mov	edx, 7
	call	bkm_scale_by_power
	jmp	.label_72
.label_386:
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_73
.label_387:
	lea	rdi, [rsp + 8]
	mov	esi, 2
.label_73:
	call	bkm_scale
.label_72:
	or	eax, r12d
	mov	rcx, qword ptr [r15]
	lea	rdx, [rcx + rbx]
	mov	qword ptr [r15], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + rbx], 0
	cmove	r12d, eax
.label_75:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
.label_69:
	mov	eax, r12d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_68:
	mov	edi, OFFSET FLAT:label_80
	mov	esi, OFFSET FLAT:label_81
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_82
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x401e7e
	.globl sub_401e7e
	.type sub_401e7e, @function
sub_401e7e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401e80
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e88
	.globl sub_401e88
	.type sub_401e88, @function
sub_401e88:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e90

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
	.section	.text
	.align	16
	#Procedure 0x401ec9
	.globl sub_401ec9
	.type sub_401ec9, @function
sub_401ec9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401ed0
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	mov	rax, rsi
	mov	ecx, edi
	xor	edi, edi
	mov	esi, ecx
	mov	rdx, rax
	jmp	quotearg_n_style
	.section	.text
	.align	16
	#Procedure 0x401ee1
	.globl sub_401ee1
	.type sub_401ee1, @function
sub_401ee1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ef0
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
	.section	.text
	.align	16
	#Procedure 0x401f04
	.globl sub_401f04
	.type sub_401f04, @function
sub_401f04:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f10

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f1a
	.globl sub_401f1a
	.type sub_401f1a, @function
sub_401f1a:

	nop	word ptr [rax + rax]
.label_84:
	ret	
.label_86:
	xor	eax, eax
	jmp	.label_84
	.section	.text
	.align	16
	#Procedure 0x401f25
	.globl sub_401f25
	.type sub_401f25, @function
sub_401f25:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f2f
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_86
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_85]]
	.section	.text
	.align	16
	#Procedure 0x401f40

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	16
	#Procedure 0x401f45
	.globl sub_401f45
	.type sub_401f45, @function
sub_401f45:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f50

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_39
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_87
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f75
	.globl sub_401f75
	.type sub_401f75, @function
sub_401f75:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f80

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x401f8a
	.globl sub_401f8a
	.type sub_401f8a, @function
sub_401f8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f90
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	16
	#Procedure 0x401f9d
	.globl sub_401f9d
	.type sub_401f9d, @function
sub_401f9d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401fa0
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
	#Procedure 0x401fb0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x401fba
	.globl sub_401fba
	.type sub_401fba, @function
sub_401fba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401fc0

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
	.section	.text
	.align	16
	#Procedure 0x401fed
	.globl sub_401fed
	.type sub_401fed, @function
sub_401fed:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401ff0
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
	.section	.text
	.align	16
	#Procedure 0x402003
	.globl sub_402003
	.type sub_402003, @function
sub_402003:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402010

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_88
	ret	
.label_88:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	16
	#Procedure 0x402023
	.globl sub_402023
	.type sub_402023, @function
sub_402023:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402030

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_89
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_92
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_92
.label_89:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_91
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_93:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_94
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_92:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_90
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_93
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_50
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_91:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x4020f0

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
	.section	.text
	.align	16
	#Procedure 0x402127
	.globl sub_402127
	.type sub_402127, @function
sub_402127:

	nop	word ptr [rax + rax]
.label_97:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_95
.label_96:
	mov	eax, 1
	test	bpl, bpl
	je	.label_95
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
.label_95:
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
	#Procedure 0x402178
	.globl sub_402178
	.type sub_402178, @function
sub_402178:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40217b

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
	je	.label_97
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_96
	jmp	.label_95
	.section	.text
	.align	16
	#Procedure 0x4021b0

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
	#Procedure 0x4021e6
	.globl sub_4021e6
	.type sub_4021e6, @function
sub_4021e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021f0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_101
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_99
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_98
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_99
	mov	esi, OFFSET FLAT:label_103
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_100
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_100:
	mov	rbx, r14
.label_99:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_101:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_102
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402291
	.globl sub_402291
	.type sub_402291, @function
sub_402291:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022a0
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
	.section	.text
	.align	16
	#Procedure 0x4022b9
	.globl sub_4022b9
	.type sub_4022b9, @function
sub_4022b9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4022c0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_105
	cmp	byte ptr [rax], 0x43
	jne	.label_107
	cmp	byte ptr [rax + 1], 0
	je	.label_104
.label_107:
	mov	esi, OFFSET FLAT:label_106
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_105
.label_104:
	xor	ebx, ebx
.label_105:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4022f1
	.globl sub_4022f1
	.type sub_4022f1, @function
sub_4022f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402300
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	16
	#Procedure 0x40230a
	.globl sub_40230a
	.type sub_40230a, @function
sub_40230a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402310
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_108:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_108
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x402331
	.globl sub_402331
	.type sub_402331, @function
sub_402331:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402340
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
	.section	.text
	.align	16
	#Procedure 0x402356
	.globl sub_402356
	.type sub_402356, @function
sub_402356:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402360
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x402368
	.globl sub_402368
	.type sub_402368, @function
sub_402368:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402370
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
	#Procedure 0x402383
	.globl sub_402383
	.type sub_402383, @function
sub_402383:

	nop	word ptr cs:[rax + rax]
.label_110:
	mov	ecx, 1
.label_109:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x4023a0
	.globl sub_4023a0
	.type sub_4023a0, @function
sub_4023a0:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023a5

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_110
	test	rsi, rsi
	mov	ecx, 1
	je	.label_109
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_109
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_111:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4023e5
	.globl sub_4023e5
	.type sub_4023e5, @function
sub_4023e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023ef
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_111
	call	rpl_calloc
	test	rax, rax
	je	.label_111
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402410

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_113:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_112
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_114
	.section	.text
	.align	16
	#Procedure 0x402439
	.globl sub_402439
	.type sub_402439, @function
sub_402439:

	nop	dword ptr [rax]
.label_112:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_114:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_115
	inc	r9
	cmp	r9, 0xa
	jb	.label_113
.label_115:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x40246f
	.globl sub_40246f
	.type sub_40246f, @function
sub_40246f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402470
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
	#Procedure 0x40247f
	.globl sub_40247f
	.type sub_40247f, @function
sub_40247f:

	nop	
.label_118:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_116
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_116:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4024b4
	.globl sub_4024b4
	.type sub_4024b4, @function
sub_4024b4:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4024b6

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
	jne	.label_117
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_117
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_118
.label_117:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x4024f0
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
	.section	.text
	.align	16
	#Procedure 0x402539
	.globl sub_402539
	.type sub_402539, @function
sub_402539:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402540
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	cmp	edi, 0x20
	sete	cl
	cmp	edi, 9
	sete	al
	or	al, cl
	ret	
	.section	.text
	.align	16
	#Procedure 0x40254f
	.globl sub_40254f
	.type sub_40254f, @function
sub_40254f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402550
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_119
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_119:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402576
	.globl sub_402576
	.type sub_402576, @function
sub_402576:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402580

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_120
	test	rbx, rbx
	jne	.label_120
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_120:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_122
	test	rax, rax
	je	.label_121
.label_122:
	pop	rbx
	ret	
.label_121:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4025b0

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
	je	.label_123
	cmp	r15, -2
	jb	.label_123
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_123
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_123:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402606
	.globl sub_402606
	.type sub_402606, @function
sub_402606:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402610
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40261a
	.globl sub_40261a
	.type sub_40261a, @function
sub_40261a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402620
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40262a
	.globl sub_40262a
	.type sub_40262a, @function
sub_40262a:

	nop	word ptr [rax + rax]
.label_124:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402636
	.globl sub_402636
	.type sub_402636, @function
sub_402636:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40263b

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_124
	test	rdx, rdx
	je	.label_124
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402660
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
	.section	.text
	.align	16
	#Procedure 0x402687
	.globl sub_402687
	.type sub_402687, @function
sub_402687:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402690

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
	je	.label_126
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_125
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_125
.label_126:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_125
	test	cl, cl
	jne	.label_125
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_125:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4026f6
	.globl sub_4026f6
	.type sub_4026f6, @function
sub_4026f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402700

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
	je	.label_129
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_127
	jmp	.label_128
.label_129:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_128
.label_127:
	mov	eax, 1
	test	bpl, bpl
	je	.label_128
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
.label_128:
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
	#Procedure 0x402788
	.globl sub_402788
	.type sub_402788, @function
sub_402788:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402790

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
	je	.label_130
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_132
	jmp	.label_131
.label_130:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_131
.label_132:
	mov	eax, 1
	test	bpl, bpl
	je	.label_131
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
.label_131:
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
	#Procedure 0x402809
	.globl sub_402809
	.type sub_402809, @function
sub_402809:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402810

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
	je	.label_135
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_134
	jmp	.label_133
.label_135:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_133
.label_134:
	mov	eax, 1
	test	bpl, bpl
	je	.label_133
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
.label_133:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402873
	.globl sub_402873
	.type sub_402873, @function
sub_402873:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402880

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
	je	.label_138
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_136
	jmp	.label_137
.label_138:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_137
.label_136:
	mov	eax, 1
	test	bpl, bpl
	je	.label_137
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_137:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4028df
	.globl sub_4028df
	.type sub_4028df, @function
sub_4028df:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4028e0

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
	je	.label_139
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_141
	jmp	.label_140
.label_139:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_140
.label_141:
	mov	eax, 1
	test	bpl, bpl
	je	.label_140
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_140:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402929
	.globl sub_402929
	.type sub_402929, @function
sub_402929:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402930

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
	je	.label_144
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_143
	jmp	.label_142
.label_144:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_142
.label_143:
	mov	eax, 1
	test	bpl, bpl
	je	.label_142
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_142:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402975
	.globl sub_402975
	.type sub_402975, @function
sub_402975:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402980

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_147
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_146
	jmp	.label_145
.label_147:
	mov	eax, 1
	test	cl, cl
	je	.label_145
.label_146:
	xor	eax, eax
.label_145:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4029af
	.globl sub_4029af
	.type sub_4029af, @function
sub_4029af:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4029b0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_153
	nop	
.label_152:
	mov	edi, OFFSET FLAT:label_65
	call	strcmp
	test	eax, eax
	je	.label_150
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_152
.label_150:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_65
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_154
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_35
	mov	ecx, OFFSET FLAT:label_36
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_148
	mov	esi, OFFSET FLAT:label_149
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_148
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_157
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_148:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_155
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_65
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_36
	mov	ecx, OFFSET FLAT:label_65
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_151
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_156
	mov	ecx, OFFSET FLAT:label_39
	cmove	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rdx
	mov	rdx, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	.section	.text
	.align	16
	#Procedure 0x402aca
	.globl sub_402aca
	.type sub_402aca, @function
sub_402aca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ad0
	.globl c_tolower
	.type c_tolower, @function
c_tolower:

	lea	ecx, [rdi - 0x41]
	lea	eax, [rdi + 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x402add
	.globl sub_402add
	.type sub_402add, @function
sub_402add:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402ae0
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
	.section	.text
	.align	16
	#Procedure 0x402b52
	.globl sub_402b52
	.type sub_402b52, @function
sub_402b52:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b60
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_158
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_158
.label_159:
	ret	
.label_158:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_159
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b86
	.globl sub_402b86
	.type sub_402b86, @function
sub_402b86:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b90
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
	#Procedure 0x402b9f
	.globl sub_402b9f
	.type sub_402b9f, @function
sub_402b9f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402ba0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	16
	#Procedure 0x402baa
	.globl sub_402baa
	.type sub_402baa, @function
sub_402baa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402bb0

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
	je	.label_160
	mov	qword ptr [rax], rbx
.label_160:
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
	#Procedure 0x402c9c
	.globl sub_402c9c
	.type sub_402c9c, @function
sub_402c9c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402ca0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_161
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_161:
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
	#Procedure 0x402d23
	.globl sub_402d23
	.type sub_402d23, @function
sub_402d23:

	nop	word ptr cs:[rax + rax]
.label_166:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_162
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
	.section	.text
	.align	16
	#Procedure 0x402d68
	.globl sub_402d68
	.type sub_402d68, @function
sub_402d68:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d76

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_166
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_163
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_165
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, 0xffffffec
	mov	ecx, 0x13
	xor	eax, eax
	call	__printf_chk
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_167
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_164
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_168
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_169
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_65
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x402e70

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
	je	.label_180
	mov	edx, OFFSET FLAT:label_176
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_182
.label_180:
	mov	edx, OFFSET FLAT:label_183
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_182:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_188
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
	mov	esi, OFFSET FLAT:label_184
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_171
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_172]]
.label_357:
	add	rsp, 8
	jmp	.label_170
.label_171:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_179
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
	jmp	.label_170
.label_358:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_185
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
.label_359:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_186
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
.label_360:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_177
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
.label_361:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_174
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
	jmp	.label_170
.label_362:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_173
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
	jmp	.label_170
.label_363:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_175
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
	jmp	.label_170
.label_364:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_178
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
	jmp	.label_170
.label_366:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_181
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
	jmp	.label_170
.label_365:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_187
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
.label_170:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4031c8
	.globl sub_4031c8
	.type sub_4031c8, @function
sub_4031c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4031d0

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
.label_219:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_293
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_227]]
.label_374:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_232
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_17
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_375:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_246
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_246
	xor	r14d, r14d
.label_257:
	cmp	r14, r11
	jae	.label_255
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_255:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_257
.label_246:
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
	jmp	.label_261
.label_367:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_261
.label_370:
	mov	al, 1
.label_368:
	mov	r12b, 1
.label_371:
	test	r12b, 1
	mov	cl, 1
	je	.label_273
	mov	ecx, eax
.label_273:
	mov	al, cl
.label_369:
	test	r12b, 1
	jne	.label_275
	test	r11, r11
	je	.label_251
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_251:
	mov	r14d, 1
	jmp	.label_283
.label_275:
	xor	r14d, r14d
.label_283:
	mov	ecx, OFFSET FLAT:label_17
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_261
.label_372:
	test	r12b, 1
	jne	.label_291
	test	r11, r11
	je	.label_217
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_217:
	mov	r14d, 1
	jmp	.label_295
.label_373:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_16
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_261
.label_291:
	xor	r14d, r14d
.label_295:
	mov	eax, OFFSET FLAT:label_16
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_261:
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
	jmp	.label_200
	.section	.text
	.align	16
	#Procedure 0x4034ac
	.globl sub_4034ac
	.type sub_4034ac, @function
sub_4034ac:

	nop	dword ptr [rax]
.label_220:
	inc	rsi
.label_200:
	cmp	rbp, -1
	je	.label_239
	cmp	rsi, rbp
	jne	.label_216
	jmp	.label_243
	.section	.text
	.align	16
	#Procedure 0x4034c3
	.globl sub_4034c3
	.type sub_4034c3, @function
sub_4034c3:

	nop	word ptr cs:[rax + rax]
.label_239:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_243
.label_216:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_248
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_250
	cmp	rbp, -1
	jne	.label_250
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
.label_250:
	cmp	rbx, rbp
	jbe	.label_260
.label_248:
	xor	r8d, r8d
.label_197:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_262
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_266]]
.label_406:
	test	rsi, rsi
	jne	.label_209
	jmp	.label_270
	.section	.text
	.align	16
	#Procedure 0x40355e
	.globl sub_40355e
	.type sub_40355e, @function
sub_40355e:

	nop	
.label_260:
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
	jne	.label_281
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_197
	jmp	.label_199
.label_281:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_197
.label_410:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_298
	test	rsi, rsi
	jne	.label_299
	cmp	rbp, 1
	je	.label_270
	xor	r13d, r13d
	jmp	.label_190
.label_399:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_191
	cmp	byte ptr [rsp + 7], 0
	jne	.label_195
	cmp	r12d, 2
	jne	.label_231
	mov	eax, r9d
	and	al, 1
	jne	.label_231
	cmp	r14, r11
	jae	.label_212
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_212:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_205
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_205:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_211
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_211:
	add	r14, 3
	mov	r9b, 1
.label_231:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_218
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_218:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_222
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_222
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_222
	cmp	r14, r11
	jae	.label_233
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_233:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_297
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_297:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_190
.label_400:
	mov	bl, 0x62
	jmp	.label_244
.label_401:
	mov	cl, 0x74
	jmp	.label_234
.label_402:
	mov	bl, 0x76
	jmp	.label_244
.label_403:
	mov	bl, 0x66
	jmp	.label_244
.label_404:
	mov	cl, 0x72
	jmp	.label_234
.label_407:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_253
	cmp	byte ptr [rsp + 7], 0
	jne	.label_195
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
	jae	.label_259
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_259:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_268
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_268:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_271
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_271:
	add	r14, 3
	xor	r9d, r9d
.label_253:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_190
.label_408:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_279
	cmp	r12d, 2
	jne	.label_209
	cmp	byte ptr [rsp + 7], 0
	je	.label_209
	jmp	.label_195
.label_409:
	cmp	r12d, 2
	jne	.label_288
	cmp	byte ptr [rsp + 7], 0
	jne	.label_195
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_235
.label_262:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_237
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
.label_215:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_213
	test	r8b, r8b
	je	.label_213
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_190
.label_298:
	test	rsi, rsi
	jne	.label_210
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_210
.label_270:
	mov	dl, 1
.label_405:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_195
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_190:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_228
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_229
	jmp	.label_221
	.section	.text
	.align	16
	#Procedure 0x4038a4
	.globl sub_4038a4
	.type sub_4038a4, @function
sub_4038a4:

	nop	word ptr cs:[rax + rax]
.label_228:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_221
.label_229:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_240
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_235
	jmp	.label_252
	.section	.text
	.align	16
	#Procedure 0x4038ed
	.globl sub_4038ed
	.type sub_4038ed, @function
sub_4038ed:

	nop	dword ptr [rax]
.label_221:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_252
	jmp	.label_235
.label_240:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_252
.label_191:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_220
	xor	r15d, r15d
	jmp	.label_209
.label_288:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_234
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_235
.label_234:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_195
.label_244:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_190
	nop	word ptr cs:[rax + rax]
.label_252:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_195
	cmp	r12d, 2
	jne	.label_236
	mov	eax, r9d
	and	al, 1
	jne	.label_236
	cmp	r14, r11
	jae	.label_276
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_276:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_287
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_287:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_285
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_285:
	add	r14, 3
	mov	r9b, 1
.label_236:
	cmp	r14, r11
	jae	.label_290
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_290:
	inc	r14
	jmp	.label_292
.label_237:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_296
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_296:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_254:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_204
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_207
	cmp	rbp, -2
	je	.label_249
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_192
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_269:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_289
	bt	rsi, rdx
	jb	.label_199
.label_289:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_269
.label_192:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_242
	xor	r13d, r13d
.label_242:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_254
	jmp	.label_215
.label_222:
	xor	r13d, r13d
	jmp	.label_190
.label_210:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_190
.label_279:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_209
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_209
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_209
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_280
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_267
	cmp	byte ptr [rsp + 7], 0
	jne	.label_195
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_245
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_245:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_277
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_277:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_282
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_282:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_284
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_284:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_190
.label_209:
	xor	eax, eax
.label_299:
	xor	r13d, r13d
	jmp	.label_190
.label_213:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_294
	.section	.text
	.align	16
	#Procedure 0x403bd3
	.globl sub_403bd3
	.type sub_403bd3, @function
sub_403bd3:

	nop	word ptr cs:[rax + rax]
.label_256:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_294:
	test	r8b, r8b
	je	.label_300
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_193
	cmp	r14, r11
	jae	.label_301
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_301:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_193
	.section	.text
	.align	16
	#Procedure 0x403c1c
	.globl sub_403c1c
	.type sub_403c1c, @function
sub_403c1c:

	nop	dword ptr [rax]
.label_300:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_199
	cmp	r12d, 2
	jne	.label_203
	mov	eax, r9d
	and	al, 1
	jne	.label_203
	cmp	r14, r11
	jae	.label_206
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_206:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_208
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_208:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_196
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_196:
	add	r14, 3
	mov	r9b, 1
.label_203:
	cmp	r14, r11
	jae	.label_238
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_238:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_225
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_225:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_230
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_230:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_193:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_235
	test	r9b, 1
	je	.label_247
	mov	ebx, eax
	and	bl, 1
	jne	.label_247
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_264
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_264:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_194
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_194:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_247:
	cmp	r14, r11
	jae	.label_256
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_256
	.section	.text
	.align	16
	#Procedure 0x403d23
	.globl sub_403d23
	.type sub_403d23, @function
sub_403d23:

	nop	word ptr cs:[rax + rax]
.label_235:
	test	r9b, 1
	je	.label_263
	and	al, 1
	jne	.label_263
	cmp	r14, r11
	jae	.label_265
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_265:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_224
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_224:
	add	r14, 2
	xor	r9d, r9d
.label_263:
	mov	ebx, r15d
.label_292:
	cmp	r14, r11
	jae	.label_272
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_272:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_220
.label_207:
	xor	r13d, r13d
.label_204:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_215
.label_249:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_286
	mov	rsi, qword ptr [rsp + 0x50]
.label_258:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_198
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_258
	xor	r13d, r13d
	jmp	.label_215
.label_286:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_215
.label_198:
	xor	r13d, r13d
	jmp	.label_215
.label_280:
	xor	r13d, r13d
	jmp	.label_190
.label_267:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_190
	.section	.text
	.align	16
	#Procedure 0x403df8
	.globl sub_403df8
	.type sub_403df8, @function
sub_403df8:

	nop	dword ptr [rax + rax]
.label_243:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_189
	or	dl, al
	je	.label_199
.label_189:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_202
	or	dl, al
	jne	.label_202
	test	r10b, 1
	jne	.label_214
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_202
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_219
.label_202:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_223
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_226
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_226
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_241:
	cmp	r14, r11
	jae	.label_201
	mov	byte ptr [rcx + r14], al
.label_201:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_241
	jmp	.label_226
.label_195:
	mov	qword ptr [rsp + 0x20], rbp
.label_199:
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
.label_274:
	mov	r14, rax
.label_278:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_214:
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
	jmp	.label_274
.label_223:
	mov	rcx, qword ptr [rsp + 8]
.label_226:
	cmp	r14, r11
	jae	.label_278
	mov	byte ptr [rcx + r14], 0
	jmp	.label_278
.label_293:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403f8c
	.globl sub_403f8c
	.type sub_403f8c, @function
sub_403f8c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403f90
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_302
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_302:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x403fae
	.globl sub_403fae
	.type sub_403fae, @function
sub_403fae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403fb0
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
	#Procedure 0x403fe3
	.globl sub_403fe3
	.type sub_403fe3, @function
sub_403fe3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ff0

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edx
	mov	r14d, esi
	mov	r15, rdi
	xor	ebp, ebp
	test	ebx, ebx
	je	.label_303
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_304:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebp, eax
	dec	ebx
	jne	.label_304
.label_303:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40402e
	.globl sub_40402e
	.type sub_40402e, @function
sub_40402e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404030

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	movabs	r8, 0x7fffffffffffffff
	mov	rcx, qword ptr [rdi]
	movsxd	r9, esi
	lea	rsi, [r8 + 1]
	mov	rax, rsi
	cqo	
	idiv	r9
	cmp	rcx, rax
	jge	.label_305
	mov	qword ptr [rdi], rsi
	mov	eax, 1
	ret	
.label_306:
	imul	rcx, r9
	mov	qword ptr [rdi], rcx
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x404064
	.globl sub_404064
	.type sub_404064, @function
sub_404064:

	nop	word ptr [rax + rax]
.label_305:
	mov	rax, r8
	cqo	
	idiv	r9
	cmp	rax, rcx
	jge	.label_306
	mov	qword ptr [rdi], r8
	mov	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x404080
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40408a
	.globl sub_40408a
	.type sub_40408a, @function
sub_40408a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404090

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40409e
	.globl sub_40409e
	.type sub_40409e, @function
sub_40409e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4040a0

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
	js	.label_307
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_310
	cmp	r12d, 0x7fffffff
	je	.label_312
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
	jne	.label_308
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_308:
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
.label_310:
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
	jbe	.label_313
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_309
.label_313:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_311
	mov	rdi, r14
	call	free
.label_311:
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
.label_309:
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
.label_307:
	call	abort
.label_312:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40425d
	.globl sub_40425d
	.type sub_40425d, @function
sub_40425d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404260

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40426a
	.globl sub_40426a
	.type sub_40426a, @function
sub_40426a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404270
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
	#Procedure 0x404280

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x404289
	.globl sub_404289
	.type sub_404289, @function
sub_404289:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404290

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x40429a
	.globl sub_40429a
	.type sub_40429a, @function
sub_40429a:

	nop	word ptr [rax + rax]
.label_314:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x4042ae
	.globl sub_4042ae
	.type sub_4042ae, @function
sub_4042ae:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042b7

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_314
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_316
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_314
.label_316:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_314
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_315
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_315:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404320

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_317
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_50
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404350
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_318
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_321:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_321
.label_318:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_322
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_320]], OFFSET FLAT:slot0
.label_322:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_319
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_319:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4043e1
	.globl sub_4043e1
	.type sub_4043e1, @function
sub_4043e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043f0

	.globl perm_related_errno
	.type perm_related_errno, @function
perm_related_errno:
	cmp	edi, 0xd
	sete	cl
	cmp	edi, 1
	sete	al
	or	al, cl
	ret	
	.section	.text
	.align	16
	#Procedure 0x4043ff
	.globl sub_4043ff
	.type sub_4043ff, @function
sub_4043ff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404400

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
	je	.label_323
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
.label_323:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404452
	.globl sub_404452
	.type sub_404452, @function
sub_404452:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404460

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x404469
	.globl sub_404469
	.type sub_404469, @function
sub_404469:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404470

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
	mov	rax,  qword ptr [word ptr [rip + label_19]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_20]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_21]]
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
	.section	.text
	.align	16
	#Procedure 0x4044d8
	.globl sub_4044d8
	.type sub_4044d8, @function
sub_4044d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044e0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_324
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_324:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404503
	.globl sub_404503
	.type sub_404503, @function
sub_404503:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404510

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_325
	test	rax, rax
	je	.label_326
.label_325:
	pop	rbx
	ret	
.label_326:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40452a
	.globl sub_40452a
	.type sub_40452a, @function
sub_40452a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404530

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_327
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x404552
	.globl sub_404552
	.type sub_404552, @function
sub_404552:

	nop	word ptr cs:[rax + rax]
.label_328:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x404563
	.globl sub_404563
	.type sub_404563, @function
sub_404563:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404565
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_328
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x4045e5
	.globl sub_4045e5
	.type sub_4045e5, @function
sub_4045e5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045f2
	.globl sub_4045f2
	.type sub_4045f2, @function
sub_4045f2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404616
	.globl sub_404616
	.type sub_404616, @function
sub_404616:

	nop	word ptr cs:[rax + rax]
