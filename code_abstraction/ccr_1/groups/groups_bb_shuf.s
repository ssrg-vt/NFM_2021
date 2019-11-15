	.section	.text
	.align	32
	#Procedure 0x401529
	.globl sub_401529
	.type sub_401529, @function
sub_401529:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40152a
	.globl sub_40152a
	.type sub_40152a, @function
sub_40152a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401562
	.globl sub_401562
	.type sub_401562, @function
sub_401562:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4015aa
	.globl sub_4015aa
	.type sub_4015aa, @function
sub_4015aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4015cc
	.globl sub_4015cc
	.type sub_4015cc, @function
sub_4015cc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4015dd
	.globl sub_4015dd
	.type sub_4015dd, @function
sub_4015dd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4015f6
	.globl sub_4015f6
	.type sub_4015f6, @function
sub_4015f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401600
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_9
	call	rpl_calloc
	test	rax, rax
	je	.label_9
	pop	rcx
	ret	
.label_9:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401626
	.globl sub_401626
	.type sub_401626, @function
sub_401626:

	nop	word ptr cs:[rax + rax]
.label_11:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_10
	test	cl, cl
	jne	.label_10
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_10:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40165b
	.globl sub_40165b
	.type sub_40165b, @function
sub_40165b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401665

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
	je	.label_11
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_10
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_10
.label_12:
	ret	
.label_14:
	xor	eax, eax
	jmp	.label_12
	.section	.text
	.align	32
	#Procedure 0x4016a5
	.globl sub_4016a5
	.type sub_4016a5, @function
sub_4016a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4016af
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_14
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_13]]
	.section	.text
	.align	32
	#Procedure 0x4016c0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r12, rsi
	mov	r14d, edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_16
	call	setlocale
	mov	edi, OFFSET FLAT:label_36
	mov	esi, OFFSET FLAT:label_37
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_36
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	edx, OFFSET FLAT:label_16
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r14d
	mov	rsi, r12
	call	getopt_long
	cmp	eax, -1
	jne	.label_21
	cmp	dword ptr [dword ptr [rip + optind]],  r14d
	jne	.label_22
	call	__errno_location
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	call	getuid
	mov	r14d, eax
	cmp	r14d, -1
	jne	.label_33
	mov	ebx, dword ptr [rbp]
	test	ebx, ebx
	jne	.label_35
.label_33:
	mov	dword ptr [rbp], 0
	call	getegid
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_39
	mov	r15d, dword ptr [rbp]
	test	r15d, r15d
	jne	.label_41
.label_39:
	mov	dword ptr [rbp], 0
	call	getgid
	cmp	eax, -1
	jne	.label_17
	mov	ebp, dword ptr [rbp]
	test	ebp, ebp
	jne	.label_19
.label_17:
	xor	edi, edi
	mov	r8d, 1
	mov	r9d, 0x20
	mov	esi, r14d
	mov	edx, eax
	mov	ecx, ebx
	call	print_group_list
	mov	r15b, al
	mov	edi, 0xa
	call	putchar_unlocked
	jmp	.label_28
.label_22:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	mov	r15b, 1
	cmp	eax, r14d
	jge	.label_28
	mov	r15b, 1
.label_15:
	cdqe	
	mov	rdi, qword ptr [r12 + rax*8]
	call	getpwnam
	test	rax, rax
	je	.label_38
	mov	ebx, dword ptr [rax + 0x10]
	mov	ebp, dword ptr [rax + 0x14]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdx, qword ptr [r12 + rax*8]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_40
	xor	eax, eax
	call	__printf_chk
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r12 + rax*8]
	mov	r8d, 1
	mov	r9d, 0x20
	mov	esi, ebx
	mov	edx, ebp
	mov	ecx, ebp
	call	print_group_list
	mov	ebx, eax
	test	bl, bl
	je	.label_23
	mov	ebx, r15d
.label_23:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	r15b, bl
	jmp	.label_27
	.section	.text
	.align	32
	#Procedure 0x40184c
	.globl sub_40184c
	.type sub_40184c, @function
sub_40184c:

	nop	dword ptr [rax]
.label_38:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r12 + rax*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_27:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	inc	eax
	mov	dword ptr [dword ptr [rip + optind]],  eax
	cmp	eax, r14d
	jl	.label_15
.label_28:
	not	r15b
	and	r15b, 1
	movzx	eax, r15b
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_21:
	cmp	eax, 0xffffff7d
	je	.label_25
	cmp	eax, 0xffffff7e
	jne	.label_26
	xor	edi, edi
	call	usage
.label_25:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_29
	mov	edx, OFFSET FLAT:label_30
	mov	r8d, OFFSET FLAT:label_31
	mov	r9d, OFFSET FLAT:label_32
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_26:
	mov	edi, 1
	call	usage
.label_35:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_41:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rcx
	call	error
.label_19:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
	.section	.text
	.align	32
	#Procedure 0x401980

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_42
	test	rdx, rdx
	je	.label_42
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_42:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4019ab
	.globl sub_4019ab
	.type sub_4019ab, @function
sub_4019ab:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019b0

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
	mov	rcx,  qword ptr [word ptr [rip + label_43]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_44]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_45]]
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
	.align	32
	#Procedure 0x401a1d
	.globl sub_401a1d
	.type sub_401a1d, @function
sub_401a1d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401a20

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x401a2d
	.globl sub_401a2d
	.type sub_401a2d, @function
sub_401a2d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401a30

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	32
	#Procedure 0x401a37
	.globl sub_401a37
	.type sub_401a37, @function
sub_401a37:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a40
	.globl c_tolower
	.type c_tolower, @function
c_tolower:

	lea	ecx, [rdi - 0x41]
	lea	eax, [rdi + 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x401a4d
	.globl sub_401a4d
	.type sub_401a4d, @function
sub_401a4d:

	nop	dword ptr [rax]
.label_46:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x401a53
	.globl sub_401a53
	.type sub_401a53, @function
sub_401a53:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a5b
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_46
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_48:
	mov	r14,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_49
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	call	__fprintf_chk
	mov	edi, ebx
	call	exit
	.section	.text
	.align	32
	#Procedure 0x401aa8
	.globl sub_401aa8
	.type sub_401aa8, @function
sub_401aa8:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401aac

	.globl usage
	.type usage, @function
usage:
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	test	ebx, ebx
	jne	.label_48
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_52
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_47
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_50
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_51
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebx
	call	exit
	.section	.text
	.align	32
	#Procedure 0x401b50
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	32
	#Procedure 0x401b5a
	.globl sub_401b5a
	.type sub_401b5a, @function
sub_401b5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b60

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
	je	.label_53
	mov	qword ptr [rax], rbx
.label_53:
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
	#Procedure 0x401c4c
	.globl sub_401c4c
	.type sub_401c4c, @function
sub_401c4c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401c50

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_54
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_55
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
.label_59:
	call	xalloc_die
.label_58:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401c8a
	.globl sub_401c8a
	.type sub_401c8a, @function
sub_401c8a:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401c91

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_56
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_59
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_57
.label_56:
	test	rcx, rcx
	jne	.label_60
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_60:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_58
.label_57:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
	.section	.text
	.align	32
	#Procedure 0x401d00

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_62:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_61
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_63
	.section	.text
	.align	32
	#Procedure 0x401d29
	.globl sub_401d29
	.type sub_401d29, @function
sub_401d29:

	nop	dword ptr [rax]
.label_61:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_63:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_64
	inc	r9
	cmp	r9, 0xa
	jb	.label_62
.label_64:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d5f
	.globl sub_401d5f
	.type sub_401d5f, @function
sub_401d5f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401d60
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_65
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_65:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401d83
	.globl sub_401d83
	.type sub_401d83, @function
sub_401d83:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d90

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_66
	test	rax, rax
	je	.label_67
.label_66:
	pop	rbx
	ret	
.label_67:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401daa
	.globl sub_401daa
	.type sub_401daa, @function
sub_401daa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401db0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x401dba
	.globl sub_401dba
	.type sub_401dba, @function
sub_401dba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401dc0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_68
	ret	
.label_68:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	32
	#Procedure 0x401dd3
	.globl sub_401dd3
	.type sub_401dd3, @function
sub_401dd3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401de0
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
	#Procedure 0x401e13
	.globl sub_401e13
	.type sub_401e13, @function
sub_401e13:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e20
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_69
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_71:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_71
.label_69:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_72
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_73]], OFFSET FLAT:slot0
.label_72:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_70
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_70:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x401eb1
	.globl sub_401eb1
	.type sub_401eb1, @function
sub_401eb1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ec0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_74
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_74:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401ee6
	.globl sub_401ee6
	.type sub_401ee6, @function
sub_401ee6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ef0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_75
	test	rbx, rbx
	jne	.label_75
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_75:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_77
	test	rax, rax
	je	.label_76
.label_77:
	pop	rbx
	ret	
.label_76:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401f20
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	32
	#Procedure 0x401f2a
	.globl sub_401f2a
	.type sub_401f2a, @function
sub_401f2a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f30

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_78
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_78
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_78:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x401f56
	.globl sub_401f56
	.type sub_401f56, @function
sub_401f56:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f60
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	lea	ecx, [rdi - 0x61]
	lea	eax, [rdi - 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x401f6d
	.globl sub_401f6d
	.type sub_401f6d, @function
sub_401f6d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401f70
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
	.align	32
	#Procedure 0x401fb9
	.globl sub_401fb9
	.type sub_401fb9, @function
sub_401fb9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401fc0

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
	je	.label_79
	mov	edx, OFFSET FLAT:label_89
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_95
.label_79:
	mov	edx, OFFSET FLAT:label_96
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_95:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_83
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
	mov	esi, OFFSET FLAT:label_97
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_84
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_85]]
.label_375:
	add	rsp, 8
	jmp	.label_82
.label_84:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_92
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
	jmp	.label_82
.label_376:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_80
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
.label_377:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_93
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
.label_378:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_90
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
.label_379:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_87
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
	jmp	.label_82
.label_380:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_86
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
	jmp	.label_82
.label_381:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_88
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
	jmp	.label_82
.label_382:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_91
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
	jmp	.label_82
.label_384:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_94
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
	jmp	.label_82
.label_383:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_81
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
.label_82:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402318
	.globl sub_402318
	.type sub_402318, @function
sub_402318:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402320

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40232a
	.globl sub_40232a
	.type sub_40232a, @function
sub_40232a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402330

	.globl print_group_list
	.type print_group_list, @function
print_group_list:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	dword ptr [rsp + 8], r9d
	mov	ebx, r8d
	mov	r14d, ecx
	mov	r13d, edx
	mov	r12, rdi
	mov	r15b, 1
	xor	ebp, ebp
	test	r12, r12
	je	.label_108
	mov	edi, esi
	call	getpwuid
	mov	rbp, rax
	test	rbp, rbp
	setne	r15b
.label_108:
	movzx	esi, bl
	mov	edi, r13d
	mov	dword ptr [rsp + 0xc], esi
	call	print_group
	mov	bl, al
	test	bl, bl
	je	.label_110
	mov	bl, r15b
.label_110:
	cmp	r14d, r13d
	je	.label_99
	mov	eax, dword ptr [rsp + 8]
	movsx	edi, al
	call	putchar_unlocked
	mov	edi, r14d
	mov	esi, dword ptr [rsp + 0xc]
	call	print_group
	test	al, al
	je	.label_105
	mov	eax, ebx
.label_105:
	mov	bl, al
.label_99:
	test	rbp, rbp
	mov	esi, r14d
	je	.label_106
	mov	esi, dword ptr [rbp + 0x14]
.label_106:
	lea	rdx, [rsp + 0x10]
	mov	rdi, r12
	call	xgetgroups
	test	eax, eax
	js	.label_112
	je	.label_100
	mov	ecx, dword ptr [rsp + 8]
	movsx	r12d, cl
	movsxd	rbp, eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_103:
	mov	rax, qword ptr [rsp + 0x10]
	mov	eax, dword ptr [rax + r15*4]
	cmp	eax, r13d
	je	.label_98
	cmp	eax, r14d
	je	.label_98
	mov	edi, r12d
	call	putchar_unlocked
	mov	rax, qword ptr [rsp + 0x10]
	mov	edi, dword ptr [rax + r15*4]
	mov	esi, dword ptr [rsp + 0xc]
	call	print_group
	test	al, al
	je	.label_102
	mov	eax, ebx
.label_102:
	mov	bl, al
.label_98:
	inc	r15
	cmp	r15, rbp
	jl	.label_103
.label_100:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	and	bl, 1
	jmp	.label_101
.label_112:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	test	r12, r12
	je	.label_109
	mov	esi, OFFSET FLAT:label_111
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, r12
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_104
.label_109:
	mov	esi, OFFSET FLAT:label_107
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_104:
	xor	ebx, ebx
.label_101:
	mov	eax, ebx
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
	#Procedure 0x40249a
	.globl sub_40249a
	.type sub_40249a, @function
sub_40249a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4024a0
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
	#Procedure 0x4024af
	.globl sub_4024af
	.type sub_4024af, @function
sub_4024af:

	nop	
.label_114:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4024b5

	.globl xgetgroups
	.type xgetgroups, @function
xgetgroups:
	push	rbx
	call	mgetgroups
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_113
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_114
.label_113:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4024d0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_122
	nop	
.label_121:
	mov	edi, OFFSET FLAT:label_29
	call	strcmp
	test	eax, eax
	je	.label_119
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_121
.label_119:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_29
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_123
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_30
	mov	ecx, OFFSET FLAT:label_118
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_115
	mov	esi, OFFSET FLAT:label_117
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_115
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_116
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_115:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_124
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_29
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_118
	mov	ecx, OFFSET FLAT:label_29
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_120
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_125
	mov	ecx, OFFSET FLAT:label_16
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
	.align	32
	#Procedure 0x4025ea
	.globl sub_4025ea
	.type sub_4025ea, @function
sub_4025ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4025f0

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
	ja	.label_162
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_168]]
.label_373:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_172
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_176
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_374:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_187
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_187
	xor	r14d, r14d
.label_199:
	cmp	r14, r11
	jae	.label_195
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_195:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_199
.label_187:
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
	jmp	.label_203
.label_366:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_203
.label_369:
	mov	al, 1
.label_367:
	mov	r12b, 1
.label_370:
	test	r12b, 1
	mov	cl, 1
	je	.label_214
	mov	ecx, eax
.label_214:
	mov	al, cl
.label_368:
	test	r12b, 1
	jne	.label_217
	test	r11, r11
	je	.label_219
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_219:
	mov	r14d, 1
	jmp	.label_224
.label_217:
	xor	r14d, r14d
.label_224:
	mov	ecx, OFFSET FLAT:label_176
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_203
.label_371:
	test	r12b, 1
	jne	.label_232
	test	r11, r11
	je	.label_192
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_192:
	mov	r14d, 1
	jmp	.label_209
.label_372:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_132
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_203
.label_232:
	xor	r14d, r14d
.label_209:
	mov	eax, OFFSET FLAT:label_132
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_203:
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
	jmp	.label_212
	.section	.text
	.align	32
	#Procedure 0x4028cc
	.globl sub_4028cc
	.type sub_4028cc, @function
sub_4028cc:

	nop	dword ptr [rax]
.label_182:
	inc	rsi
.label_212:
	cmp	rbp, -1
	je	.label_175
	cmp	rsi, rbp
	jne	.label_194
	jmp	.label_181
	.section	.text
	.align	32
	#Procedure 0x4028e3
	.globl sub_4028e3
	.type sub_4028e3, @function
sub_4028e3:

	nop	word ptr cs:[rax + rax]
.label_175:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_181
.label_194:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_190
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_191
	cmp	rbp, -1
	jne	.label_191
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
.label_191:
	cmp	rbx, rbp
	jbe	.label_201
.label_190:
	xor	r8d, r8d
.label_183:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_204
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_206]]
.label_409:
	test	rsi, rsi
	jne	.label_197
	jmp	.label_130
	.section	.text
	.align	32
	#Procedure 0x40297e
	.globl sub_40297e
	.type sub_40297e, @function
sub_40297e:

	nop	
.label_201:
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
	jne	.label_222
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_183
	jmp	.label_143
.label_222:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_183
.label_413:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_240
	test	rsi, rsi
	jne	.label_127
	cmp	rbp, 1
	je	.label_130
	xor	r13d, r13d
	jmp	.label_134
.label_402:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_137
	cmp	byte ptr [rsp + 7], 0
	jne	.label_139
	cmp	r12d, 2
	jne	.label_141
	mov	eax, r9d
	and	al, 1
	jne	.label_141
	cmp	r14, r11
	jae	.label_225
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_225:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_148
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_148:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_153
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_153:
	add	r14, 3
	mov	r9b, 1
.label_141:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_158
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_158:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_138
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_138
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_138
	cmp	r14, r11
	jae	.label_173
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_173:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_229
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_229:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_134
.label_403:
	mov	bl, 0x62
	jmp	.label_185
.label_404:
	mov	cl, 0x74
	jmp	.label_189
.label_405:
	mov	bl, 0x76
	jmp	.label_185
.label_406:
	mov	bl, 0x66
	jmp	.label_185
.label_407:
	mov	cl, 0x72
	jmp	.label_189
.label_410:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_193
	cmp	byte ptr [rsp + 7], 0
	jne	.label_139
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
	jae	.label_200
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_200:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_208
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_208:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_184
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_184:
	add	r14, 3
	xor	r9d, r9d
.label_193:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_134
.label_411:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_220
	cmp	r12d, 2
	jne	.label_197
	cmp	byte ptr [rsp + 7], 0
	je	.label_197
	jmp	.label_139
.label_412:
	cmp	r12d, 2
	jne	.label_230
	cmp	byte ptr [rsp + 7], 0
	jne	.label_139
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_186
.label_204:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_235
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
.label_140:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_154
	test	r8b, r8b
	je	.label_154
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_134
.label_240:
	test	rsi, rsi
	jne	.label_160
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_160
.label_130:
	mov	dl, 1
.label_408:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_139
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_134:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_169
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_170
	jmp	.label_174
	.section	.text
	.align	32
	#Procedure 0x402cc4
	.globl sub_402cc4
	.type sub_402cc4, @function
sub_402cc4:

	nop	word ptr cs:[rax + rax]
.label_169:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_174
.label_170:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_177
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_186
	jmp	.label_151
	.section	.text
	.align	32
	#Procedure 0x402d0d
	.globl sub_402d0d
	.type sub_402d0d, @function
sub_402d0d:

	nop	dword ptr [rax]
.label_174:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_151
	jmp	.label_186
.label_177:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_151
.label_137:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_182
	xor	r15d, r15d
	jmp	.label_197
.label_230:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_189
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_186
.label_189:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_139
.label_185:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_134
	nop	word ptr cs:[rax + rax]
.label_151:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_139
	cmp	r12d, 2
	jne	.label_215
	mov	eax, r9d
	and	al, 1
	jne	.label_215
	cmp	r14, r11
	jae	.label_218
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_218:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_237
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_237:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_227
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_227:
	add	r14, 3
	mov	r9b, 1
.label_215:
	cmp	r14, r11
	jae	.label_231
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_231:
	inc	r14
	jmp	.label_202
.label_235:
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
.label_131:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_146
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_150
	cmp	rbp, -2
	je	.label_161
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_156
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_211:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_133
	bt	rsi, rdx
	jb	.label_143
.label_133:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_211
.label_156:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_179
	xor	r13d, r13d
.label_179:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_131
	jmp	.label_140
.label_138:
	xor	r13d, r13d
	jmp	.label_134
.label_160:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_134
.label_220:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_197
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_197
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_197
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_233
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_142
	cmp	byte ptr [rsp + 7], 0
	jne	.label_139
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_164
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_164:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_147
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_147:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_223
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_223:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_226
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_226:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_134
.label_197:
	xor	eax, eax
.label_127:
	xor	r13d, r13d
	jmp	.label_134
.label_154:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_234
	.section	.text
	.align	32
	#Procedure 0x402ff3
	.globl sub_402ff3
	.type sub_402ff3, @function
sub_402ff3:

	nop	word ptr cs:[rax + rax]
.label_198:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_234:
	test	r8b, r8b
	je	.label_128
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_129
	cmp	r14, r11
	jae	.label_135
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_135:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_129
	.section	.text
	.align	32
	#Procedure 0x40303c
	.globl sub_40303c
	.type sub_40303c, @function
sub_40303c:

	nop	dword ptr [rax]
.label_128:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_143
	cmp	r12d, 2
	jne	.label_145
	mov	eax, r9d
	and	al, 1
	jne	.label_145
	cmp	r14, r11
	jae	.label_149
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_149:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_152
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_152:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_157
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_157:
	add	r14, 3
	mov	r9b, 1
.label_145:
	cmp	r14, r11
	jae	.label_166
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_166:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_165
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_165:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_171
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_171:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_129:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_186
	test	r9b, 1
	je	.label_188
	mov	ebx, eax
	and	bl, 1
	jne	.label_188
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_238
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_238:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_210
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_210:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_188:
	cmp	r14, r11
	jae	.label_198
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_198
	.section	.text
	.align	32
	#Procedure 0x403143
	.globl sub_403143
	.type sub_403143, @function
sub_403143:

	nop	word ptr cs:[rax + rax]
.label_186:
	test	r9b, 1
	je	.label_126
	and	al, 1
	jne	.label_126
	cmp	r14, r11
	jae	.label_205
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_205:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_207
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_207:
	add	r14, 2
	xor	r9d, r9d
.label_126:
	mov	ebx, r15d
.label_202:
	cmp	r14, r11
	jae	.label_213
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_213:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_182
.label_150:
	xor	r13d, r13d
.label_146:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_140
.label_161:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_228
	mov	rsi, qword ptr [rsp + 0x50]
.label_196:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_180
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_196
	xor	r13d, r13d
	jmp	.label_140
.label_228:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_140
.label_180:
	xor	r13d, r13d
	jmp	.label_140
.label_233:
	xor	r13d, r13d
	jmp	.label_134
.label_142:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_134
	.section	.text
	.align	32
	#Procedure 0x403218
	.globl sub_403218
	.type sub_403218, @function
sub_403218:

	nop	dword ptr [rax + rax]
.label_181:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_136
	or	dl, al
	je	.label_143
.label_136:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_144
	or	dl, al
	jne	.label_144
	test	r10b, 1
	jne	.label_155
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_144
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_159
.label_144:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_163
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_167
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_167
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_178:
	cmp	r14, r11
	jae	.label_239
	mov	byte ptr [rcx + r14], al
.label_239:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_178
	jmp	.label_167
.label_139:
	mov	qword ptr [rsp + 0x20], rbp
.label_143:
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
.label_216:
	mov	r14, rax
.label_221:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_155:
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
	jmp	.label_216
.label_163:
	mov	rcx, qword ptr [rsp + 8]
.label_167:
	cmp	r14, r11
	jae	.label_221
	mov	byte ptr [rcx + r14], 0
	jmp	.label_221
.label_162:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4033ac
	.globl sub_4033ac
	.type sub_4033ac, @function
sub_4033ac:

	nop	dword ptr [rax]
.label_251:
	xor	edi, edi
	xor	esi, esi
	call	getgroups
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	js	.label_250
	cmp	r12d, -1
	jne	.label_241
	test	eax, eax
	jne	.label_243
.label_241:
	inc	dword ptr [rsp + 0xc]
.label_243:
	movsxd	rsi, dword ptr [rsp + 0xc]
	xor	edi, edi
	call	realloc_groupbuf
	mov	r15, rax
	mov	r13d, 0xffffffff
	test	r15, r15
	je	.label_242
	mov	edi, dword ptr [rsp + 0xc]
	xor	eax, eax
	cmp	r12d, -1
	setne	al
	sub	edi, eax
	lea	rsi, [r15 + rax*4]
	call	getgroups
	test	eax, eax
	js	.label_249
	cmp	r12d, -1
	mov	r13d, eax
	je	.label_244
	mov	dword ptr [r15], r12d
	inc	eax
	mov	r13d, eax
.label_244:
	mov	qword ptr [r14], r15
	cmp	r13d, 2
	jl	.label_242
	mov	eax, dword ptr [r15]
	movsxd	rcx, r13d
	lea	rcx, [r15 + rcx*4]
	mov	rdx, r15
	add	rdx, 4
	jmp	.label_245
.label_249:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r15
	call	free
	mov	dword ptr [rbx], ebp
	jmp	.label_242
.label_253:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
	jmp	.label_242
.label_245:
	mov	esi, dword ptr [rdx]
	cmp	esi, eax
	je	.label_246
	cmp	esi, dword ptr [r15]
	jne	.label_247
.label_246:
	dec	r13d
.label_248:
	add	rdx, 4
	cmp	rdx, rcx
	jb	.label_245
.label_242:
	mov	eax, r13d
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
	#Procedure 0x403497
	.globl sub_403497
	.type sub_403497, @function
sub_403497:

	nop	dword ptr [rax]
.label_247:
	mov	dword ptr [r15 + 4], esi
	add	r15, 4
	jmp	.label_248
	.section	.text
	.align	32
	#Procedure 0x4034a8
	.globl sub_4034a8
	.type sub_4034a8, @function
sub_4034a8:

	nop	dword ptr [rax]
.label_250:
	call	__errno_location
	mov	r13d, 0xffffffff
	cmp	dword ptr [rax], 0x26
	jne	.label_242
	xor	edi, edi
	mov	esi, 1
	call	realloc_groupbuf
	test	rax, rax
	je	.label_242
	mov	qword ptr [r14], rax
	mov	dword ptr [rax], r12d
	xor	r13d, r13d
	cmp	r12d, -1
	setne	r13b
	jmp	.label_242
	.section	.text
	.align	32
	#Procedure 0x4034e0

	.globl mgetgroups
	.type mgetgroups, @function
mgetgroups:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rdx
	mov	r12d, esi
	mov	rbp, rdi
	test	rbp, rbp
	je	.label_251
	mov	dword ptr [rsp + 0xc], 0xa
	xor	edi, edi
	mov	esi, 0xa
	call	realloc_groupbuf
	mov	rbx, rax
	mov	r13d, 0xffffffff
	test	rbx, rbx
	je	.label_242
	mov	r15d, r12d
	mov	qword ptr [rsp + 0x10], r14
	nop	
.label_254:
	mov	r12d, dword ptr [rsp + 0xc]
	mov	rdi, rbp
	mov	esi, r15d
	mov	rdx, rbx
	lea	rcx, [rsp + 0xc]
	call	getgrouplist
	mov	r14d, eax
	test	r14d, r14d
	jns	.label_252
	mov	eax, dword ptr [rsp + 0xc]
	cmp	r12d, eax
	jne	.label_252
	add	eax, eax
	mov	dword ptr [rsp + 0xc], eax
	nop	
.label_252:
	movsxd	rsi, dword ptr [rsp + 0xc]
	mov	rdi, rbx
	call	realloc_groupbuf
	test	rax, rax
	je	.label_253
	test	r14d, r14d
	mov	rbx, rax
	js	.label_254
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx], rax
	mov	r13d, dword ptr [rsp + 0xc]
	jmp	.label_242
.label_260:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_258
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4035b0
	.globl sub_4035b0
	.type sub_4035b0, @function
sub_4035b0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4035bf

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_260
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_255
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_257
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_255
	mov	esi, OFFSET FLAT:label_256
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_259
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_259:
	mov	rbx, r14
.label_255:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x403640
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x40364a
	.globl sub_40364a
	.type sub_40364a, @function
sub_40364a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403650

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
	.align	32
	#Procedure 0x40367d
	.globl sub_40367d
	.type sub_40367d, @function
sub_40367d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403680
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
	.align	32
	#Procedure 0x403693
	.globl sub_403693
	.type sub_403693, @function
sub_403693:

	nop	word ptr cs:[rax + rax]
.label_262:
	cmp	edi, 0x7f
	je	.label_261
	xor	eax, eax
	jmp	.label_261
	.section	.text
	.align	32
	#Procedure 0x4036a9
	.globl sub_4036a9
	.type sub_4036a9, @function
sub_4036a9:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4036b8
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_262
.label_261:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4036c0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4036ce
	.globl sub_4036ce
	.type sub_4036ce, @function
sub_4036ce:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4036d0

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
	js	.label_266
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_269
	cmp	r12d, 0x7fffffff
	je	.label_264
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
	jne	.label_267
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_267:
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
.label_269:
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
	jbe	.label_265
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_268
.label_265:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_263
	mov	rdi, r14
	call	free
.label_263:
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
.label_268:
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
.label_266:
	call	abort
.label_264:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40388d
	.globl sub_40388d
	.type sub_40388d, @function
sub_40388d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403890
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_270
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_271
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_273
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_30
	mov	ecx, OFFSET FLAT:label_118
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_272
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x403904
	.globl sub_403904
	.type sub_403904, @function
sub_403904:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403910
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40391a
	.globl sub_40391a
	.type sub_40391a, @function
sub_40391a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403920
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40392a
	.globl sub_40392a
	.type sub_40392a, @function
sub_40392a:

	nop	word ptr [rax + rax]
.label_277:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_274
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_276
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_55
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x403975

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_279
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_277
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_277
.label_279:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_278
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_276:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_275
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_278:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x4039f0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_280
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_280:
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
	#Procedure 0x403a73
	.globl sub_403a73
	.type sub_403a73, @function
sub_403a73:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a80
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
	#Procedure 0x403a93
	.globl sub_403a93
	.type sub_403a93, @function
sub_403a93:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403aa0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_281
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_283
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_281
.label_283:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_281
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_282
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_282:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_281:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x403b17
	.globl sub_403b17
	.type sub_403b17, @function
sub_403b17:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b20
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
	#Procedure 0x403b2f
	.globl sub_403b2f
	.type sub_403b2f, @function
sub_403b2f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403b30

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x403b3a
	.globl sub_403b3a
	.type sub_403b3a, @function
sub_403b3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b40
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
	.align	32
	#Procedure 0x403b50

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x403b59
	.globl sub_403b59
	.type sub_403b59, @function
sub_403b59:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403b60

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x403b6a
	.globl sub_403b6a
	.type sub_403b6a, @function
sub_403b6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b70

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
.label_285:
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
	#Procedure 0x403bed
	.globl sub_403bed
	.type sub_403bed, @function
sub_403bed:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403bf0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x403bf8
	.globl sub_403bf8
	.type sub_403bf8, @function
sub_403bf8:

	nop	dword ptr [rax + rax]
.label_288:
	mov	ecx, 1
.label_287:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x403c10
	.globl sub_403c10
	.type sub_403c10, @function
sub_403c10:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c15

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_288
	test	rsi, rsi
	mov	ecx, 1
	je	.label_287
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_287
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403c50

	.globl gidtostr_ptr
	.type gidtostr_ptr, @function
gidtostr_ptr:
	mov	edi, dword ptr [rdi]
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf
	jmp	umaxtostr
	.section	.text
	.align	32
	#Procedure 0x403c5c
	.globl sub_403c5c
	.type sub_403c5c, @function
sub_403c5c:

	nop	dword ptr [rax]
.label_289:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403c65
	.globl sub_403c65
	.type sub_403c65, @function
sub_403c65:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c73

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
	je	.label_289
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
	.section	.text
	.align	32
	#Procedure 0x403cc0
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
	.align	32
	#Procedure 0x403cd9
	.globl sub_403cd9
	.type sub_403cd9, @function
sub_403cd9:

	nop	dword ptr [rax]
.label_291:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_290
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ceb
	.globl sub_403ceb
	.type sub_403ceb, @function
sub_403ceb:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403cf5
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_291
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_291
.label_290:
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d10

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
	je	.label_294
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_292
	jmp	.label_293
.label_294:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_293
.label_292:
	mov	eax, 1
	test	bpl, bpl
	je	.label_293
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
.label_293:
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
	#Procedure 0x403d98
	.globl sub_403d98
	.type sub_403d98, @function
sub_403d98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403da0

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
	je	.label_295
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_297
	jmp	.label_296
.label_295:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_296
.label_297:
	mov	eax, 1
	test	bpl, bpl
	je	.label_296
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
.label_296:
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
	#Procedure 0x403e19
	.globl sub_403e19
	.type sub_403e19, @function
sub_403e19:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403e20

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
	je	.label_300
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_299
	jmp	.label_298
.label_300:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_298
.label_299:
	mov	eax, 1
	test	bpl, bpl
	je	.label_298
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
.label_298:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403e83
	.globl sub_403e83
	.type sub_403e83, @function
sub_403e83:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e90

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
	je	.label_303
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_301
	jmp	.label_302
.label_303:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_302
.label_301:
	mov	eax, 1
	test	bpl, bpl
	je	.label_302
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_302:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403eef
	.globl sub_403eef
	.type sub_403eef, @function
sub_403eef:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403ef0

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
	je	.label_304
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_306
	jmp	.label_305
.label_304:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_305
.label_306:
	mov	eax, 1
	test	bpl, bpl
	je	.label_305
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_305:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403f39
	.globl sub_403f39
	.type sub_403f39, @function
sub_403f39:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403f40

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
	je	.label_309
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_308
	jmp	.label_307
.label_309:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_307
.label_308:
	mov	eax, 1
	test	bpl, bpl
	je	.label_307
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_307:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403f85
	.globl sub_403f85
	.type sub_403f85, @function
sub_403f85:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f90

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_311
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_312
	jmp	.label_310
.label_311:
	mov	eax, 1
	test	cl, cl
	je	.label_310
.label_312:
	xor	eax, eax
.label_310:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403fbf
	.globl sub_403fbf
	.type sub_403fbf, @function
sub_403fbf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403fc0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_313
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_313:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x403fde
	.globl sub_403fde
	.type sub_403fde, @function
sub_403fde:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403fe0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_315
	cmp	byte ptr [rax], 0x43
	jne	.label_317
	cmp	byte ptr [rax + 1], 0
	je	.label_314
.label_317:
	mov	esi, OFFSET FLAT:label_316
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_315
.label_314:
	xor	ebx, ebx
.label_315:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404011
	.globl sub_404011
	.type sub_404011, @function
sub_404011:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404020

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
	je	.label_318
	cmp	r15, -2
	jb	.label_318
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_318
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_318:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x404076
	.globl sub_404076
	.type sub_404076, @function
sub_404076:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404080

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_16
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_319
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4040a5
	.globl sub_4040a5
	.type sub_4040a5, @function
sub_4040a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040b0
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
	.align	32
	#Procedure 0x404122
	.globl sub_404122
	.type sub_404122, @function
sub_404122:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404130
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_320
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_320:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40414e
	.globl sub_40414e
	.type sub_40414e, @function
sub_40414e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404150

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
	.align	32
	#Procedure 0x404187
	.globl sub_404187
	.type sub_404187, @function
sub_404187:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404190
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40419a
	.globl sub_40419a
	.type sub_40419a, @function
sub_40419a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4041a0
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
	.align	32
	#Procedure 0x4041af
	.globl sub_4041af
	.type sub_4041af, @function
sub_4041af:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4041b0

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
	#Procedure 0x4041e6
	.globl sub_4041e6
	.type sub_4041e6, @function
sub_4041e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4041f0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4041fa
	.globl sub_4041fa
	.type sub_4041fa, @function
sub_4041fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404200

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
	#Procedure 0x404217
	.globl sub_404217
	.type sub_404217, @function
sub_404217:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404220

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_321:
	mov	rax, rcx
	mul	r8
	shr	rdx, 3
	lea	eax, [rdx + rdx]
	lea	eax, [rax + rax*4]
	mov	edi, ecx
	sub	edi, eax
	or	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	cmp	rcx, 9
	mov	rcx, rdx
	ja	.label_321
	mov	rax, rsi
	ret	
	.section	.text
	.align	32
	#Procedure 0x40426b
	.globl sub_40426b
	.type sub_40426b, @function
sub_40426b:

	nop	dword ptr [rax + rax]
.label_324:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_322
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_322:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4042a4
	.globl sub_4042a4
	.type sub_4042a4, @function
sub_4042a4:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4042a6

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
	jne	.label_323
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_323
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_324
.label_323:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	32
	#Procedure 0x4042e0
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
	.align	32
	#Procedure 0x404307
	.globl sub_404307
	.type sub_404307, @function
sub_404307:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404310

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40431a
	.globl sub_40431a
	.type sub_40431a, @function
sub_40431a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404320
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	32
	#Procedure 0x40432d
	.globl sub_40432d
	.type sub_40432d, @function
sub_40432d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404330
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
	.align	32
	#Procedure 0x404340

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	32
	#Procedure 0x404345
	.globl sub_404345
	.type sub_404345, @function
sub_404345:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404350

	.globl realloc_groupbuf
	.type realloc_groupbuf, @function
realloc_groupbuf:
	push	rax
	mov	rax, rsi
	shr	rax, 0x3d
	je	.label_325
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_325:
	shl	rsi, 2
	call	realloc
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404374
	.globl sub_404374
	.type sub_404374, @function
sub_404374:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404380
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
	.align	32
	#Procedure 0x404396
	.globl sub_404396
	.type sub_404396, @function
sub_404396:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043a0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	32
	#Procedure 0x4043a9
	.globl sub_4043a9
	.type sub_4043a9, @function
sub_4043a9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4043b0

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
	mov	rax,  qword ptr [word ptr [rip + label_43]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_44]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_45]]
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
	.align	32
	#Procedure 0x404418
	.globl sub_404418
	.type sub_404418, @function
sub_404418:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404420

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
	.align	32
	#Procedure 0x404459
	.globl sub_404459
	.type sub_404459, @function
sub_404459:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404460
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
	.align	32
	#Procedure 0x404471
	.globl sub_404471
	.type sub_404471, @function
sub_404471:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404480
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
	.align	32
	#Procedure 0x404494
	.globl sub_404494
	.type sub_404494, @function
sub_404494:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044a0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_326:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_326
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x4044c1
	.globl sub_4044c1
	.type sub_4044c1, @function
sub_4044c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044d0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4044d8
	.globl sub_4044d8
	.type sub_4044d8, @function
sub_4044d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044e0

	.globl print_group
	.type print_group, @function
print_group:
	push	rbx
	sub	rsp, 0x10
	mov	dword ptr [rsp + 0xc], edi
	mov	bl, 1
	test	sil, sil
	je	.label_327
	call	getgrgid
	test	rax, rax
	je	.label_328
	mov	rdi, qword ptr [rax]
	mov	bl, 1
	jmp	.label_330
.label_328:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_329
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	ecx, dword ptr [rsp + 0xc]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	call	error
.label_327:
	lea	rdi, [rsp + 0xc]
	call	gidtostr_ptr
	mov	rdi, rax
.label_330:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	mov	eax, ebx
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404547
	.globl sub_404547
	.type sub_404547, @function
sub_404547:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404550

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
	jne	.label_338
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
	je	.label_331
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_335
	mov	eax, OFFSET FLAT:label_336
	jmp	.label_334
.label_337:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_132
	mov	eax, OFFSET FLAT:label_176
.label_334:
	cmove	rax, rcx
.label_338:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4045cf
	.globl sub_4045cf
	.type sub_4045cf, @function
sub_4045cf:

	nop	dword ptr [rax]
.label_331:
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
	je	.label_337
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_332
	mov	eax, OFFSET FLAT:label_333
	jmp	.label_334
	.section	.text
	.align	32
	#Procedure 0x404675
	.globl sub_404675
	.type sub_404675, @function
sub_404675:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404682
	.globl sub_404682
	.type sub_404682, @function
sub_404682:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4046a6
	.globl sub_4046a6
	.type sub_4046a6, @function
sub_4046a6:

	nop	word ptr cs:[rax + rax]
