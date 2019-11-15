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

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_9
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_9:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401673
	.globl sub_401673
	.type sub_401673, @function
sub_401673:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401680

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_10
	test	rax, rax
	je	.label_11
.label_10:
	pop	rbx
	ret	
.label_11:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40169a
	.globl sub_40169a
	.type sub_40169a, @function
sub_40169a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4016a0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x4016aa
	.globl sub_4016aa
	.type sub_4016aa, @function
sub_4016aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4016b0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4016ba
	.globl sub_4016ba
	.type sub_4016ba, @function
sub_4016ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4016c0
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
	#Procedure 0x4016d6
	.globl sub_4016d6
	.type sub_4016d6, @function
sub_4016d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4016e0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x4016e9
	.globl sub_4016e9
	.type sub_4016e9, @function
sub_4016e9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4016f0

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
	mov	rax,  qword ptr [word ptr [rip + label_12]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_13]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_14]]
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
	#Procedure 0x401758
	.globl sub_401758
	.type sub_401758, @function
sub_401758:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401760

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_15
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_15:
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
	#Procedure 0x4017e3
	.globl sub_4017e3
	.type sub_4017e3, @function
sub_4017e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017f0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_16
.label_17:
	ret	
.label_16:
	cmp	edi, 0x7f
	je	.label_17
	xor	eax, eax
	jmp	.label_17
	.section	.text
	.align	16
	#Procedure 0x401801
	.globl sub_401801
	.type sub_401801, @function
sub_401801:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401810
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	16
	#Procedure 0x40181a
	.globl sub_40181a
	.type sub_40181a, @function
sub_40181a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401820
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40182a
	.globl sub_40182a
	.type sub_40182a, @function
sub_40182a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401830
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
	#Procedure 0x40183f
	.globl sub_40183f
	.type sub_40183f, @function
sub_40183f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401840
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
	#Procedure 0x40184f
	.globl sub_40184f
	.type sub_40184f, @function
sub_40184f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401850
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
	#Procedure 0x40185f
	.globl sub_40185f
	.type sub_40185f, @function
sub_40185f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401860

	.globl octal_to_mode
	.type octal_to_mode, @function
octal_to_mode:
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x401863
	.globl sub_401863
	.type sub_401863, @function
sub_401863:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401870

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
	mov	rcx,  qword ptr [word ptr [rip + label_12]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_13]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_14]]
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
	#Procedure 0x4018dd
	.globl sub_4018dd
	.type sub_4018dd, @function
sub_4018dd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4018e0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x4018ed
	.globl sub_4018ed
	.type sub_4018ed, @function
sub_4018ed:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4018f0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	16
	#Procedure 0x4018f7
	.globl sub_4018f7
	.type sub_4018f7, @function
sub_4018f7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401900
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
	#Procedure 0x401933
	.globl sub_401933
	.type sub_401933, @function
sub_401933:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401940

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rsi
	mov	r12d, edi
	mov	rdi, qword ptr [r13]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_34
	call	setlocale
	mov	edi, OFFSET FLAT:label_37
	mov	esi, OFFSET FLAT:label_38
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_37
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	r14d, r14d
	jmp	.label_19
	.section	.text
	.align	16
	#Procedure 0x401994
	.globl sub_401994
	.type sub_401994, @function
sub_401994:

	nop	word ptr cs:[rax + rax]
.label_58:
	mov	r14,  qword ptr [word ptr [rip + optarg]]
.label_19:
	mov	edx, OFFSET FLAT:label_50
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r12d
	mov	rsi, r13
	call	getopt_long
	cmp	eax, 0x59
	jle	.label_54
	cmp	eax, 0x5a
	je	.label_57
	cmp	eax, 0x6d
	je	.label_58
	jmp	.label_59
	.section	.text
	.align	16
	#Procedure 0x4019d3
	.globl sub_4019d3
	.type sub_4019d3, @function
sub_4019d3:

	nop	word ptr cs:[rax + rax]
.label_57:
	cmp	qword ptr [word ptr [rip + optarg]],  0
	je	.label_19
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_63
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_19
.label_54:
	cmp	eax, -1
	jne	.label_20
	mov	r15d, 0x1b6
	test	r14, r14
	je	.label_21
	mov	rdi, r14
	call	mode_compile
	mov	rbp, rax
	test	rbp, rbp
	je	.label_26
	xor	edi, edi
	call	umask
	mov	ebx, eax
	mov	edi, ebx
	call	umask
	mov	edi, 0x1b6
	xor	esi, esi
	xor	r8d, r8d
	mov	edx, ebx
	mov	rcx, rbp
	call	mode_adjust
	mov	r15d, eax
	mov	rdi, rbp
	call	free
	cmp	r15d, 0x200
	jae	.label_36
.label_21:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	bpl, 1
	cmp	eax, r12d
	jge	.label_39
	lea	ecx, [rax + 1]
	cmp	ecx, r12d
	jge	.label_41
	mov	rax, qword ptr [r13 + rax*8 + 8]
	cmp	byte ptr [rax], 0x70
	sete	bpl
	jmp	.label_39
.label_41:
	xor	ebp, ebp
.label_39:
	mov	rdx, r14
	xor	eax, eax
	test	bpl, bpl
	sete	al
	lea	rbx, [rax + rax + 2]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	movsxd	r14, r12d
	mov	rcx, r14
	sub	rcx, rax
	cmp	rcx, rbx
	jb	.label_48
	cmp	rbx, rcx
	jb	.label_55
	mov	rcx, qword ptr [r13 + rax*8 + 8]
	movsx	ecx, byte ptr [rcx]
	add	ecx, -0x62
	cmp	ecx, 0x13
	mov	rbx, rdx
	ja	.label_56
	mov	ebp, 0x6000
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_30]]
.label_504:
	mov	ebp, 0x2000
.label_503:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	r12, qword ptr [r13 + rax*8 + 0x10]
	mov	r14, qword ptr [r13 + rax*8 + 0x18]
	lea	rcx, [rsp + 8]
	xor	esi, esi
	xor	edx, edx
	xor	r8d, r8d
	mov	rdi, r12
	call	xstrtoumax
	test	eax, eax
	jne	.label_22
	mov	rax, qword ptr [rsp + 8]
	mov	ecx, eax
	cmp	rax, rcx
	jne	.label_22
	lea	rcx, [rsp + 0x10]
	xor	esi, esi
	xor	edx, edx
	xor	r8d, r8d
	mov	rdi, r14
	call	xstrtoumax
	test	eax, eax
	jne	.label_29
	mov	rsi, qword ptr [rsp + 0x10]
	mov	eax, esi
	cmp	rsi, rax
	jne	.label_29
	mov	edi, dword ptr [rsp + 8]
	call	gnu_dev_makedev
	cmp	rax, -1
	je	.label_35
	movsxd	rcx,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r13 + rcx*8]
	or	ebp, r15d
	mov	esi, ebp
	mov	rdx, rax
	call	mknod
	jmp	.label_27
.label_505:
	mov	rdi, qword ptr [r13 + rax*8]
	mov	esi, r15d
	call	mkfifo
.label_27:
	test	eax, eax
	jne	.label_47
	test	rbx, rbx
	je	.label_49
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r13 + rax*8]
	mov	esi, r15d
	call	chmod
	test	eax, eax
	jne	.label_51
.label_49:
	xor	eax, eax
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_20:
	cmp	eax, 0xffffff7d
	je	.label_60
	cmp	eax, 0xffffff7e
	jne	.label_59
	xor	edi, edi
	call	usage
.label_22:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_65
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r12
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_29:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_48:
	xor	edi, edi
	cmp	eax, r12d
	jge	.label_31
	mov	esi, OFFSET FLAT:label_32
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [r13 + r14*8 - 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_42
.label_60:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_43
	mov	edx, OFFSET FLAT:label_44
	mov	r8d, OFFSET FLAT:label_45
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_55:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_52
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	add	rax, rbx
	mov	rdi, qword ptr [r13 + rax*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	test	bpl, bpl
	je	.label_67
	sub	r12d,  dword ptr [dword ptr [rip + optind]]
	cmp	r12d, 4
	jne	.label_67
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_24
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_67:
	mov	edi, 1
	call	usage
.label_56:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r13 + rax*8 + 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_59:
	mov	edi, 1
	call	usage
.label_47:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdx, qword ptr [r13 + rax*8]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_64
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_35:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_53
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r12
	mov	r8, r14
	call	error
.label_26:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
	jmp	.label_62
.label_36:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_66
.label_62:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_51:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rsi, qword ptr [r13 + rax*8]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_31:
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_42:
	test	bpl, bpl
	jne	.label_40
	sub	r12d,  dword ptr [dword ptr [rip + optind]]
	cmp	r12d, 2
	jne	.label_40
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_46
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_24
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_40:
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x401ec6
	.globl sub_401ec6
	.type sub_401ec6, @function
sub_401ec6:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ed0

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
	#Procedure 0x401f19
	.globl sub_401f19
	.type sub_401f19, @function
sub_401f19:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401f20

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	movsxd	rcx, esi
	mov	rsi, -1
	mov	rax, -1
	xor	edx, edx
	div	rcx
	mov	rdx, qword ptr [rdi]
	imul	rcx, rdx
	cmp	rax, rdx
	cmovb	rcx, rsi
	sbb	eax, eax
	and	eax, 1
	mov	qword ptr [rdi], rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f4d
	.globl sub_401f4d
	.type sub_401f4d, @function
sub_401f4d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401f50
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f58
	.globl sub_401f58
	.type sub_401f58, @function
sub_401f58:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f60

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
	#Procedure 0x401f8d
	.globl sub_401f8d
	.type sub_401f8d, @function
sub_401f8d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401f90
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
	#Procedure 0x401fa3
	.globl sub_401fa3
	.type sub_401fa3, @function
sub_401fa3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401fb0
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
	#Procedure 0x401fc9
	.globl sub_401fc9
	.type sub_401fc9, @function
sub_401fc9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401fd0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_68:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_68
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x401ff1
	.globl sub_401ff1
	.type sub_401ff1, @function
sub_401ff1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402000

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40200a
	.globl sub_40200a
	.type sub_40200a, @function
sub_40200a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402010

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
	#Procedure 0x402049
	.globl sub_402049
	.type sub_402049, @function
sub_402049:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402050

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
	#Procedure 0x402061
	.globl sub_402061
	.type sub_402061, @function
sub_402061:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402070
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
	#Procedure 0x402084
	.globl sub_402084
	.type sub_402084, @function
sub_402084:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402090
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
	#Procedure 0x4020b7
	.globl sub_4020b7
	.type sub_4020b7, @function
sub_4020b7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4020c0
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
.label_72:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_72
.label_69:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_73
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_70]], OFFSET FLAT:slot0
.label_73:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_71
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_71:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402151
	.globl sub_402151
	.type sub_402151, @function
sub_402151:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402160

	.globl mode_adjust
	.type mode_adjust, @function
mode_adjust:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	qword ptr [rsp - 8], r8
	and	edi, 0xfff
	mov	al, byte ptr [rcx + 1]
	xor	r13d, r13d
	test	al, al
	je	.label_74
	xor	r13d, r13d
	test	sil, sil
	mov	r9d, 0xc00
	cmove	r9d, r13d
	not	edx
	mov	r10d, r9d
	not	r10d
	movzx	r12d, sil
	mov	r14d, 0x92
	mov	r15d, 0x49
	nop	dword ptr [rax + rax]
.label_79:
	movsx	ebp, al
	mov	ebx, dword ptr [rcx + 4]
	mov	esi, dword ptr [rcx + 8]
	mov	r8d, dword ptr [rcx + 0xc]
	cmp	ebp, 2
	je	.label_77
	cmp	ebp, 3
	jne	.label_75
	and	esi, edi
	mov	ebp, esi
	and	ebp, 0x124
	mov	eax, 0x124
	cmovne	ebp, eax
	mov	r11d, esi
	and	r11d, 0x92
	cmovne	r11d, r14d
	or	r11d, esi
	and	esi, 0x49
	cmovne	esi, r15d
	or	esi, ebp
	or	esi, r11d
	jmp	.label_75
	.section	.text
	.align	16
	#Procedure 0x4021f8
	.globl sub_4021f8
	.type sub_4021f8, @function
sub_4021f8:

	nop	dword ptr [rax + rax]
.label_81:
	or	r13d, ebp
	not	ebp
	and	edi, ebp
	jmp	.label_78
	.section	.text
	.align	16
	#Procedure 0x402209
	.globl sub_402209
	.type sub_402209, @function
sub_402209:

	nop	dword ptr [rax]
.label_77:
	mov	ebp, edi
	and	ebp, 0x49
	mov	eax, esi
	or	eax, 0x49
	or	ebp, r12d
	cmovne	esi, eax
.label_75:
	test	ebx, ebx
	mov	eax, edx
	cmovne	eax, ebx
	mov	ebp, r8d
	or	ebp, r10d
	and	ebp, esi
	and	ebp, eax
	movsx	esi, byte ptr [rcx]
	cmp	esi, 0x2b
	je	.label_80
	cmp	esi, 0x2d
	je	.label_81
	cmp	esi, 0x3d
	jne	.label_78
	not	r8d
	and	r8d, r9d
	test	ebx, ebx
	mov	eax, ebx
	not	eax
	cmove	eax, ebx
	or	eax, r8d
	mov	esi, eax
	not	esi
	and	esi, 0xfff
	or	r13d, esi
	and	eax, edi
	or	ebp, eax
	mov	edi, ebp
	jmp	.label_78
	.section	.text
	.align	16
	#Procedure 0x40226a
	.globl sub_40226a
	.type sub_40226a, @function
sub_40226a:

	nop	word ptr [rax + rax]
.label_80:
	or	r13d, ebp
	or	edi, ebp
.label_78:
	movzx	eax, byte ptr [rcx + 0x11]
	add	rcx, 0x10
	test	al, al
	jne	.label_79
.label_74:
	mov	rax, qword ptr [rsp - 8]
	test	rax, rax
	je	.label_76
	mov	dword ptr [rax], r13d
.label_76:
	mov	eax, edi
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40229f
	.globl sub_40229f
	.type sub_40229f, @function
sub_40229f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4022a0

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
	je	.label_82
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_83:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebp, eax
	dec	ebx
	jne	.label_83
.label_82:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4022de
	.globl sub_4022de
	.type sub_4022de, @function
sub_4022de:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4022e0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	16
	#Procedure 0x4022ea
	.globl sub_4022ea
	.type sub_4022ea, @function
sub_4022ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022f0

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
	je	.label_84
	mov	qword ptr [rax], rbx
.label_84:
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
	#Procedure 0x4023dc
	.globl sub_4023dc
	.type sub_4023dc, @function
sub_4023dc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4023e0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_85
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_85:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4023f8
	.globl sub_4023f8
	.type sub_4023f8, @function
sub_4023f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402400
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
	#Procedure 0x40240d
	.globl sub_40240d
	.type sub_40240d, @function
sub_40240d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402410

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_86
	ret	
.label_86:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	16
	#Procedure 0x402423
	.globl sub_402423
	.type sub_402423, @function
sub_402423:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402430

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_87
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x402452
	.globl sub_402452
	.type sub_402452, @function
sub_402452:

	nop	word ptr cs:[rax + rax]
.label_92:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_88
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
	#Procedure 0x402498
	.globl sub_402498
	.type sub_402498, @function
sub_402498:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024a0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_92
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_94
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_89
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_98
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_90
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_91
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_93
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_95
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_96
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_97
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_43
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_102:
	test	rcx, rcx
	jne	.label_99
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_99:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_103
.label_101:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_100:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402637

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_102
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_100
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_101
.label_103:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402669
	.globl sub_402669
	.type sub_402669, @function
sub_402669:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402670

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
.label_171:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_217
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_176]]
.label_451:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_180
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_124
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_452:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_195
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_195
	xor	r14d, r14d
.label_207:
	cmp	r14, r11
	jae	.label_204
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_204:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_207
.label_195:
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
	jmp	.label_125
.label_444:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_125
.label_447:
	mov	al, 1
.label_445:
	mov	r12b, 1
.label_448:
	test	r12b, 1
	mov	cl, 1
	je	.label_107
	mov	ecx, eax
.label_107:
	mov	al, cl
.label_446:
	test	r12b, 1
	jne	.label_111
	test	r11, r11
	je	.label_114
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_114:
	mov	r14d, 1
	jmp	.label_121
.label_111:
	xor	r14d, r14d
.label_121:
	mov	ecx, OFFSET FLAT:label_124
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_125
.label_449:
	test	r12b, 1
	jne	.label_131
	test	r11, r11
	je	.label_115
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_115:
	mov	r14d, 1
	jmp	.label_137
.label_450:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_139
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_125
.label_131:
	xor	r14d, r14d
.label_137:
	mov	eax, OFFSET FLAT:label_139
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_125:
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
	jmp	.label_144
	.section	.text
	.align	16
	#Procedure 0x40294c
	.globl sub_40294c
	.type sub_40294c, @function
sub_40294c:

	nop	dword ptr [rax]
.label_141:
	inc	rsi
.label_144:
	cmp	rbp, -1
	je	.label_184
	cmp	rsi, rbp
	jne	.label_112
	jmp	.label_189
	.section	.text
	.align	16
	#Procedure 0x402963
	.globl sub_402963
	.type sub_402963, @function
sub_402963:

	nop	word ptr cs:[rax + rax]
.label_184:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_189
.label_112:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_198
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_190
	cmp	rbp, -1
	jne	.label_190
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
.label_190:
	cmp	rbx, rbp
	jbe	.label_210
.label_198:
	xor	r8d, r8d
.label_123:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_211
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_215]]
.label_479:
	test	rsi, rsi
	jne	.label_122
	jmp	.label_148
	.section	.text
	.align	16
	#Procedure 0x4029fe
	.globl sub_4029fe
	.type sub_4029fe, @function
sub_4029fe:

	nop	
.label_210:
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
	jne	.label_119
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_123
	jmp	.label_132
.label_119:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_123
.label_483:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_143
	test	rsi, rsi
	jne	.label_145
	cmp	rbp, 1
	je	.label_148
	xor	r13d, r13d
	jmp	.label_110
.label_472:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_151
	cmp	byte ptr [rsp + 7], 0
	jne	.label_104
	cmp	r12d, 2
	jne	.label_155
	mov	eax, r9d
	and	al, 1
	jne	.label_155
	cmp	r14, r11
	jae	.label_156
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_156:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_159
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_159:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_164
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_164:
	add	r14, 3
	mov	r9b, 1
.label_155:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_106
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_106:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_172
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_172
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_172
	cmp	r14, r11
	jae	.label_181
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_181:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_188
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_188:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_110
.label_473:
	mov	bl, 0x62
	jmp	.label_193
.label_474:
	mov	cl, 0x74
	jmp	.label_197
.label_475:
	mov	bl, 0x76
	jmp	.label_193
.label_476:
	mov	bl, 0x66
	jmp	.label_193
.label_477:
	mov	cl, 0x72
	jmp	.label_197
.label_480:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_203
	cmp	byte ptr [rsp + 7], 0
	jne	.label_104
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
	jae	.label_208
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_208:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_216
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_216:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_218
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_218:
	add	r14, 3
	xor	r9d, r9d
.label_203:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_110
.label_481:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_116
	cmp	r12d, 2
	jne	.label_122
	cmp	byte ptr [rsp + 7], 0
	je	.label_122
	jmp	.label_104
.label_482:
	cmp	r12d, 2
	jne	.label_129
	cmp	byte ptr [rsp + 7], 0
	jne	.label_104
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_194
.label_211:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_199
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
.label_135:
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
	jmp	.label_110
.label_143:
	test	rsi, rsi
	jne	.label_170
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_170
.label_148:
	mov	dl, 1
.label_478:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_104
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_110:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_177
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_178
	jmp	.label_182
	.section	.text
	.align	16
	#Procedure 0x402d44
	.globl sub_402d44
	.type sub_402d44, @function
sub_402d44:

	nop	word ptr cs:[rax + rax]
.label_177:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_182
.label_178:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_185
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_194
	jmp	.label_202
	.section	.text
	.align	16
	#Procedure 0x402d8d
	.globl sub_402d8d
	.type sub_402d8d, @function
sub_402d8d:

	nop	dword ptr [rax]
.label_182:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_202
	jmp	.label_194
.label_185:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_202
.label_151:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_141
	xor	r15d, r15d
	jmp	.label_122
.label_129:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_197
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_194
.label_197:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_104
.label_193:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_110
	nop	word ptr cs:[rax + rax]
.label_202:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_104
	cmp	r12d, 2
	jne	.label_108
	mov	eax, r9d
	and	al, 1
	jne	.label_108
	cmp	r14, r11
	jae	.label_113
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_113:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_165
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_165:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_127
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_127:
	add	r14, 3
	mov	r9b, 1
.label_108:
	cmp	r14, r11
	jae	.label_130
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_130:
	inc	r14
	jmp	.label_133
.label_199:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_136
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_136:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_201:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_158
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_161
	cmp	rbp, -2
	je	.label_166
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_168
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_209:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_174
	bt	rsi, rdx
	jb	.label_132
.label_174:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_209
.label_168:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_187
	xor	r13d, r13d
.label_187:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_201
	jmp	.label_135
.label_172:
	xor	r13d, r13d
	jmp	.label_110
.label_170:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_110
.label_116:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_122
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_122
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_122
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_162
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_179
	cmp	byte ptr [rsp + 7], 0
	jne	.label_104
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_205
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_205:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_142
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_142:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_120
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_120:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_126
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_126:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_110
.label_122:
	xor	eax, eax
.label_145:
	xor	r13d, r13d
	jmp	.label_110
.label_154:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_134
	.section	.text
	.align	16
	#Procedure 0x403073
	.globl sub_403073
	.type sub_403073, @function
sub_403073:

	nop	word ptr cs:[rax + rax]
.label_206:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_134:
	test	r8b, r8b
	je	.label_146
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_147
	cmp	r14, r11
	jae	.label_149
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_149:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_147
	.section	.text
	.align	16
	#Procedure 0x4030bc
	.globl sub_4030bc
	.type sub_4030bc, @function
sub_4030bc:

	nop	dword ptr [rax]
.label_146:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_132
	cmp	r12d, 2
	jne	.label_157
	mov	eax, r9d
	and	al, 1
	jne	.label_157
	cmp	r14, r11
	jae	.label_160
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_160:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_163
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_163:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_169
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_169:
	add	r14, 3
	mov	r9b, 1
.label_157:
	cmp	r14, r11
	jae	.label_138
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_138:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_192
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_192:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_191
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_191:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_147:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_194
	test	r9b, 1
	je	.label_152
	mov	ebx, eax
	and	bl, 1
	jne	.label_152
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_200
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_200:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_140
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_140:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_152:
	cmp	r14, r11
	jae	.label_206
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_206
	.section	.text
	.align	16
	#Procedure 0x4031c3
	.globl sub_4031c3
	.type sub_4031c3, @function
sub_4031c3:

	nop	word ptr cs:[rax + rax]
.label_194:
	test	r9b, 1
	je	.label_212
	and	al, 1
	jne	.label_212
	cmp	r14, r11
	jae	.label_213
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_213:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_196
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_196:
	add	r14, 2
	xor	r9d, r9d
.label_212:
	mov	ebx, r15d
.label_133:
	cmp	r14, r11
	jae	.label_105
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_105:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_141
.label_161:
	xor	r13d, r13d
.label_158:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_135
.label_166:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_128
	mov	rsi, qword ptr [rsp + 0x50]
.label_118:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_214
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_118
	xor	r13d, r13d
	jmp	.label_135
.label_128:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_135
.label_214:
	xor	r13d, r13d
	jmp	.label_135
.label_162:
	xor	r13d, r13d
	jmp	.label_110
.label_179:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_110
	.section	.text
	.align	16
	#Procedure 0x403298
	.globl sub_403298
	.type sub_403298, @function
sub_403298:

	nop	dword ptr [rax + rax]
.label_189:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_150
	or	dl, al
	je	.label_132
.label_150:
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
	jne	.label_167
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_153
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_171
.label_153:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_173
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_175
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_175
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_186:
	cmp	r14, r11
	jae	.label_183
	mov	byte ptr [rcx + r14], al
.label_183:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_186
	jmp	.label_175
.label_104:
	mov	qword ptr [rsp + 0x20], rbp
.label_132:
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
.label_109:
	mov	r14, rax
.label_117:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_167:
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
	jmp	.label_109
.label_173:
	mov	rcx, qword ptr [rsp + 8]
.label_175:
	cmp	r14, r11
	jae	.label_117
	mov	byte ptr [rcx + r14], 0
	jmp	.label_117
.label_217:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40342c
	.globl sub_40342c
	.type sub_40342c, @function
sub_40342c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403430

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_219
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_219
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_219:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x403456
	.globl sub_403456
	.type sub_403456, @function
sub_403456:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403460

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40346e
	.globl sub_40346e
	.type sub_40346e, @function
sub_40346e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403470

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
	js	.label_223
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_226
	cmp	r12d, 0x7fffffff
	je	.label_221
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
	jne	.label_224
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_224:
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
.label_226:
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
	jbe	.label_222
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_225
.label_222:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_220
	mov	rdi, r14
	call	free
.label_220:
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
.label_225:
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
.label_223:
	call	abort
.label_221:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40362d
	.globl sub_40362d
	.type sub_40362d, @function
sub_40362d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403630

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
	je	.label_227
	cmp	r15, -2
	jb	.label_227
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_227
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_227:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403686
	.globl sub_403686
	.type sub_403686, @function
sub_403686:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403690
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x403698
	.globl sub_403698
	.type sub_403698, @function
sub_403698:

	nop	dword ptr [rax + rax]
.label_228:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4036a3
	.globl sub_4036a3
	.type sub_4036a3, @function
sub_4036a3:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4036a5
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_228
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x4036c0

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
	#Procedure 0x4036f6
	.globl sub_4036f6
	.type sub_4036f6, @function
sub_4036f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403700
	.globl mode_create_from_ref
	.type mode_create_from_ref, @function
mode_create_from_ref:

	sub	rsp, 0x98
	lea	rsi, [rsp + 8]
	call	stat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_229
	mov	edi, dword ptr [rsp + 0x20]
	mov	esi, 0xfff
	call	make_node_op_equals
.label_229:
	add	rsp, 0x98
	ret	
	.section	.text
	.align	16
	#Procedure 0x40372f
	.globl sub_40372f
	.type sub_40372f, @function
sub_40372f:

	nop	
.label_232:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_230
.label_231:
	mov	eax, 1
	test	bpl, bpl
	je	.label_230
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
.label_230:
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
	#Procedure 0x403778
	.globl sub_403778
	.type sub_403778, @function
sub_403778:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40377b

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
	je	.label_232
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_231
	jmp	.label_230
	.section	.text
	.align	16
	#Procedure 0x4037b0

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
	#Procedure 0x4037e7
	.globl sub_4037e7
	.type sub_4037e7, @function
sub_4037e7:

	nop	word ptr [rax + rax]
.label_233:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4037f5
	.globl sub_4037f5
	.type sub_4037f5, @function
sub_4037f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403803

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
	je	.label_233
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
	.align	16
	#Procedure 0x403850

	.globl make_node_op_equals
	.type make_node_op_equals, @function
make_node_op_equals:
	push	rbp
	push	rbx
	push	rax
	mov	ebx, esi
	mov	ebp, edi
	mov	edi, 0x20
	call	xmalloc
	mov	byte ptr [rax], 0x3d
	mov	byte ptr [rax + 1], 1
	mov	dword ptr [rax + 4], 0xfff
	mov	dword ptr [rax + 8], ebp
	mov	dword ptr [rax + 0xc], ebx
	mov	byte ptr [rax + 0x11], 0
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_234:
	ret	
.label_236:
	xor	eax, eax
	jmp	.label_234
	.section	.text
	.align	16
	#Procedure 0x403885
	.globl sub_403885
	.type sub_403885, @function
sub_403885:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40388f
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_236
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_235]]
	.section	.text
	.align	16
	#Procedure 0x4038a0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4038aa
	.globl sub_4038aa
	.type sub_4038aa, @function
sub_4038aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038b0
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
	#Procedure 0x4038c0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x4038c9
	.globl sub_4038c9
	.type sub_4038c9, @function
sub_4038c9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4038d0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x4038da
	.globl sub_4038da
	.type sub_4038da, @function
sub_4038da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038e0

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, r8
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r14d, 0x25
	jae	.label_250
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_245:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_245
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_237
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoumax
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_251
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_253
	cmp	eax, 0x22
	jne	.label_237
	mov	r12d, 1
.label_253:
	test	rbp, rbp
	jne	.label_241
	jmp	.label_238
.label_251:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_237
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_237
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_237
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_241:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_238
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_252
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_239
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_239
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_246
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_243
	cmp	ecx, 0x44
	je	.label_243
	cmp	ecx, 0x69
	jne	.label_246
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_246
.label_243:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_246
.label_239:
	mov	rsi, r14
.label_246:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_252
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_254]]
.label_434:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_244
.label_252:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_240
.label_435:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_244
.label_436:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_244
.label_438:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_244
.label_432:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale
	jmp	.label_242
.label_433:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_244
.label_437:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_244
.label_439:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_244
.label_440:
	lea	rdi, [rsp]
	mov	edx, 7
.label_244:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_242:
	mov	rsi, r14
.label_442:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_238:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_240:
	mov	r15d, r12d
.label_237:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_441:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale
	jmp	.label_242
.label_443:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale
	jmp	.label_242
.label_250:
	mov	edi, OFFSET FLAT:label_247
	mov	esi, OFFSET FLAT:label_248
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_249
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x403b82
	.globl sub_403b82
	.type sub_403b82, @function
sub_403b82:

	nop	word ptr cs:[rax + rax]
.label_255:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403b96
	.globl sub_403b96
	.type sub_403b96, @function
sub_403b96:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b9b

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_255
	test	rdx, rdx
	je	.label_255
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403bc0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_256
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_257
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_259
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_44
	mov	ecx, OFFSET FLAT:label_260
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_258
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x403c34
	.globl sub_403c34
	.type sub_403c34, @function
sub_403c34:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c40

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_34
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_261
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403c65
	.globl sub_403c65
	.type sub_403c65, @function
sub_403c65:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c70
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
	#Procedure 0x403ce2
	.globl sub_403ce2
	.type sub_403ce2, @function
sub_403ce2:

	nop	word ptr cs:[rax + rax]
.label_263:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_262
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x403cfb
	.globl sub_403cfb
	.type sub_403cfb, @function
sub_403cfb:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d05
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_263
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_263
.label_262:
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d20
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
	#Procedure 0x403d33
	.globl sub_403d33
	.type sub_403d33, @function
sub_403d33:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d40

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x403d4a
	.globl sub_403d4a
	.type sub_403d4a, @function
sub_403d4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d50
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	16
	#Procedure 0x403d5d
	.globl sub_403d5d
	.type sub_403d5d, @function
sub_403d5d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403d60
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
	#Procedure 0x403d70

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	16
	#Procedure 0x403d75
	.globl sub_403d75
	.type sub_403d75, @function
sub_403d75:

	nop	word ptr cs:[rax + rax]
.label_265:
	mov	ecx, 1
.label_264:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x403d90
	.globl sub_403d90
	.type sub_403d90, @function
sub_403d90:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d95

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_265
	test	rsi, rsi
	mov	ecx, 1
	je	.label_264
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_264
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403dd0

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
	je	.label_268
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_266
	jmp	.label_267
.label_268:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_267
.label_266:
	mov	eax, 1
	test	bpl, bpl
	je	.label_267
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
.label_267:
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
	#Procedure 0x403e58
	.globl sub_403e58
	.type sub_403e58, @function
sub_403e58:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e60

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
.label_270:
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
	#Procedure 0x403ed9
	.globl sub_403ed9
	.type sub_403ed9, @function
sub_403ed9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403ee0

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
	je	.label_274
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_273
	jmp	.label_272
.label_274:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_272
.label_273:
	mov	eax, 1
	test	bpl, bpl
	je	.label_272
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
.label_272:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f43
	.globl sub_403f43
	.type sub_403f43, @function
sub_403f43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f50

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
	je	.label_277
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_275
	jmp	.label_276
.label_277:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_276
.label_275:
	mov	eax, 1
	test	bpl, bpl
	je	.label_276
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_276:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403faf
	.globl sub_403faf
	.type sub_403faf, @function
sub_403faf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403fb0

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
	je	.label_278
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_280
	jmp	.label_279
.label_278:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_279
.label_280:
	mov	eax, 1
	test	bpl, bpl
	je	.label_279
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_279:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ff9
	.globl sub_403ff9
	.type sub_403ff9, @function
sub_403ff9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404000

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
	je	.label_283
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_282
	jmp	.label_281
.label_283:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_281
.label_282:
	mov	eax, 1
	test	bpl, bpl
	je	.label_281
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_281:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404045
	.globl sub_404045
	.type sub_404045, @function
sub_404045:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404050

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_286
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_285
	jmp	.label_284
.label_286:
	mov	eax, 1
	test	cl, cl
	je	.label_284
.label_285:
	xor	eax, eax
.label_284:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40407f
	.globl sub_40407f
	.type sub_40407f, @function
sub_40407f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404080

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_289
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_287
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_287
.label_289:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_290
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_290:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_287:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_288
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_292
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_64
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_292:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_291
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
	#Procedure 0x404140

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
	#Procedure 0x404157
	.globl sub_404157
	.type sub_404157, @function
sub_404157:

	nop	word ptr [rax + rax]
.label_293:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x40416e
	.globl sub_40416e
	.type sub_40416e, @function
sub_40416e:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404177

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_293
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_295
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_293
.label_295:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_293
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_294
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_294:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_298:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_296
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_296:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404214
	.globl sub_404214
	.type sub_404214, @function
sub_404214:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404216

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
	jne	.label_297
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_297
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_298
.label_297:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x404250

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_299
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_64
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
.label_300:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_302:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_303
	inc	r9
	cmp	r9, 0xa
	jb	.label_301
.label_303:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x4042af
	.globl sub_4042af
	.type sub_4042af, @function
sub_4042af:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4042b0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_301:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_300
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_302
	.section	.text
	.align	16
	#Procedure 0x4042d9
	.globl sub_4042d9
	.type sub_4042d9, @function
sub_4042d9:

	nop	dword ptr [rax]
.label_304:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4042e5
	.globl sub_4042e5
	.type sub_4042e5, @function
sub_4042e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042ef
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_304
	call	rpl_calloc
	test	rax, rax
	je	.label_304
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404310
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40431a
	.globl sub_40431a
	.type sub_40431a, @function
sub_40431a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404320
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40432a
	.globl sub_40432a
	.type sub_40432a, @function
sub_40432a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404330
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_305
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_305:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404356
	.globl sub_404356
	.type sub_404356, @function
sub_404356:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404360

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_306
	test	rbx, rbx
	jne	.label_306
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_306:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_308
	test	rax, rax
	je	.label_307
.label_308:
	pop	rbx
	ret	
.label_307:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404390

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_314
	nop	
.label_313:
	mov	edi, OFFSET FLAT:label_43
	call	strcmp
	test	eax, eax
	je	.label_311
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_313
.label_311:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_43
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_316
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_44
	mov	ecx, OFFSET FLAT:label_260
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_309
	mov	esi, OFFSET FLAT:label_310
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_309
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_315
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_309:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_317
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_43
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_260
	mov	ecx, OFFSET FLAT:label_43
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_312
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_318
	mov	ecx, OFFSET FLAT:label_34
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
	#Procedure 0x4044aa
	.globl sub_4044aa
	.type sub_4044aa, @function
sub_4044aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044b0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_320
	cmp	byte ptr [rax], 0x43
	jne	.label_322
	cmp	byte ptr [rax + 1], 0
	je	.label_319
.label_322:
	mov	esi, OFFSET FLAT:label_321
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_320
.label_319:
	xor	ebx, ebx
.label_320:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4044e1
	.globl sub_4044e1
	.type sub_4044e1, @function
sub_4044e1:

	nop	word ptr cs:[rax + rax]
.label_323:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4044f3
	.globl sub_4044f3
	.type sub_4044f3, @function
sub_4044f3:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4044f5
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_323
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x404510

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
	je	.label_334
	mov	edx, OFFSET FLAT:label_339
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_326
.label_334:
	mov	edx, OFFSET FLAT:label_328
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_326:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_333
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
	mov	esi, OFFSET FLAT:label_329
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_335
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_336]]
.label_461:
	add	rsp, 8
	jmp	.label_327
.label_335:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_342
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
	jmp	.label_327
.label_462:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_330
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
.label_463:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_324
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
.label_464:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_340
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
.label_465:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_337
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
	jmp	.label_327
.label_466:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_332
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
	jmp	.label_327
.label_467:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_338
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
	jmp	.label_327
.label_468:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_341
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
	jmp	.label_327
.label_470:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_325
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
	jmp	.label_327
.label_469:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_331
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
.label_327:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404868
	.globl sub_404868
	.type sub_404868, @function
sub_404868:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404870

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
	jne	.label_349
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
	je	.label_343
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_347
	mov	eax, OFFSET FLAT:label_348
	jmp	.label_346
.label_350:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_139
	mov	eax, OFFSET FLAT:label_124
.label_346:
	cmove	rax, rcx
.label_349:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4048ef
	.globl sub_4048ef
	.type sub_4048ef, @function
sub_4048ef:

	nop	dword ptr [rax]
.label_343:
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
	je	.label_350
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_344
	mov	eax, OFFSET FLAT:label_345
	jmp	.label_346
	.section	.text
	.align	16
	#Procedure 0x404930
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40493a
	.globl sub_40493a
	.type sub_40493a, @function
sub_40493a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404940
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
	#Procedure 0x40494d
	.globl sub_40494d
	.type sub_40494d, @function
sub_40494d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404950

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
	je	.label_352
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_351
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_351
.label_352:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_351
	test	cl, cl
	jne	.label_351
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_351:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4049b6
	.globl sub_4049b6
	.type sub_4049b6, @function
sub_4049b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049c0

	.globl mode_compile
	.type mode_compile, @function
mode_compile:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbp, rdi
	mov	al, byte ptr [rbp]
	and	al, 0xf8
	cmp	al, 0x30
	jne	.label_364
	xor	r14d, r14d
	xor	edi, edi
	mov	rbx, rbp
	nop	
.label_377:
	movsx	eax, byte ptr [rbx]
	lea	edi, [rax + rdi*8 - 0x30]
	cmp	edi, 0xfff
	ja	.label_354
	movzx	eax, byte ptr [rbx + 1]
	inc	rbx
	mov	ecx, eax
	and	cl, 0xf8
	cmp	cl, 0x30
	je	.label_377
	xor	r14d, r14d
	test	al, al
	jne	.label_354
	call	octal_to_mode
	sub	rbx, rbp
	mov	ecx, eax
	and	ecx, 0xc00
	or	ecx, 0x3ff
	cmp	rbx, 5
	mov	esi, 0xfff
	cmovl	esi, ecx
	mov	edi, eax
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	make_node_op_equals
.label_364:
	mov	edi, 1
	mov	rax, rbp
	jmp	.label_365
.label_363:
	add	rdi, rdx
	inc	rax
.label_365:
	movzx	ecx, byte ptr [rax]
	cmp	cl, 0x2c
	jle	.label_369
	cmp	cl, 0x2d
	je	.label_371
	cmp	cl, 0x3d
	mov	edx, 1
	je	.label_363
	jmp	.label_375
	.section	.text
	.align	16
	#Procedure 0x404a6f
	.globl sub_404a6f
	.type sub_404a6f, @function
sub_404a6f:

	nop	
.label_369:
	cmp	cl, 0x2b
	mov	edx, 1
	je	.label_363
	test	cl, cl
	je	.label_379
.label_375:
	xor	edx, edx
	jmp	.label_363
	.section	.text
	.align	16
	#Procedure 0x404a82
	.globl sub_404a82
	.type sub_404a82, @function
sub_404a82:

	nop	word ptr cs:[rax + rax]
.label_371:
	mov	edx, 1
	jmp	.label_363
.label_379:
	mov	esi, 0x10
	call	xnmalloc
	mov	r14, rax
	xor	r15d, r15d
	movabs	r12, 0x2000280000000000
	jmp	.label_359
	.section	.text
	.align	16
	#Procedure 0x404ab3

	.globl sub_404ab3
	.type sub_404ab3, @function
sub_404ab3:
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_359:
	xor	ecx, ecx
	jmp	.label_353
	.section	.text
	.align	16
	#Procedure 0x404ac4
	.globl sub_404ac4
	.type sub_404ac4, @function
sub_404ac4:

	nop	word ptr cs:[rax + rax]
.label_427:
	or	ecx, 0x207
	inc	rbp
.label_353:
	movsx	eax, byte ptr [rbp]
	lea	edx, [rax - 0x61]
	cmp	edx, 0x14
	ja	.label_370
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_372]]
.label_425:
	or	ecx, 0xfff
	inc	rbp
	jmp	.label_353
	.section	.text
	.align	16
	#Procedure 0x404af7
	.globl sub_404af7
	.type sub_404af7, @function
sub_404af7:

	nop	word ptr [rax + rax]
.label_426:
	or	ecx, 0x438
	inc	rbp
	jmp	.label_353
	.section	.text
	.align	16
	#Procedure 0x404b0b
	.globl sub_404b0b
	.type sub_404b0b, @function
sub_404b0b:

	nop	dword ptr [rax + rax]
.label_428:
	or	ecx, 0x9c0
	inc	rbp
	jmp	.label_353
	.section	.text
	.align	16
	#Procedure 0x404b1b
	.globl sub_404b1b
	.type sub_404b1b, @function
sub_404b1b:

	nop	dword ptr [rax + rax]
.label_370:
	mov	edx, eax
	cmp	eax, 0x3d
	ja	.label_355
	bt	r12, rdx
	jae	.label_355
.label_391:
	lea	rax, [rbp + 1]
	mov	r13b, byte ptr [rbp]
	movsx	edx, byte ptr [rbp + 1]
	add	edx, -0x30
	cmp	edx, 0x45
	ja	.label_362
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_367]]
.label_495:
	xor	edi, edi
	mov	rbp, rax
	nop	word ptr cs:[rax + rax]
.label_378:
	movsx	eax, byte ptr [rbp]
	lea	edi, [rax + rdi*8 - 0x30]
	cmp	edi, 0xfff
	ja	.label_355
	movzx	eax, byte ptr [rbp + 1]
	inc	rbp
	mov	edx, eax
	and	dl, 0xf8
	cmp	dl, 0x30
	je	.label_378
	test	ecx, ecx
	jne	.label_355
	cmp	al, 0x2c
	je	.label_357
	test	al, al
	jne	.label_355
.label_357:
	call	octal_to_mode
	mov	bl, 1
	mov	ecx, 0xfff
	mov	esi, 0xfff
	jmp	.label_358
.label_362:
	mov	bl, 1
	xor	esi, esi
	mov	rbp, rax
	xor	eax, eax
	jmp	.label_360
	.section	.text
	.align	16
	#Procedure 0x404bba
	.globl sub_404bba
	.type sub_404bba, @function
sub_404bba:

	nop	word ptr [rax + rax]
.label_373:
	inc	rbp
	mov	ebx, edx
.label_360:
	movsx	edi, byte ptr [rbp]
	add	edi, -0x58
	cmp	edi, 0x20
	ja	.label_358
	mov	dl, 2
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_368]]
.label_415:
	or	eax, 0x124
	jmp	.label_366
.label_416:
	or	eax, 0xc00
	jmp	.label_366
.label_417:
	or	eax, 0x200
	jmp	.label_366
.label_418:
	or	eax, 0x92
	jmp	.label_366
.label_419:
	or	eax, 0x49
	nop	dword ptr [rax]
.label_366:
	mov	edx, ebx
	jmp	.label_373
.label_496:
	add	rbp, 2
	mov	bl, 3
	xor	esi, esi
	mov	eax, 0x38
	jmp	.label_358
.label_497:
	add	rbp, 2
	mov	bl, 3
	xor	esi, esi
	mov	eax, 7
	jmp	.label_358
.label_498:
	add	rbp, 2
	mov	bl, 3
	xor	esi, esi
	mov	eax, 0x1c0
	nop	
.label_358:
	mov	rdx, r15
	shl	rdx, 4
	mov	byte ptr [r14 + rdx], r13b
	mov	byte ptr [r14 + rdx + 1], bl
	mov	dword ptr [r14 + rdx + 4], ecx
	mov	dword ptr [r14 + rdx + 8], eax
	test	esi, esi
	jne	.label_361
	cmp	ecx, 1
	sbb	esi, esi
	or	esi, ecx
	and	esi, eax
.label_361:
	inc	r15
	mov	dword ptr [r14 + rdx + 0xc], esi
	mov	al, byte ptr [rbp]
	add	al, 0xd5
	movzx	eax, al
	cmp	al, 0x12
	ja	.label_356
	jmp	qword ptr [word ptr [+ (rax * 8) + label_374]]
.label_356:
	cmp	byte ptr [rbp], 0
	je	.label_376
.label_355:
	mov	rdi, r14
	call	free
	xor	r14d, r14d
.label_354:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_376:
	shl	r15, 4
	mov	byte ptr [r14 + r15 + 1], 0
	jmp	.label_354
	.section	.text
	.align	16
	#Procedure 0x404ca1
	.globl sub_404ca1
	.type sub_404ca1, @function
sub_404ca1:

	nop	word ptr cs:[rax + rax]
.label_384:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_380
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404cd0
	.globl sub_404cd0
	.type sub_404cd0, @function
sub_404cd0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404cdf

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_384
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_382
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_385
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_382
	mov	esi, OFFSET FLAT:label_383
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_381
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_381:
	mov	rbx, r14
.label_382:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x404dc5
	.globl sub_404dc5
	.type sub_404dc5, @function
sub_404dc5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404dd2
	.globl sub_404dd2
	.type sub_404dd2, @function
sub_404dd2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404df6
	.globl sub_404df6
	.type sub_404df6, @function
sub_404df6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e09
	.globl sub_404e09
	.type sub_404e09, @function
sub_404e09:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404e10

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	16
	#Procedure 0x404e20

	.globl mknod
	.type mknod, @function
mknod:
	sub	rsp, 0x18
	lea	rcx, [rsp + 8]
	mov	qword ptr [rsp + 8], rdx
	mov	edx, esi
	mov	rsi, rdi
	xor	edi, edi
	call	__xmknod
	add	rsp, 0x18
	ret	
