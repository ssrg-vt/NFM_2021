	.section	.text
	.align	32
	#Procedure 0x401309
	.globl sub_401309
	.type sub_401309, @function
sub_401309:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40130a
	.globl sub_40130a
	.type sub_40130a, @function
sub_40130a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401342
	.globl sub_401342
	.type sub_401342, @function
sub_401342:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40138a
	.globl sub_40138a
	.type sub_40138a, @function
sub_40138a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4013ac
	.globl sub_4013ac
	.type sub_4013ac, @function
sub_4013ac:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4013bd
	.globl sub_4013bd
	.type sub_4013bd, @function
sub_4013bd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4013d6
	.globl sub_4013d6
	.type sub_4013d6, @function
sub_4013d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4013e0
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
	#Procedure 0x401406
	.globl sub_401406
	.type sub_401406, @function
sub_401406:

	nop	word ptr cs:[rax + rax]
.label_12:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_10
.label_11:
	mov	eax, 1
	test	bpl, bpl
	je	.label_10
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
.label_10:
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
	#Procedure 0x401458
	.globl sub_401458
	.type sub_401458, @function
sub_401458:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40145b

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
	je	.label_12
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_11
	jmp	.label_10
	.section	.text
	.align	32
	#Procedure 0x401490

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_14
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
.label_17:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_15
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_15:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4014f4
	.globl sub_4014f4
	.type sub_4014f4, @function
sub_4014f4:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4014f6

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
	jne	.label_16
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_16
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_17
.label_16:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	32
	#Procedure 0x401530
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
	#Procedure 0x401549
	.globl sub_401549
	.type sub_401549, @function
sub_401549:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401550

	.globl decode_switches
	.type decode_switches, @function
decode_switches:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r14, rsi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + uname_mode]],  2
	jne	.label_24
	mov	edx, OFFSET FLAT:label_34
	mov	ecx, OFFSET FLAT:arch_long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r14
	call	getopt_long
	mov	ebx, 0x10
	cmp	eax, -1
	je	.label_25
	cmp	eax, 0xffffff7d
	je	.label_23
	cmp	eax, 0xffffff7e
	jne	.label_21
	xor	edi, edi
	call	usage
.label_24:
	xor	ecx, ecx
	jmp	.label_20
.label_328:
	or	ebx, 0x40
	mov	ecx, ebx
	nop	word ptr cs:[rax + rax]
.label_20:
	mov	ebx, ecx
	mov	edx, OFFSET FLAT:label_18
	mov	ecx, OFFSET FLAT:uname_long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x60
	jle	.label_30
	add	eax, -0x61
	cmp	eax, 0x15
	ja	.label_22
	mov	ecx, 0xffffffff
	jmp	qword ptr [word ptr [+ (rax * 8) + label_37]]
.label_329:
	or	ebx, 0x10
	mov	ecx, ebx
	jmp	.label_20
.label_330:
	or	ebx, 2
	mov	ecx, ebx
	jmp	.label_20
.label_333:
	or	ebx, 4
	mov	ecx, ebx
	jmp	.label_20
.label_334:
	or	ebx, 1
	mov	ecx, ebx
	jmp	.label_20
.label_335:
	or	ebx, 8
	mov	ecx, ebx
	jmp	.label_20
.label_331:
	or	ebx, 0x80
	mov	ecx, ebx
	jmp	.label_20
.label_332:
	or	ebx, 0x20
	mov	ecx, ebx
	jmp	.label_20
.label_30:
	cmp	eax, -1
	jne	.label_35
.label_25:
	cmp	dword ptr [dword ptr [rip + optind]],  ebp
	jne	.label_36
	mov	eax, ebx
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_35:
	cmp	eax, 0xffffff7d
	je	.label_19
	cmp	eax, 0xffffff7e
	jne	.label_22
	xor	edi, edi
	call	usage
.label_19:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	cmp	dword ptr [dword ptr [rip + uname_mode]],  1
	mov	eax, OFFSET FLAT:label_26
	mov	esi, OFFSET FLAT:label_27
	cmove	rsi, rax
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	edx, OFFSET FLAT:label_28
	mov	r8d, OFFSET FLAT:label_29
	xor	r9d, r9d
.label_32:
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_22:
	mov	edi, 1
	call	usage
.label_36:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r14 + rax*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_23:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	cmp	dword ptr [dword ptr [rip + uname_mode]],  1
	mov	eax, OFFSET FLAT:label_26
	mov	esi, OFFSET FLAT:label_27
	cmove	rsi, rax
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	edx, OFFSET FLAT:label_28
	mov	r8d, OFFSET FLAT:label_29
	mov	r9d, OFFSET FLAT:label_31
	jmp	.label_32
.label_21:
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x40172a
	.globl sub_40172a
	.type sub_40172a, @function
sub_40172a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401730

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_41
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_40
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_38
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_40
	mov	esi, OFFSET FLAT:label_43
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_39
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_39:
	mov	rbx, r14
.label_40:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_41:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_42
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4017d1
	.globl sub_4017d1
	.type sub_4017d1, @function
sub_4017d1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4017e0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_44
	test	rsi, rsi
	mov	ecx, 1
	je	.label_45
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_45
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_44:
	mov	ecx, 1
.label_45:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x40182b
	.globl sub_40182b
	.type sub_40182b, @function
sub_40182b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401830
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40183a
	.globl sub_40183a
	.type sub_40183a, @function
sub_40183a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401840

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
	#Procedure 0x401879
	.globl sub_401879
	.type sub_401879, @function
sub_401879:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401880
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
	#Procedure 0x401891
	.globl sub_401891
	.type sub_401891, @function
sub_401891:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4018a0
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
	#Procedure 0x4018b4
	.globl sub_4018b4
	.type sub_4018b4, @function
sub_4018b4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4018c0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	32
	#Procedure 0x4018c9
	.globl sub_4018c9
	.type sub_4018c9, @function
sub_4018c9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4018d0

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
	mov	rax,  qword ptr [word ptr [rip + label_46]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_47]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_48]]
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
	#Procedure 0x401938
	.globl sub_401938
	.type sub_401938, @function
sub_401938:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401940
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_49
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_49:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401966
	.globl sub_401966
	.type sub_401966, @function
sub_401966:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401970

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_50
	test	rbx, rbx
	jne	.label_50
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_50:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_52
	test	rax, rax
	je	.label_51
.label_52:
	pop	rbx
	ret	
.label_51:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4019a0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4019aa
	.globl sub_4019aa
	.type sub_4019aa, @function
sub_4019aa:

	nop	word ptr [rax + rax]
.label_53:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	32
	#Procedure 0x4019bc
	.globl sub_4019bc
	.type sub_4019bc, @function
sub_4019bc:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019c9

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_53
	ret	
.label_54:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_56:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_57
	inc	r9
	cmp	r9, 0xa
	jb	.label_55
.label_57:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x4019ff
	.globl sub_4019ff
	.type sub_4019ff, @function
sub_4019ff:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401a00

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_55:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_54
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_56
	.section	.text
	.align	32
	#Procedure 0x401a29
	.globl sub_401a29
	.type sub_401a29, @function
sub_401a29:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401a30

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	32
	#Procedure 0x401a35
	.globl sub_401a35
	.type sub_401a35, @function
sub_401a35:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a40

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
	je	.label_58
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_59
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_59
.label_58:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_59
	test	cl, cl
	jne	.label_59
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_59:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401aa6
	.globl sub_401aa6
	.type sub_401aa6, @function
sub_401aa6:

	nop	word ptr cs:[rax + rax]
.label_61:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401ab5
	.globl sub_401ab5
	.type sub_401ab5, @function
sub_401ab5:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401abc

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_64
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_62
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_60
.label_64:
	test	rcx, rcx
	jne	.label_63
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_63:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_61
.label_60:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_62:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401b30

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
	mov	eax, OFFSET FLAT:label_65
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401b55
	.globl sub_401b55
	.type sub_401b55, @function
sub_401b55:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b60
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
	#Procedure 0x401b76
	.globl sub_401b76
	.type sub_401b76, @function
sub_401b76:

	nop	word ptr cs:[rax + rax]
.label_69:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_66
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_67
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_14
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x401bc5

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_71
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_69
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_69
.label_71:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_70
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_67:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_68
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_70:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x401c40

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
	#Procedure 0x401c76
	.globl sub_401c76
	.type sub_401c76, @function
sub_401c76:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c80
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_72
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_73
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_75
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_28
	mov	ecx, OFFSET FLAT:label_76
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_74
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x401cf4
	.globl sub_401cf4
	.type sub_401cf4, @function
sub_401cf4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d00
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d08
	.globl sub_401d08
	.type sub_401d08, @function
sub_401d08:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d10

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_78
	cmp	byte ptr [rax], 0x43
	jne	.label_80
	cmp	byte ptr [rax + 1], 0
	je	.label_77
.label_80:
	mov	esi, OFFSET FLAT:label_79
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_78
.label_77:
	xor	ebx, ebx
.label_78:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d41
	.globl sub_401d41
	.type sub_401d41, @function
sub_401d41:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d50
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_81:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_81
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x401d71
	.globl sub_401d71
	.type sub_401d71, @function
sub_401d71:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d80

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x401d8a
	.globl sub_401d8a
	.type sub_401d8a, @function
sub_401d8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d90
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
	#Procedure 0x401da0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x401da9
	.globl sub_401da9
	.type sub_401da9, @function
sub_401da9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401db0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
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
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_82
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_82:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x401dde
	.globl sub_401dde
	.type sub_401dde, @function
sub_401dde:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401de0
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x401dea
	.globl sub_401dea
	.type sub_401dea, @function
sub_401dea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401df0
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
	#Procedure 0x401dfd
	.globl sub_401dfd
	.type sub_401dfd, @function
sub_401dfd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401e00

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x401e0a
	.globl sub_401e0a
	.type sub_401e0a, @function
sub_401e0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e10
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	32
	#Procedure 0x401e1d
	.globl sub_401e1d
	.type sub_401e1d, @function
sub_401e1d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401e20
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
	#Procedure 0x401e30
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e3a
	.globl sub_401e3a
	.type sub_401e3a, @function
sub_401e3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e40

	.globl main
	.type main, @function
main:
	push	rbp
	push	rbx
	sub	rsp, 0x188
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_34
	call	setlocale
	mov	edi, OFFSET FLAT:label_90
	mov	esi, OFFSET FLAT:label_91
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_90
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	edi, ebp
	mov	rsi, rbx
	call	decode_switches
	test	eax, eax
	mov	ebx, 1
	cmovne	ebx, eax
	test	bl, 0x1f
	je	.label_86
	lea	rdi, [rsp]
	call	uname
	cmp	eax, -1
	je	.label_92
	test	bl, 1
	je	.label_94
	lea	rdi, [rsp]
	call	print_element
.label_94:
	test	bl, 2
	je	.label_87
	lea	rdi, [rsp + 0x41]
	call	print_element
.label_87:
	test	bl, 4
	je	.label_85
	lea	rdi, [rsp + 0x82]
	call	print_element
.label_85:
	test	bl, 8
	je	.label_89
	lea	rdi, [rsp + 0xc3]
	call	print_element
.label_89:
	test	bl, 0x10
	je	.label_86
	lea	rdi, [rsp + 0x104]
	call	print_element
.label_86:
	cmp	ebx, -1
	je	.label_83
	mov	eax, ebx
	and	eax, 0x20
	je	.label_83
	mov	edi, OFFSET FLAT:main.unknown
	call	print_element
.label_83:
	cmp	ebx, -1
	je	.label_84
	mov	eax, ebx
	and	eax, 0x40
	je	.label_84
	mov	edi, OFFSET FLAT:main.unknown
	call	print_element
.label_84:
	test	bl, bl
	jns	.label_93
	mov	edi, OFFSET FLAT:label_95
	call	print_element
.label_93:
	mov	edi, 0xa
	call	putchar_unlocked
	xor	eax, eax
	add	rsp, 0x188
	pop	rbx
	pop	rbp
	ret	
.label_92:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_88
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f90
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_96
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_96:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401fb3
	.globl sub_401fb3
	.type sub_401fb3, @function
sub_401fb3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401fc0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_97
	test	rax, rax
	je	.label_98
.label_97:
	pop	rbx
	ret	
.label_98:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401fda
	.globl sub_401fda
	.type sub_401fda, @function
sub_401fda:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401fe0

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
	je	.label_111
	mov	edx, OFFSET FLAT:label_102
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_108
.label_111:
	mov	edx, OFFSET FLAT:label_109
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_108:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_113
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
	mov	esi, OFFSET FLAT:label_110
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_114
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_115]]
.label_347:
	add	rsp, 8
	jmp	.label_101
.label_114:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_105
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
	jmp	.label_101
.label_348:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_100
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
.label_349:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
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
.label_350:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_103
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
.label_351:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_117
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
	jmp	.label_101
.label_352:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_116
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
	jmp	.label_101
.label_353:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_99
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
	jmp	.label_101
.label_354:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_104
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
	jmp	.label_101
.label_356:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_107
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
	jmp	.label_101
.label_355:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_112
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
.label_101:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402338
	.globl sub_402338
	.type sub_402338, @function
sub_402338:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402340
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
	#Procedure 0x40234f
	.globl sub_40234f
	.type sub_40234f, @function
sub_40234f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402350
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
	#Procedure 0x402363
	.globl sub_402363
	.type sub_402363, @function
sub_402363:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402370

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_118
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_118:
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
	#Procedure 0x4023f3
	.globl sub_4023f3
	.type sub_4023f3, @function
sub_4023f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402400
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	32
	#Procedure 0x40240a
	.globl sub_40240a
	.type sub_40240a, @function
sub_40240a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402410

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_119
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_120
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_119
.label_120:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_119
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_121
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_121:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_119:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x402487
	.globl sub_402487
	.type sub_402487, @function
sub_402487:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402490
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x402498
	.globl sub_402498
	.type sub_402498, @function
sub_402498:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4024a0

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
	#Procedure 0x4024cd
	.globl sub_4024cd
	.type sub_4024cd, @function
sub_4024cd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4024d0
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
	#Procedure 0x4024e3
	.globl sub_4024e3
	.type sub_4024e3, @function
sub_4024e3:

	nop	word ptr cs:[rax + rax]
.label_122:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4024f3
	.globl sub_4024f3
	.type sub_4024f3, @function
sub_4024f3:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4024fb
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_122
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x402510
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40251a
	.globl sub_40251a
	.type sub_40251a, @function
sub_40251a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402520

	.globl print_element
	.type print_element, @function
print_element:
	push	rbx
	mov	rbx, rdi
	cmp	byte ptr [byte ptr [rip + print_element.printed]],  1
	jne	.label_123
	mov	edi, 0x20
	call	putchar_unlocked
.label_123:
	mov	byte ptr [byte ptr [rip + print_element.printed]],  1
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rbx
	pop	rbx
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x40254e
	.globl sub_40254e
	.type sub_40254e, @function
sub_40254e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402550

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
	je	.label_124
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
.label_124:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4025a2
	.globl sub_4025a2
	.type sub_4025a2, @function
sub_4025a2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4025b0
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
	#Procedure 0x4025bf
	.globl sub_4025bf
	.type sub_4025bf, @function
sub_4025bf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4025c0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_125
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_125
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_125:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x4025e6
	.globl sub_4025e6
	.type sub_4025e6, @function
sub_4025e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4025f0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_126
	test	rdx, rdx
	je	.label_126
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_126:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40261b
	.globl sub_40261b
	.type sub_40261b, @function
sub_40261b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402620
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
	#Procedure 0x40262d
	.globl sub_40262d
	.type sub_40262d, @function
sub_40262d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402630
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
	#Procedure 0x402663
	.globl sub_402663
	.type sub_402663, @function
sub_402663:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402670
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x40267a
	.globl sub_40267a
	.type sub_40267a, @function
sub_40267a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402680
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
	#Procedure 0x40268f
	.globl sub_40268f
	.type sub_40268f, @function
sub_40268f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402690

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
	je	.label_127
	cmp	r15, -2
	jb	.label_127
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_127
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_127:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4026e6
	.globl sub_4026e6
	.type sub_4026e6, @function
sub_4026e6:

	nop	word ptr cs:[rax + rax]
.label_130:
	xor	eax, eax
	jmp	.label_128
	.section	.text
	.align	32
	#Procedure 0x4026f4
	.globl sub_4026f4
	.type sub_4026f4, @function
sub_4026f4:

	nop	word ptr cs:[rax + rax]
.label_128:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4026ff
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_130
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_129]]
	.section	.text
	.align	32
	#Procedure 0x402710

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
.label_230:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_152
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_234]]
.label_398:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_238
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_188
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_399:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_135
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_135
	xor	r14d, r14d
.label_154:
	cmp	r14, r11
	jae	.label_149
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_149:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_154
.label_135:
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
	jmp	.label_168
.label_391:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_168
.label_394:
	mov	al, 1
.label_392:
	mov	r12b, 1
.label_395:
	test	r12b, 1
	mov	cl, 1
	je	.label_176
	mov	ecx, eax
.label_176:
	mov	al, cl
.label_393:
	test	r12b, 1
	jne	.label_179
	test	r11, r11
	je	.label_159
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_159:
	mov	r14d, 1
	jmp	.label_185
.label_179:
	xor	r14d, r14d
.label_185:
	mov	ecx, OFFSET FLAT:label_188
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_168
.label_396:
	test	r12b, 1
	jne	.label_194
	test	r11, r11
	je	.label_198
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_198:
	mov	r14d, 1
	jmp	.label_197
.label_397:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_200
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_168
.label_194:
	xor	r14d, r14d
.label_197:
	mov	eax, OFFSET FLAT:label_200
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_168:
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
	jmp	.label_150
	.section	.text
	.align	32
	#Procedure 0x4029ec
	.globl sub_4029ec
	.type sub_4029ec, @function
sub_4029ec:

	nop	dword ptr [rax]
.label_163:
	inc	rsi
.label_150:
	cmp	rbp, -1
	je	.label_242
	cmp	rsi, rbp
	jne	.label_172
	jmp	.label_158
	.section	.text
	.align	32
	#Procedure 0x402a03
	.globl sub_402a03
	.type sub_402a03, @function
sub_402a03:

	nop	word ptr cs:[rax + rax]
.label_242:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_158
.label_172:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_138
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_141
	cmp	rbp, -1
	jne	.label_141
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
.label_141:
	cmp	rbx, rbp
	jbe	.label_160
.label_138:
	xor	r8d, r8d
.label_157:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_162
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_167]]
.label_417:
	test	rsi, rsi
	jne	.label_156
	jmp	.label_171
	.section	.text
	.align	32
	#Procedure 0x402a9e
	.globl sub_402a9e
	.type sub_402a9e, @function
sub_402a9e:

	nop	
.label_160:
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
	jne	.label_183
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
	jmp	.label_187
.label_183:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_157
.label_421:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_201
	test	rsi, rsi
	jne	.label_202
	cmp	rbp, 1
	je	.label_171
	xor	r13d, r13d
	jmp	.label_131
.label_410:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_208
	cmp	byte ptr [rsp + 7], 0
	jne	.label_151
	cmp	r12d, 2
	jne	.label_210
	mov	eax, r9d
	and	al, 1
	jne	.label_210
	cmp	r14, r11
	jae	.label_215
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_215:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_216
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_216:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_222
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_222:
	add	r14, 3
	mov	r9b, 1
.label_210:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_229
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_229:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_174
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_174
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_174
	cmp	r14, r11
	jae	.label_239
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_239:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_220
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_220:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_131
.label_411:
	mov	bl, 0x62
	jmp	.label_133
.label_412:
	mov	cl, 0x74
	jmp	.label_137
.label_413:
	mov	bl, 0x76
	jmp	.label_133
.label_414:
	mov	bl, 0x66
	jmp	.label_133
.label_415:
	mov	cl, 0x72
	jmp	.label_137
.label_418:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_147
	cmp	byte ptr [rsp + 7], 0
	jne	.label_151
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
	jae	.label_155
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_155:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_170
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_170:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_173
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_173:
	add	r14, 3
	xor	r9d, r9d
.label_147:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_131
.label_419:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_182
	cmp	r12d, 2
	jne	.label_156
	cmp	byte ptr [rsp + 7], 0
	je	.label_156
	jmp	.label_151
.label_420:
	cmp	r12d, 2
	jne	.label_192
	cmp	byte ptr [rsp + 7], 0
	jne	.label_151
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_134
.label_162:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_144
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
.label_145:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_223
	test	r8b, r8b
	je	.label_223
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_131
.label_201:
	test	rsi, rsi
	jne	.label_231
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_231
.label_171:
	mov	dl, 1
.label_416:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_151
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_131:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_235
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_236
	jmp	.label_226
	.section	.text
	.align	32
	#Procedure 0x402de4
	.globl sub_402de4
	.type sub_402de4, @function
sub_402de4:

	nop	word ptr cs:[rax + rax]
.label_235:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_226
.label_236:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_243
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_134
	jmp	.label_146
	.section	.text
	.align	32
	#Procedure 0x402e2d
	.globl sub_402e2d
	.type sub_402e2d, @function
sub_402e2d:

	nop	dword ptr [rax]
.label_226:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_146
	jmp	.label_134
.label_243:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_146
.label_208:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_163
	xor	r15d, r15d
	jmp	.label_156
.label_192:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_137
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_134
.label_137:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_151
.label_133:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_131
	nop	word ptr cs:[rax + rax]
.label_146:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_151
	cmp	r12d, 2
	jne	.label_177
	mov	eax, r9d
	and	al, 1
	jne	.label_177
	cmp	r14, r11
	jae	.label_180
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_180:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_186
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_186:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_190
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_190:
	add	r14, 3
	mov	r9b, 1
.label_177:
	cmp	r14, r11
	jae	.label_193
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_193:
	inc	r14
	jmp	.label_195
.label_144:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_199
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_199:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_211:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_214
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_218
	cmp	rbp, -2
	je	.label_224
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_227
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_212:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_241
	bt	rsi, rdx
	jb	.label_187
.label_241:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_212
.label_227:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_245
	xor	r13d, r13d
.label_245:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_211
	jmp	.label_145
.label_174:
	xor	r13d, r13d
	jmp	.label_131
.label_231:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_131
.label_182:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_156
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_156
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_156
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_164
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_142
	cmp	byte ptr [rsp + 7], 0
	jne	.label_151
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_161
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_161:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_148
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_148:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_184
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_184:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_189
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_189:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_131
.label_156:
	xor	eax, eax
.label_202:
	xor	r13d, r13d
	jmp	.label_131
.label_223:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_196
	.section	.text
	.align	32
	#Procedure 0x403113
	.globl sub_403113
	.type sub_403113, @function
sub_403113:

	nop	word ptr cs:[rax + rax]
.label_153:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_196:
	test	r8b, r8b
	je	.label_203
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_204
	cmp	r14, r11
	jae	.label_206
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_206:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_204
	.section	.text
	.align	32
	#Procedure 0x40315c
	.globl sub_40315c
	.type sub_40315c, @function
sub_40315c:

	nop	dword ptr [rax]
.label_203:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_187
	cmp	r12d, 2
	jne	.label_213
	mov	eax, r9d
	and	al, 1
	jne	.label_213
	cmp	r14, r11
	jae	.label_217
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_217:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_221
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_221:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_219
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_219:
	add	r14, 3
	mov	r9b, 1
.label_213:
	cmp	r14, r11
	jae	.label_228
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_228:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_169
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_169:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_237
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_237:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_204:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_134
	test	r9b, 1
	je	.label_136
	mov	ebx, eax
	and	bl, 1
	jne	.label_136
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_139
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_139:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_140
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_140:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_136:
	cmp	r14, r11
	jae	.label_153
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_153
	.section	.text
	.align	32
	#Procedure 0x403263
	.globl sub_403263
	.type sub_403263, @function
sub_403263:

	nop	word ptr cs:[rax + rax]
.label_134:
	test	r9b, 1
	je	.label_165
	and	al, 1
	jne	.label_165
	cmp	r14, r11
	jae	.label_166
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_166:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_205
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_205:
	add	r14, 2
	xor	r9d, r9d
.label_165:
	mov	ebx, r15d
.label_195:
	cmp	r14, r11
	jae	.label_175
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_175:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_163
.label_218:
	xor	r13d, r13d
.label_214:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_145
.label_224:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_191
	mov	rsi, qword ptr [rsp + 0x50]
.label_240:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_209
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_240
	xor	r13d, r13d
	jmp	.label_145
.label_191:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_145
.label_209:
	xor	r13d, r13d
	jmp	.label_145
.label_164:
	xor	r13d, r13d
	jmp	.label_131
.label_142:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_131
	.section	.text
	.align	32
	#Procedure 0x403338
	.globl sub_403338
	.type sub_403338, @function
sub_403338:

	nop	dword ptr [rax + rax]
.label_158:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_207
	or	dl, al
	je	.label_187
.label_207:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_143
	or	dl, al
	jne	.label_143
	test	r10b, 1
	jne	.label_225
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_143
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_230
.label_143:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_232
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_132
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_132
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_244:
	cmp	r14, r11
	jae	.label_233
	mov	byte ptr [rcx + r14], al
.label_233:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_244
	jmp	.label_132
.label_151:
	mov	qword ptr [rsp + 0x20], rbp
.label_187:
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
.label_178:
	mov	r14, rax
.label_181:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_225:
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
	jmp	.label_178
.label_232:
	mov	rcx, qword ptr [rsp + 8]
.label_132:
	cmp	r14, r11
	jae	.label_181
	mov	byte ptr [rcx + r14], 0
	jmp	.label_181
.label_152:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4034cc
	.globl sub_4034cc
	.type sub_4034cc, @function
sub_4034cc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4034d0

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
	#Procedure 0x403507
	.globl sub_403507
	.type sub_403507, @function
sub_403507:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403510
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	32
	#Procedure 0x40351a
	.globl sub_40351a
	.type sub_40351a, @function
sub_40351a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403520

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
	je	.label_246
	mov	qword ptr [rax], rbx
.label_246:
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
	#Procedure 0x40360c
	.globl sub_40360c
	.type sub_40360c, @function
sub_40360c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403610

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_253
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_256
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	cmp	dword ptr [dword ptr [rip + uname_mode]],  1
	jne	.label_248
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_251
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_249
	jmp	.label_250
.label_253:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_255
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
.label_248:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_252
.label_250:
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_247
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_254
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	cmp	dword ptr [dword ptr [rip + uname_mode]],  1
	mov	eax, OFFSET FLAT:label_26
	mov	edi, OFFSET FLAT:label_27
	cmove	rdi, rax
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
	.section	.text
	.align	32
	#Procedure 0x40372e
	.globl sub_40372e
	.type sub_40372e, @function
sub_40372e:

	nop	
.label_258:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_257
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40373b
	.globl sub_40373b
	.type sub_40373b, @function
sub_40373b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403745
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_258
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_258
.label_257:
	ret	
.label_259:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x403763
	.globl sub_403763
	.type sub_403763, @function
sub_403763:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403765
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_259
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x403780

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
	#Procedure 0x403797
	.globl sub_403797
	.type sub_403797, @function
sub_403797:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4037a0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4037ae
	.globl sub_4037ae
	.type sub_4037ae, @function
sub_4037ae:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4037b0

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
	js	.label_263
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_266
	cmp	r12d, 0x7fffffff
	je	.label_261
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
	jne	.label_264
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_264:
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
.label_266:
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
	jbe	.label_262
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_265
.label_262:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_260
	mov	rdi, r14
	call	free
.label_260:
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
.label_265:
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
.label_263:
	call	abort
.label_261:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40396d
	.globl sub_40396d
	.type sub_40396d, @function
sub_40396d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403970
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_267
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_270:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_270
.label_267:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_271
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_268]], OFFSET FLAT:slot0
.label_271:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_269
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_269:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403a01
	.globl sub_403a01
	.type sub_403a01, @function
sub_403a01:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a10
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x403a1a
	.globl sub_403a1a
	.type sub_403a1a, @function
sub_403a1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a20

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
	.section	.text
	.align	32
	#Procedure 0x403aa8
	.globl sub_403aa8
	.type sub_403aa8, @function
sub_403aa8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ab0

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
	.section	.text
	.align	32
	#Procedure 0x403b29
	.globl sub_403b29
	.type sub_403b29, @function
sub_403b29:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403b30

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
	.section	.text
	.align	32
	#Procedure 0x403b93
	.globl sub_403b93
	.type sub_403b93, @function
sub_403b93:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ba0

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
	.section	.text
	.align	32
	#Procedure 0x403bff
	.globl sub_403bff
	.type sub_403bff, @function
sub_403bff:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403c00

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
	.section	.text
	.align	32
	#Procedure 0x403c49
	.globl sub_403c49
	.type sub_403c49, @function
sub_403c49:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403c50

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
	.section	.text
	.align	32
	#Procedure 0x403c95
	.globl sub_403c95
	.type sub_403c95, @function
sub_403c95:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ca0

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
	.section	.text
	.align	32
	#Procedure 0x403ccf
	.globl sub_403ccf
	.type sub_403ccf, @function
sub_403ccf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403cd0
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
	#Procedure 0x403d19
	.globl sub_403d19
	.type sub_403d19, @function
sub_403d19:

	nop	dword ptr [rax]
.label_294:
	cmp	edi, 0x7f
	je	.label_293
	xor	eax, eax
	jmp	.label_293
	.section	.text
	.align	32
	#Procedure 0x403d29
	.globl sub_403d29
	.type sub_403d29, @function
sub_403d29:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d38
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_294
.label_293:
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d40

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
	jne	.label_302
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
	je	.label_299
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_300
	mov	eax, OFFSET FLAT:label_301
	jmp	.label_297
.label_299:
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
	je	.label_298
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_295
	mov	eax, OFFSET FLAT:label_296
	jmp	.label_297
.label_298:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_200
	mov	eax, OFFSET FLAT:label_188
.label_297:
	cmove	rax, rcx
.label_302:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403dfd
	.globl sub_403dfd
	.type sub_403dfd, @function
sub_403dfd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403e00

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
	mov	rcx,  qword ptr [word ptr [rip + label_46]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_47]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_48]]
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
	#Procedure 0x403e6d
	.globl sub_403e6d
	.type sub_403e6d, @function
sub_403e6d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403e70

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x403e7d
	.globl sub_403e7d
	.type sub_403e7d, @function
sub_403e7d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403e80

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	32
	#Procedure 0x403e87
	.globl sub_403e87
	.type sub_403e87, @function
sub_403e87:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e90
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
	#Procedure 0x403eb7
	.globl sub_403eb7
	.type sub_403eb7, @function
sub_403eb7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ec0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_303
	nop	word ptr cs:[rax + rax]
.label_307:
	mov	rdi, r15
	call	strcmp
	test	eax, eax
	je	.label_306
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_307
.label_306:
	mov	r14, qword ptr [rbx + 8]
	test	r14, r14
	cmove	r14, r15
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_310
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_28
	mov	ecx, OFFSET FLAT:label_76
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_308
	mov	esi, OFFSET FLAT:label_311
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_308
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_309
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_308:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_312
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_76
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, r15
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_304
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	r14, r15
	mov	eax, OFFSET FLAT:label_305
	mov	ecx, OFFSET FLAT:label_34
	cmove	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rdx
	mov	rdx, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	__printf_chk
	.section	.text
	.align	32
	#Procedure 0x403fdc
	.globl sub_403fdc
	.type sub_403fdc, @function
sub_403fdc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403fe0
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
	#Procedure 0x404052
	.globl sub_404052
	.type sub_404052, @function
sub_404052:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040c5
	.globl sub_4040c5
	.type sub_4040c5, @function
sub_4040c5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040d2
	.globl sub_4040d2
	.type sub_4040d2, @function
sub_4040d2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040f6
	.globl sub_4040f6
	.type sub_4040f6, @function
sub_4040f6:

	nop	word ptr cs:[rax + rax]
