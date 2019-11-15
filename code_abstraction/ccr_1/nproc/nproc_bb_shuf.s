	.section	.text
	.align	16
	#Procedure 0x401539
	.globl sub_401539
	.type sub_401539, @function
sub_401539:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40153a
	.globl sub_40153a
	.type sub_40153a, @function
sub_40153a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401572
	.globl sub_401572
	.type sub_401572, @function
sub_401572:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015ba
	.globl sub_4015ba
	.type sub_4015ba, @function
sub_4015ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4015dc
	.globl sub_4015dc
	.type sub_4015dc, @function
sub_4015dc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4015ed
	.globl sub_4015ed
	.type sub_4015ed, @function
sub_4015ed:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401606
	.globl sub_401606
	.type sub_401606, @function
sub_401606:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401610
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
	#Procedure 0x40161d
	.globl sub_40161d
	.type sub_40161d, @function
sub_40161d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401620
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
	#Procedure 0x40162f
	.globl sub_40162f
	.type sub_40162f, @function
sub_40162f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401630
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
	#Procedure 0x40163f
	.globl sub_40163f
	.type sub_40163f, @function
sub_40163f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401640

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40164a
	.globl sub_40164a
	.type sub_40164a, @function
sub_40164a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401650
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
	#Procedure 0x401660

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x401669
	.globl sub_401669
	.type sub_401669, @function
sub_401669:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401670

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x40167a
	.globl sub_40167a
	.type sub_40167a, @function
sub_40167a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401680

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_9
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_9
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_9:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x4016a6
	.globl sub_4016a6
	.type sub_4016a6, @function
sub_4016a6:

	nop	word ptr cs:[rax + rax]
.label_13:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_11:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_12
	inc	r9
	cmp	r9, 0xa
	jb	.label_10
.label_12:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x4016df
	.globl sub_4016df
	.type sub_4016df, @function
sub_4016df:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4016e0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_10:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_13
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_11
	.section	.text
	.align	16
	#Procedure 0x401709
	.globl sub_401709
	.type sub_401709, @function
sub_401709:

	nop	dword ptr [rax]
.label_17:
	mov	rcx, qword ptr [rsp]
.label_15:
	mov	al, byte ptr [rcx]
	cmp	al, 0x2c
	je	.label_14
	test	al, al
	je	.label_14
.label_20:
	xor	r14d, r14d
.label_14:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x40172c
	.globl sub_40172c
	.type sub_40172c, @function
sub_40172c:

	nop	
.label_16:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp], rax
	movzx	eax, byte ptr [rcx + 1]
.label_21:
	test	al, al
	je	.label_17
	movsx	edi, al
	call	c_isspace
	mov	rcx, qword ptr [rsp]
	test	al, al
	jne	.label_16
	jmp	.label_15
.label_22:
	movzx	eax, byte ptr [rbx + 1]
	inc	rbx
.label_19:
	test	al, al
	je	.label_18
	movsx	edi, al
	call	c_isspace
	test	al, al
	jne	.label_22
.label_18:
	movsx	edi, byte ptr [rbx]
	call	c_isdigit
	xor	r14d, r14d
	test	al, al
	je	.label_14
	mov	qword ptr [rsp], 0
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, rbx
	call	strtoul
	mov	r14, rax
	cmp	qword ptr [rsp], 0
	je	.label_20
	mov	rax, qword ptr [rsp]
	mov	al, byte ptr [rax]
	jmp	.label_21
	.section	.text
	.align	16
	#Procedure 0x4017a1
	.globl sub_4017a1
	.type sub_4017a1, @function
sub_4017a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017b0

	.globl parse_omp_threads
	.type parse_omp_threads, @function
parse_omp_threads:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_14
	mov	al, byte ptr [rbx]
	jmp	.label_19
	.section	.text
	.align	16
	#Procedure 0x4017c7
	.globl sub_4017c7
	.type sub_4017c7, @function
sub_4017c7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017d0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_23
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_23:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4017ee
	.globl sub_4017ee
	.type sub_4017ee, @function
sub_4017ee:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4017f0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_24
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_24:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401816
	.globl sub_401816
	.type sub_401816, @function
sub_401816:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401820

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_25
	test	rbx, rbx
	jne	.label_25
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_25:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_27
	test	rax, rax
	je	.label_26
.label_27:
	pop	rbx
	ret	
.label_26:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401850

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
	#Procedure 0x401887
	.globl sub_401887
	.type sub_401887, @function
sub_401887:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401890
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	16
	#Procedure 0x40189a
	.globl sub_40189a
	.type sub_40189a, @function
sub_40189a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018a0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_28
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_30
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_28
.label_30:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_28
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_29
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_29:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_28:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x401917
	.globl sub_401917
	.type sub_401917, @function
sub_401917:

	nop	word ptr [rax + rax]
.label_31:
	xor	eax, eax
	add	rsp, 0x88
	ret	
	.section	.text
	.align	16
	#Procedure 0x40192a
	.globl sub_40192a
	.type sub_40192a, @function
sub_40192a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401937

	.globl num_processors_via_affinity_mask
	.type num_processors_via_affinity_mask, @function
num_processors_via_affinity_mask:
	sub	rsp, 0x88
	lea	rdx, [rsp + 8]
	xor	edi, edi
	mov	esi, 0x80
	call	sched_getaffinity
	test	eax, eax
	jne	.label_31
	lea	rsi, [rsp + 8]
	mov	edi, 0x80
	call	__sched_cpucount
	test	eax, eax
	je	.label_31
	cdqe	
	add	rsp, 0x88
	ret	
.label_37:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_35
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401990
	.globl sub_401990
	.type sub_401990, @function
sub_401990:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40199f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_37
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_32
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_32
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_36
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_36:
	mov	rbx, r14
.label_32:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x401a20

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
	je	.label_38
	cmp	r15, -2
	jb	.label_38
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_38
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_38:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401a76
	.globl sub_401a76
	.type sub_401a76, @function
sub_401a76:

	nop	word ptr cs:[rax + rax]
.label_43:
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_39
	.section	.text
	.align	16
	#Procedure 0x401a8d

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, rcx
	mov	r12, rdx
	mov	eax, esi
	mov	r13, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, eax
	call	xstrtoumax
	cmp	eax, 3
	je	.label_43
	cmp	eax, 1
	je	.label_45
	test	eax, eax
	jne	.label_39
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r12
	jb	.label_41
	cmp	rbx, r15
	jbe	.label_42
.label_41:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_44
	mov	dword ptr [rax], 0x4b
	jmp	.label_39
.label_45:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_39
.label_44:
	mov	dword ptr [rax], 0x22
.label_39:
	mov	eax, dword ptr [rsp + 0x40]
	test	eax, eax
	mov	ebp, 1
	cmovne	ebp, eax
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	eax, eax
	cmp	ebx, 0x16
	cmove	ebx, eax
	mov	rdi, r13
	call	quote
	mov	r8, rax
	mov	edx, OFFSET FLAT:label_40
	xor	eax, eax
	mov	edi, ebp
	mov	esi, ebx
	mov	rcx, r14
	call	error
.label_42:
	mov	rax, qword ptr [rsp]
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
	#Procedure 0x401b46
	.globl sub_401b46
	.type sub_401b46, @function
sub_401b46:

	nop	word ptr cs:[rax + rax]
.label_47:
	ret	
	.section	.text
	.align	16
	#Procedure 0x401b51
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_46
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_48]]
.label_46:
	xor	eax, eax
	jmp	.label_47
	.section	.text
	.align	16
	#Procedure 0x401b66
	.globl sub_401b66
	.type sub_401b66, @function
sub_401b66:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b70

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
	#Procedure 0x401b9d
	.globl sub_401b9d
	.type sub_401b9d, @function
sub_401b9d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401ba0
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
	#Procedure 0x401bb3
	.globl sub_401bb3
	.type sub_401bb3, @function
sub_401bb3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401bc0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_49
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_50
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_52
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_53
	mov	ecx, OFFSET FLAT:label_54
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_51
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x401c34
	.globl sub_401c34
	.type sub_401c34, @function
sub_401c34:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c40

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x401c4a
	.globl sub_401c4a
	.type sub_401c4a, @function
sub_401c4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c50

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_55
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_55:
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
	#Procedure 0x401cd3
	.globl sub_401cd3
	.type sub_401cd3, @function
sub_401cd3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ce0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	16
	#Procedure 0x401ce5
	.globl sub_401ce5
	.type sub_401ce5, @function
sub_401ce5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401cf0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_56
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_56:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401d13
	.globl sub_401d13
	.type sub_401d13, @function
sub_401d13:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d20

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_57
	test	rax, rax
	je	.label_58
.label_57:
	pop	rbx
	ret	
.label_58:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401d3a
	.globl sub_401d3a
	.type sub_401d3a, @function
sub_401d3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d40

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_59
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_63
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_65
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_62
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_59:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
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
	#Procedure 0x401e3b
	.globl sub_401e3b
	.type sub_401e3b, @function
sub_401e3b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e40

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
	mov	rcx,  qword ptr [word ptr [rip + label_66]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_67]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_68]]
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
	#Procedure 0x401ead
	.globl sub_401ead
	.type sub_401ead, @function
sub_401ead:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401eb0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x401ebd
	.globl sub_401ebd
	.type sub_401ebd, @function
sub_401ebd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401ec0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	16
	#Procedure 0x401ec7
	.globl sub_401ec7
	.type sub_401ec7, @function
sub_401ec7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ed0

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
	je	.label_70
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_69
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_69
.label_70:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_69
	test	cl, cl
	jne	.label_69
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_69:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f36
	.globl sub_401f36
	.type sub_401f36, @function
sub_401f36:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f40
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_71
.label_72:
	ret	
.label_71:
	cmp	edi, 0x7f
	je	.label_72
	xor	eax, eax
	jmp	.label_72
	.section	.text
	.align	16
	#Procedure 0x401f51
	.globl sub_401f51
	.type sub_401f51, @function
sub_401f51:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f60
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
	#Procedure 0x401f76
	.globl sub_401f76
	.type sub_401f76, @function
sub_401f76:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f80

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
	#Procedure 0x401fad
	.globl sub_401fad
	.type sub_401fad, @function
sub_401fad:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401fb0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
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
	#Procedure 0x401fcf
	.globl sub_401fcf
	.type sub_401fcf, @function
sub_401fcf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401fd0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rsi
	mov	r12d, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_75
	call	setlocale
	mov	edi, OFFSET FLAT:label_73
	mov	esi, OFFSET FLAT:label_88
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_73
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	ebx, 2
	xor	r15d, r15d
	jmp	.label_78
	.section	.text
	.align	16
	#Procedure 0x402022
	.globl sub_402022
	.type sub_402022, @function
sub_402022:

	nop	word ptr cs:[rax + rax]
.label_77:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_86
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_75
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoumax
	mov	r15, rax
.label_78:
	mov	ebp, ebx
.label_76:
	mov	ebx, ebp
	xor	ebp, ebp
	mov	edx, OFFSET FLAT:label_75
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r12d
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x7f
	jle	.label_74
	cmp	eax, 0x80
	je	.label_76
	cmp	eax, 0x81
	je	.label_77
	jmp	.label_79
.label_74:
	cmp	eax, -1
	jne	.label_81
	cmp	dword ptr [dword ptr [rip + optind]],  r12d
	jne	.label_82
	mov	edi, ebx
	call	num_processors
	sub	rax, r15
	mov	edx, 1
	cmova	rdx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_87
	xor	eax, eax
	call	__printf_chk
	xor	eax, eax
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_81:
	cmp	eax, 0xffffff7d
	je	.label_80
	cmp	eax, 0xffffff7e
	jne	.label_79
	xor	edi, edi
	call	usage
.label_82:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_85
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
.label_80:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_83
	mov	edx, OFFSET FLAT:label_53
	mov	r8d, OFFSET FLAT:label_84
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_79:
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x402167
	.globl sub_402167
	.type sub_402167, @function
sub_402167:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402170
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40217a
	.globl sub_40217a
	.type sub_40217a, @function
sub_40217a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402180
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x40218a
	.globl sub_40218a
	.type sub_40218a, @function
sub_40218a:

	nop	word ptr [rax + rax]
.label_89:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x402193
	.globl sub_402193
	.type sub_402193, @function
sub_402193:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40219b

	.globl c_isspace
	.type c_isspace, @function
c_isspace:
	add	edi, -9
	cmp	edi, 0x17
	ja	.label_89
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x4021b0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_90
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_90
.label_91:
	ret	
.label_90:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_91
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4021d6
	.globl sub_4021d6
	.type sub_4021d6, @function
sub_4021d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021e0

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
	#Procedure 0x402216
	.globl sub_402216
	.type sub_402216, @function
sub_402216:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402220
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
	#Procedure 0x402269
	.globl sub_402269
	.type sub_402269, @function
sub_402269:

	nop	dword ptr [rax]
.label_94:
	mov	edi, 0x53
	call	sysconf
	mov	rcx, rax
	cmp	rcx, 1
	jne	.label_93
	call	num_processors_via_affinity_mask
	mov	rcx, rax
	mov	eax, 1
	test	rcx, rcx
	je	.label_92
.label_93:
	test	rcx, rcx
	mov	rax, rcx
	jg	.label_92
.label_95:
	mov	eax, 1
.label_92:
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4022a4
	.globl sub_4022a4
	.type sub_4022a4, @function
sub_4022a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022af

	.globl num_processors_ignoring_omp
	.type num_processors_ignoring_omp, @function
num_processors_ignoring_omp:
	push	rax
	cmp	edi, 1
	jne	.label_94
	call	num_processors_via_affinity_mask
	test	rax, rax
	jne	.label_92
	mov	edi, 0x54
	call	sysconf
	test	rax, rax
	jg	.label_92
	jmp	.label_95
	.section	.text
	.align	16
	#Procedure 0x4022d0

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
	jae	.label_108
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_106:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_106
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_100
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoumax
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_109
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_112
	cmp	eax, 0x22
	jne	.label_100
	mov	r12d, 1
.label_112:
	test	rbp, rbp
	jne	.label_97
	jmp	.label_99
.label_109:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_100
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_100
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_100
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_97:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_99
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_110
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_111
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_111
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_101
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_107
	cmp	ecx, 0x44
	je	.label_107
	cmp	ecx, 0x69
	jne	.label_101
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_101
.label_107:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_101
.label_111:
	mov	rsi, r14
.label_101:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_110
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_113]]
.label_420:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_102
.label_110:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_96
.label_421:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_102
.label_422:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_102
.label_424:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_102
.label_418:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale
	jmp	.label_98
.label_419:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_102
.label_423:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_102
.label_425:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_102
.label_426:
	lea	rdi, [rsp]
	mov	edx, 7
.label_102:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_98:
	mov	rsi, r14
.label_428:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_99:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_96:
	mov	r15d, r12d
.label_100:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_427:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale
	jmp	.label_98
.label_429:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale
	jmp	.label_98
.label_108:
	mov	edi, OFFSET FLAT:label_103
	mov	esi, OFFSET FLAT:label_104
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_105
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x402572
	.globl sub_402572
	.type sub_402572, @function
sub_402572:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402580
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x402588
	.globl sub_402588
	.type sub_402588, @function
sub_402588:

	nop	dword ptr [rax + rax]
.label_115:
	mov	ecx, 1
.label_114:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x4025a0
	.globl sub_4025a0
	.type sub_4025a0, @function
sub_4025a0:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4025a5

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_115
	test	rsi, rsi
	mov	ecx, 1
	je	.label_114
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_114
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4025e0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	16
	#Procedure 0x4025ea
	.globl sub_4025ea
	.type sub_4025ea, @function
sub_4025ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4025f0

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
	je	.label_116
	mov	qword ptr [rax], rbx
.label_116:
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
	#Procedure 0x4026dc
	.globl sub_4026dc
	.type sub_4026dc, @function
sub_4026dc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4026e0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_117
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_118
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402710
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
	#Procedure 0x40271d
	.globl sub_40271d
	.type sub_40271d, @function
sub_40271d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402720

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_75
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_119
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402745
	.globl sub_402745
	.type sub_402745, @function
sub_402745:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402750

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
	#Procedure 0x402789
	.globl sub_402789
	.type sub_402789, @function
sub_402789:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402790
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
	#Procedure 0x4027a1
	.globl sub_4027a1
	.type sub_4027a1, @function
sub_4027a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027b0
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
	#Procedure 0x4027c4
	.globl sub_4027c4
	.type sub_4027c4, @function
sub_4027c4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027d0
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
	#Procedure 0x402842
	.globl sub_402842
	.type sub_402842, @function
sub_402842:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402850
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40285a
	.globl sub_40285a
	.type sub_40285a, @function
sub_40285a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402860

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x402869
	.globl sub_402869
	.type sub_402869, @function
sub_402869:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402870

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
	mov	rax,  qword ptr [word ptr [rip + label_66]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_67]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_68]]
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
	#Procedure 0x4028d8
	.globl sub_4028d8
	.type sub_4028d8, @function
sub_4028d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028e0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4028ea
	.globl sub_4028ea
	.type sub_4028ea, @function
sub_4028ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028f0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	16
	#Procedure 0x4028fd
	.globl sub_4028fd
	.type sub_4028fd, @function
sub_4028fd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402900
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
	#Procedure 0x402910

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_121
	cmp	byte ptr [rax], 0x43
	jne	.label_123
	cmp	byte ptr [rax + 1], 0
	je	.label_120
.label_123:
	mov	esi, OFFSET FLAT:label_122
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_121
.label_120:
	xor	ebx, ebx
.label_121:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402941
	.globl sub_402941
	.type sub_402941, @function
sub_402941:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402950
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
	#Procedure 0x402963
	.globl sub_402963
	.type sub_402963, @function
sub_402963:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402970
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_124:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_124
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x402991
	.globl sub_402991
	.type sub_402991, @function
sub_402991:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4029a0

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
	je	.label_127
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_125
	jmp	.label_126
.label_127:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_126
.label_125:
	mov	eax, 1
	test	bpl, bpl
	je	.label_126
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
.label_126:
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
	#Procedure 0x402a28
	.globl sub_402a28
	.type sub_402a28, @function
sub_402a28:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a30

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
	je	.label_128
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_130
	jmp	.label_129
.label_128:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_129
.label_130:
	mov	eax, 1
	test	bpl, bpl
	je	.label_129
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
.label_129:
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
	#Procedure 0x402aa9
	.globl sub_402aa9
	.type sub_402aa9, @function
sub_402aa9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402ab0

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
	je	.label_133
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_132
	jmp	.label_131
.label_133:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_131
.label_132:
	mov	eax, 1
	test	bpl, bpl
	je	.label_131
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
.label_131:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b13
	.globl sub_402b13
	.type sub_402b13, @function
sub_402b13:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b20

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
	je	.label_136
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_134
	jmp	.label_135
.label_136:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_135
.label_134:
	mov	eax, 1
	test	bpl, bpl
	je	.label_135
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_135:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
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
	je	.label_137
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_139
	jmp	.label_138
.label_137:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_138
.label_139:
	mov	eax, 1
	test	bpl, bpl
	je	.label_138
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_138:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402bc9
	.globl sub_402bc9
	.type sub_402bc9, @function
sub_402bc9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402bd0

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
	je	.label_142
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_141
	jmp	.label_140
.label_142:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_140
.label_141:
	mov	eax, 1
	test	bpl, bpl
	je	.label_140
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_140:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c15
	.globl sub_402c15
	.type sub_402c15, @function
sub_402c15:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c20

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_145
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_144
	jmp	.label_143
.label_145:
	mov	eax, 1
	test	cl, cl
	je	.label_143
.label_144:
	xor	eax, eax
.label_143:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c4f
	.globl sub_402c4f
	.type sub_402c4f, @function
sub_402c4f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402c50

	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:
	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c5a
	.globl sub_402c5a
	.type sub_402c5a, @function
sub_402c5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c60

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
	je	.label_146
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_148
	jmp	.label_147
.label_146:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_147
.label_148:
	mov	eax, 1
	test	bpl, bpl
	je	.label_147
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
.label_147:
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
	#Procedure 0x402cdd
	.globl sub_402cdd
	.type sub_402cdd, @function
sub_402cdd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402ce0

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
.label_242:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_223
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_249]]
.label_464:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_254
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_191
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_465:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_150
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_150
	xor	r14d, r14d
.label_158:
	cmp	r14, r11
	jae	.label_154
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_154:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_158
.label_150:
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
	jmp	.label_165
.label_457:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_165
.label_460:
	mov	al, 1
.label_458:
	mov	r12b, 1
.label_461:
	test	r12b, 1
	mov	cl, 1
	je	.label_179
	mov	ecx, eax
.label_179:
	mov	al, cl
.label_459:
	test	r12b, 1
	jne	.label_183
	test	r11, r11
	je	.label_229
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_229:
	mov	r14d, 1
	jmp	.label_189
.label_183:
	xor	r14d, r14d
.label_189:
	mov	ecx, OFFSET FLAT:label_191
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_165
.label_462:
	test	r12b, 1
	jne	.label_201
	test	r11, r11
	je	.label_260
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_260:
	mov	r14d, 1
	jmp	.label_216
.label_463:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_207
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_165
.label_201:
	xor	r14d, r14d
.label_216:
	mov	eax, OFFSET FLAT:label_207
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_165:
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
	jmp	.label_224
	.section	.text
	.align	16
	#Procedure 0x402fbc
	.globl sub_402fbc
	.type sub_402fbc, @function
sub_402fbc:

	nop	dword ptr [rax]
.label_181:
	inc	rsi
.label_224:
	cmp	rbp, -1
	je	.label_256
	cmp	rsi, rbp
	jne	.label_198
	jmp	.label_228
	.section	.text
	.align	16
	#Procedure 0x402fd3
	.globl sub_402fd3
	.type sub_402fd3, @function
sub_402fd3:

	nop	word ptr cs:[rax + rax]
.label_256:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_228
.label_198:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_262
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_149
	cmp	rbp, -1
	jne	.label_149
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
.label_149:
	cmp	rbx, rbp
	jbe	.label_164
.label_262:
	xor	r8d, r8d
.label_190:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_166
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_170]]
.label_380:
	test	rsi, rsi
	jne	.label_160
	jmp	.label_175
	.section	.text
	.align	16
	#Procedure 0x40306e
	.globl sub_40306e
	.type sub_40306e, @function
sub_40306e:

	nop	
.label_164:
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
	jne	.label_187
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_190
	jmp	.label_202
.label_187:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_190
.label_384:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_208
	test	rsi, rsi
	jne	.label_211
	cmp	rbp, 1
	je	.label_175
	xor	r13d, r13d
	jmp	.label_151
.label_373:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_219
	cmp	byte ptr [rsp + 7], 0
	jne	.label_156
	cmp	r12d, 2
	jne	.label_222
	mov	eax, r9d
	and	al, 1
	jne	.label_222
	cmp	r14, r11
	jae	.label_234
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_234:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_230
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_230:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_236
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_236:
	add	r14, 3
	mov	r9b, 1
.label_222:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_241
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_241:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_244
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_244
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_244
	cmp	r14, r11
	jae	.label_255
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_255:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_155
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_155:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_151
.label_374:
	mov	bl, 0x62
	jmp	.label_261
.label_375:
	mov	cl, 0x74
	jmp	.label_196
.label_376:
	mov	bl, 0x76
	jmp	.label_261
.label_377:
	mov	bl, 0x66
	jmp	.label_261
.label_378:
	mov	cl, 0x72
	jmp	.label_196
.label_381:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_152
	cmp	byte ptr [rsp + 7], 0
	jne	.label_156
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
	jae	.label_159
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_159:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_174
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_174:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_176
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_176:
	add	r14, 3
	xor	r9d, r9d
.label_152:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_151
.label_382:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_186
	cmp	r12d, 2
	jne	.label_160
	cmp	byte ptr [rsp + 7], 0
	je	.label_160
	jmp	.label_156
.label_383:
	cmp	r12d, 2
	jne	.label_197
	cmp	byte ptr [rsp + 7], 0
	jne	.label_156
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_153
.label_166:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_205
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
.label_172:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_209
	test	r8b, r8b
	je	.label_209
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_151
.label_208:
	test	rsi, rsi
	jne	.label_192
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_192
.label_175:
	mov	dl, 1
.label_379:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_156
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_151:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_250
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_251
	jmp	.label_161
	.section	.text
	.align	16
	#Procedure 0x4033b4
	.globl sub_4033b4
	.type sub_4033b4, @function
sub_4033b4:

	nop	word ptr cs:[rax + rax]
.label_250:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_161
.label_251:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_257
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_153
	jmp	.label_171
	.section	.text
	.align	16
	#Procedure 0x4033fd
	.globl sub_4033fd
	.type sub_4033fd, @function
sub_4033fd:

	nop	dword ptr [rax]
.label_161:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_171
	jmp	.label_153
.label_257:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_171
.label_219:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_181
	xor	r15d, r15d
	jmp	.label_160
.label_197:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_196
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_153
.label_196:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_156
.label_261:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_151
	nop	word ptr cs:[rax + rax]
.label_171:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_156
	cmp	r12d, 2
	jne	.label_180
	mov	eax, r9d
	and	al, 1
	jne	.label_180
	cmp	r14, r11
	jae	.label_184
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_184:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_246
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_246:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_194
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_194:
	add	r14, 3
	mov	r9b, 1
.label_180:
	cmp	r14, r11
	jae	.label_199
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_199:
	inc	r14
	jmp	.label_203
.label_205:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_206
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_206:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_237:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_227
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_233
	cmp	rbp, -2
	je	.label_163
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_239
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_168:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_177
	bt	rsi, rdx
	jb	.label_202
.label_177:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_168
.label_239:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_259
	xor	r13d, r13d
.label_259:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_237
	jmp	.label_172
.label_244:
	xor	r13d, r13d
	jmp	.label_151
.label_192:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_151
.label_186:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_160
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_160
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_160
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_167
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_212
	cmp	byte ptr [rsp + 7], 0
	jne	.label_156
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_210
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_210:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_220
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_220:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_188
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_188:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_193
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_193:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_151
.label_160:
	xor	eax, eax
.label_211:
	xor	r13d, r13d
	jmp	.label_151
.label_209:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_204
	.section	.text
	.align	16
	#Procedure 0x4036e3
	.globl sub_4036e3
	.type sub_4036e3, @function
sub_4036e3:

	nop	word ptr cs:[rax + rax]
.label_157:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_204:
	test	r8b, r8b
	je	.label_213
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_214
	cmp	r14, r11
	jae	.label_217
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_217:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_214
	.section	.text
	.align	16
	#Procedure 0x40372c
	.globl sub_40372c
	.type sub_40372c, @function
sub_40372c:

	nop	dword ptr [rax]
.label_213:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_202
	cmp	r12d, 2
	jne	.label_226
	mov	eax, r9d
	and	al, 1
	jne	.label_226
	cmp	r14, r11
	jae	.label_232
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_232:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_235
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_235:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_240
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_240:
	add	r14, 3
	mov	r9b, 1
.label_226:
	cmp	r14, r11
	jae	.label_215
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_215:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_247
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_247:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_252
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_252:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_214:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_153
	test	r9b, 1
	je	.label_231
	mov	ebx, eax
	and	bl, 1
	jne	.label_231
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_263
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_263:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_253
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_253:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_231:
	cmp	r14, r11
	jae	.label_157
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_157
	.section	.text
	.align	16
	#Procedure 0x403833
	.globl sub_403833
	.type sub_403833, @function
sub_403833:

	nop	word ptr cs:[rax + rax]
.label_153:
	test	r9b, 1
	je	.label_243
	and	al, 1
	jne	.label_243
	cmp	r14, r11
	jae	.label_169
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_169:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_221
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_221:
	add	r14, 2
	xor	r9d, r9d
.label_243:
	mov	ebx, r15d
.label_203:
	cmp	r14, r11
	jae	.label_178
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_178:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_181
.label_233:
	xor	r13d, r13d
.label_227:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_172
.label_163:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_195
	mov	rsi, qword ptr [rsp + 0x50]
.label_200:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_162
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_200
	xor	r13d, r13d
	jmp	.label_172
.label_195:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_172
.label_162:
	xor	r13d, r13d
	jmp	.label_172
.label_167:
	xor	r13d, r13d
	jmp	.label_151
.label_212:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_151
	.section	.text
	.align	16
	#Procedure 0x403908
	.globl sub_403908
	.type sub_403908, @function
sub_403908:

	nop	dword ptr [rax + rax]
.label_228:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_218
	or	dl, al
	je	.label_202
.label_218:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_225
	or	dl, al
	jne	.label_225
	test	r10b, 1
	jne	.label_238
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_225
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_242
.label_225:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_245
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_248
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_248
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_258:
	cmp	r14, r11
	jae	.label_173
	mov	byte ptr [rcx + r14], al
.label_173:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_258
	jmp	.label_248
.label_156:
	mov	qword ptr [rsp + 0x20], rbp
.label_202:
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
.label_182:
	mov	r14, rax
.label_185:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_238:
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
	jmp	.label_182
.label_245:
	mov	rcx, qword ptr [rsp + 8]
.label_248:
	cmp	r14, r11
	jae	.label_185
	mov	byte ptr [rcx + r14], 0
	jmp	.label_185
.label_223:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403a9c
	.globl sub_403a9c
	.type sub_403a9c, @function
sub_403a9c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403aa0

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
	jne	.label_264
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_264
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_265
.label_264:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_265:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_266
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_266:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b0e
	.globl sub_403b0e
	.type sub_403b0e, @function
sub_403b0e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403b10
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_267
	call	rpl_calloc
	test	rax, rax
	je	.label_267
	pop	rcx
	ret	
.label_267:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403b36
	.globl sub_403b36
	.type sub_403b36, @function
sub_403b36:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b40
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b48
	.globl sub_403b48
	.type sub_403b48, @function
sub_403b48:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b50

	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:
	push	rax
	mov	r10, r8
	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	esi, 0xa
	mov	r8, rax
	mov	r9, r10
	call	xnumtoumax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b73
	.globl sub_403b73
	.type sub_403b73, @function
sub_403b73:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b80

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x403b8e
	.globl sub_403b8e
	.type sub_403b8e, @function
sub_403b8e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403b90

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
	js	.label_271
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_274
	cmp	r12d, 0x7fffffff
	je	.label_269
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
	jne	.label_272
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_272:
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
.label_274:
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
	jbe	.label_270
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_273
.label_270:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_268
	mov	rdi, r14
	call	free
.label_268:
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
.label_273:
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
.label_271:
	call	abort
.label_269:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403d4d
	.globl sub_403d4d
	.type sub_403d4d, @function
sub_403d4d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403d50

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_280
	nop	
.label_279:
	mov	edi, OFFSET FLAT:label_83
	call	strcmp
	test	eax, eax
	je	.label_277
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_279
.label_277:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_83
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_281
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_53
	mov	ecx, OFFSET FLAT:label_54
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_275
	mov	esi, OFFSET FLAT:label_276
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_275
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_284
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_275:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_282
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_83
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_54
	mov	ecx, OFFSET FLAT:label_83
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_278
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_283
	mov	ecx, OFFSET FLAT:label_75
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
	#Procedure 0x403e6a
	.globl sub_403e6a
	.type sub_403e6a, @function
sub_403e6a:

	nop	word ptr [rax + rax]
.label_288:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403e75
	.globl sub_403e75
	.type sub_403e75, @function
sub_403e75:

	nop	dword ptr [rax]
.label_289:
	call	xalloc_die
.label_287:
	test	rcx, rcx
	jne	.label_285
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_285:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_288
.label_286:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
	.section	.text
	.align	16
	#Procedure 0x403ec3

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_287
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_289
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_286
	.section	.text
	.align	16
	#Procedure 0x403ef0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x403efa
	.globl sub_403efa
	.type sub_403efa, @function
sub_403efa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f00

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
	#Procedure 0x403f17
	.globl sub_403f17
	.type sub_403f17, @function
sub_403f17:

	nop	word ptr [rax + rax]
.label_290:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	16
	#Procedure 0x403f2c
	.globl sub_403f2c
	.type sub_403f2c, @function
sub_403f2c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f39

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_290
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f40

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
	je	.label_291
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_292:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebp, eax
	dec	ebx
	jne	.label_292
.label_291:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f7e
	.globl sub_403f7e
	.type sub_403f7e, @function
sub_403f7e:

	nop	
.label_293:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f83
	.globl sub_403f83
	.type sub_403f83, @function
sub_403f83:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403f85
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_293
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_296:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_294
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_295
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_118
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x403fe5

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_297
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_296
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_296
.label_297:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_298
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_298:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_295:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_40
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
	#Procedure 0x404060

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
	jne	.label_306
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
	je	.label_303
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_299
	mov	eax, OFFSET FLAT:label_300
	jmp	.label_301
.label_303:
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
	je	.label_302
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_304
	mov	eax, OFFSET FLAT:label_305
	jmp	.label_301
.label_302:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_207
	mov	eax, OFFSET FLAT:label_191
.label_301:
	cmove	rax, rcx
.label_306:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40411d
	.globl sub_40411d
	.type sub_40411d, @function
sub_40411d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404120
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
	#Procedure 0x404147
	.globl sub_404147
	.type sub_404147, @function
sub_404147:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404150

	.globl num_processors
	.type num_processors, @function
num_processors:
	push	r14
	push	rbx
	push	rax
	mov	rbx, -1
	cmp	edi, 2
	jne	.label_307
	mov	edi, OFFSET FLAT:label_308
	call	getenv
	mov	rdi, rax
	call	parse_omp_threads
	mov	r14, rax
	mov	edi, OFFSET FLAT:label_309
	call	getenv
	mov	rdi, rax
	call	parse_omp_threads
	cmp	rax, 1
	sbb	rbx, rbx
	or	rbx, rax
	cmp	r14, rbx
	mov	rax, rbx
	cmovb	rax, r14
	mov	edi, 1
	test	r14, r14
	jne	.label_310
.label_307:
	call	num_processors_ignoring_omp
	cmp	rax, rbx
	cmovb	rbx, rax
	mov	rax, rbx
.label_310:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x4041bc
	.globl sub_4041bc
	.type sub_4041bc, @function
sub_4041bc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4041c0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_311
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_313:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_313
.label_311:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_315
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_314]], OFFSET FLAT:slot0
.label_315:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_312
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_312:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404251
	.globl sub_404251
	.type sub_404251, @function
sub_404251:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404260
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
	#Procedure 0x404279
	.globl sub_404279
	.type sub_404279, @function
sub_404279:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404280

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
	je	.label_316
	mov	edx, OFFSET FLAT:label_326
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_332
.label_316:
	mov	edx, OFFSET FLAT:label_333
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_332:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_319
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
	mov	esi, OFFSET FLAT:label_334
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_321
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_322]]
.label_408:
	add	rsp, 8
	jmp	.label_320
.label_321:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_329
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
	jmp	.label_320
.label_409:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_317
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
.label_410:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_330
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
.label_411:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_327
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
.label_412:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_324
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
	jmp	.label_320
.label_413:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_323
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
	jmp	.label_320
.label_414:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_325
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
	jmp	.label_320
.label_415:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_328
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
	jmp	.label_320
.label_417:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_331
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
	jmp	.label_320
.label_416:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_318
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
.label_320:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4045d8
	.globl sub_4045d8
	.type sub_4045d8, @function
sub_4045d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045e0
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
	#Procedure 0x404613
	.globl sub_404613
	.type sub_404613, @function
sub_404613:

	nop	word ptr cs:[rax + rax]
.label_335:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404625
	.globl sub_404625
	.type sub_404625, @function
sub_404625:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404633

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
	je	.label_335
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
	#Procedure 0x404680

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_336
	test	rdx, rdx
	je	.label_336
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_336:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4046ab
	.globl sub_4046ab
	.type sub_4046ab, @function
sub_4046ab:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404715
	.globl sub_404715
	.type sub_404715, @function
sub_404715:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404722
	.globl sub_404722
	.type sub_404722, @function
sub_404722:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404746
	.globl sub_404746
	.type sub_404746, @function
sub_404746:

	nop	word ptr cs:[rax + rax]
