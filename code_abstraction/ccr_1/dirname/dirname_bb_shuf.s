	.section	.text
	.align	16
	#Procedure 0x401319
	.globl sub_401319
	.type sub_401319, @function
sub_401319:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40131a
	.globl sub_40131a
	.type sub_40131a, @function
sub_40131a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401352
	.globl sub_401352
	.type sub_401352, @function
sub_401352:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40139a
	.globl sub_40139a
	.type sub_40139a, @function
sub_40139a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4013bc
	.globl sub_4013bc
	.type sub_4013bc, @function
sub_4013bc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4013cd
	.globl sub_4013cd
	.type sub_4013cd, @function
sub_4013cd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4013e6
	.globl sub_4013e6
	.type sub_4013e6, @function
sub_4013e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4013f0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x4013f8
	.globl sub_4013f8
	.type sub_4013f8, @function
sub_4013f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401400

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
	#Procedure 0x401439
	.globl sub_401439
	.type sub_401439, @function
sub_401439:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401440
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
	#Procedure 0x401451
	.globl sub_401451
	.type sub_401451, @function
sub_401451:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401460
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
	#Procedure 0x401474
	.globl sub_401474
	.type sub_401474, @function
sub_401474:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401480

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_9
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_10
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4014a5
	.globl sub_4014a5
	.type sub_4014a5, @function
sub_4014a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4014b0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4014ba
	.globl sub_4014ba
	.type sub_4014ba, @function
sub_4014ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4014c0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_12
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_15
	mov	ecx, OFFSET FLAT:label_16
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x401534
	.globl sub_401534
	.type sub_401534, @function
sub_401534:

	nop	word ptr cs:[rax + rax]
.label_19:
	xor	eax, eax
	jmp	.label_17
	.section	.text
	.align	16
	#Procedure 0x401544
	.globl sub_401544
	.type sub_401544, @function
sub_401544:

	nop	word ptr cs:[rax + rax]
.label_17:
	ret	
	.section	.text
	.align	16
	#Procedure 0x40154f
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_19
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_18]]
	.section	.text
	.align	16
	#Procedure 0x401560

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
	#Procedure 0x40158d
	.globl sub_40158d
	.type sub_40158d, @function
sub_40158d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401590
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
	#Procedure 0x4015a3
	.globl sub_4015a3
	.type sub_4015a3, @function
sub_4015a3:

	nop	word ptr cs:[rax + rax]
.label_20:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4015b3
	.globl sub_4015b3
	.type sub_4015b3, @function
sub_4015b3:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4015b5
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_20
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x4015d0
	.globl base_len
	.type base_len, @function
base_len:

	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_22:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_21
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_22
.label_21:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4015f6
	.globl sub_4015f6
	.type sub_4015f6, @function
sub_4015f6:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401600
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_23
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_23:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401626
	.globl sub_401626
	.type sub_401626, @function
sub_401626:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401630

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_24
	test	rbx, rbx
	jne	.label_24
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_24:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_26
	test	rax, rax
	je	.label_25
.label_26:
	pop	rbx
	ret	
.label_25:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401660

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40166a
	.globl sub_40166a
	.type sub_40166a, @function
sub_40166a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401670
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	16
	#Procedure 0x40167d
	.globl sub_40167d
	.type sub_40167d, @function
sub_40167d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401680
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
	#Procedure 0x401690
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_27
	call	rpl_calloc
	test	rax, rax
	je	.label_27
	pop	rcx
	ret	
.label_27:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4016b6
	.globl sub_4016b6
	.type sub_4016b6, @function
sub_4016b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4016c0
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
	#Procedure 0x4016cf
	.globl sub_4016cf
	.type sub_4016cf, @function
sub_4016cf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4016d0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_28
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_28:
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
	#Procedure 0x401753
	.globl sub_401753
	.type sub_401753, @function
sub_401753:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401760
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40176a
	.globl sub_40176a
	.type sub_40176a, @function
sub_40176a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401770
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
	#Procedure 0x401783
	.globl sub_401783
	.type sub_401783, @function
sub_401783:

	nop	word ptr cs:[rax + rax]
.label_29:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401795
	.globl sub_401795
	.type sub_401795, @function
sub_401795:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017a3

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
	je	.label_29
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
	#Procedure 0x4017f0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	16
	#Procedure 0x4017fa
	.globl sub_4017fa
	.type sub_4017fa, @function
sub_4017fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401800

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
	je	.label_30
	mov	qword ptr [rax], rbx
.label_30:
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
	#Procedure 0x4018ec
	.globl sub_4018ec
	.type sub_4018ec, @function
sub_4018ec:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4018f0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_31
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_31:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401913
	.globl sub_401913
	.type sub_401913, @function
sub_401913:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401920

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_32
	test	rax, rax
	je	.label_33
.label_32:
	pop	rbx
	ret	
.label_33:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40193a
	.globl sub_40193a
	.type sub_40193a, @function
sub_40193a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401940
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
	#Procedure 0x40194f
	.globl sub_40194f
	.type sub_40194f, @function
sub_40194f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401950

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
	je	.label_34
	cmp	r15, -2
	jb	.label_34
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_34
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_34:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4019a6
	.globl sub_4019a6
	.type sub_4019a6, @function
sub_4019a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4019b0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_41
	nop	
.label_40:
	mov	edi, OFFSET FLAT:label_35
	call	strcmp
	test	eax, eax
	je	.label_38
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_40
.label_38:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_35
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_42
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_15
	mov	ecx, OFFSET FLAT:label_16
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_36
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_36
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_36:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_43
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_35
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_16
	mov	ecx, OFFSET FLAT:label_35
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_39
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_44
	mov	ecx, OFFSET FLAT:label_9
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
	#Procedure 0x401aca
	.globl sub_401aca
	.type sub_401aca, @function
sub_401aca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ad0
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
	#Procedure 0x401add
	.globl sub_401add
	.type sub_401add, @function
sub_401add:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401ae0
	.globl mdir_name
	.type mdir_name, @function
mdir_name:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	call	dir_len
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	sete	al
	lea	rdi, [rbx + rax + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_46
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	test	rbx, rbx
	jne	.label_47
	mov	byte ptr [r14 + rbx], 0x2e
	mov	ebx, 1
.label_47:
	mov	byte ptr [r14 + rbx], 0
	mov	rax, r14
.label_46:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401b37
	.globl sub_401b37
	.type sub_401b37, @function
sub_401b37:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b40

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_49
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
.label_51:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_50
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x401b7b
	.globl sub_401b7b
	.type sub_401b7b, @function
sub_401b7b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b85
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_51
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_51
.label_50:
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ba0

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
	je	.label_54
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_52
	jmp	.label_53
.label_54:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_53
.label_52:
	mov	eax, 1
	test	bpl, bpl
	je	.label_53
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
.label_53:
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
	#Procedure 0x401c28
	.globl sub_401c28
	.type sub_401c28, @function
sub_401c28:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c30

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
	je	.label_55
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_57
	jmp	.label_56
.label_55:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_56
.label_57:
	mov	eax, 1
	test	bpl, bpl
	je	.label_56
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
.label_56:
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
	#Procedure 0x401ca9
	.globl sub_401ca9
	.type sub_401ca9, @function
sub_401ca9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401cb0

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
	je	.label_60
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_59
	jmp	.label_58
.label_60:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_58
.label_59:
	mov	eax, 1
	test	bpl, bpl
	je	.label_58
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
.label_58:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
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
	je	.label_63
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_61
	jmp	.label_62
.label_63:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_62
.label_61:
	mov	eax, 1
	test	bpl, bpl
	je	.label_62
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_62:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401d7f
	.globl sub_401d7f
	.type sub_401d7f, @function
sub_401d7f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401d80

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
	je	.label_64
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_66
	jmp	.label_65
.label_64:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_65
.label_66:
	mov	eax, 1
	test	bpl, bpl
	je	.label_65
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_65:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401dc9
	.globl sub_401dc9
	.type sub_401dc9, @function
sub_401dc9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401dd0

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
	je	.label_69
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_68
	jmp	.label_67
.label_69:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_67
.label_68:
	mov	eax, 1
	test	bpl, bpl
	je	.label_67
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_67:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e15
	.globl sub_401e15
	.type sub_401e15, @function
sub_401e15:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e20

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_72
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_71
	jmp	.label_70
.label_72:
	mov	eax, 1
	test	cl, cl
	je	.label_70
.label_71:
	xor	eax, eax
.label_70:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e4f
	.globl sub_401e4f
	.type sub_401e4f, @function
sub_401e4f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401e50
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
	#Procedure 0x401e83
	.globl sub_401e83
	.type sub_401e83, @function
sub_401e83:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e90
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_73
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_73:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x401eae
	.globl sub_401eae
	.type sub_401eae, @function
sub_401eae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401eb0
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
	#Procedure 0x401ed7
	.globl sub_401ed7
	.type sub_401ed7, @function
sub_401ed7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ee0

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
	mov	rcx,  qword ptr [word ptr [rip + label_74]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_75]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_76]]
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
	#Procedure 0x401f4d
	.globl sub_401f4d
	.type sub_401f4d, @function
sub_401f4d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401f50

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x401f5d
	.globl sub_401f5d
	.type sub_401f5d, @function
sub_401f5d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401f60

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	16
	#Procedure 0x401f67
	.globl sub_401f67
	.type sub_401f67, @function
sub_401f67:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f70

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
	je	.label_87
	mov	edx, OFFSET FLAT:label_82
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_89
.label_87:
	mov	edx, OFFSET FLAT:label_90
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_89:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_95
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
	mov	esi, OFFSET FLAT:label_92
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_78
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_79]]
.label_366:
	add	rsp, 8
	jmp	.label_77
.label_78:
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
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_77
.label_367:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_93
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
.label_368:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_91
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
.label_369:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
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
.label_370:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_80
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
	jmp	.label_77
.label_371:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_83
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
	jmp	.label_77
.label_372:
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
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_77
.label_373:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_85
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
	jmp	.label_77
.label_375:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_88
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
	jmp	.label_77
.label_374:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_94
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
.label_77:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4022c8
	.globl sub_4022c8
	.type sub_4022c8, @function
sub_4022c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022d0

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
	#Procedure 0x402306
	.globl sub_402306
	.type sub_402306, @function
sub_402306:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402310

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_99
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_97
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_96
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_97
	mov	esi, OFFSET FLAT:label_101
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_98
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_98:
	mov	rbx, r14
.label_97:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_99:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_100
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4023b1
	.globl sub_4023b1
	.type sub_4023b1, @function
sub_4023b1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023c0
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
	#Procedure 0x4023d6
	.globl sub_4023d6
	.type sub_4023d6, @function
sub_4023d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023e0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4023ea
	.globl sub_4023ea
	.type sub_4023ea, @function
sub_4023ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023f0
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
	#Procedure 0x402400

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x402409
	.globl sub_402409
	.type sub_402409, @function
sub_402409:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402410
	.globl quote
	.type quote, @function
quote:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x40241a
	.globl sub_40241a
	.type sub_40241a, @function
sub_40241a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402420
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x402428
	.globl sub_402428
	.type sub_402428, @function
sub_402428:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402430
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40243a
	.globl sub_40243a
	.type sub_40243a, @function
sub_40243a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402440

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x402449
	.globl sub_402449
	.type sub_402449, @function
sub_402449:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402450

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
	mov	rax,  qword ptr [word ptr [rip + label_74]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_75]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_76]]
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
	#Procedure 0x4024b8
	.globl sub_4024b8
	.type sub_4024b8, @function
sub_4024b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024c0
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
	#Procedure 0x402509
	.globl sub_402509
	.type sub_402509, @function
sub_402509:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402510

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_102
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_104
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_102
.label_104:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_102
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_103
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_103:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_102:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x402587
	.globl sub_402587
	.type sub_402587, @function
sub_402587:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402590

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_106
	cmp	byte ptr [rax], 0x43
	jne	.label_108
	cmp	byte ptr [rax + 1], 0
	je	.label_105
.label_108:
	mov	esi, OFFSET FLAT:label_107
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_106
.label_105:
	xor	ebx, ebx
.label_106:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4025c1
	.globl sub_4025c1
	.type sub_4025c1, @function
sub_4025c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4025d0
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
	#Procedure 0x4025dd
	.globl sub_4025dd
	.type sub_4025dd, @function
sub_4025dd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4025e0

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
	je	.label_109
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_111
	jmp	.label_110
.label_109:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_110
.label_111:
	mov	eax, 1
	test	bpl, bpl
	je	.label_110
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
.label_110:
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
	#Procedure 0x40265d
	.globl sub_40265d
	.type sub_40265d, @function
sub_40265d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402660
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40266a
	.globl sub_40266a
	.type sub_40266a, @function
sub_40266a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402670

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_116
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_118
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_114
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_113
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_115
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_117
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	mov	r8, rdx
	call	__printf_chk
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_116:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_112
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
	#Procedure 0x40279b
	.globl sub_40279b
	.type sub_40279b, @function
sub_40279b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027a0
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
	#Procedure 0x402812
	.globl sub_402812
	.type sub_402812, @function
sub_402812:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402820

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
.label_166:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_171
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_176]]
.label_407:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_181
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_186
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_408:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_193
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_193
	xor	r14d, r14d
.label_204:
	cmp	r14, r11
	jae	.label_200
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_200:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_204
.label_193:
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
	jmp	.label_131
.label_400:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_131
.label_403:
	mov	al, 1
.label_401:
	mov	r12b, 1
.label_404:
	test	r12b, 1
	mov	cl, 1
	je	.label_220
	mov	ecx, eax
.label_220:
	mov	al, cl
.label_402:
	test	r12b, 1
	jne	.label_223
	test	r11, r11
	je	.label_170
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_170:
	mov	r14d, 1
	jmp	.label_230
.label_223:
	xor	r14d, r14d
.label_230:
	mov	ecx, OFFSET FLAT:label_186
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_131
.label_405:
	test	r12b, 1
	jne	.label_121
	test	r11, r11
	je	.label_123
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_123:
	mov	r14d, 1
	jmp	.label_155
.label_406:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_130
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_131
.label_121:
	xor	r14d, r14d
.label_155:
	mov	eax, OFFSET FLAT:label_130
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_131:
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
	jmp	.label_146
	.section	.text
	.align	16
	#Procedure 0x402afc
	.globl sub_402afc
	.type sub_402afc, @function
sub_402afc:

	nop	dword ptr [rax]
.label_158:
	inc	rsi
.label_146:
	cmp	rbp, -1
	je	.label_185
	cmp	rsi, rbp
	jne	.label_188
	jmp	.label_168
	.section	.text
	.align	16
	#Procedure 0x402b13
	.globl sub_402b13
	.type sub_402b13, @function
sub_402b13:

	nop	word ptr cs:[rax + rax]
.label_185:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_168
.label_188:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_195
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_197
	cmp	rbp, -1
	jne	.label_197
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
.label_197:
	cmp	rbx, rbp
	jbe	.label_206
.label_195:
	xor	r8d, r8d
.label_157:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_207
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_211]]
.label_326:
	test	rsi, rsi
	jne	.label_201
	jmp	.label_138
	.section	.text
	.align	16
	#Procedure 0x402bae
	.globl sub_402bae
	.type sub_402bae, @function
sub_402bae:

	nop	
.label_206:
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
	jne	.label_228
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
	jmp	.label_122
.label_228:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_157
.label_330:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_133
	test	rsi, rsi
	jne	.label_135
	cmp	rbp, 1
	je	.label_138
	xor	r13d, r13d
	jmp	.label_124
.label_319:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_141
	cmp	byte ptr [rsp + 7], 0
	jne	.label_142
	cmp	r12d, 2
	jne	.label_145
	mov	eax, r9d
	and	al, 1
	jne	.label_145
	cmp	r14, r11
	jae	.label_147
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_147:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_152
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_152:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_160
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_160:
	add	r14, 3
	mov	r9b, 1
.label_145:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_165
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_165:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_169
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_169
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_169
	cmp	r14, r11
	jae	.label_182
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_182:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_198
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_198:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_124
.label_320:
	mov	bl, 0x62
	jmp	.label_192
.label_321:
	mov	cl, 0x74
	jmp	.label_150
.label_322:
	mov	bl, 0x76
	jmp	.label_192
.label_323:
	mov	bl, 0x66
	jmp	.label_192
.label_324:
	mov	cl, 0x72
	jmp	.label_150
.label_327:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_199
	cmp	byte ptr [rsp + 7], 0
	jne	.label_142
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
	jae	.label_205
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_205:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_213
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_213:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_214
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_214:
	add	r14, 3
	xor	r9d, r9d
.label_199:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_124
.label_328:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_227
	cmp	r12d, 2
	jne	.label_201
	cmp	byte ptr [rsp + 7], 0
	je	.label_201
	jmp	.label_142
.label_329:
	cmp	r12d, 2
	jne	.label_234
	cmp	byte ptr [rsp + 7], 0
	jne	.label_142
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_151
.label_207:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_127
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
.label_128:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_144
	test	r8b, r8b
	je	.label_144
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_124
.label_133:
	test	rsi, rsi
	jne	.label_132
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_132
.label_138:
	mov	dl, 1
.label_325:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_142
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_124:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_177
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_178
	jmp	.label_183
	.section	.text
	.align	16
	#Procedure 0x402ef4
	.globl sub_402ef4
	.type sub_402ef4, @function
sub_402ef4:

	nop	word ptr cs:[rax + rax]
.label_177:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_183
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
	jne	.label_187
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_151
	jmp	.label_191
	.section	.text
	.align	16
	#Procedure 0x402f3d
	.globl sub_402f3d
	.type sub_402f3d, @function
sub_402f3d:

	nop	dword ptr [rax]
.label_183:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_191
	jmp	.label_151
.label_187:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_191
.label_141:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_158
	xor	r15d, r15d
	jmp	.label_201
.label_234:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_150
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_151
.label_150:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_142
.label_192:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_124
	nop	word ptr cs:[rax + rax]
.label_191:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_142
	cmp	r12d, 2
	jne	.label_221
	mov	eax, r9d
	and	al, 1
	jne	.label_221
	cmp	r14, r11
	jae	.label_225
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_225:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_190
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_190:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_232
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_232:
	add	r14, 3
	mov	r9b, 1
.label_221:
	cmp	r14, r11
	jae	.label_120
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_120:
	inc	r14
	jmp	.label_125
.label_127:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_129
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_129:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_175:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_149
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_154
	cmp	rbp, -2
	je	.label_217
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_163
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_143:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_179
	bt	rsi, rdx
	jb	.label_122
.label_179:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_143
.label_163:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_189
	xor	r13d, r13d
.label_189:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_175
	jmp	.label_128
.label_169:
	xor	r13d, r13d
	jmp	.label_124
.label_132:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_124
.label_227:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_201
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_201
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_201
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_208
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_202
	cmp	byte ptr [rsp + 7], 0
	jne	.label_142
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_218
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_218:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_161
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_161:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_229
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_229:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_231
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_231:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_124
.label_201:
	xor	eax, eax
.label_135:
	xor	r13d, r13d
	jmp	.label_124
.label_144:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_126
	.section	.text
	.align	16
	#Procedure 0x403223
	.globl sub_403223
	.type sub_403223, @function
sub_403223:

	nop	word ptr cs:[rax + rax]
.label_203:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_126:
	test	r8b, r8b
	je	.label_136
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_137
	cmp	r14, r11
	jae	.label_139
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_139:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_137
	.section	.text
	.align	16
	#Procedure 0x40326c
	.globl sub_40326c
	.type sub_40326c, @function
sub_40326c:

	nop	dword ptr [rax]
.label_136:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_122
	cmp	r12d, 2
	jne	.label_148
	mov	eax, r9d
	and	al, 1
	jne	.label_148
	cmp	r14, r11
	jae	.label_153
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_153:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_159
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_159:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_164
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_164:
	add	r14, 3
	mov	r9b, 1
.label_148:
	cmp	r14, r11
	jae	.label_156
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_156:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_173
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_173:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_180
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_180:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_137:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_151
	test	r9b, 1
	je	.label_194
	mov	ebx, eax
	and	bl, 1
	jne	.label_194
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_196
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_196:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_215
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_215:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_194:
	cmp	r14, r11
	jae	.label_203
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_203
	.section	.text
	.align	16
	#Procedure 0x403373
	.globl sub_403373
	.type sub_403373, @function
sub_403373:

	nop	word ptr cs:[rax + rax]
.label_151:
	test	r9b, 1
	je	.label_184
	and	al, 1
	jne	.label_184
	cmp	r14, r11
	jae	.label_210
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_210:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_212
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_212:
	add	r14, 2
	xor	r9d, r9d
.label_184:
	mov	ebx, r15d
.label_125:
	cmp	r14, r11
	jae	.label_219
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_219:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_158
.label_154:
	xor	r13d, r13d
.label_149:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_128
.label_217:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_233
	mov	rsi, qword ptr [rsp + 0x50]
.label_167:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_209
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_167
	xor	r13d, r13d
	jmp	.label_128
.label_233:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_128
.label_209:
	xor	r13d, r13d
	jmp	.label_128
.label_208:
	xor	r13d, r13d
	jmp	.label_124
.label_202:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_124
	.section	.text
	.align	16
	#Procedure 0x403448
	.globl sub_403448
	.type sub_403448, @function
sub_403448:

	nop	dword ptr [rax + rax]
.label_168:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_140
	or	dl, al
	je	.label_122
.label_140:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_162
	or	dl, al
	jne	.label_162
	test	r10b, 1
	jne	.label_224
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_162
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_166
.label_162:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_172
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_174
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_174
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_134:
	cmp	r14, r11
	jae	.label_216
	mov	byte ptr [rcx + r14], al
.label_216:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_134
	jmp	.label_174
.label_142:
	mov	qword ptr [rsp + 0x20], rbp
.label_122:
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
.label_222:
	mov	r14, rax
.label_226:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_224:
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
	jmp	.label_222
.label_172:
	mov	rcx, qword ptr [rsp + 8]
.label_174:
	cmp	r14, r11
	jae	.label_226
	mov	byte ptr [rcx + r14], 0
	jmp	.label_226
.label_171:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4035dc
	.globl sub_4035dc
	.type sub_4035dc, @function
sub_4035dc:

	nop	dword ptr [rax]
.label_237:
	inc	rax
	mov	sil, dl
.label_238:
	movzx	ecx, byte ptr [rax]
	mov	dl, 1
	cmp	cl, 0x2f
	je	.label_237
	test	cl, cl
	je	.label_235
	mov	edx, esi
	and	dl, 1
	je	.label_236
	xor	esi, esi
.label_236:
	test	dl, dl
	cmovne	rdi, rax
	mov	edx, esi
	jmp	.label_237
	.section	.text
	.align	16
	#Procedure 0x403607

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_239:
	cmp	byte ptr [rdi + 1], 0x2f
	lea	rdi, [rdi + 1]
	je	.label_239
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_238
	.section	.text
	.align	16
	#Procedure 0x403628
	.globl sub_403628
	.type sub_403628, @function
sub_403628:

	nop	word ptr cs:[rax + rax]
.label_235:
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x40363b
	.globl sub_40363b
	.type sub_40363b, @function
sub_40363b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403640

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
	#Procedure 0x403677
	.globl sub_403677
	.type sub_403677, @function
sub_403677:

	nop	word ptr [rax + rax]
.label_244:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_240
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_242
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_49
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_245:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x4036d0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_243
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_244
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_244
.label_243:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_245
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_242:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_241
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403740

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_247:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_246
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_248
	.section	.text
	.align	16
	#Procedure 0x403769
	.globl sub_403769
	.type sub_403769, @function
sub_403769:

	nop	dword ptr [rax]
.label_246:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_248:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_249
	inc	r9
	cmp	r9, 0xa
	jb	.label_247
.label_249:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x40379f
	.globl sub_40379f
	.type sub_40379f, @function
sub_40379f:

	nop	
.label_250:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4037a3
	.globl sub_4037a3
	.type sub_4037a3, @function
sub_4037a3:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037ab
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_250
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_253:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_251
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_251:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4037f4
	.globl sub_4037f4
	.type sub_4037f4, @function
sub_4037f4:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4037f6

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
	jne	.label_252
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_252
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_253
.label_252:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x403830
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
	#Procedure 0x40383f
	.globl sub_40383f
	.type sub_40383f, @function
sub_40383f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403840

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_254
	ret	
.label_254:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	16
	#Procedure 0x403853
	.globl sub_403853
	.type sub_403853, @function
sub_403853:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403860
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40386a
	.globl sub_40386a
	.type sub_40386a, @function
sub_40386a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403870

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
	je	.label_256
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_255
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_255
.label_256:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_255
	test	cl, cl
	jne	.label_255
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_255:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
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

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_257
	test	rdx, rdx
	je	.label_257
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_257:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40390b
	.globl sub_40390b
	.type sub_40390b, @function
sub_40390b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403910

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40391e
	.globl sub_40391e
	.type sub_40391e, @function
sub_40391e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403920

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
	js	.label_258
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_261
	cmp	r12d, 0x7fffffff
	je	.label_263
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
	jne	.label_259
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_259:
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
.label_261:
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
	jbe	.label_264
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_260
.label_264:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_262
	mov	rdi, r14
	call	free
.label_262:
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
.label_260:
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
.label_258:
	call	abort
.label_263:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403add
	.globl sub_403add
	.type sub_403add, @function
sub_403add:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403ae0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	16
	#Procedure 0x403ae5
	.globl sub_403ae5
	.type sub_403ae5, @function
sub_403ae5:

	nop	word ptr cs:[rax + rax]
.label_266:
	cmp	edi, 0x7f
	je	.label_265
	xor	eax, eax
	jmp	.label_265
	.section	.text
	.align	16
	#Procedure 0x403af9
	.globl sub_403af9
	.type sub_403af9, @function
sub_403af9:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b08
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_266
.label_265:
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b10
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_267:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_267
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x403b31
	.globl sub_403b31
	.type sub_403b31, @function
sub_403b31:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b40

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b4a
	.globl sub_403b4a
	.type sub_403b4a, @function
sub_403b4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b50

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
	jne	.label_274
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
	je	.label_268
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_272
	mov	eax, OFFSET FLAT:label_273
	jmp	.label_271
.label_268:
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
	je	.label_275
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_269
	mov	eax, OFFSET FLAT:label_270
	jmp	.label_271
.label_275:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_130
	mov	eax, OFFSET FLAT:label_186
.label_271:
	cmove	rax, rcx
.label_274:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403c0d
	.globl sub_403c0d
	.type sub_403c0d, @function
sub_403c0d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403c10

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
	mov	r14, rsi
	mov	r15d, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_9
	call	setlocale
	mov	edi, OFFSET FLAT:label_278
	mov	esi, OFFSET FLAT:label_288
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_278
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	ebx, ebx
.label_289:
	mov	edx, OFFSET FLAT:label_285
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r15d
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x79
	jle	.label_287
	mov	bl, 1
	cmp	eax, 0x7a
	je	.label_289
	jmp	.label_279
.label_287:
	cmp	eax, -1
	jne	.label_277
	cmp	dword ptr [dword ptr [rip + optind]],  r15d
	jge	.label_280
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, r15d
	jge	.label_284
	xor	ecx, ecx
	test	bl, bl
	mov	ebx, 0xa
	cmovne	ebx, ecx
	mov	r12d, OFFSET FLAT:main.dot
	mov	r13d, 1
	nop	
.label_286:
	cdqe	
	mov	rbp, qword ptr [r14 + rax*8]
	mov	rdi, rbp
	call	dir_len
	test	rax, rax
	cmove	rbp, r12
	cmove	rax, r13
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rdi, rbp
	mov	rdx, rax
	call	fwrite_unlocked
	mov	edi, ebx
	call	putchar_unlocked
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	inc	eax
	mov	dword ptr [dword ptr [rip + optind]],  eax
	cmp	eax, r15d
	jl	.label_286
.label_284:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_276:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_35
	mov	edx, OFFSET FLAT:label_15
	mov	r8d, OFFSET FLAT:label_282
	mov	r9d, OFFSET FLAT:label_283
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_280:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_281
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
.label_277:
	cmp	eax, 0xffffff7d
	je	.label_276
	cmp	eax, 0xffffff7e
	jne	.label_279
	xor	edi, edi
	call	usage
.label_279:
	mov	edi, 1
	call	usage
.label_291:
	test	rcx, rcx
	jne	.label_290
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_290:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_292
.label_293:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
	.section	.text
	.align	16
	#Procedure 0x403de2

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_291
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_294
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_293
.label_292:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403e14
	.globl sub_403e14
	.type sub_403e14, @function
sub_403e14:

	nop	dword ptr [rax]
.label_294:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403e20
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
	#Procedure 0x403e39
	.globl sub_403e39
	.type sub_403e39, @function
sub_403e39:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403e40

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_295
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_295
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_295:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x403e66
	.globl sub_403e66
	.type sub_403e66, @function
sub_403e66:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e70
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_296
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_298:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_298
.label_296:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_299
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_300]], OFFSET FLAT:slot0
.label_299:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_297
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_297:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f01
	.globl sub_403f01
	.type sub_403f01, @function
sub_403f01:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f10
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x403f1a
	.globl sub_403f1a
	.type sub_403f1a, @function
sub_403f1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f20

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
	#Procedure 0x403f37
	.globl sub_403f37
	.type sub_403f37, @function
sub_403f37:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f40

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	xor	r14d, r14d
	cmp	byte ptr [rbx], 0x2f
	sete	r14b
	call	last_component
	mov	rcx, rax
	sub	rcx, rbx
	nop	dword ptr [rax]
.label_302:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_301
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_302
.label_301:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f7b
	.globl sub_403f7b
	.type sub_403f7b, @function
sub_403f7b:

	nop	dword ptr [rax + rax]
.label_304:
	mov	ecx, 1
.label_303:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x403f90
	.globl sub_403f90
	.type sub_403f90, @function
sub_403f90:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f95

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_304
	test	rsi, rsi
	mov	ecx, 1
	je	.label_303
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_303
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403fd0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	16
	#Procedure 0x403fda
	.globl sub_403fda
	.type sub_403fda, @function
sub_403fda:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404045
	.globl sub_404045
	.type sub_404045, @function
sub_404045:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404052
	.globl sub_404052
	.type sub_404052, @function
sub_404052:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404076
	.globl sub_404076
	.type sub_404076, @function
sub_404076:

	nop	word ptr cs:[rax + rax]
